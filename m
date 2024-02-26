Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D618684CA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 00:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8481210E832;
	Mon, 26 Feb 2024 23:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="kAoQNZw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CDBC10E832
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 23:53:12 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id
 d2e1a72fcca58-6e537d0ba06so740037b3a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 15:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1708991591; x=1709596391;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Ww1QPQGtPwY3Vko8caabUpIB3dG/IWUKroud/a6CIkI=;
 b=kAoQNZw9zcDJhKgxxn7nJ8rNPcqfa8qr5Hjn2IHJrhPJz4r6BuyKaZwutQ54ComNg/
 JhNGS0s/XJunD3Iy6vnOwBLDazk1Cy97bNEkKdnqQ/oZcYjX6EgzVUmuCQIQ4h87bktb
 9GEThcSEocAjOuHaGkK27C93VjheHGqdJO3ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708991591; x=1709596391;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ww1QPQGtPwY3Vko8caabUpIB3dG/IWUKroud/a6CIkI=;
 b=qBPjgvqA1KyzHgDE1nyAOAS0gwVRXA6F0DbNoEN6eVfT+MsNgVC1dWyhG8joDJc2X3
 rJtBWC8vJsUZ5//sgPK/TUnfo/HWCX9SZWbvyoFKNmjkHjlYNu2cew1dZn8bhr9TUtcc
 CZxmJV7OjGqpl426+wGSP71Y6mfr7k26MJkX0TQGaCJUEsj90KnsFZvt8xjrlwT2bxZa
 VSYAbKRRhSsafQaunlvvwaaqyt85YNYL/fe3H9BSw/mmwtcign5apn0YykVLQngdXIyH
 jlpizQiA8kV7Fa7JwI8V8qXuwiGovMBBqUu9qmgt1dDWPI+Ircm3CfzaC4AAjH9JgKYB
 /CUg==
X-Gm-Message-State: AOJu0YwoMhA6ktiRoH52N+4owdAQ7nVgRChNU+WIwqnX3nQPkBeV6YDb
 34o1aWdFun15ZtQNEvhKATr5QpbZGBS9UcE7vmjySBzfD/b+dKH1G6cW/5mxS3x/g+OhcFAymnQ
 =
X-Google-Smtp-Source: AGHT+IGqfV7VE84BITVgiAeZRed8wXS9v0GOpiOkFF641xuTUq5saW849Knxopza43xThcHPuGO+Uw==
X-Received: by 2002:a05:6a20:341c:b0:1a0:c9a5:8258 with SMTP id
 i28-20020a056a20341c00b001a0c9a58258mr569258pzd.20.1708991590853; 
 Mon, 26 Feb 2024 15:53:10 -0800 (PST)
Received: from navaremanasi.c.googlers.com.com
 (219.29.83.34.bc.googleusercontent.com. [34.83.29.219])
 by smtp.gmail.com with ESMTPSA id
 p10-20020a62ab0a000000b006e4e616e520sm4645306pff.72.2024.02.26.15.53.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 15:53:10 -0800 (PST)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>
Subject: [PATCH] drm/i915: Allow for Vsync_start and Vsync_end to change in LRR
Date: Mon, 26 Feb 2024 23:53:02 +0000
Message-ID: <20240226235302.41510-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.44.0.rc1.240.g4c46232300-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Since LRR mode requires panel to support VRR, any of the LRR mode
is achieved by stretching vertical front porch which also pushes
out Vsync_start and Vsync_end timings of the mode.
This allows for VSS and VSE timings to be different in case of LRR
to ensure semaless modeset/fastset to LRR mode.

In case of VRR capable panel, it technically ignores the VSYNC because
we set Ignore_MSA bit for sink but reprogram the TRANS_VSYNC to keep
the state checker happy in case of LRR.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00ac65a14029..cd55e8840769 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2685,6 +2685,13 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
+	/*
+	 * HW ignores TRANS_VSYNC in VRR on DP because we set Ignore MSA bit.
+	 * But let's write this to keepthe state checker happy.
+	 */
+	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 	/*
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
@@ -5043,11 +5050,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
 	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
 	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 	if (!fastset || !pipe_config->update_lrr) { \
 		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 	} \
 } while (0)
 
-- 
2.44.0.rc1.240.g4c46232300-goog

