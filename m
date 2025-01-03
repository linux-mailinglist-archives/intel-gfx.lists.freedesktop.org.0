Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F52A04334
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE0410EAE6;
	Tue,  7 Jan 2025 14:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="KpOfTP1D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBECE10E8A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:59:54 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-3862a921123so8300249f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2025 04:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1735909133; x=1736513933; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=YZpHTfSit5gO2Gh5m2JOOcpLY4DaYFIg1vpxWhNZbDk=;
 b=KpOfTP1DQKB0POXrCu/20SRYfzfQGwLOiWSVi7MlgaN3ZA85ppNHIyGSy7zHbqXcYF
 UB4F6BwZqbvcARVjMuiJb+tghQA1LJFkqVmS/7iBuDpynsWr2S2Lr0F2VSACeVIC1K3j
 ckIAtb2PFslcAe3VCSxzgXs4kxxeMWMKgLOj1Ax6Ovk1IDPUeavJ2+Qvot9dR6o+N22I
 jhQsH9Y7Efs+v3RMz+MHKyKp5Go7jmkmESzPRI2uoFHbTmzA9Jj5Z09M6wOANQQ0jHrA
 GD21D3r6kT2YZnYtWquCCJLjwxf0Xs4S/RZXXajtDkUMKKpjJNEXsWFdP9uJ8ncfW9Xh
 H4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735909133; x=1736513933;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YZpHTfSit5gO2Gh5m2JOOcpLY4DaYFIg1vpxWhNZbDk=;
 b=uq3sK4z0vUEapP+b8OFj9NlnDx1Ee0/1RYB7CQKKPezoZmTK/YrcRF3O0KqMYoYBPn
 MA4bQd9J1IgKNX5Ag5+gBSM8LVMMunGKNIehxuz8V1j+efH0gV+UvrRNSMAnNjTQ2Hj2
 dM/cKApn/SpJ9NrQcAJzL2A/XqkhX6muB1gOUwmURxfCSj38xdNqt1ZtVPB+MhkG74zr
 kD4FO2MV3JW11Tq6W4WOU4lasyXQqM5s0yhBK7Q8weCPqbm6OMq/rNlSwD/OIxdCXotx
 KXQpGXK/DBJ17Z0PQi1+HAUSazq9GTbzGpMhe+gHUqzyblZn/hJnUoaM/1h4nK0F5uAt
 sLMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVE5qkDKxiIrPlYJ9sXXhvs9zE4cbog3ZeLutjHDQKq3mMH539rZrvDog+yuCLnthek1wLkHIYBikg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxYi7+FVu/lsCPEVWLpuHpcyqswO+IN6QdcLUHel/fY1aM6nVJS
 4+qmQ7ZXw3n41P+89AWueTMaptpxb4YkqKBYfR9PeQMGHwd/xtcX3ZrMCzEWHkE=
X-Gm-Gg: ASbGncvAqYC7l+0FfJq2VkQucA/3JJzzUCHxOhfiqMXRTN+hiMPXmJa31fsbwzI7qI4
 uHIsEJDBAQhfaQkSvrLooVYnjbxkk443rBIcDJLfK0EwqQWWLrUyd3HE7NQrSyRiDfErUMwxe9O
 H43MsrS9jIPc0YVsUhnqjinoEsjWJU/O/ET/JaIJjU5gwblLRNMMMKj7J8FYTib2sCLR0boPg6P
 ET5th9OCYM2AN2aJYg/p1hlzDooYzk56Q7ZB7BghAEspGaNhdhwkcP6
X-Google-Smtp-Source: AGHT+IHzzw0z0olhiMQIF4i+m6RWPCwn/5pzBtPbIPQehiZzeOw1sBpO5b4V2d1MU84ARWYaRT4n1A==
X-Received: by 2002:a5d:5f4f:0:b0:386:3329:6a04 with SMTP id
 ffacd0b85a97d-38a223f5b4cmr45535380f8f.39.1735909133357; 
 Fri, 03 Jan 2025 04:58:53 -0800 (PST)
Received: from [127.0.1.1] ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c8acadcsm40225591f8f.105.2025.01.03.04.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2025 04:58:52 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 03 Jan 2025 14:58:17 +0200
Subject: [PATCH v3 3/4] drm/i915/dp: Use the generic helper to control
 LTTPR transparent mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-3-5c367f4b0763@linaro.org>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
