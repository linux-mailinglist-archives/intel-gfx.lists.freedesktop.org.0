Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3F7DD93D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 00:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5720B10E033;
	Tue, 31 Oct 2023 23:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com
 [IPv6:2607:f8b0:4864:20::f44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1651110E033
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 23:23:10 +0000 (UTC)
Received: by mail-qv1-xf44.google.com with SMTP id
 6a1803df08f44-66fbcaf03c6so31305476d6.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 16:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1698794589; x=1699399389;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Sw2B6vE9G+G7w2w874BluWAOKQISQdBMx0gd2n/sE7M=;
 b=ePlFySXpgWQLbQkNBXd9Zlbr+UsCPe+0PqIEhVOS4m0p4wjkcLddrnsqX7CSzpiy5C
 4WIdLJf6v4g/F3nEnh7kjIniv8+uuV5ZIZFtF7rvKjilJxuuBWrBzeqtq1Fv5/k6BOkV
 bSG8IOcy1SfgNws3RBQp3iZ78e+cm+VL+Up40=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698794589; x=1699399389;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Sw2B6vE9G+G7w2w874BluWAOKQISQdBMx0gd2n/sE7M=;
 b=qe1tc9TNic3LaKlxB4TIOfUFopo/AJuvzKOzzChPD+AZqGEJdPVPZHo8KsIzk4L4u4
 vub6GFbzvnI42krc6DOBFX1MW4xE5Cw9mrtFSyc13peOCnZwUtWa70noxGUoWz/nHVRI
 2MB09o49T5ia1A5qy8j2tb4+1ZMJUT10+NgxMng1460jcuSzKo4TmEuZ0UxJlBzzQYgH
 ofM7poJD3k2ZLcvxxs4/IQBupwsT17VT84nhTBGQ7TyT0DVNh7R1oh9zaKDYGfYfo6W1
 mGaYzScEIxajhdXpfCyLLi58oVxFmhq64p+oDjrp+bA3gRklTO8AKqn+mhUU8/vNjr8o
 t/Hg==
X-Gm-Message-State: AOJu0YxtoTaIqiNJVbXgN5PaToNFdM/YfKA6u77NNzxdMecmc3z7nSam
 SslBcRIAJSLAP88hF6DZ5n2URw==
X-Google-Smtp-Source: AGHT+IELeE7KSX8SDWfKXXFosnM7eJQ87gPQKSBzDxY0zO3dL8fVjd9KroIOSfLXxROs54MZq4uAgw==
X-Received: by 2002:a05:6214:d09:b0:672:3f54:b94f with SMTP id
 9-20020a0562140d0900b006723f54b94fmr7618938qvh.7.1698794589164; 
 Tue, 31 Oct 2023 16:23:09 -0700 (PDT)
Received: from pazz.c.googlers.com.com
 (129.177.85.34.bc.googleusercontent.com. [34.85.177.129])
 by smtp.gmail.com with ESMTPSA id
 f2-20020a0ccc82000000b0066d1d2242desm937757qvl.120.2023.10.31.16.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Oct 2023 16:23:08 -0700 (PDT)
From: Paz Zcharya <pazz@chromium.org>
X-Google-Original-From: Paz Zcharya <pazz@google.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 31 Oct 2023 23:21:57 +0000
Message-ID: <20231031232245.1331194-1-pazz@google.com>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Only fail fastset on PSR2
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
Cc: dri-devel@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>,
 Subrata Banik <subratabanik@google.com>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Matt Roper <matthew.d.roper@intel.com>,
 Paz Zcharya <pazz@chromium.org>, Paz Zcharya <pazz@google.com>,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, i915 fails fastset if both the sink and the source support
any version of PSR and regardless of the configuration setting of the
driver (i.e., i915.enable_psr kernel argument). However, the
implementation of PSR1 enable sequence is already seamless
and works smoothly with fastset. Accordingly, do not fail fastset
if PSR2 is not enabled.

Signed-off-by: Paz Zcharya <pazz@google.com>
---

 drivers/gpu/drm/i915/display/intel_dp.c  | 4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.h | 1 +
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e0e4cb529284..a1af96e31518 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2584,8 +2584,8 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 		fastset = false;
 	}
 
-	if (CAN_PSR(intel_dp)) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\n",
+	if (CAN_PSR(intel_dp) && psr2_global_enabled(intel_dp)) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to PSR2\n",
 			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
 		fastset = false;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 97d5eef10130..388bc3246db9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -187,7 +187,7 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
-static bool psr2_global_enabled(struct intel_dp *intel_dp)
+bool psr2_global_enabled(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 0b95e8aa615f..6f3c36389cd3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -21,6 +21,7 @@ struct intel_encoder;
 struct intel_plane;
 struct intel_plane_state;
 
+bool psr2_global_enabled(struct intel_dp *intel_dp);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-- 
2.42.0.820.g83a721a137-goog

