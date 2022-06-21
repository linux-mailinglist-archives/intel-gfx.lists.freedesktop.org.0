Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ED15531EE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0296A10F5B8;
	Tue, 21 Jun 2022 12:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C1D10F0F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814179; x=1687350179;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JIsuc2+nwHl2Jz4zQbrZV29PPJncuVW86xWjFcpweHM=;
 b=Tj8Dfe68+3gUwQVjVaarGfBv+XOwhVyjpRR1z3PNhNE3/H4rde2bAc7K
 Dy/+tMV8Rz2rRi8ce8HBaiFewHa5LGyydtV1HRplnP+Pygkgaaq26mjBK
 gQ2aCHcI42GqQpRqQtLng9rvt91zkEMqAoowkEMXuQMKgkCLFR8CfxnTq
 ngjYheGrv7OF+KrJ4fL0n/vyvXY7csXzz7i21KY0Jne+BfBN6KMGa4PHd
 PqhcteRONXuyuTEpo07K1THZ0A9lrpbSRvS8UkwwhApJGo1Cxd1jIctKb
 vboKHGtTMYDPkaUBYo+b9G8+Re9eED2vcz8v13g/BnBRxuAYnCEaIG8rD w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366428428"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="366428428"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="914113478"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2022 05:22:56 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKju013778; Tue, 21 Jun 2022 13:22:52 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:14 +0530
Message-Id: <20220621123516.370479-10-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915: Add i915_save/load_pci_state
 helpers
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

Add i915_save/load_pci_state helpers which saves
pci config state and restores the saved state.

Signed-off-by: Iddamsetty Aravind <Aravind.Iddamsetty@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 34 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h    |  1 +
 2 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 60f6fcc6b71d..669365c2958c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -102,6 +102,40 @@
 
 static const struct drm_driver i915_drm_driver;
 
+bool i915_save_pci_state(struct pci_dev *pdev)
+{
+	struct drm_i915_private *i915 = pci_get_drvdata(pdev);
+
+	if (pci_save_state(pdev))
+		return false;
+
+	kfree(i915->pci_state);
+
+	i915->pci_state = pci_store_saved_state(pdev);
+
+	if (!i915->pci_state) {
+		drm_err(&i915->drm, "Failed to store PCI saved state\n");
+		return false;
+	}
+
+	return true;
+}
+
+void i915_load_pci_state(struct pci_dev *pdev)
+{
+	struct drm_i915_private *i915 = pci_get_drvdata(pdev);
+	int ret;
+
+	if (!i915->pci_state)
+		return;
+
+	ret = pci_load_saved_state(pdev, i915->pci_state);
+	if (!ret) {
+		pci_restore_state(pdev);
+	} else {
+		drm_warn(&i915->drm, "Failed to load PCI state, err:%d\n", ret);
+	}
+}
 static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
 {
 	int domain = pci_domain_nr(to_pci_dev(dev_priv->drm.dev)->bus);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c22f29c3faa0..ec8c7a2af673 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -777,6 +777,7 @@ struct drm_i915_private {
 	 * NOTE: This is the dri1/ums dungeon, don't add stuff here. Your patch
 	 * will be rejected. Instead look for a better place.
 	 */
+	struct pci_saved_state *pci_state;
 };
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
-- 
2.25.1

