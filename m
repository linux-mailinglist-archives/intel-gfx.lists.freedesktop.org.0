Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B1341DD25
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 17:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C390889F19;
	Thu, 30 Sep 2021 15:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C359E6E405
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 13:46:53 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id z24so25487435lfu.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 06:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Twipta4rIar/jc06+DX25RykGAERYG5t/W3YLHffjgM=;
 b=0vFPHEXIsai7Bqlcap3e6yT6e0mRuumOZRm7wQTrizL0LCULnKlucdbkrXG+zRmk6R
 6b6Wejq+MdyGrvFcsVfZ7sPA5rX8jGXFiz7/5pHq9yrqHfMBEfAPOlW/v/VwXInW2rzh
 ytRq4UDrmFA4vDEcMkixVGTFe8EYRjZAI726+vfnu1dWFuMOoHRqWVQXUnOVkwMk+jij
 GENtQC/a0kitzFVHbSWun50nigfcFm3Hx5xaQIeNp4ayo55SkaGh4d5m9G2nUj+aP6GG
 mhkuK0ghjwa/zn3cbDNINYA0XSUDz9gAFmJJHJX8XwGIUtgxajGdx0H/NJWYssLPf8X2
 8/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Twipta4rIar/jc06+DX25RykGAERYG5t/W3YLHffjgM=;
 b=4Wq1dGwiyOQBbonFGjFi5Ckjlf1Ktz0GmxzUmblcyNpM1raukHJBlQ6nRqaoEX01FK
 6QYuKBQrdPMzsQK8V+PVnX0IV6lJL5l3m/ofnsoiNm1jPAKDItKVatlJbrdiLj608xeM
 vnNryfTfo8Lf9usX1GOAyI+O2oyOjkaeNC9TfBHnOZdq8frCbs5o4WqJtEjb0iz1lMcH
 l7H9d0bQws3uO0pgWjaxjGXn3HHS3E4bqK6TetPFTtgkCsNnPR9IYzl6WUltjaPHUQTa
 xeJMc1v7/DUT9BuRdX/KahGn0KtQCO0k0U7LS/3xAUTGxJWAL19+5gH4UbLuJj3H8AlO
 8Heg==
X-Gm-Message-State: AOAM530LKQe33dhtUbOjzj8S0F+LLmQ4jftYl9ZAmd0PGFXk+PH0ya5f
 CCqMLcSiORlecYbewb7Q9oh9kQ==
X-Google-Smtp-Source: ABdhPJx+TMd/QRt7kGS+5GTG8bVKNV4vu/ds3MnHRnE/jQciFkg5mnqd2pVvBxWJkecZrOQJ/3FI4Q==
X-Received: by 2002:a05:651c:2103:: with SMTP id
 a3mr6111702ljq.325.1633009610999; 
 Thu, 30 Sep 2021 06:46:50 -0700 (PDT)
Received: from lmajczak1-l.roam.corp.google.com ([83.142.187.84])
 by smtp.gmail.com with ESMTPSA id b10sm26004lfp.240.2021.09.30.06.46.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 06:46:50 -0700 (PDT)
From: Lukasz Majczak <lma@semihalf.com>
To: Jose Roberto de Souza <jose.souza@intel.com>,
 Shawn C Lee <shawn.c.lee@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 upstream@semihalf.com, Lukasz Majczak <lma@semihalf.com>
Date: Thu, 30 Sep 2021 15:46:06 +0200
Message-Id: <20210930134606.227234-1-lma@semihalf.com>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 30 Sep 2021 15:16:33 +0000
Subject: [Intel-gfx] [PATCH v3] drm/i915/bdb: Fix version check
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

With patch "drm/i915/vbt: Fix backlight parsing for VBT 234+"
the size of bdb_lfp_backlight_data structure has been increased,
causing if-statement in the parse_lfp_backlight function
that comapres this structure size to the one retrieved from BDB,
always to fail for older revisions.
This patch calculates expected size of the structure for a given
BDB version and compares it with the value gathered from BDB.
Tested on Chromebook Pixelbook (Nocturne) (reports bdb->version = 221)

Tested-by: Lukasz Majczak <lma@semihalf.com>
Signed-off-by: Lukasz Majczak <lma@semihalf.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 22 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 +++++
 2 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3c25926092de..f9776ca85de3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -451,13 +451,23 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	}
 
 	i915->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
-	if (bdb->version >= 191 &&
-	    get_blocksize(backlight_data) >= sizeof(*backlight_data)) {
-		const struct lfp_backlight_control_method *method;
+	if (bdb->version >= 191) {
+		size_t exp_size;
 
-		method = &backlight_data->backlight_control[panel_type];
-		i915->vbt.backlight.type = method->type;
-		i915->vbt.backlight.controller = method->controller;
+		if (bdb->version >= 236)
+			exp_size = sizeof(struct bdb_lfp_backlight_data);
+		else if (bdb->version >= 234)
+			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
+		else
+			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
+
+		if (get_blocksize(backlight_data) >= exp_size) {
+			const struct lfp_backlight_control_method *method;
+
+			method = &backlight_data->backlight_control[panel_type];
+			i915->vbt.backlight.type = method->type;
+			i915->vbt.backlight.controller = method->controller;
+		}
 	}
 
 	i915->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 330077c2e588..a2108a8f544d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -814,6 +814,11 @@ struct lfp_brightness_level {
 	u16 reserved;
 } __packed;
 
+#define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
+	offsetof(struct bdb_lfp_backlight_data, brightness_level)
+#define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
+	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
+
 struct bdb_lfp_backlight_data {
 	u8 entry_size;
 	struct lfp_backlight_data_entry data[16];
-- 
2.33.0.685.g46640cef36-goog

