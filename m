Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7A4BA306F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 10:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E21810E307;
	Fri, 26 Sep 2025 08:55:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="i0m3M4JP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B97410E22E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 08:55:34 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BE0CF3FCFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 08:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1758876931;
 bh=tYbCmz6DRcivudFtizhBKVDUP6a4VtRsDibIRlblbac=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=i0m3M4JPqJ4zZhGAHzrWfTf2qPPzzgz459hTHD2jnkHL6ypKJU7YDCbuBSuerQqYL
 6cEkC6Gslx43LEQmoBNCSpfoE5U5ACsNZ0grplbpqKWupLr3YJgIDT7eNs/84PIVAO
 0rXELlovXChVFvH8uu8LnsfY1ldgThtEbt7rjGAchi3kwC98UQU5veUKU+LMpHKOxr
 MFPdS0VFNJ7oZYQVDodSR6mghQ3tUWs5ko0ZYxcR0UpA3joNx1jQbe0P5dSSRmWBoK
 nSho6vo359rHvpePP61KwX9/l9eqFqLCXQmptBgVAfDDjnAOgr1uj+Hru8QOuugGHn
 qxcwk5SnUswsQ==
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-634b661347bso821173a12.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 01:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758876931; x=1759481731;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tYbCmz6DRcivudFtizhBKVDUP6a4VtRsDibIRlblbac=;
 b=QtuiXBSYZMocuWVi7hybn7Y1GPP7PrdpeITv2+ElhrqfigCf1Q8n0XWaSNJye8u143
 ZdNpdkfPx6nPjAFlXDgwoVWTZJh2/Ug/y5jUfnAnr+Bkg+NdPWBrSM9PRj7duG6GTl+O
 aAVJwj6PzqdJdgLgQ7hAWCi5gxM+SiE4VnJlRf+U38pdQhyDhJnFwYON/6vnccMSp/sW
 ASMjKk+6vTXU8vAer+pwC049Gw1bVWn5jA0IbHPtCo2jXyHBIaomMLOyQdbODf6Ixo0f
 l05dlKjB3StoD0E8oceBPyNXHaLGnIVH8gHlWh0dVEH+KcLmhhyEbn4llinV3wSnTSQY
 TKYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3BfJ9N63wxLtYCkMaf1uhz0nuDbWMbbCsPOc4ew+IH089ltD8oQo7LUbIsEIGuCSrRHwCukSAIRs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxO1RqylYmLOG5MVaHCkkhwZENbyQUbrEOwgfo42G6++dX2sv1+
 nnsel6PFDUrEyzvs7DTmf0zbD7gpk+rAeDya4slnm+j537cGm+1UZr7ZksM/4YgSn8EPjw6X2Vf
 ttxJawIUcLDZhnglJJrGx2NgU7tyv8jIAa2hMDBn7H1KZ+DP1QmmOZUd6OVWWdjHF7prQySFC32
 LLVrrIbmLP1g==
X-Gm-Gg: ASbGncvRyB3KthiFBVWdTwjB6rWaA8TQ4NlZM5/RY2aB2m8Ni4gdm8FeOXvX6bQE4l+
 xjrh+qWs4kVmGJ3noPP7GgQiqvAJMIpvm7Xb8WXz6JvTM3BgVxUgZKSCePKIL+3c48xgcGOlyoo
 KOOzCq9Xj+TDPBMot6CvhH3irg/1wZ7LWcGK9LtzcaAEogDSPGmDMKc4XJunAltQeG6RSgpiM2M
 16XxxfBinLqZwecvp838eIFOJdc5yf3md1bpgbXZnXsAw1keoi+xlwDDaC5QK5pOwxa4jK0ZnAC
 M2eDwFVJpFGxtycWfnwtfRRQPZZY0xu25GQvCa8iEL/pOaOQ2MPezBKK
X-Received: by 2002:a17:906:c145:b0:b34:103b:484c with SMTP id
 a640c23a62f3a-b34b9d64ae1mr775382166b.16.1758876931112; 
 Fri, 26 Sep 2025 01:55:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJnUsWRMqCnVW0L6UsqhW6GfmZPqDaS51X9cSqZ4/iz2tBwZKu7NnpsYjonEaYorYV4TOxHg==
