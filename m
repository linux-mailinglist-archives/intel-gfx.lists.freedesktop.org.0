Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BC9910AF
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 22:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5AC10EAAB;
	Fri,  4 Oct 2024 20:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjat8Fxs";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826CB10EAAB
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 20:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728074144; x=1759610144;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wacM/mLcoeO7QanmfxRhSFhXKnGsnYtH1ffjhZgYRdg=;
 b=fjat8FxsFdkFYgbf4b2hKCnsKQ6GOHBd5X+lhjV4mS+M0t9OLdN8CO4v
 Br9BIbsOnQAQJsh4nPnxfO3QiSQXo2L272aDHU4G9RgxJGkH7Lxfe82Cy
 nkpLWSZ8vT+TTmCXcdiFURrZ25FelYDhqt+kUCaV0Kv0nzFoMTKkEOMcF
 oav4cMnl4fWLZ8g1eKqEycW9h/xpN2rpBY3DOMbefqMIVeyfSPrYp0UCu
 j1G+WySprKrSbiA7ubYYUS77u8U2zO2fRL7rYVJLyEDIlCIFQc2YN3Qwy
 EtDTuv1sStzBNEITfU19QQCFwbYZyxw5IQIKoFNHM/ji1z8H2Kxqlfmy+ A==;
X-CSE-ConnectionGUID: EFZXsgngQCOhWeYt+N6Fmw==
X-CSE-MsgGUID: DUE9YKvsRYiDFlWExUIrvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="31192580"
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="31192580"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 13:35:44 -0700
X-CSE-ConnectionGUID: 5V+gQyHOTQaM1piYzwG/dQ==
X-CSE-MsgGUID: zYiJy+yIRWaOIwVYPptzzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="74938378"
Received: from unknown (HELO cataylo2-desk.jf.intel.com) ([10.165.21.136])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 13:35:44 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Fuse bit for power management disable
 removed
Date: Fri,  4 Oct 2024 13:35:40 -0700
Message-Id: <20241004203540.3884792-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
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

Starting with Display 20 the fuse bit to disable Display PM has been
removed.

BSPEC: 69464
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f33062322c66..19aadf635077 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1653,8 +1653,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
 			display_runtime->has_hdcp = 0;
 
-		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			display_runtime->fbc_mask = 0;
+		if (DISPLAY_VER(i915) < 20) {
+			if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
+				display_runtime->fbc_mask = 0;
+		}
 
 		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			display_runtime->has_dmc = 0;
-- 
2.25.1

