Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0505567284D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 20:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5592510E827;
	Wed, 18 Jan 2023 19:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A557310E81B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 19:30:41 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id d16so17711339qtw.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 11:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I1/a+ysQjYWSLi+7tvGa8uhZWWX+I3DCv+Ho6KGSchQ=;
 b=PIQlIOGduxyrwhLVu1XvTThHFJgMpf7lLtpiHVnbyiWhUwVk4Xv4TADgsCPFiiNR2w
 ZmPCWIci/ZkrNa31bPmPQwB9hioQqoirPt4j4qJp8YO0bHyiBMI6WYAnS0jcTShaESGq
 bRMLOugEVzPaWg4nG5t1R1FKmJ7GAG7j7YYl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I1/a+ysQjYWSLi+7tvGa8uhZWWX+I3DCv+Ho6KGSchQ=;
 b=mYxa4fLTfivfsuNYcieYtmEOEurv6n8mOP09QFVE5RXAoI4WbtqfdKKExLDau+OntZ
 oY0mFIDTMrnI3HwiaOV5fz0oreBUoixiJpAv0RNqskH5RidH0p+dlaFE1eP1Mz/eAASc
 Al2L6Hy+OQf1NpVwpSugdQRyKil3ipSyaEeaYBIq3UJWjsbFHlsdbZhjWauvI44ibY2Q
 pYxdPjfKIEjrGUM8U7uK2QoQQkbrl1ChswwVb5w/T2xj8mXFa1JVuXG94yBvQ9ku6Int
 3FWycvyE6rEwZbQBs45VC03WUQcjUPyyGywOc5X9vK4mjdhnrdChmQlVWxOGc5cyFFP6
 VSag==
X-Gm-Message-State: AFqh2krAktQQgqFnG06cZcWAKU32XuigiLX4rDckL0wDN9sIRsUiTijk
 J8tK+C79ezzffMiXoX5S7O6wpQ==
X-Google-Smtp-Source: AMrXdXubuwUavpiFBuAnouMLvfVbBO5rVhIlniXLSoJDGRXJivyAAxSPS+AeZy15FIMrlSBRXHu5Tg==
X-Received: by 2002:a05:622a:1b11:b0:3af:7bf6:d1f5 with SMTP id
 bb17-20020a05622a1b1100b003af7bf6d1f5mr11779180qtb.63.1674070241279; 
 Wed, 18 Jan 2023 11:30:41 -0800 (PST)
Received: from localhost (29.46.245.35.bc.googleusercontent.com.
 [35.245.46.29]) by smtp.gmail.com with UTF8SMTPSA id
 h18-20020a05620a401200b00702d1c6e7bbsm7725753qko.130.2023.01.18.11.30.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Jan 2023 11:30:40 -0800 (PST)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: quic_khsieh@quicinc.com, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 19:30:10 +0000
Message-Id: <20230118193015.911074-6-markyacoub@google.com>
X-Mailer: git-send-email 2.39.0.246.g2a6d74b583-goog
In-Reply-To: <20230118193015.911074-1-markyacoub@google.com>
References: <20230118193015.911074-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 05/10] drm/i915/hdcp: Consolidate HDCP
 setup/state cache
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
Cc: quic_sbillaka@quicinc.com, konrad.dybcio@somainline.org,
 bjorn.andersson@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 airlied@gmail.com, hbh25y@gmail.com, marex@denx.de, abhinavk@codeaurora.org,
 javierm@redhat.com, agross@kernel.org, quic_jesszhan@quicinc.com,
 daniel@ffwll.ch, Jani Nikula <jani.nikula@intel.com>, lucas.demarchi@intel.com,
 quic_abhinavk@quicinc.com, swboyd@chromium.org, robh+dt@kernel.org,
 christophe.jaillet@wanadoo.fr, maxime@cerno.tech, rodrigo.vivi@intel.com,
 johan+linaro@kernel.org, markyacoub@chromium.org, andersson@kernel.org,
 dianders@chromium.org, tzimmermann@suse.de, dmitry.baryshkov@linaro.org,
 seanpaul@chromium.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Stick all of the setup for HDCP into a dedicated function. No functional
change, but this will facilitate moving HDCP logic into helpers.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-6-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-6-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-6-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-6-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20220411204741.1074308-6-sean@poorly.run #v5

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
Changes in v5:
-None
Changes in v6:
-None

---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 52 +++++++++++++++--------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 396d2cef000a..0a20bc41be55 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2190,6 +2190,37 @@ static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
 	}
 }
 
+static int
+_intel_hdcp_setup(struct intel_connector *connector,
+		  const struct intel_crtc_state *pipe_config, u8 content_type)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	int ret = 0;
+
+	if (!connector->encoder) {
+		drm_err(&dev_priv->drm, "[%s:%d] encoder is not initialized\n",
+			connector->base.name, connector->base.base.id);
+		return -ENODEV;
+	}
+
+	hdcp->content_type = content_type;
+
+	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
+		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
+		hdcp->stream_transcoder = pipe_config->cpu_transcoder;
+	} else {
+		hdcp->cpu_transcoder = pipe_config->cpu_transcoder;
+		hdcp->stream_transcoder = INVALID_TRANSCODER;
+	}
+
+	if (DISPLAY_VER(dev_priv) >= 12)
+		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+
+	return ret;
+}
+
 static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     struct intel_digital_port *dig_port,
 				     const struct intel_hdcp_shim *shim)
@@ -2329,28 +2360,14 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	if (!hdcp->shim)
 		return -ENOENT;
 
-	if (!connector->encoder) {
-		drm_err(&dev_priv->drm, "[%s:%d] encoder is not initialized\n",
-			connector->base.name, connector->base.base.id);
-		return -ENODEV;
-	}
-
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp_mutex);
 	drm_WARN_ON(&dev_priv->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
-	hdcp->content_type = content_type;
-
-	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
-		hdcp->cpu_transcoder = pipe_config->mst_master_transcoder;
-		hdcp->stream_transcoder = pipe_config->cpu_transcoder;
-	} else {
-		hdcp->cpu_transcoder = pipe_config->cpu_transcoder;
-		hdcp->stream_transcoder = INVALID_TRANSCODER;
-	}
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
+	ret = _intel_hdcp_setup(connector, pipe_config, content_type);
+	if (ret)
+		goto out;
 
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
@@ -2378,6 +2395,7 @@ int intel_hdcp_enable(struct intel_connector *connector,
 					true);
 	}
 
+out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
 	return ret;
-- 
2.39.0.246.g2a6d74b583-goog

