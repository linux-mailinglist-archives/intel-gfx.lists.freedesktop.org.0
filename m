Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB0F416459
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 19:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2336ED98;
	Thu, 23 Sep 2021 17:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907A26ED94
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 16:50:39 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id b36so474328ljr.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 09:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hSnUQM8sl78ryfmqSBi52ERznQImFEzj9TPjadBrRO8=;
 b=EuE1JuVXY8ucbySjkYYk4i9UdFC4wI38D+nwRRAmiSqwwTXIoq3PGI3RXuoqaG1XAw
 Nmaq7bz56FuYPLBRV84Y+q8byg/5rfDs9j//qttcnAtUUYpBv/HRL5c+2iEfnx1fZJrT
 /rNFtq0BMff2DvdS9VCAZ1oAGJs3kKmDkn5w3ViJVunddT4qKyj5ONPj5MWjirKSV4Cn
 shnxXtutM1tiRGjbD4aE1cnFk7C44VmQAZWHBpcLu9jideaI/+CAcoVWvFfNpJqFbkLy
 rCUqubZyT3jYabT3+ZZ6tFC4By60b2Hm5ucZ6bny560ZuELlWIv4ZZ+0B5JFyvxwTa3N
 Sw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hSnUQM8sl78ryfmqSBi52ERznQImFEzj9TPjadBrRO8=;
 b=zk4RoK4J81Yh9GNswI81ZafDWXGtXbPCw/x4T3uAQw8f4uMJFcXdw1qM3ZwXyK58aR
 4MZwLsIxugcd0C2GCEaOFlyzd5Zjqrngi59Phgqzf5OBbJ0sOvRBc8fA437nEPCrrDum
 8XIFofbcHgd6ujxlqzHNRszcQinaZW1m7gJmN6Wh2shfJZod0Y//ysYr7y2j/oSAHwVE
 bg0a0YlGX1nrZSPxNeHbA8RhrYrTc4FDMB7FU54vwWh+HhfFMcsnzB1ixKgAMCncTp1x
 mQ/KEz4Ym25JLx2nr4mfykJ4/oOPIND8ZieZ0aBHP6bHT90LUXoKY9g4ZktqmK55afs/
 26hQ==
X-Gm-Message-State: AOAM532OsVvFznT/rIiWR8OuiubJZcCFiivmXpMBgH0BH1uerjqTTIVt
 P+vTc/7BmfDkOZQA0q+yUxxMfV1UcgN4mg==
X-Google-Smtp-Source: ABdhPJwsQAWFAW+h+ueroqe2kcduCUtyYnCtvW8owkj4LrRGKweIUwDL4iejWG8nFir0aUP6p9tXew==
X-Received: by 2002:a05:651c:4ca:: with SMTP id
 e10mr6460033lji.259.1632415837742; 
 Thu, 23 Sep 2021 09:50:37 -0700 (PDT)
Received: from lmajczak1-l.roam.corp.google.com
 (89-70-221-122.dynamic.chello.pl. [89.70.221.122])
 by smtp.gmail.com with ESMTPSA id g18sm455972lfh.235.2021.09.23.09.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 09:50:37 -0700 (PDT)
From: Lukasz Majczak <lma@semihalf.com>
To: Jose Roberto de Souza <jose.souza@intel.com>,
 Shawn C Lee <shawn.c.lee@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 upstream@semihalf.com, Lukasz Majczak <lma@semihalf.com>
Date: Thu, 23 Sep 2021 18:49:27 +0200
Message-Id: <20210923164927.55896-1-lma@semihalf.com>
X-Mailer: git-send-email 2.33.0.464.g1972c5931b-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 17:25:20 +0000
Subject: [Intel-gfx] [PATCH v2] drm/i915/bdb: Fix version check
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
 drivers/gpu/drm/i915/display/intel_bios.c     | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 +++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3c25926092de..90eae6da12e0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -428,6 +428,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	const struct lfp_backlight_data_entry *entry;
 	int panel_type = i915->vbt.panel_type;
 	u16 level;
+	size_t exp_size;
 
 	backlight_data = find_section(bdb, BDB_LVDS_BACKLIGHT);
 	if (!backlight_data)
@@ -450,9 +451,15 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		return;
 	}
 
+	if (bdb->version <= 234)
+		exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
+	else if (bdb->version > 234 && bdb->version <= 236)
+		exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_236;
+	else
+		exp_size = sizeof(struct bdb_lfp_backlight_data);
+
 	i915->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
-	if (bdb->version >= 191 &&
-	    get_blocksize(backlight_data) >= sizeof(*backlight_data)) {
+	if (bdb->version >= 191  && get_blocksize(backlight_data) >= exp_size) {
 		const struct lfp_backlight_control_method *method;
 
 		method = &backlight_data->backlight_control[panel_type];
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 330077c2e588..ba9990e5983c 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -814,6 +814,11 @@ struct lfp_brightness_level {
 	u16 reserved;
 } __packed;
 
+#define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
+	offsetof(struct bdb_lfp_backlight_data, brightness_level)
+#define EXP_BDB_LFP_BL_DATA_SIZE_REV_236 \
+	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
+
 struct bdb_lfp_backlight_data {
 	u8 entry_size;
 	struct lfp_backlight_data_entry data[16];
-- 
2.33.0.464.g1972c5931b-goog

