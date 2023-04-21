Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBB36EA9A1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C7410EE0C;
	Fri, 21 Apr 2023 11:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D601E10EE0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077715; x=1713613715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ittTqS2QZuY9gZCFwxg9cm/0NBJVdZyftcDxen/FxCo=;
 b=PY4hoBkTVdRlAh4PqodH/peZe/NoLlIK87EPEk6aU8Y9Ouz3+OlD6bmT
 +u9IxKF5HgKzL6roRbsJEVlVF0NFCSSRAnEZfSdLjLWYwMiyrTzp0Q0zG
 grvlshT2s8y87iA6zMA+TLWtE4z/mA663dsMI278AcfZJadIcO/Nly1vq
 2N6AeWYWsGNGtGvPe9cy8X2zcjVYePC8ZDo/emQZQ6U4vvwhQVo9jdlM2
 ZO1fnvK6B7ZONCUcqxjCD/8fN7c/eUZpHJqiGfhOLBZniPJER5TOmz/3Z
 /+n4pn373hOqBQ7yuz0ewjd15D9B2JB4X/1Ogpuxz1+yL0YcEnMoFe4Nw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432252015"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432252015"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="642491480"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="642491480"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:47 +0300
Message-Id: <edf72904bc3bfcb9471cda19f6ef725c722e3f21.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/edid: add drm_edid_read_switcheroo()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a switcheroo variant to the struct drm_edid based EDID read
functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 29 +++++++++++++++++++++++++++++
 include/drm/drm_edid.h     |  2 ++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 813ce00a106a..941f3d53a701 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2844,6 +2844,35 @@ struct edid *drm_get_edid_switcheroo(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_get_edid_switcheroo);
 
+/**
+ * drm_edid_read_switcheroo - get EDID data for a vga_switcheroo output
+ * @connector: connector we're probing
+ * @adapter: I2C adapter to use for DDC
+ *
+ * Wrapper around drm_edid_read_ddc() for laptops with dual GPUs using one set
+ * of outputs. The wrapper adds the requisite vga_switcheroo calls to
+ * temporarily switch DDC to the GPU which is retrieving EDID.
+ *
+ * Return: Pointer to valid EDID or %NULL if we couldn't find any.
+ */
+const struct drm_edid *drm_edid_read_switcheroo(struct drm_connector *connector,
+						struct i2c_adapter *adapter)
+{
+	struct drm_device *dev = connector->dev;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+	const struct drm_edid *drm_edid;
+
+	if (drm_WARN_ON_ONCE(dev, !dev_is_pci(dev->dev)))
+		return NULL;
+
+	vga_switcheroo_lock_ddc(pdev);
+	drm_edid = drm_edid_read_ddc(connector, adapter);
+	vga_switcheroo_unlock_ddc(pdev);
+
+	return drm_edid;
+}
+EXPORT_SYMBOL(drm_edid_read_switcheroo);
+
 /**
  * drm_edid_duplicate - duplicate an EDID and the extensions
  * @edid: EDID to duplicate
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 571885d32907..169755d3de19 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -613,6 +613,8 @@ const struct drm_edid *drm_edid_read_ddc(struct drm_connector *connector,
 const struct drm_edid *drm_edid_read_custom(struct drm_connector *connector,
 					    int (*read_block)(void *context, u8 *buf, unsigned int block, size_t len),
 					    void *context);
+const struct drm_edid *drm_edid_read_switcheroo(struct drm_connector *connector,
+						struct i2c_adapter *adapter);
 int drm_edid_connector_update(struct drm_connector *connector,
 			      const struct drm_edid *edid);
 int drm_edid_connector_add_modes(struct drm_connector *connector);
-- 
2.39.2

