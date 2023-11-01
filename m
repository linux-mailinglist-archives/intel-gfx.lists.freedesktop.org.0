Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F04C67DDF2F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EBC10E6AC;
	Wed,  1 Nov 2023 10:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4BB10E6AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833803; x=1730369803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hiS4+dyoS6DNPVrAOv5ZM4XAAzGh9ciIhPNit4mXkIo=;
 b=LN1E7yWEirss4+cFmAJJb/lf9ET7mo7JIqiNKxx3SvVwky9ZHJ261oph
 iNzjd9LpSraLz/CdsZxu89jGhj0Tjfxbwj5ryYTPDEXAPMayMa4qeqoU9
 ORoiyEiRgUheh3FVuBIF/mEKA1Eu7sOL11aSMriUrUeM8DT7bcHNQVJrD
 Xhlzc+GKuIeWhtDgMfLsFKtQ5DJmZxnjWSS9EcDAyqSkwlMNBVZ91yTVg
 NRRRkuMj946J8AM8MIw6aAgudrltOKHEIHFWR4bopR2tqG1ekWyf4teCD
 J03pSFdsOW43TVPW3co7UobB8w0a1hMJuhTg3C6D5Tj9DjvOu5uL5yQny w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="1323417"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="1323417"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="826732514"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="826732514"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:16:18 +0200
Message-Id: <dd8d196b3e6d91ffb5d5c3c5f965225ea13e34cc.1698833543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698833543.git.jani.nikula@intel.com>
References: <cover.1698833543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/dsi: clarify GPIO exec sequence
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
Cc: jani.nikula@intel.com, Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the various sequence versions and pointer increments interleaved,
it's a bit hard to decipher what's going on. Add separate paths for
different sequence versions.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 31 +++++++++++---------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 8b962f2ac475..11073efe26c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -456,26 +456,29 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	struct drm_device *dev = intel_dsi->base.base.dev;
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_connector *connector = intel_dsi->attached_connector;
-	u8 gpio_source, gpio_index = 0, gpio_number;
+	u8 gpio_source = 0, gpio_index = 0, gpio_number;
 	bool value;
+	int size;
 	bool native = DISPLAY_VER(i915) >= 11;
 
-	if (connector->panel.vbt.dsi.seq_version >= 3)
-		gpio_index = *data++;
+	if (connector->panel.vbt.dsi.seq_version >= 3) {
+		size = 3;
 
-	gpio_number = *data++;
+		gpio_index = data[0];
+		gpio_number = data[1];
+		value = data[2] & BIT(0);
 
-	/* gpio source in sequence v2 only */
-	if (connector->panel.vbt.dsi.seq_version == 2)
-		gpio_source = (*data >> 1) & 3;
-	else
-		gpio_source = 0;
+		if (connector->panel.vbt.dsi.seq_version >= 4 && data[2] & BIT(1))
+			native = false;
+	} else {
+		size = 2;
 
-	if (connector->panel.vbt.dsi.seq_version >= 4 && *data & BIT(1))
-		native = false;
+		gpio_number = data[0];
+		value = data[1] & BIT(0);
 
-	/* pull up/down */
-	value = *data++ & 1;
+		if (connector->panel.vbt.dsi.seq_version == 2)
+			gpio_source = (data[1] >> 1) & 3;
+	}
 
 	drm_dbg_kms(&i915->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
 		    gpio_index, gpio_number, gpio_source, str_yes_no(native), str_on_off(value));
@@ -491,7 +494,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	else
 		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
 
-	return data;
+	return data + size;
 }
 
 #ifdef CONFIG_ACPI
-- 
2.39.2

