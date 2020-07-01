Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FEF2116EB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0F26EA2D;
	Wed,  1 Jul 2020 23:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D3826E4F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:51 +0000 (UTC)
IronPort-SDR: 9/+xK6QbIm1ot4+njODdOBCl5VRv2RTS554q2M9ucKe7UkfQq06kEQWVXQnFdk7fYHg6ZJB1vW
 D/y/nyPVPgbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164785955"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="164785955"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:50 -0700
IronPort-SDR: fdEpyOXoW9+/WzC/gjUQdrf46rvLS1TieFY3Yhow3LP01Hwd2xrYQp0eOzVrDyaQtEIDHx8wJj
 j4MiICvyamBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276350"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:17 -0700
Message-Id: <20200701235339.32608-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 06/28] drm/i915/dg1: Add fake PCH
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG1 has the south engine display on the same PCI device. Ideally we
could use HAS_PCH_SPLIT(), but that macro is misused all across the
code base to rather signify a range of gens. So add a fake one for DG1
to be used where needed.

Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 6 ++++++
 drivers/gpu/drm/i915/intel_pch.h | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index c668e99eb2e4..6c97192e9ca8 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -188,6 +188,12 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pch = NULL;
 
+	/* DG1 has south engine display on the same PCI device */
+	if (IS_DG1(dev_priv)) {
+		dev_priv->pch_type = PCH_DG1;
+		return;
+	}
+
 	/*
 	 * The reason to probe ISA bridge instead of Dev31:Fun0 is to
 	 * make graphics device passthrough work easy for VMM, that only
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 3053d1ce398b..06d2cd50af0b 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -26,6 +26,9 @@ enum intel_pch {
 	PCH_JSP,	/* Jasper Lake PCH */
 	PCH_MCC,        /* Mule Creek Canyon PCH */
 	PCH_TGP,	/* Tiger Lake PCH */
+
+	/* Fake PCHs, functionality handled on the same PCI dev */
+	PCH_DG1 = 1024,
 };
 
 #define INTEL_PCH_DEVICE_ID_MASK		0xff80
@@ -56,6 +59,7 @@ enum intel_pch {
 
 #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
 #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
+#define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
 #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_JSP)
 #define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MCC)
 #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