In-Reply-To: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org, Abel Vesa <abel.vesa@linaro.org>, 
 Imre Deak <imre.deak@intel.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2875; i=abel.vesa@linaro.org; 
 h=from:subject:message-id;
 bh=t7uWQZmvlqArOJmOhip0vxH0p5Ao0CcrYSITs3tqLBs=; 
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnd98CWJIRcWNajaQUs0XtEmjBpJ6OADba5w2NK
 CosooeKSVCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ3ffAgAKCRAbX0TJAJUV
 VqLKEACTE5rtDEB+D33MFt/oZ45AqV9b3HvDi4rXOsndYQGSTU63k5aEsmdo6JZy3Qg0D+xuuCR
 No9K5tdKFT0oiyRF4TvWaH/9wNmSFsIcgwcyng+spkYd4QZ+7E7kkMTW7RLXwmixcX+PjnAbhRu
 uyWVArrU3Q9yFK5JJb7zh3DEq5YqSBXK9iE1Kjls0cIR7CkmSer/AmxrISk43jNNHajVr0a+EIT
 cblU0Z4x3n9TlXxwCsowpn45Wl3PaemuzNzmKo9SEbGorOnfB0wYxTX78pIr1D4M1/OXG+FjxuB
 WyNd75KSJMQMigAKoKTA4DOLYtL1XB/Bbt6byj01kMwbXeg1rApXR5lgIAzx9GfiI7LmkdDZGL1
 RlDFiT3f/uMfw7tzUohgIsQIodhlCuZ2eFXrHtb9u8XapXiH+knM5qqObAd4U6ePoM6Zj6MEFK6
 4W0Xtc4G8RFAkDZWJk05I3mbnXUL/2Qdik+U2Phyz/k9eltZvpFm5eQgTDYI+nqEMlJmH5LGsi0
 4DJ3EKsEUGwFVDi93iwvKHYq6dP9nkU47NbWjRe6jY8BHgLi6HQuyAC3trQELmnGY35TFpNbjL6
 Q9GYYK4NNMqjIZ86oG/ibnG2NjtBKCdOhR7bzrw03Cii+gZK9vG/vaQujwKNdO+h9bjcuGNNAU0
 AMan2WsFQIdj0uQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Mailman-Approved-At: Tue, 07 Jan 2025 14:52:08 +0000
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

LTTPRs operating modes are defined by the DisplayPort standard and the
generic framework now provides a helper to switch between them, which
is handling the explicit disabling of non-transparent mode and its
disable->enable sequence mentioned in the DP Standard v2.0 section
3.6.6.1.

So use the new drm generic helper instead as it makes the code a bit
cleaner.

Acked-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 24 +++++-----------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 8b1977cfec503c70f07af716ee2c00e7605c6adf..c5bad311edf7b9a5cebb633b9e9692bae397f9ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -119,9 +119,6 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
 			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
 
-	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
-		return false;
-
 	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
 				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
 
@@ -146,6 +143,7 @@ static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
 static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	int lttpr_count;
+	int ret;
 
 	if (!intel_dp_read_lttpr_common_caps(intel_dp, dpcd))
 		return 0;
@@ -172,22 +170,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 		return lttpr_count;
 	}
 
-	/*
-	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
-	 * non-transparent mode and the disable->enable non-transparent mode
-	 * sequence.
-	 */
-	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
-
-	/*
-	 * In case of unsupported number of LTTPRs or failing to switch to
-	 * non-transparent mode fall-back to transparent link training mode,
-	 * still taking into account any LTTPR common lane- rate/count limits.
-	 */
-	if (lttpr_count < 0)
-		goto out_reset_lttpr_count;
-
-	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
+	ret = drm_dp_lttpr_init(&intel_dp->aux, lttpr_count);
+	if (ret) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
 
@@ -196,6 +180,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 		goto out_reset_lttpr_count;
 	}
 
+	intel_dp_set_lttpr_transparent_mode(intel_dp, false);
+
 	return lttpr_count;
 
 out_reset_lttpr_count:

-- 
2.34.1

