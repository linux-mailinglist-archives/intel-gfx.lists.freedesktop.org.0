Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3DDC5F32E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C0810EB04;
	Fri, 14 Nov 2025 20:15:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ml/Ucukw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7459210EB04
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Nov 2025 20:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763151297; x=1794687297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tI6NmNdVy76EYOFDu/KDuw+Tsj6xtJbOusyx1MvqOqA=;
 b=Ml/UcukwB7WOp6H6+0tKMzUgPv40JQo+03tCXQxJms0fDaLAcUoEBhSI
 gfUpLlvzp1Q/vxcxd05r91yvagI+WSZNWIKxR3Nsx4tN+EPQRnU2pzAuR
 Wg1xCMoi4Z44vu7Hl833uWmxFuqNyk71bW/DyvIq/ltVl1GjtStC7iyj0
 DIhitoi4EXZp3y0TUgMNhLTXZcEoc8MnkEIGYoorznoe+KnKEMaSQM8Ph
 2YR6zWSK4u7K7gAAFfD3p6k62C/f+Rp1coxNBXvbg0iC01c82H7i70I1T
 eIk1utnsYvtKV7kIeurX+byzk94cdeVwJJ+SgC46cLbnq/IIDGc3h5LwO g==;
X-CSE-ConnectionGUID: l0hfHAHxSRSSiljfW/gmUA==
X-CSE-MsgGUID: 80Grql4sRqqOK7DK5rBBNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65188081"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65188081"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:14:57 -0800
X-CSE-ConnectionGUID: zq5/URCUSnuemqAArmb9Dg==
X-CSE-MsgGUID: Xgj0N9TPTvO9iXUcyeyE+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189148000"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:14:57 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gregkh@linuxfoundation.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Valentine Burley <valentine.burley@collabora.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH v3 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
Date: Fri, 14 Nov 2025 12:14:34 -0800
Message-ID: <20251114201431.1135031-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
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

The PXP flow requires us to communicate with CSME, which we do via a
mei component. Since the mei component binding is async and can take
a bit to complete, we don't wait for it during i915 load. If userspace
queries the state before the async binding is complete, we return an
"init in progress" state, with the expectation that it will eventually
transition to "init complete" if the CSME device is functional.

Mesa CI is flashing a custom coreboot on their Chromebooks that hides
the CSME device, which means that we never transition to the "init
complete" state. While from an interface POV it is not incorrect to not
end up in "init complete" if the CSME is missing, we can mitigate the
impact of this by simply checking if the CSME device is available at
all before attempting to initialize PXP.

v2: rebase on updated mei patch.
v3: rebase on exported pci id list.

Reported-by: Valentine Burley <valentine.burley@collabora.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 2860474ad2d0..26e7c5c26bac 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -3,6 +3,7 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 
+#include <linux/mei_me.h>
 #include <linux/workqueue.h>
 
 #include <drm/drm_print.h>
@@ -197,6 +198,15 @@ static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_p
 	return NULL;
 }
 
+static bool mei_device_available(void)
+{
+#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
+	return pci_dev_present(mei_me_pci_tbl);
+#else
+	return false;
+#endif
+}
+
 int intel_pxp_init(struct drm_i915_private *i915)
 {
 	struct intel_gt *gt;
@@ -205,6 +215,21 @@ int intel_pxp_init(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(to_gt(i915)))
 		return -ENOTCONN;
 
+	/*
+	 * iGPUs require CSME to be available to use PXP. Note that the
+	 * availability of CSME might change after we check, but we only support
+	 * PXP in the case where the CSME device is available from boot and
+	 * stays that way. If CSME was not initially available and appears later
+	 * we'll just continue without PXP, while if it was available and is
+	 * then removed we'll catch it via the component unbind callback and
+	 * handle it gracefully. Therefore, we don't require any locking around
+	 * the state checking.
+	 */
+	if (!IS_DGFX(i915) && !mei_device_available()) {
+		drm_dbg(&i915->drm, "skipping PXP init due to missing ME device\n");
+		return -ENODEV;
+	}
+
 	/*
 	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
 	 * we still need it if PXP's backend tee transport is needed.
-- 
2.43.0

