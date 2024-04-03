Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169DF896D41
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F2D10E073;
	Wed,  3 Apr 2024 10:52:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ibcmbRZw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C00F10E121;
 Wed,  3 Apr 2024 10:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141543; x=1743677543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aXwO+YyrDlXCOTfVyyvxISMPpqPvIKOZ+rBZD0M63z8=;
 b=ibcmbRZwi9MMOIrt9xjDm0UOiypqt/pgscdWGZ0u9iCLtP2xHdmiFQGz
 inb42mWvgIRUvaYXPcBYbtY0VCzBPoKFgB6hjdPAlM06H8AkoYz8K6pea
 ayce8omouUD6VJsI5g2xNaBxJqhOjmJksWUL7DDWi0HmJRJnYbLbvIK9E
 477cgbHXwk9601u8bwGnX4FXP9i0tsX/JX7RL+xxRMTWkVVwiP8rDiz5k
 QaI3yNVKDwAWVhviMqI5iy/139If0hy6cXloIYOA+Iff/tbZI/Pxxw3Qv
 8Bn9U8BqiAhVA4HmBsgFuPAQlyZj8Yu2QCWzeRBFu86HLd6pNm2bZxuLA g==;
X-CSE-ConnectionGUID: jA4WZtDvSvCMm6KEDOO6bw==
X-CSE-MsgGUID: itHWar0CTryiHp6lO5Cg1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212235"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212235"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:53 -0700
X-CSE-ConnectionGUID: w/flNFAuS1GlBDL8pVahMg==
X-CSE-MsgGUID: UcO1fm8zSEWgKA7hXP+SrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493413"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:51 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 19/25] drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
Date: Wed,  3 Apr 2024 16:21:17 +0530
Message-Id: <20240403105123.1327669-20-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: José Roberto de Souza <jose.souza@intel.com>

Xe2_HPD doesn't have DBOX BW credits, so here programing it with
zero.

BSpec: 49213
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index bc341abcab2f..22ae782e89f4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3733,7 +3733,7 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		if (!new_crtc_state->hw.active)
 			continue;
 
-		if (DISPLAY_VER(i915) >= 14) {
+		if (DISPLAY_VER(i915) >= 14 && !IS_BATTLEMAGE(i915)) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
 				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-- 
2.25.1

