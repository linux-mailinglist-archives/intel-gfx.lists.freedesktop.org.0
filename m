Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6AC631A4D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 08:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3688610E15B;
	Mon, 21 Nov 2022 07:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A3410E157
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 07:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669015725; x=1700551725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R0gheiOuO6CoGD09VEfG2+BuB8LyfSFM/gxksZfIxcE=;
 b=Tw3MbsWiT8I5sO4G5OH7AZJk8ly/1T/k0rWVIm/JvJEZFMk8hr5mcl8H
 Mjp7uYaMGY3ucNW/TnxYrty/6381DB2aD9cy+SqdS2TNCk9+5TrkFP+oa
 jQ6lGVBpi7zjJo0Sv8Uhml1AIA9K5Af7ApOhgQ+ZR4ZeYuUPpgVOgUzN1
 5vo/Jr5bGuugv1SKHto32W9n7z9U2Cipr/HZkvUkkGej0fG0Q2CoCxOwJ
 i7O6gWxVJHKORzcXK53N2QY9HmEePXXpECbQpYzSmbEyoO+ACofRxFnRQ
 WOoKElDPkVYx/Qz8Zp/vUOX0odIX+VV5cnnlPztQqOaIX4LKzbyCDN1lX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="301035836"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="301035836"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 23:28:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="618727882"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="618727882"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 23:28:42 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 12:59:45 +0530
Message-Id: <20221121072946.1013463-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121072946.1013463-1-riana.tauro@intel.com>
References: <20221121072946.1013463-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/hwmon: Add helper function to
 obtain energy values
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

Add an interface to obtain hwmon energy values. This is used
by selftest to verify power consumption

v2 : use i915_hwmon prefix (Anshuman)
v3 : re-use is_visible function of energy to remove
     redundant code (Anshuman)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index c588a17f97e9..d45d1cbce886 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -442,6 +442,23 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 	}
 }
 
+/*
+ * i915_hwmon_get_energy - obtains energy value
+ * Returns: 0 on success or a negative error code
+ */
+int
+i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy)
+{
+	struct i915_hwmon *hwmon = i915->hwmon;
+	struct hwm_drvdata *ddat = &hwmon->ddat;
+
+	if (!hwm_energy_is_visible(ddat, hwmon_energy_input))
+		return -EOPNOTSUPP;
+
+	hwm_energy(ddat, energy);
+	return 0;
+}
+
 static umode_t
 hwm_curr_is_visible(const struct hwm_drvdata *ddat, u32 attr)
 {
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 7ca9cf2c34c9..a6c8efeb868d 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -12,6 +12,7 @@ struct drm_i915_private;
 #if IS_REACHABLE(CONFIG_HWMON)
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
+int i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy);
 #else
 static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
 static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
-- 
2.25.1

