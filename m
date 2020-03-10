Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29E717ED14
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F024F6E5C3;
	Tue, 10 Mar 2020 00:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511A66E5BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 00:06:25 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id w3so6334240plz.15
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Mar 2020 17:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=VDuOhbt4EtVAr5HqP/z/JEAhJ6aufU2qBAQhX8Irrmg=;
 b=GrS+pcj6aRCeWKMOofPnAlbvuD551qH8x0F3XmDw6A3bEjIm8CdBeBzk8YPDrzjD0s
 60fz0+NNvEPN2e7OgoN2O2oCMh1+e5iR69wFFjYkM6zemzHcqwkv+D2dzcZWd0jmrdU8
 FwN2gT7wobMh9LXMaGkMXQPdSH9aPWM0g2IlCrnkoxLhviqrDSgx9IpKpJjsmqhh/OWE
 FZZfsWusbJK822c6Q0OnyDbwFnhz6kNpYj4Oc0zwCnFA+4P522se/fLtdHlxMYMIFesB
 iHjIZi+7gKh3BW/TbfRZeBMzlJDiWzv8tz9LQLK+2+I9aRCoMWYh9EVKdMPm06/FkVK9
 2PvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=VDuOhbt4EtVAr5HqP/z/JEAhJ6aufU2qBAQhX8Irrmg=;
 b=hdHCLz5cADfSv0IYH5tVI4axrbmsWyL3s+1jW46rsaejo3MMepHG0JVg2eX0F/xYUG
 B7TLBKeFhdWlyojhIvPfgu2KLvDAOEEsntz5NJZdf/LfE4EAoHrlY7thfl/Sv5mo8GHI
 wXMf06V5rAWXGaO5yXcbxkqBGdj+HL54FXq2sLZHK1DXK61PnYQ3G2Eis3zXHW/I45ZS
 9s5WtKweTv4n6e61SEX4eVj887zXrsp5j+Cr1E6DhncOCKjrQx+ddmSnOTNLqMoFjONo
 3PDGDyJOzZV4BMo+Q0vDOIRrEIwiOq3oU/LQzOp+6rlXtKo1Ai3Is7+3L+mKaHeyDHRS
 Rbuw==
X-Gm-Message-State: ANhLgQ0ehYGYH2TiLHeN9rbfM8k+VTbFUn8qi4IEbOtU58xE7gyG6lTk
 kzkLlv3Lh7HLamC95Ytf2tx5o9ALr/1U
X-Google-Smtp-Source: ADFU+vtIdSBAQ/U0X6peaC3aYMgqWZSFYK7uWpMZKYsfO/SGNw2kHtAhYM7t3936cdiRunMRrME0efqVEQLM
X-Received: by 2002:a17:90b:4010:: with SMTP id
 ie16mr190054pjb.185.1583798784825; 
 Mon, 09 Mar 2020 17:06:24 -0700 (PDT)
Date: Mon,  9 Mar 2020 17:06:14 -0700
In-Reply-To: <20200310000617.20662-1-rajatja@google.com>
Message-Id: <20200310000617.20662-2-rajatja@google.com>
Mime-Version: 1.0
References: <20200310000617.20662-1-rajatja@google.com>
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
Subject: [Intel-gfx] [PATCH v7 1/4] intel_acpi: Rename drm_dev local
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
