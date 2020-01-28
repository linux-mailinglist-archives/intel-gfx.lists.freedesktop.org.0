Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B86314B028
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268156ECB5;
	Tue, 28 Jan 2020 07:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 365436ECB3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:15:01 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g17so14711061wro.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=myPetW/1Er+WkiVmIVelC7g9YrjTvFkkpL08fnsib9c=;
 b=fPC3oqThG+q5F84Ix/tazW5ADBBoE9e45gHMbDKSvsGWHRDS80EqNEfTc9cDU+hHXo
 MJiiv1XEuRonlgV4pEtsBW6GGvulFXLIfovWa3jPA8Fz9e3jjsfbNNQEtKJ7Xet1n40U
 WF9lF9fhoH+fX9IwbHl6znFTJj8EJar4cCFb98elBqbuOeTVosdNSG5Im9rSc9Fsntyj
 6fgrKmEnUsGSpv4GF7f1ez6fFYR5d0ZDefRNYM9M+MPbdHgSO0Rv1NWSt0Q08Gpr6UBy
 WLz2YfDpxPKbicfDCsu7MYTjFYU9TBevmOEUOgur/O7Ekjy0N2GeQjyI9+7dF0uMocnG
 6Pkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=myPetW/1Er+WkiVmIVelC7g9YrjTvFkkpL08fnsib9c=;
 b=fKMsEr4Tx8+Q6RAFzim35/j3rlU8olTfZmYAzYTMNttN5yFoqrhI8NV6hHRg7Uf8Hq
 ivCA8SqHO1ihmjVEBhW7+XSqNcT3PN57aHu/goQiUIWIhxhmiuX9xp6z6bPu8S3h3kBx
 4ordWRxpKi5eQMhwk84pNMcwyEXsL1bVhzOj/6B0/NYQtKiRwLIguCCORcPTarsv6MPJ
 IL0jecHz2vLHlOkMHtuzDr1JGU2+XC7VZ316rjqQjS1IOGhOCdzmjalBhIfraRBAPk+Y
 ozXB8Yy5vIxuo1cobkpyok7Cl8cHNA95FZN942/uvWVWmIcC1WJNcl6ghoKnG4dwkRVP
 TGkA==
X-Gm-Message-State: APjAAAWqqLEHsQGLRBXfGRxXsnblv3SHUnkF/89p0TsO3qArd5g0GqCz
 uiew9GWiZWdz4k85PEnGFJo=
X-Google-Smtp-Source: APXvYqwrNp53trQtpPfJmPSD0Glvw5m/olAHC1H6+bXB/ilh1Z8SaovdCaObBKkxh5RIyEminaps7g==
X-Received: by 2002:a5d:62c8:: with SMTP id o8mr26576555wrv.316.1580195699935; 
 Mon, 27 Jan 2020 23:14:59 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:59 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:35 +0300
Message-Id: <20200128071437.9284-7-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/gt: convert to new logging macros
 in gt/intel_gt.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert remaining instances of the printk based logging macros in
i915/gt/intel_gt to the struct drm_device based logging macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 43 +++++++++++++++---------------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a1ba0097117e..448afdcf40ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -198,16 +198,16 @@ static void gen6_check_faults(struct intel_gt *gt)
 	for_each_engine(engine, gt, id) {
 		fault = GEN6_RING_FAULT_REG_READ(engine);
 		if (fault & RING_FAULT_VALID) {
-			DRM_DEBUG_DRIVER("Unexpected fault\n"
-					 "\tAddr: 0x%08lx\n"
-					 "\tAddress space: %s\n"
-					 "\tSource ID: %d\n"
-					 "\tType: %d\n",
-					 fault & PAGE_MASK,
-					 fault & RING_FAULT_GTTSEL_MASK ?
-					 "GGTT" : "PPGTT",
-					 RING_FAULT_SRCID(fault),
-					 RING_FAULT_FAULT_TYPE(fault));
+			drm_dbg(&engine->i915->drm, "Unexpected fault\n"
+				"\tAddr: 0x%08lx\n"
+				"\tAddress space: %s\n"
+				"\tSource ID: %d\n"
+				"\tType: %d\n",
+				fault & PAGE_MASK,
+				fault & RING_FAULT_GTTSEL_MASK ?
+				"GGTT" : "PPGTT",
+				RING_FAULT_SRCID(fault),
+				RING_FAULT_FAULT_TYPE(fault));
 		}
 	}
 }
@@ -239,18 +239,17 @@ static void gen8_check_faults(struct intel_gt *gt)
 		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
 			     ((u64)fault_data0 << 12);
 
-		DRM_DEBUG_DRIVER("Unexpected fault\n"
-				 "\tAddr: 0x%08x_%08x\n"
-				 "\tAddress space: %s\n"
-				 "\tEngine ID: %d\n"
-				 "\tSource ID: %d\n"
-				 "\tType: %d\n",
-				 upper_32_bits(fault_addr),
-				 lower_32_bits(fault_addr),
-				 fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-				 GEN8_RING_FAULT_ENGINE_ID(fault),
-				 RING_FAULT_SRCID(fault),
-				 RING_FAULT_FAULT_TYPE(fault));
+		drm_dbg(&uncore->i915->drm, "Unexpected fault\n"
+			"\tAddr: 0x%08x_%08x\n"
+			"\tAddress space: %s\n"
+			"\tEngine ID: %d\n"
+			"\tSource ID: %d\n"
+			"\tType: %d\n",
+			upper_32_bits(fault_addr), lower_32_bits(fault_addr),
+			fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
+			GEN8_RING_FAULT_ENGINE_ID(fault),
+			RING_FAULT_SRCID(fault),
+			RING_FAULT_FAULT_TYPE(fault));
 	}
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
