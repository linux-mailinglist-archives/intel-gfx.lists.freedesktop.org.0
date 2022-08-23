Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E7E59DAED
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 13:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED4E11AF46;
	Tue, 23 Aug 2022 11:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EDD011BC8E;
 Tue, 23 Aug 2022 11:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661254258; x=1692790258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J4TaDGzj9N9JOB/TT+BPw7LVCm7qKt22L+Gg4k72Bfc=;
 b=WpRcKjEE68TTSLDd+MYFk2bHeICfkvES55oIr7/SeoEhsH0xVaM2KZJf
 W43wDns839cA4SJHQG/10IQ9rQiRqpm9zx9/gpNJlmovj6mJGPh3WmU+j
 9xtWGtN0INZ9bVpjWmYWIqw5zILEGuuM9Af8JmNt2kUGaEYEUy79egs2s
 fJbDZUmuNRP9iOnDg0jLiKiQAUk/HY6b3aU1iQ+JZwpzmwGarvKgorjo8
 n4uy/DEJ7TMlw6d7F1F343F9ybE6XeMz5wIJwm2ZOlu0pl7fBc9DLyWP1
 lTdbcXMMUKfd2qSlfh6WoIEeJ+Tmgt+Ik+42nKIE5+NBwBpys5kINuuIP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273415853"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="273415853"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:30:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="669990898"
Received: from fjohn-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.42.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:30:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 14:29:18 +0300
Message-Id: <20220823112920.352563-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220823112920.352563-1-jouni.hogander@intel.com>
References: <20220823112920.352563-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: Use original src in
 psr2 sel fetch area calculation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_plane_state->src is modified when offset is calculated:

before calculation:
src.x1 = 8192, src.y1 = 8192

after calculation (pitch = 65536, cpp = 4, alignment = 262144)
src.x1 = 8192, src.y1 = 0, offset = 0x20000000

Damage clips are relative to original coodrdinates provided by
user-space. To compare these against src coordinates we need to use
original coordinates as provided by user-space. These can be obtained
by using drm_plane_state_src.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 98c3c8015a5c..16985de24019 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1767,7 +1767,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			continue;
 		}
 
-		drm_rect_fp_to_int(&src, &new_plane_state->uapi.src);
+		src = drm_plane_state_src(&new_plane_state->uapi);
+		drm_rect_fp_to_int(&src, &src);
 
 		drm_atomic_helper_damage_iter_init(&iter,
 						   &old_plane_state->uapi,
-- 
2.34.1

