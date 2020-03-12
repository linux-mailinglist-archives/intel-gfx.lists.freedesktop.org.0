Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCCD182666
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 01:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034A96E9F2;
	Thu, 12 Mar 2020 00:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com
 [IPv6:2607:f8b0:4864:20::a4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD556E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 00:57:31 +0000 (UTC)
Received: by mail-vk1-xa4a.google.com with SMTP id b136so1671992vkf.20
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 17:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=zfQL1NufXJXKszWu72jE1H3reXD9X3Cw+0IUbEiABbs=;
 b=bT1CrWbV4OeJpGXX03s+OUjA04G+CjGZX2Tf3a3Uc+hxyENfPUI+C5i/B3FF5a9Cwc
 KUXD8rZSh+N82h8RwgutzToHhe2EW0u3Cl24Fy4uDwxSGZn5xQ1ffJ7Wf83wi1GHWAQk
 Wrseo8utA4nuxC0luM2akfn665xHAB9f10uuUc9f7Mzsi0Hc+vT8w8fp1ecaKUJBCDae
 ZgyNCq8WxyiiD8e/bmHFSWLCmqyUhdJRXe6xAvu5mxI2vSCcPQDZ7aUevFVjhRvBdStg
 1tGQSxOewrQmYz+mdiT4w5beVHsK3h1XiLqXRCXLA4T1xx0UU0wYqzjL/BUx3oudUkWz
 bQNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=zfQL1NufXJXKszWu72jE1H3reXD9X3Cw+0IUbEiABbs=;
 b=YdSRQOhzKo5iW9bI5pCesckBYMMlaCRGqbkjV0rpn19eFKSwvdkK6mMaxjQglFOsPD
 p5nDTU+3hXQnhz5GVZfac5fP77+VFLOQtD1p56pAntSkEtSPmprDYRA+SP77YASOf5M6
 EK40DWE1IrnuOqnV5BLdzGiO0KmTkoL2Q5xOBM5gwoe7+nqKeHBSml3eNBXBIREEEcPe
 pH/H7lfyFZRKZjpP38s8gJp3zg3nNNiFiqhah9P0VABP5N8WkxYpi8nST3w90sIwwZf3
 yvSiZ2TLqZJPjOVASND1e575ra4zniexty3Sx+sJ8CbFVssViqJuojcG5nzN/EJ9A19x
 apuA==
X-Gm-Message-State: ANhLgQ2uoUnM9VAmBKRe13mA2wb4NgXprNtjITCPaye1urGk4mPZmYFr
 n52PSSjreWmEYYzBtMbT4Hjr4sHVPdw4
X-Google-Smtp-Source: ADFU+vudXPpltJWf5kCHaXEyXnesLFR5gJzoEWgqDEP7sXpXeSYgwHh/qrrl5VAWvaMLl86pkFonQ4bkM/3U
X-Received: by 2002:a67:7dd0:: with SMTP id y199mr3632675vsc.158.1583974650664; 
 Wed, 11 Mar 2020 17:57:30 -0700 (PDT)
Date: Wed, 11 Mar 2020 17:57:18 -0700
In-Reply-To: <20200312005722.48803-1-rajatja@google.com>
Message-Id: <20200312005722.48803-2-rajatja@google.com>
Mime-Version: 1.0
References: <20200312005722.48803-1-rajatja@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
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
Subject: [Intel-gfx] [PATCH v8 1/5] intel_acpi: Rename drm_dev local
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
Cc: Jani Nikula <jani.nikula@intel.com>, rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change the struct drm_device * local variable from drm_dev to dev
per the feedback received here:
https://lkml.org/lkml/2020/1/24/1143

Signed-off-by: Rajat Jain <rajatja@google.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
v8: same as v7
v7: same as v6
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
2.25.1.481.gfbce0eb801-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
