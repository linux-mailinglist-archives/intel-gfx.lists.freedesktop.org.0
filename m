Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C810A14EA1F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3156FAD2;
	Fri, 31 Jan 2020 09:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20FC6FAD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:33 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id t14so7859183wmi.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 01:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X0PIGPoeDr/pIJJ229fSfp8aRbECbdp8XnsQ57/IaUw=;
 b=BLmeigFVI213Tbu/uRcWfIaEAF4Ry1R9SNXvOcxUaFp7OaxpWTiR1C6nUSvXvDXwwn
 iAPMMxwjdHTealBXypleyQBVZ/UAcG4dxf3ncfLRFReyXwKReA+z4Qhke6uzJfQ9qO5C
 r17t4p8yw6f5PzF2B7k7ev//ymw2UNBEUzHOcA2SuQSPkVXjV7HmFhw1c88BbK9qXMfV
 17BtZePPZ9YgrQ1GdmLFd0b8Y3+dnQVpUJZ698Yvz1QqGA1goQT12YMcV4AvHFtFhEYq
 bsqygvGtxqqHqErw0IwkVS6mGm2/hj98lcb5GONKhSl8R8JF650GSuKiQm505dXqePjb
 q1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X0PIGPoeDr/pIJJ229fSfp8aRbECbdp8XnsQ57/IaUw=;
 b=jkMuc1enu+/JuL3XGu9H7IFJ6p3VErMX4IVV8oZBVFD4X8vduvaBs0Gpp/x1JnbASr
 hn3VGWB82hzUbUSxhvy7GpyVAfpulz+4rBYwfc6Hb+YTxIags+HEudluhAa1wsLSn4Te
 kzKZ8Fh39musyfeRq4EmBXEUMHFiUYtrecZvR3ydwjRLayMV7KvL45cYpub6Hmr9btts
 zjOjujJFqMtKVKy611eFx4pFJ2LKa5yt0p/rYu4JQjLF7HpZR1CHkD4opivCQQFWwHyJ
 OoyCQJAl+Vd8wJFuqEWTT8oLgrx273qGuKlKNEKJvH7ld4SJr09xDPHm9rJbbCxHwBh8
 ejUg==
X-Gm-Message-State: APjAAAUHVSiW9WEwyK9+1QjCpmqSMUwovDyZrvvrXabjldJF8VKm2FMq
 Kpw7Pt2JCte2Ehv7UAX1GHw=
X-Google-Smtp-Source: APXvYqwD89831Notqh1iTguhgY1plST5SMuUY+04oAj3vHpImUuEMzchGDQZecdoxc1gvE/t+N758w==
X-Received: by 2002:a05:600c:295d:: with SMTP id
 n29mr10985995wmd.101.1580463272463; 
 Fri, 31 Jan 2020 01:34:32 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm10365360wmc.38.2020.01.31.01.34.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 01:34:31 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 31 Jan 2020 12:34:14 +0300
Message-Id: <20200131093416.28431-4-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/cmd_parser: conversion to struct
 drm_device logging macros.
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

Manually convert printk based drm logging macros to the struct
drm_device based logging macros in i915/i915_cmd_parser.c.
This also involves extracting the drm_i915_private device from various
intel types for use in the macros.

Instances of the DRM_DEBUG macro are not converted due to the lack of a
similar struct drm_device based logging macro.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 29 +++++++++++++++-----------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index a0e437aa65b7..189b573d02be 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -803,10 +803,11 @@ static bool validate_cmds_sorted(const struct intel_engine_cs *engine,
 			u32 curr = desc->cmd.value & desc->cmd.mask;
 
 			if (curr < previous) {
-				DRM_ERROR("CMD: %s [%d] command table not sorted: "
-					  "table=%d entry=%d cmd=0x%08X prev=0x%08X\n",
-					  engine->name, engine->id,
-					  i, j, curr, previous);
+				drm_err(&engine->i915->drm,
+					"CMD: %s [%d] command table not sorted: "
+					"table=%d entry=%d cmd=0x%08X prev=0x%08X\n",
+					engine->name, engine->id,
+					i, j, curr, previous);
 				ret = false;
 			}
 
@@ -829,10 +830,11 @@ static bool check_sorted(const struct intel_engine_cs *engine,
 		u32 curr = i915_mmio_reg_offset(reg_table[i].addr);
 
 		if (curr < previous) {
-			DRM_ERROR("CMD: %s [%d] register table not sorted: "
-				  "entry=%d reg=0x%08X prev=0x%08X\n",
-				  engine->name, engine->id,
-				  i, curr, previous);
+			drm_err(&engine->i915->drm,
+				"CMD: %s [%d] register table not sorted: "
+				"entry=%d reg=0x%08X prev=0x%08X\n",
+				engine->name, engine->id,
+				i, curr, previous);
 			ret = false;
 		}
 
@@ -1010,18 +1012,21 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
 	}
 
 	if (!validate_cmds_sorted(engine, cmd_tables, cmd_table_count)) {
-		DRM_ERROR("%s: command descriptions are not sorted\n",
-			  engine->name);
+		drm_err(&engine->i915->drm,
+			"%s: command descriptions are not sorted\n",
+			engine->name);
 		return;
 	}
 	if (!validate_regs_sorted(engine)) {
-		DRM_ERROR("%s: registers are not sorted\n", engine->name);
+		drm_err(&engine->i915->drm,
+			"%s: registers are not sorted\n", engine->name);
 		return;
 	}
 
 	ret = init_hash_table(engine, cmd_tables, cmd_table_count);
 	if (ret) {
-		DRM_ERROR("%s: initialised failed!\n", engine->name);
+		drm_err(&engine->i915->drm,
+			"%s: initialised failed!\n", engine->name);
 		fini_hash_table(engine);
 		return;
 	}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
