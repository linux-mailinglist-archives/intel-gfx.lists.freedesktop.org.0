Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D71576EA7
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D90710ED0B;
	Sat, 16 Jul 2022 14:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5C610E0E5;
 Fri, 15 Jul 2022 14:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657896876; x=1689432876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xEAZ1QrS7CYRtuSAExgb4qsvuEfijpRJbgL7cKUZyWo=;
 b=HKCKqyuYdPDwghD/Yfpos6puuXiSK49nw+8sy/qT3FkcgAXy39Ja83Hn
 hUhQmwveRzzqT2k3d4aRcYJvw4taihm6xfF+o7zhZgeCNDVDL3Y81SA/r
 74JZtSlZQ02dORJ4Pg9cy5n0j+25naQfStqPIuWUXdQpFslSwoYQUscYE
 htwLYj0RqavXKvGZqoXq/su/BWIrSbF6Nty+VDm7IVitDJTrW2XkyKv2j
 2LHH6+v2oVOoZv2MHAZK6VB7OkoCdcKtAdF7kui+Al9XSazphPa9IiqTV
 x0RDFrZ5iN6jUF//cRXWd5p6u8zV51HyrUHLdbEn+nJdJDXxX0A6hDtfm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="284558043"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="284558043"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 06:51:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="654340392"
Received: from jgrajkow-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.38.223])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 06:51:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 16:49:57 +0300
Message-Id: <20220715134958.2605746-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220715134958.2605746-1-jouni.hogander@intel.com>
References: <20220715134958.2605746-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Use original src in psr2
 sel fetch area calculation
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
index 90599dd1cb1b..5c95e24dc8d6 100644
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
2.25.1

