Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05929179D45
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 02:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5E86E11C;
	Thu,  5 Mar 2020 01:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB006E11C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 01:23:47 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id l17so2263000pgh.21
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2020 17:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=C9EkwJ1gUg61QN8k194CxCHcCIG0/y+uw6Hl1AyDtGU=;
 b=ZYUFsof2AdnN/vxqOFzeKiPT7SkzpB/41s6WTfPp++cAv0qbgdDjJ6g5Rga20zTPBf
 gVsTD4MeMUoXCcB+Yigcrgnk5XZFiAVW/wNHUFEQSxUBuWOc4VMLHC9HhaNdfPSo4ZPe
 4Kc4pufQiFjyEB3orS6YAYWNQpQ/Dop2rQPcJtiRb11ektKq1x/7kQKp8Y8GjqGzwOgC
 EqqXorAOfzF4xN26+FaMtotHiNvsBJ/EmkGcx1l0Iq/CSDkgdarDn6oWTsh6VXUn38Dq
 l0C46YIBY9maN/qy1VA09qYcXLwOQPUjkIqftU3r+2Wa2+AZQrPHmTpatnf476pjTwrI
 CSXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=C9EkwJ1gUg61QN8k194CxCHcCIG0/y+uw6Hl1AyDtGU=;
 b=jb/+Y/9GvyHNcISrjcuPQ6xTuaQuBg5gBBJ1fqc2t6GA/5+r99qq+ifOkHMyanOTUU
 A0Ltq528Dmeuf78Pby9IOWM9+43IGO0nJrAJ2FWmIk6wWmOuoubcqT3aghDS0T5QkEtq
 O7XFD5C+NlWDpgfMOXX+1wEIWNY3mKB+ucI5T0RHjXJsyNP+smGDaxE6LEBHs6zbrMbX
 w+CBHWmfjHHazT83X/ALTBoj1amiMI4+7lVaXHz4EggWN+ovmN7fTp8rMmSpFPbFBhOL
 zTKRVx/aP7x7rMSt180/usgV1BJmvnyQTmgaJdzfifpMnsu5DINHeGaN+MC7B7YcivBC
 6lvA==
X-Gm-Message-State: ANhLgQ2tDyd08JrlVtYh/5EXUWFKV0QtsKBM+DYEuWYDZ9wR3g38Ggdc
 0idR5J+YknYwnRqsb1weUslnpUfoe6Fb
X-Google-Smtp-Source: ADFU+vt22Y/ktG0yM2E5RHf9kr3+rTtxgnQJRQ51fjn3zDr8ksVD4tQhfSFd9ZOr4BIHrnKtguZNIHHL5bU7
X-Received: by 2002:a63:2166:: with SMTP id s38mr4787838pgm.83.1583371426342; 
 Wed, 04 Mar 2020 17:23:46 -0800 (PST)
Date: Wed,  4 Mar 2020 17:23:36 -0800
In-Reply-To: <20200305012338.219746-1-rajatja@google.com>
Message-Id: <20200305012338.219746-2-rajatja@google.com>
Mime-Version: 1.0
References: <20200305012338.219746-1-rajatja@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
From: Rajat Jain <rajatja@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 "=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=" <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 "=?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?=" <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 gregkh@linuxfoundation.org, mathewk@google.com, 
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, seanpaul@google.com,
 Duncan Laurie <dlaurie@google.com>, 
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>,
 mpearson@lenovo.com, Nitin Joshi1 <njoshi1@lenovo.com>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>, 
 Tomoki Maruichi <maruichit@lenovo.com>
Subject: [Intel-gfx] [PATCH v6 1/3] intel_acpi: Rename drm_dev local
 variable to dev
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change the struct drm_device * local variable from drm_dev to dev
per the feedback received here:
https://lkml.org/lkml/2020/1/24/1143

Signed-off-by: Rajat Jain <rajatja@google.com>
---
v6: Initial patch (v6 to match other patches in the set) 

 drivers/gpu/drm/i915/display/intel_acpi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index e21fb14d5e07b..3e6831cca4ac1 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -224,13 +224,13 @@ static u32 acpi_display_type(struct intel_connector *connector)
 
 void intel_acpi_device_id_update(struct drm_i915_private *dev_priv)
 {
-	struct drm_device *drm_dev = &dev_priv->drm;
+	struct drm_device *dev = &dev_priv->drm;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	u8 display_index[16] = {};
 
 	/* Populate the ACPI IDs for all connectors for a given drm_device */
-	drm_connector_list_iter_begin(drm_dev, &conn_iter);
+	drm_connector_list_iter_begin(dev, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		u32 device_id, type;
 
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
