Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAFC183910
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 19:56:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFB96EB27;
	Thu, 12 Mar 2020 18:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C5A6EB27
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 18:56:37 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id f94so2136495pjg.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JBus33rcs/bxtojDIFRczNVDzpMKB2gTKUUCnsJQjXM=;
 b=qNG+O3OaXtIR4EVLDkbXpJmCGwwH0i2/ujAzXea7h4V0j0DYPohIv61RB487KHkCF5
 soMKjDyWkM6rpKnel1JMoInJARXQ9xPiB5ckgSz6n/ZSbU2JLMfQe2GBEH1wOhBBKg2t
 C5qNDZfF7C7NNXyPOXd5ufRRGRHjwDmZV/JOrca+KRLv/basJSprM0PSKzrpoAHCdlP3
 qxqqEVxvdFJTXvM4GUgy3UZbpZgnJbjSmY15voSyDf/HDerQtYvdABe/tXCp1aJgdKW5
 WFuFLdrMtNRlejjbvskrqkSQQh4IIJOR/Mdn/8st8BHwMe7kKUS+1JTG3MVVCRqSyoBf
 PfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JBus33rcs/bxtojDIFRczNVDzpMKB2gTKUUCnsJQjXM=;
 b=N5j21Wq46lHJwFSJyZs6knbBVcdGDdaPlhu+Ta9SfbsCPvG4k2hjOKWUsQKIs8w7kk
 6fgO5URQryJpKuqqG+kulfgkxuYt+aWWCK0gz+nye/S+8jistAB5LiTRQwR1wpvpE/VE
 eEejZbyw+mrdWdPVXXpO6snjUIiSuIwdKdn4qpHo/A8rrq9CD22BFtZurjY/zZ++7wKM
 Ig8hc1dPaGf1SOqgmuT4WcvMSVrqtDNcil01n+Uy8+FeKT+A8NdQ+8tyriAgR+ZjFU7K
 uvHkQCjBENCLO6Yk1T5V2t3F7fd1kNy5DSA+iSkgyqCri4Kh4LLXgd4Hf7THO0UoF1bo
 Q5LA==
X-Gm-Message-State: ANhLgQ0fLqtFRW7eBponZb9qY7mkTMXJ9qz8pG1LkJ1N4neSTyOKpS+T
 fDUKKvr8W0OxzOWa1We3O2W49AZOtz2z
X-Google-Smtp-Source: ADFU+vsFXW6TpnOJQxY5oJqxDW7a5dbVCvhzOlHQriPAMggKhWGdyFqIyMpSFvpC0A9aqAn7xRDRUwKwl9Qy
X-Received: by 2002:a17:90a:1c01:: with SMTP id
 s1mr5671706pjs.84.1584039396514; 
 Thu, 12 Mar 2020 11:56:36 -0700 (PDT)
Date: Thu, 12 Mar 2020 11:56:25 -0700
In-Reply-To: <20200312185629.141280-1-rajatja@google.com>
Message-Id: <20200312185629.141280-2-rajatja@google.com>
Mime-Version: 1.0
References: <20200312185629.141280-1-rajatja@google.com>
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
Subject: [Intel-gfx] [PATCH v9 1/5] intel_acpi: Rename drm_dev local
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
v9: Same as v8
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
