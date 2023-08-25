Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D91788CFA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 18:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1740E10E6D3;
	Fri, 25 Aug 2023 16:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E0110E6D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 16:12:09 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-1bc0d39b52cso8362865ad.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 09:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692979928; x=1693584728;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=wlJoDqeCy6XjAp4MU+mjskauVW0rlKevj9BAChkBK5s=;
 b=XYlZvDuQ4LQr7W8/gGGYemSoWx+5/yfJ7SghuLcBiKDAOF8PKMbHvZmoAtphigSjw3
 iEokiEd6reOPM2oNaCGclW9YiC73c/A5JmjmZTCRSmgNuFtZpJWlD/mu/UinExyTOwCv
 WkXe2a5zi92MJTj5UCb6bkbfnMFzYREhmUL+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692979928; x=1693584728;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wlJoDqeCy6XjAp4MU+mjskauVW0rlKevj9BAChkBK5s=;
 b=T4YZ06tjpvf79hXan0aeKYGjVdx9+2NYR3RhCQAbdda7ffALEZ+XB2LALfWX9jMrw+
 j5lmTesDtQqhEOUf6Gph1EQ93Ps7gmtHhj5nHhp0OXvwAdXS/y3tio4Z7paJwpg9GT5/
 POWDrfsruQkQmoqRwylbQtggedosiQgNfkLiGUundRi1pUaB7PQ1nMLs19Gew/siFTib
 4+9prHK8Zuu0jpvblS5Inz1z0I33RKzZoYd+mlzjVUuoeZ0nJCg9B+YtfIX+JbUubMvv
 L1deV/8UvhY5UL2hb3FO9qZw0yTaeBUWBBGeYRpQWpL6iprEl1T6UrsTHdFZPdZD8PyJ
 DQew==
X-Gm-Message-State: AOJu0Ywk9/IchchTmOl1mELYvLipVfD5jpolaZ8nnQGX42YC+CBvEcAx
 Zm4spshKpVZBIqPVnD/NoMtgjc266DG/JDnYhnU=
X-Google-Smtp-Source: AGHT+IF07yeyjDlD2hsMaQ9sd2TXIFDto0xtfYatuspccwvwUCTLND7rWsvXfKr9AYFDLPidmv2hyg==
X-Received: by 2002:a17:902:f549:b0:1c0:953d:3a with SMTP id
 h9-20020a170902f54900b001c0953d003amr11854483plf.29.1692979928389; 
 Fri, 25 Aug 2023 09:12:08 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 e18-20020a17090301d200b001b8a53dde99sm1900096plh.296.2023.08.25.09.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Aug 2023 09:11:55 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:11:28 +0000
Message-ID: <20230825161129.2811298-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Allow VRR parameters
 mismatch in case of dual refresh rate fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>,
 Jani Nikula <jani.nikula@intel.com>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of a panel that supports DRRS and seamless_m_n, dual refresh rate
allows to seamlessly switch to a downclock mode to save power.
This is expected to happen seamlessly without a full modeset as in this
case we allow the mismatch in mode's crtc clock.

With VRR fastset patch series (https://patchwork.freedesktop.org/series/115422/)
it allows VRR to be toggled in fastset by pre computing and pre programming
VRR parameters irrespective of VRR enabled CRTC state. Now in case
of Dual refresh rate (DRR), when we switch to/from downclock mode, crtc_clock
changes and these parameters get computed to new values.

This patch allows the VRR parameters mismatches in case of seamless_m_n fastset.
This will allow Dual refresh rate to throttle seamlessly w/o full modeset.
These VRR parameters will need to be reprogrammed to the HW in fastset for
DRR + VRR to operate in fastset fashion together. This will be done in follow up patches.

This tries to address and clarify the feedback recieved on previous revs
(https://patchwork.freedesktop.org/patch/553451/?series=122252&rev=4)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index db3c26e013e3..26d3d2fe0485 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5387,11 +5387,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset)
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
-	PIPE_CONF_CHECK_I(vrr.vmin);
-	PIPE_CONF_CHECK_I(vrr.vmax);
-	PIPE_CONF_CHECK_I(vrr.flipline);
-	PIPE_CONF_CHECK_I(vrr.pipeline_full);
-	PIPE_CONF_CHECK_I(vrr.guardband);
+	/* FIXME Handle the VRR + Seamless M N case correctly by
+	   programming these VRR parameters in update_crtc()
+	*/
+	if (!fastset || !pipe_config->seamless_m_n) {
+		PIPE_CONF_CHECK_I(vrr.vmin);
+		PIPE_CONF_CHECK_I(vrr.vmax);
+		PIPE_CONF_CHECK_I(vrr.flipline);
+		PIPE_CONF_CHECK_I(vrr.pipeline_full);
+		PIPE_CONF_CHECK_I(vrr.guardband);
+	}
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
-- 
2.42.0.rc1.204.g551eb34607-goog

