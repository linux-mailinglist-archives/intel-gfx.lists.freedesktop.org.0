Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B3E9387DC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 05:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6FF10E18D;
	Mon, 22 Jul 2024 03:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y00P1mpn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02ECF10E18D;
 Mon, 22 Jul 2024 03:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721620536; x=1753156536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VDm2z+0UFsY9+5jVlvAV2utSDLJbFzf/sz/4dn0G6LM=;
 b=Y00P1mpnBAQ84krXNzFjzJnRhIqvAihiND2sabHFRLKgLrnnrB10SteN
 iOBURevK0V0uwE3IYPfTHThzS4VjdzVkL01zDAIzbMwmszgpFrfFIwnLk
 3X0h1WMPA8Rqc1hrW/UuBeWi0Ko0jlEbzqUXc0aIf6PPpJKzSVnznwnWG
 TCtaXCy/vtQEfxoDJXhxLeCGDXucCFoYB1xXPvFc3zyH0tFZWus0NSiSG
 lKJU/Bi5RUaeoCYWiKUowNAIjB7Jm+JxHx+J5j/+zBLkfaGHjuqbM8Bm4
 G4bs+46n5+3xgKrLMDa09Njkq5fS7YRCBy1YA7AdWjGyMrDKtCnPGqqXK g==;
X-CSE-ConnectionGUID: YGL5KzWeTPu9//FSHf4dOQ==
X-CSE-MsgGUID: JWj/f3PVTvC+LcoKNNHbEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="44592978"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="44592978"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 20:55:36 -0700
X-CSE-ConnectionGUID: 6kcsrg4cQ2ab2AuS/pWpuQ==
X-CSE-MsgGUID: Gy8FyFfaRSKqihzTEp08PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51630452"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 21 Jul 2024 20:55:34 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/xe/hdcp: Check GSC structure validity
Date: Mon, 22 Jul 2024 09:23:05 +0530
Message-ID: <20240722035306.3605245-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240722035306.3605245-1-suraj.kandpal@intel.com>
References: <20240722035306.3605245-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Sometimes xe_gsc is not initialized when checked at HDCP capability
check. Add gsc structure check to avoid null pointer error.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 990285aa9b26..0af667ebebf9 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -40,10 +40,14 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 {
 	struct xe_tile *tile = xe_device_get_root_tile(xe);
 	struct xe_gt *gt = tile->media_gt;
+	struct xe_gsc *gsc = &gt->uc.gsc;
 	bool ret = true;
 
-	if (!xe_uc_fw_is_enabled(&gt->uc.gsc.fw))
+	if (!gsc && !xe_uc_fw_is_enabled(&gsc->fw)) {
+		drm_dbg_kms(&xe->drm,
+			    "GSC Components not ready for HDCP2.x\n");
 		return false;
+	}
 
 	xe_pm_runtime_get(xe);
 	if (xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC)) {
@@ -53,7 +57,7 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 		goto out;
 	}
 
-	if (!xe_gsc_proxy_init_done(&gt->uc.gsc))
+	if (!xe_gsc_proxy_init_done(gsc))
 		ret = false;
 
 	xe_force_wake_put(gt_to_fw(gt), XE_FW_GSC);
-- 
2.43.2

