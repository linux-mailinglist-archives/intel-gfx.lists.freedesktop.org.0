Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6661D5183DE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 14:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA75C10F66A;
	Tue,  3 May 2022 12:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com
 [IPv6:2001:4860:4864:20::29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A68C10F0C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 16:51:35 +0000 (UTC)
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-e2fa360f6dso14836048fac.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 May 2022 09:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K90a1QhJHpsQXxatRkh1e5e68HIkTPZWj4pLHJQIQOA=;
 b=FQdtOKJDpPgUqFOC6SLrbP7LwibhmUyCwt5JMP8J7hd8YFMu7yfmlKGGywt9yD2AzZ
 4bNOCHHiB4eybvTS1NLlgDgqEqzaXe1WLrpi6/yEbiUSZF2iTfhDUcdd1aTSBJeMO0s+
 RNrSMxkgJ+cDk16I0j3q/QuMvq9FTTHLpjVDaOXW87Soxx1WNnA4G05KHPsHX0Bt1RQA
 Che3UYlwJtgGsO1iyGUIuklvTidR98D2Ml6CHj7wHGh1HQDEJRNLfW0dOlqfrKO3it+q
 zq7mWXF6EKGzBH3tI8Ob+j4wTCs0Uu1e3d+TRSRlrso0O0Uq58gkXqcVYskUpugAfKiT
 Z9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K90a1QhJHpsQXxatRkh1e5e68HIkTPZWj4pLHJQIQOA=;
 b=AU1Ci0gG60qNqRTa47GgaPO56VackI3QASYRG21H0jY8BI1IMCtVr1DQyp2lmhiigU
 /Cy65LTPFHYZKo+lt8ACnBthqVAd0cI82TbyKykQD4j5rJDZdMemjJm+aK/0qimX4uIZ
 7KPy4hbio9kHDf8vSnwlHDjrRckQjXrk+MWdTAqXJGzaS2E/srLZ3da+i3pWEk0Jdfl7
 z3YgKQFqZXqcbw8gyeJydQDvx/kJANjTwZIxyPdZdJ4ZyEL7QYsi5qIgCPmHFZzF4UZ3
 BHrDqSCveMxVswm8FkOGQDoLKfKobTCojVWhytMRirxaUf2atxYavk+i6Iq5dzBaf6BZ
 YCNw==
X-Gm-Message-State: AOAM533vulmVtVTha+2aX9sr0Zu52zwv/fOOu99fZjL0utBawS/DM7S3
 7PEZxTti5JenRykYXHmmeNn08A==
X-Google-Smtp-Source: ABdhPJzCOneZu4AMnooib+bg8ZJwce3fsqFCE7WWhYymkLStPsKv55OzdAyCgnQNFba6Oycz1dDM2g==
X-Received: by 2002:a05:6870:70a8:b0:e6:30d9:c7f6 with SMTP id
 v40-20020a05687070a800b000e630d9c7f6mr2821oae.179.1651510294594; 
 Mon, 02 May 2022 09:51:34 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 h11-20020a4add8b000000b0035eb4e5a6ccsm4029422oov.34.2022.05.02.09.51.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 09:51:34 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Date: Mon,  2 May 2022 09:53:14 -0700
Message-Id: <20220502165316.4167199-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502165316.4167199-1-bjorn.andersson@linaro.org>
References: <20220502165316.4167199-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 03 May 2022 12:03:05 +0000
Subject: [Intel-gfx] [PATCH v4 3/5] drm/bridge_connector: implement
 oob_hotplug_event
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Stephen Boyd <swboyd@chromium.org>,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Implement the oob_hotplug_event() callback. Translate it to the HPD
notification sent to the HPD bridge in the chain.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- New patch

 drivers/gpu/drm/drm_bridge_connector.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/drm_bridge_connector.c b/drivers/gpu/drm/drm_bridge_connector.c
index 0f6f3f653f65..6a0a6b14360a 100644
--- a/drivers/gpu/drm/drm_bridge_connector.c
+++ b/drivers/gpu/drm/drm_bridge_connector.c
@@ -123,6 +123,17 @@ static void drm_bridge_connector_hpd_cb(void *cb_data,
 	drm_kms_helper_hotplug_event(dev);
 }
 
+static void drm_bridge_connector_oob_hotplug_event(struct drm_connector *connector,
+						   enum drm_connector_status status)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *hpd = bridge_connector->bridge_hpd;
+
+	if (hpd)
+		drm_bridge_hpd_notify(hpd, status);
+}
+
 /**
  * drm_bridge_connector_enable_hpd - Enable hot-plug detection for the connector
  * @connector: The DRM bridge connector
@@ -233,6 +244,7 @@ static const struct drm_connector_funcs drm_bridge_connector_funcs = {
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.debugfs_init = drm_bridge_connector_debugfs_init,
+	.oob_hotplug_event = drm_bridge_connector_oob_hotplug_event,
 };
 
 /* -----------------------------------------------------------------------------
-- 
2.35.1

