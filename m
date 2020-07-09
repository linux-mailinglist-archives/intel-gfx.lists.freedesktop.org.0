Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78DC21A993
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 23:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C02F6EB3D;
	Thu,  9 Jul 2020 21:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D926EB3B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 21:14:02 +0000 (UTC)
IronPort-SDR: rGybDp5JA0eBUk6Hy7iU/06tho1EkXd4nDobSOmwKZ7GBQZQgs/mzMSoqkN6HcnAyCAG8cJUth
 J4y+BDwsGirA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149580923"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="149580923"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 14:14:01 -0700
IronPort-SDR: 7JEbmCC1FSCnsebhJevGSxghIZcJXDLyZM/tUtK4UEG188jO4Wnoo97/Fjng22+bZuJPGHa46j
 XkSAl5Kk2iow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="280429793"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 14:14:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 14:13:57 -0700
Message-Id: <20200709211357.23208-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200709211357.23208-1-lucas.demarchi@intel.com>
References: <20200709211357.23208-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915/dg1: Add fake PCH
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
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
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