X-Received: by 2002:a17:906:c145:b0:b34:103b:484c with SMTP id
 a640c23a62f3a-b34b9d64ae1mr775379766b.16.1758876930707; 
 Fri, 26 Sep 2025 01:55:30 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.15])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b35446f7746sm328087966b.59.2025.09.26.01.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 01:55:30 -0700 (PDT)
From: Aaron Ma <aaron.ma@canonical.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, suraj.kandpal@intel.com, imre.deak@intel.com,
 joonas.lahtinen@linux.intel.com, aaron.ma@canonical.com
Subject: [PATCH 1/2] drm/dp: Add drm_edp_backlight_get_level
Date: Fri, 26 Sep 2025 16:54:00 +0800
Message-ID: <20250926085401.2808634-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Implement drm_edp_backlight_get_level() to read the current
backlight brightness level from eDP DPCD registers via AUX channel.

Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 52 +++++++++++++++++++++++++
 include/drm/display/drm_dp_helper.h     |  1 +
 2 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 1ecc3df7e3167..0cfb357ebd9e2 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -3945,6 +3945,58 @@ int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc)
 }
 EXPORT_SYMBOL(drm_dp_pcon_convert_rgb_to_ycbcr);
 
+/**
+ * drm_edp_backlight_get_level - Get the backlight level of eDP DPCD via AUX
+ * @aux: The DP aux device
+ * @bl: Backlight capability info from the panel
+ *
+ * Reads the current backlight brightness level from luminance mode
+ * (24-bit value in nits) or DPCD AUX mode(16-bit and 8-bit modes).
+ *
+ * Returns: Current backlight level.
+ */
+u32 drm_edp_backlight_get_level(struct drm_dp_aux *aux, const struct drm_edp_backlight_info *bl)
+{
+	int ret;
+	u8 buf[3] = { 0 };
+	u32 level = 0;
+
+	if (!(bl->aux_set || bl->luminance_set))
+		return 0;
+
+	if (bl->luminance_set) {
+		ret = drm_dp_dpcd_read(aux, DP_EDP_PANEL_TARGET_LUMINANCE_VALUE, buf, sizeof(buf));
+		if (ret < 0) {
+			DRM_DEV_ERROR(aux->drm_dev->dev,
+				      "%s: Failed to read luminance value: %d\n",
+				      aux->name, ret);
+			return 0;
+		}
+		level = (buf[2] << 16 | buf[1] << 8 | buf[0]) / 1000;
+	} else if (bl->lsb_reg_used) {
+		ret = drm_dp_dpcd_read(aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB, buf, 2);
+		if (ret < 0) {
+			DRM_DEV_ERROR(aux->drm_dev->dev,
+				      "%s: Failed to read backlight level: %d\n",
+				      aux->name, ret);
+			return 0;
+		}
+		level = buf[0] << 8 | buf[1];
+	} else {
+		ret = drm_dp_dpcd_read(aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB, buf, 1);
+		if (ret < 0) {
+			DRM_DEV_ERROR(aux->drm_dev->dev,
+				      "%s: Failed to read backlight level: %d\n",
+				      aux->name, ret);
+			return 0;
+		}
+		level = buf[0];
+	}
+
+	return level;
+}
+EXPORT_SYMBOL(drm_edp_backlight_get_level);
+
 /**
  * drm_edp_backlight_set_level() - Set the backlight level of an eDP panel via AUX
  * @aux: The DP AUX channel to use
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 87caa4f1fdb86..0b045a47ae573 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -864,6 +864,7 @@ drm_edp_backlight_init(struct drm_dp_aux *aux, struct drm_edp_backlight_info *bl
 		       u32 max_luminance,
 		       u16 driver_pwm_freq_hz, const u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE],
 		       u32 *current_level, u8 *current_mode, bool need_luminance);
+u32 drm_edp_backlight_get_level(struct drm_dp_aux *aux, const struct drm_edp_backlight_info *bl);
 int drm_edp_backlight_set_level(struct drm_dp_aux *aux, const struct drm_edp_backlight_info *bl,
 				u32 level);
 int drm_edp_backlight_enable(struct drm_dp_aux *aux, const struct drm_edp_backlight_info *bl,
-- 
2.43.0

