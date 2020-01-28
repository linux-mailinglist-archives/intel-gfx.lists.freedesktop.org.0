Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D469214B027
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFB26ECB2;
	Tue, 28 Jan 2020 07:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16F36ECB2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:14:58 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id s144so1088959wme.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=APSOYoPrKj7XNSAjRDsq0hJAMCLZ6Aj3sQC49BK8M5Q=;
 b=PVamBLNY4FDB0TgfXxiBr7RSkCJYKpURtgp27L/93YSv7yuih8PFlREz0IfhXRCTa4
 ajq049qNyydDrfZwK3dx5Qk6HnEkTLCf3Aa0PgJgRZJQ6zC3OT8lZfhc6Y2e8pwluJIq
 jrtPI1hdckJfveBRVAi1iU8XtKpfrSwTifyX7XIT9m7y12fedzWoiS8kIyQcETE56xGe
 WyYFeUK9jq3wIWyCnYD+OJCGFvBBA7ktPhCrYz8NyBCznfZ/nEpZLPS2eeAeoBzj9H4G
 fEuFVOVc2pWCdFWwSuF2YJKnL2HNHvOtk2O6cbVMvAPzggawBHeLxqb6tAoGqkqmyDTL
 bt0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=APSOYoPrKj7XNSAjRDsq0hJAMCLZ6Aj3sQC49BK8M5Q=;
 b=ng25FEarT8yvbDkxUpn7ZPcPdMZnPIxQ24TirlrcHQFON3sqmjSSEnerH52Zk4kQ4e
 YxxTLHgvbQOnf4atsNg3xxLRtbogGPiEVKYEswU6v50X9BaF1Cgxipk3z4eRbEzpmAB5
 U3tnXhKsv+oQFVyVm28TpQDXMxYZbPVBqpYOKvsCiPoOzkBHlw2kCRbzwvqcnQxzA4H4
 Bo3C4iDoS2CyInh+kEgOYrOZlelUrTPnzyrivOgE/20eNO/Tm1gwxq+VcAbWKCEsjeeK
 jPm87ijL3zicRwVMxqKOodz4LunWIb6T2p/a9GpNSGO53uJDagIbqT1aQIuxl90kHHsz
 PanQ==
X-Gm-Message-State: APjAAAU2N1uwDVGt+TRFFGzfrMJKfaEHx8a0H8yNYKxijtedc2bzXC4p
 rk5L81hOmOFpLN0Rc0TtQrg=
X-Google-Smtp-Source: APXvYqxHHPJ5S7s7LBfE6hK8iZmp0Ag9NG0WDD17M/DUy9qDKhCb6vZ1Y+M/vFafGQf92zdptATVhA==
X-Received: by 2002:a05:600c:3d1:: with SMTP id
 z17mr3255753wmd.90.1580195697386; 
 Mon, 27 Jan 2020 23:14:57 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:56 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:34 +0300
Message-Id: <20200128071437.9284-6-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/lrc: conversion to new drm logging
 macros in gt/intel_lrc.c
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

Converts most instances of the printk based drm logging macros in
i915/gt/intel_lrc.c to the new struct drm_device based logging macros.
In some instances, extracts the struct drm_i915_private device for use
in the logging macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5003c2e84786..57bd77120b5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3310,7 +3310,8 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 
 	ret = lrc_setup_wa_ctx(engine);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Failed to setup context WA page: %d\n", ret);
+		drm_dbg(&engine->i915->drm,
+			"Failed to setup context WA page: %d\n", ret);
 		return ret;
 	}
 
@@ -3372,7 +3373,8 @@ static bool unexpected_starting_state(struct intel_engine_cs *engine)
 	bool unexpected = false;
 
 	if (ENGINE_READ_FW(engine, RING_MI_MODE) & STOP_RING) {
-		DRM_DEBUG_DRIVER("STOP_RING still set in RING_MI_MODE\n");
+		drm_dbg(&engine->i915->drm,
+			"STOP_RING still set in RING_MI_MODE\n");
 		unexpected = true;
 	}
 
@@ -4502,6 +4504,7 @@ populate_lr_context(struct intel_context *ce,
 		    struct intel_engine_cs *engine,
 		    struct intel_ring *ring)
 {
+	struct drm_i915_private *i915 = to_i915(ctx_obj->base.dev);
 	bool inhibit = true;
 	void *vaddr;
 	int ret;
@@ -4509,7 +4512,7 @@ populate_lr_context(struct intel_context *ce,
 	vaddr = i915_gem_object_pin_map(ctx_obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		ret = PTR_ERR(vaddr);
-		DRM_DEBUG_DRIVER("Could not map object pages! (%d)\n", ret);
+		drm_dbg(&i915->drm, "Could not map object pages! (%d)\n", ret);
 		return ret;
 	}
 
@@ -4588,7 +4591,8 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
 	ret = populate_lr_context(ce, ctx_obj, engine, ring);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Failed to populate LRC: %d\n", ret);
+		drm_dbg(&engine->i915->drm,
+			"Failed to populate LRC: %d\n", ret);
 		goto error_ring_free;
 	}
 
@@ -4975,8 +4979,9 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 		GEM_BUG_ON(!is_power_of_2(sibling->mask));
 		if (sibling->mask & ve->base.mask) {
-			DRM_DEBUG("duplicate %s entry in load balancer\n",
-				  sibling->name);
+			drm_dbg(&sibling->i915->drm,
+				"duplicate %s entry in load balancer\n",
+				sibling->name);
 			err = -EINVAL;
 			goto err_put;
 		}
@@ -5009,8 +5014,9 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 		 */
 		if (ve->base.class != OTHER_CLASS) {
 			if (ve->base.class != sibling->class) {
-				DRM_DEBUG("invalid mixing of engine class, sibling %d, already %d\n",
-					  sibling->class, ve->base.class);
+				drm_dbg(&sibling->i915->drm,
+					"invalid mixing of engine class, sibling %d, already %d\n",
+					sibling->class, ve->base.class);
 				err = -EINVAL;
 				goto err_put;
 			}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
