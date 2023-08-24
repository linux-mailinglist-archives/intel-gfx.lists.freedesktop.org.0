Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D5A7879B3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F62610E5C6;
	Thu, 24 Aug 2023 20:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057CC10E5C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:54:12 +0000 (UTC)
Received: by mail-qv1-xf33.google.com with SMTP id
 6a1803df08f44-64b3504144cso1571266d6.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 13:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692910451; x=1693515251;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PgC9U49/1XiwmHUdLqYJREJEgjjdntczSVLh2BMuOoY=;
 b=jneh+RP2PhXCvVUPvts4fDrlGO0Ce6JTjiF+WiuMmXwfchAsRzFxukjA4PYCxz6MU9
 dQT33+c/nK7y4rP/Plb5NIEihx/jT+/7ivp/iyGj7nNPoNm8GeZog+18PWKvlEKF/ruy
 eR3GuKNnBS5Yr8erQQ/K5tKCKlZwDtGZ8YI88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692910451; x=1693515251;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PgC9U49/1XiwmHUdLqYJREJEgjjdntczSVLh2BMuOoY=;
 b=RLK0nL/dXWkWGG6stYhvfP54L450SZ7Px8zJN4Vy0poUS83HDoEF+RWMn4R4xIT8wu
 heL/y8iRwM8EedkhU+h2AvQPpEO6e3y8xzVqR9YONtxQa/3lHhGpAzJuhfdBG7+vJUCF
 suRCgqaJ7vKl3fBi//To+rMytfgEeyTMNJ+/iNFjCOT/zggXICvbPRLr9zSX70kIpkYS
 eS124vDT0p0NzG81vJlQ5NcnJJjD2pIpE3EniJAIN56zFODKzWUmAkiy5xeqDTt5wIfb
 kdDSKR2LojffJSRqwLmG+yQpzU82T6grl5/Q3UyWuLVxHP6hmC/STw3TZqQhoI49Y8Db
 20Dw==
X-Gm-Message-State: AOJu0YyZCU4CFgqLAFyvd2X40DhXVG2mUViV7wiM8mhBg3xZIS7N++aX
 28bfmjw204G+OAfBiPzxs+w+RQz0dFSqbjf/As4=
X-Google-Smtp-Source: AGHT+IFEyu6IiZPgQUAsuWOUDBYCAODiO3iub/UNk3w8eXH2eq8Kci+JIcTJL01N69WuVA1WZT9ICw==
X-Received: by 2002:a05:6214:3d08:b0:64b:654a:f553 with SMTP id
 ol8-20020a0562143d0800b0064b654af553mr18232744qvb.19.1692910450792; 
 Thu, 24 Aug 2023 13:54:10 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 d2-20020a0ce442000000b0064f5020df91sm62038qvm.28.2023.08.24.13.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 13:54:10 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 16:50:21 -0400
Message-ID: <20230824205335.500163-7-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824205335.500163-1-gildekel@chromium.org>
References: <20230824205335.500163-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/6] drm/i915/dp_link_training: Emit a
 link-status=Bad uevent with trigger property
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When a link-training attempt fails, emit a uevent to user space that
includes the trigger property, which in this case will be
link-statue=Bad.

This will allow userspace to parse the uevent property and better
understand the reason for the previous modeset failure.

Signed-off-by: Gil Dekel <gildekel@chromium.org>

V2:
  - init link_status_property inline.
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e8b10f59e141..328e9f030033 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -42,6 +42,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_sysfs.h>

 #include "g4x_dp.h"
 #include "i915_drv.h"
@@ -5995,6 +5996,8 @@ static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 	struct intel_dp *intel_dp =
 		container_of(work, typeof(*intel_dp), modeset_retry_work);
 	struct drm_connector *connector = &intel_dp->attached_connector->base;
+	struct drm_property *link_status_property =
+		connector->dev->mode_config.link_status_property;

 	/* Set the connector's (and possibly all its downstream MST ports') link
 	 * status to BAD.
@@ -6011,7 +6014,7 @@ static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 	}
 	mutex_unlock(&connector->dev->mode_config.mutex);
 	/* Send Hotplug uevent so userspace can reprobe */
-	drm_kms_helper_connector_hotplug_event(connector);
+	drm_sysfs_connector_property_event(connector, link_status_property);
 }

 bool
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
