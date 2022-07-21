Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E6357C807
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7598CF9F;
	Thu, 21 Jul 2022 09:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A92D8CF9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396907; x=1689932907;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VdJ6K7k/xW4RcAwlmlrivHr2oUUMbE7fplEiyrNdf30=;
 b=KpHQ1m5Zn5tPRN6S2YFgGGWuOAJFE1Cz6OpON/A+iqfvnJrbpa7DRNVW
 Ff1JVMswXPG7aUMKjAbE8EkON4/xXWsIJiNJ2w/rW+mlOq3jRVo+FTpDV
 f7qyFD7q2935/hjuuOsP3P4kY9PUIxjHlcXwdhLiazbl+ZskNJ8k6gjbU
 1lkJKToFKVL/+PIQ6XoSS9voN+G8yuL0XShHAgT3wXVHXGPDoiL+BAPOm
 Kzl029nq5Ux/oLbGz9sKNQ5ouZBipX/zzR6Q+Og8UA6/65LQn6rpwbknK
 CKx1b2vHINAwOkcfHmECK7Rtqu4CgRKOMUkbQqtNHdAlB+xWmnMvAyUzJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="350991717"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="350991717"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="701213017"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2022 02:48:23 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwY026833; Thu, 21 Jul 2022 10:48:20 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:54 +0530
Message-Id: <20220721095955.3986943-8-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: Add i915_save/load_pci_state
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

From: Aravind Iddamsetty <aravind.iddamsetty@intel.com>

Add i915_save/load_pci_state helpers which saves
pci config state and restores the saved state.

Signed-off-by: Aravind Iddamsetty  <aravind.iddamsetty@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 34 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_driver.h |  2 ++
 drivers/gpu/drm/i915/i915_drv.h    |  1 +
 3 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2b2e9563f149..3697ecb2c138 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -105,6 +105,40 @@ static const char irst_name[] = "INT3392";
 
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
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 44ec543d92cb..fb19db69bc3f 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -26,6 +26,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
 
 int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
+bool i915_save_pci_state(struct pci_dev *pdev);
+void i915_load_pci_state(struct pci_dev *pdev);
 
 void
 i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d25647be25d1..c30ac9219b7f 100644
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

