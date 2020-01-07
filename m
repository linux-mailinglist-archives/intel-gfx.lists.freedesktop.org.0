Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618CF1329D4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 16:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF946E0D6;
	Tue,  7 Jan 2020 15:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0523F6E0D5;
 Tue,  7 Jan 2020 15:13:48 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t2so54355705wrr.1;
 Tue, 07 Jan 2020 07:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MLtZU9HpYzbZmbVfIezeBKYweFkIIWAJULqKJXUB1GQ=;
 b=pOgpqVCfAihCsGgxWXBFJrVrMFZ9DscVFJmr2f3mWWZ2ESHLCeSot0A1QT2Zwqq1uB
 JNVqx1wn1BCTOfYgSzizUhF8MB+89T5xL98+9IZ2l/Onwblv6Ah+1ft45QJHqzzFz16r
 GVF8QBDWDjHomkdoBQc725ggvIXrYsB3SiB+IfjEjR+CMGv8l/XffFFMmcO1WTp9OBx8
 GMb0G1IzIzYGpsm6WXuSx2J3shOJyrSZ5yISE4r+W/aPrXP8OSa6C2CJfUQ3McQS6CA+
 /ND4N2huk0YC/gN9PP0Yz1yKYfh9ZT8E1/yJfyBTsqRFEzE9kYXc7r27UIRUpQqkWqMR
 VKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MLtZU9HpYzbZmbVfIezeBKYweFkIIWAJULqKJXUB1GQ=;
 b=omxbVHaCftAHsaDrejWkTglrAnFRiH66tOJl9mBjErQDBcGM/iJvAOfc+rtKb099fH
 BqbmO/OD+qOkKP0AN7GFzBtPWO+ORsP8kQcjc/80CNmwEGGswRVlBowt8GDVx0TRi9WP
 EtCtoqqwvRFnRayiAi7PJX2o4bdkGUALx8f5tz/3KGi9gwcOP5lnxw77vg9RCjeCK8W1
 iM7X2SyBJe5KuRvyIJScTRHbCO+zQKNW9uz217ccIEwB5UUvRr70HUL66imcvHC2koLW
 sZIGGY7vlVqoIRJclioZtzcH95/u9DNPbU4f1v0CyXIksxr6XZJx6YmiNShqLLgTGEP9
 NFpA==
X-Gm-Message-State: APjAAAVhrdKSOZ/MOjH/eZHZfyxua1hVXhD9Y0ELZrNwYzj7oDwx68PJ
 dkhZOfRlEesuSc22zToD21w=
X-Google-Smtp-Source: APXvYqxLU5z597JDDpIE9gTOoWpNCkFxLMEVVes6q2jNqnwwYs0Oatc3uIdlFLLqxZcWWW48Qbl5dw==
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr109350909wru.40.1578410027672; 
 Tue, 07 Jan 2020 07:13:47 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id c4sm27076664wml.7.2020.01.07.07.13.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 07:13:47 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  7 Jan 2020 18:13:31 +0300
Message-Id: <7f3df2575ab41a052b7beea86ecc5385edf6f6da.1578409433.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1578409433.git.wambui.karugax@gmail.com>
References: <cover.1578409433.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 07 Jan 2020 15:18:02 +0000
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: use new struct drm_device based
 logging macros.
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace instances of printk based logging macros with the new
struct drm_device logging macros in i915/intel_region_lmem.c.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/intel_region_lmem.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index e6a6b571dad4..14b59b899c9b 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -125,10 +125,12 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
 					 io_start,
 					 &intel_region_lmem_ops);
 	if (!IS_ERR(mem)) {
-		DRM_INFO("Intel graphics fake LMEM: %pR\n", &mem->region);
-		DRM_INFO("Intel graphics fake LMEM IO start: %llx\n",
-			 (u64)mem->io_start);
-		DRM_INFO("Intel graphics fake LMEM size: %llx\n",
+		drm_info(&i915->drm, "Intel graphics fake LMEM: %pR\n",
+			 &mem->region);
+		drm_info(&i915->drm,
+			 "Intel graphics fake LMEM IO start: %llx\n",
+			(u64)mem->io_start);
+		drm_info(&i915->drm, "Intel graphics fake LMEM size: %llx\n",
 			 (u64)resource_size(&mem->region));
 	}
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
