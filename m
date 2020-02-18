Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B63162D28
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 18:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFAE6E37F;
	Tue, 18 Feb 2020 17:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA346EA66
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 17:39:45 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c84so3853202wme.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 09:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EuSZH7RBSVnBP1t8gB2H/zMaLYwc8J+lSXBZKx5Z+ek=;
 b=nr3tfMtiS+x1mssqxh3XCDDYSjznm/HZ8DLj1OyqGlG5Zd41Q5tW43I7YtjArzi97H
 Gcp4SoWR5TqjlVIK+gGAdW5zNjdAYX4ux+hZcoB6lG/KVLVacjUt8pn20v4hO8yvXQi1
 algLJu/d9uoGKOjUJAVit23bYRaCiq5cF7e0X8s7xzpy01SIIUve3rKhwYEA+lA6QD8I
 Ml2rUrY1gcr4Jei81e5uIdDQHhVdnEAHwj8nta5TX3kzcD05okaabOp0uV/oUYr73Qfl
 DQJuu5eYrZGGQNdGuONUARuJp1i+ndMQlbHvYpsqecBnFFu+Hk6kuawpnVBByhJbx7Ph
 vxtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EuSZH7RBSVnBP1t8gB2H/zMaLYwc8J+lSXBZKx5Z+ek=;
 b=eQqrqOGW64qJq5EehvvENaYAMrb0n+8+obRE7zKSatkZlpDowYYVINBZeRiJKM0vRC
 JQLS9gfLBx52i3elwHBlFrwItptibZUizv3Ks9o/FulYtKq3/G47YcXR7E11iU33YenA
 Iu3891357tkCe9rQy1wWZvhUiaYLDZQ0e6oMYuN9zz+0RFUutzhyfTCwV9hHGmn++0tC
 D5RaJ2lD06GCFzg6kWjko3jlV/IVfDtdOgj7WKMaRbGzZ47to5ov0RN+f8MbKGx+YQkR
 ya9a2su3pZtyz6tC55v9RljrXWc3T7uW/iJ6f93DrI0fV76Jb1/mVnn9zhDZrIEeK/wl
 41bA==
X-Gm-Message-State: APjAAAUzAUNj6iACGL3z8tM3rYt+rQXoLoRJ47ta4Dm6gwUCW1I91T5T
 JXRXF1M6VgdgFCqMNPVN85Q=
X-Google-Smtp-Source: APXvYqylTLiOWnL/Vs9z7sHew6WyyhdtIORE7EiJcN4Q1UodtPxcnbyw56/hBlTLYBNyplDEdxkYIA==
X-Received: by 2002:a7b:c935:: with SMTP id h21mr4146369wml.173.1582047584335; 
 Tue, 18 Feb 2020 09:39:44 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id c74sm4553824wmd.26.2020.02.18.09.39.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:39:43 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 18 Feb 2020 20:39:36 +0300
Message-Id: <20200218173936.19664-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/perf: conversion to struct
 drm_device based logging macros.
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

Manual conversion of instances of printk based drm logging macros to the
struct drm_device based logging macros in i915/i915_perf.c.
Also involves extraction of the struct drm_i915_private device from
various intel types for use in the macros.

Instances of the DRM_DEBUG printk macro were not converted due to the
lack of an analogous struct drm_device based logging macro.

v2: remove instances of DRM_DEBUG that were converted.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b5249ee5bda6..e34c79df6ebc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -555,8 +555,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 				aging_tail = hw_tail;
 			stream->oa_buffer.aging_timestamp = now;
 		} else {
-			DRM_ERROR("Ignoring spurious out of range OA buffer tail pointer = %x\n",
-				  hw_tail);
+			drm_err(&stream->perf->i915->drm,
+				"Ignoring spurious out of range OA buffer tail pointer = %x\n",
+				hw_tail);
 		}
 	}
 
@@ -745,7 +746,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 */
 		if (drm_WARN_ON(&uncore->i915->drm,
 				(OA_BUFFER_SIZE - head) < report_size)) {
-			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
+			drm_err(&uncore->i915->drm,
+				"Spurious OA head ptr: non-integral report offset\n");
 			break;
 		}
 
@@ -1041,7 +1043,8 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 		 */
 		if (drm_WARN_ON(&uncore->i915->drm,
 				(OA_BUFFER_SIZE - head) < report_size)) {
-			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
+			drm_err(&uncore->i915->drm,
+				"Spurious OA head ptr: non-integral report offset\n");
 			break;
 		}
 
@@ -1339,9 +1342,10 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 
 	ce->tag = stream->specific_ctx_id;
 
-	DRM_DEBUG_DRIVER("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
-			 stream->specific_ctx_id,
-			 stream->specific_ctx_id_mask);
+	drm_dbg(&stream->perf->i915->drm,
+		"filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
+		stream->specific_ctx_id,
+		stream->specific_ctx_id_mask);
 
 	return 0;
 }
@@ -2657,7 +2661,8 @@ static void gen7_oa_disable(struct i915_perf_stream *stream)
 	if (intel_wait_for_register(uncore,
 				    GEN7_OACONTROL, GEN7_OACONTROL_ENABLE, 0,
 				    50))
-		DRM_ERROR("wait for OA to be disabled timed out\n");
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA to be disabled timed out\n");
 }
 
 static void gen8_oa_disable(struct i915_perf_stream *stream)
@@ -2668,7 +2673,8 @@ static void gen8_oa_disable(struct i915_perf_stream *stream)
 	if (intel_wait_for_register(uncore,
 				    GEN8_OACONTROL, GEN8_OA_COUNTER_ENABLE, 0,
 				    50))
-		DRM_ERROR("wait for OA to be disabled timed out\n");
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA to be disabled timed out\n");
 }
 
 static void gen12_oa_disable(struct i915_perf_stream *stream)
@@ -2680,7 +2686,8 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
 				    GEN12_OAG_OACONTROL,
 				    GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE, 0,
 				    50))
-		DRM_ERROR("wait for OA to be disabled timed out\n");
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA to be disabled timed out\n");
 }
 
 /**
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
