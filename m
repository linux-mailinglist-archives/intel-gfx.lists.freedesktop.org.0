Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B078D02DB8
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 14:08:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6ABF10E70A;
	Thu,  8 Jan 2026 13:08:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z3rvJPXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59E8F10E6EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jan 2026 11:14:49 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-b843d418e37so303864466b.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jan 2026 03:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767870888; x=1768475688; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=sKWgs5dpdsKH6FgeBZzq94nwZdAGzGB7JCxbwQEsmoY=;
 b=Z3rvJPXQ0Rk6VAQhrHwSBikUNjH3rGzeXmJTrNiF+1hZa5Ar65zCs3RbcqCr1gt4WM
 ZUC8zxEa+zIZXEdXcgkNv41BdQGlhFiM/PO7nHbS1x13gtJhvFVRC/C0TOSYnDMSp/MS
 +6sRSjQPbVJTroyWx+nM8f5NdDdJXA58v7Bl4P4a8cEQCPW73bRk47vxRxt2EhieCC2r
 HdKz1t/FAkIve7SoyhYz5BI9zhROONUKIvYyTzgtmhk4S37KfOYMT/w+mP1r1Sx4z276
 qiH4ZQAcOakUiPsZxc8tTB8j5zJQb7tdUhUyU0LwxVqBdqrXL8+v1f035qUpe9uoTUrn
 SPEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767870888; x=1768475688;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sKWgs5dpdsKH6FgeBZzq94nwZdAGzGB7JCxbwQEsmoY=;
 b=VqkLc2g12CI+AwVHgplLUYdfoE5IP5i+rkeJSpf3weT4zF7ZH07VF3TP0Yp7hqD1pr
 +lOsBnaA/Qj0z4l9qx6CItRrRTwsI9hLnhJw/7xX6WJ2mfZ2QQ7COnjR485WSfdSnW1U
 qtmu6r2JMSmL6w0SU9BxIo64pxd2Bi8mssn+HJPv9toCaz1ncGr2Qi76AvfeHrGDOVfA
 FP6+CWdvc/QDiFbHoMva/La6F3uQ5qZJ8WWfo9BuurFQgE41h3tf1MaLavfX+9EG2+3x
 GT08f1BPsDJqW/RigfMZWTxlQy3vPx+V5nfK6RQfv5Uq/TqHm4uucFCtseg5HI9AlWeG
 xIeA==
X-Gm-Message-State: AOJu0YyOGri3i4fdrKcSytLXDKzP6viBxwECI6qAjAC/kuBMuUzS2Vz/
 /KH1ohYfZHSWNH0gjU6aokuvPuQaWtnF7tf7sEwrqUv0JSoEnyf+Lf+5iwQrYltc
X-Gm-Gg: AY/fxX4aNPfsmE52GZ8J5wbKB/OjTAl8qqS5YSTpQQkyQ5DjHU/pC7HHhz/w4q/7j/2
 CIfqXRURS+loIljsuKtx5AhDA1Ikj4RE2AWrbyFcdwlxn5nAb96CMAqDXmC5uQJ2xGDbIf1Nltv
 IbcKYg7KneXTuBqoaQ4tMrH6fGHZWWUYxNTCdE/4CuRr2WwUV86n6lHGaWRZ0xmRyq0U4BzMfjK
 pRQrYO4HoS/X87GH+xuB8pq8gTtYOSdhDBaYrjJ1PabnXirbR+9x5zq9XZ17/EjLah7r5aw0iN8
 DKlXrHN8chw2LTWwnuqLx5hLIAKGBKlGSYBmWvaYCzkJyFUXIyy5Pt9j7xCHF2EZh/Chc3TNTAj
 qlEOaCGMQuB6vYGWfVf4Mc2doOsxHYpiT8J1OkZpQCe3I77nULyZKpXjkHdIlMJFeEfwf/D2Ymb
 ZOFytfFp6Bw13DXmMx21l2JdHkiJYri0zSs0y8u0FUNdlZFXHl/1FavToUqw==
X-Google-Smtp-Source: AGHT+IEEQdScJUI+y/w411MeGdHdGWQWK5K/5xt1RDN2pUdRUo096NsBq3GlzFyCpuIme5CiiTT2Bw==
X-Received: by 2002:a17:907:9550:b0:b7f:fa5d:53d with SMTP id
 a640c23a62f3a-b8429b96f7dmr706187366b.30.1767870887507; 
 Thu, 08 Jan 2026 03:14:47 -0800 (PST)
Received: from JTOLLET-M-FKW7.cisco.com
 ([2001:420:44f5:1250:8dec:f0e8:213b:6bde])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a4d3229sm766484666b.37.2026.01.08.03.14.47
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 08 Jan 2026 03:14:47 -0800 (PST)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, ankit.k.nautiyal@intel.com,
 Jerome Tollet <jerome.tollet@gmail.com>
Subject: [PATCH 1/2] drm/i915/hdmi: Poll for 200 msec for TMDS_Scrambler_Status
Date: Thu,  8 Jan 2026 12:14:46 +0100
Message-ID: <20260108111446.1954-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 08 Jan 2026 13:08:14 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per HDMI 2.0 specification, after scrambled video transmission begins,
the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
until a timeout of 200 ms.

Add a polling step after enabling the HDMI port to verify scrambling
status, following the spec requirement.

Without the wait for the scrambling bit to set, some HDMI 2.0 monitors fail
to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
fully configured by the sink.

v2:
 - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
   as per the HDMI spec. (Ankit)

Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
 3 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..c708b713f0e8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	}

 	intel_ddi_buf_enable(encoder, buf_ctl);
+
+	intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
 }

 static void intel_ddi_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 055e68810d0d..958d939ae6ee 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_
 	drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
 }

+/*
+ * As Per HDMI 2.0 spec: after scrambled video transmission begins,
+ * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
+ */
+void
+intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
+				      struct drm_connector *_connector)
+{
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(crtc_state);
+	bool scrambling_enabled = false;
+	int ret;
+
+	if (!crtc_state->hdmi_scrambling)
+		return;
+
+	/* Poll for a max of 200 msec as per HDMI spec */
+	ret = poll_timeout_us(scrambling_enabled = drm_scdc_get_scrambling_status(&connector->base),
+			      scrambling_enabled, 1000, 200 * 1000, false);
+	if (ret)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
+			    connector->base.base.id, connector->base.name);
+}
+
 /*
  * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock ratio setup
  * @encoder: intel_encoder
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index be2fad57e4ad..0fa3661568e8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			unsigned int type,
 			void *frame, ssize_t len);
+void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
+					   struct drm_connector *_connector);

 #endif /* __INTEL_HDMI_H__ */
--
2.45.2
