Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 695139EE77D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 14:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D772D10EDB8;
	Thu, 12 Dec 2024 13:11:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="vdaqhrAB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE3010EB4A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 13:04:37 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-434f3d934fcso23570115e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 05:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733922276; x=1734527076; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=jsG+XSxCIlW+e472nR+/+67CLpCB+b/64oI2tAUQLco=;
 b=vdaqhrABCuTru9p5QR3S96uPBXq6p8A6uyLubTim2KkK8JyDew6k8O063I8kXaYmGC
 oBp7pricvBB8995PXRpnBhs5Hodym5aTqd2ouJ53mDQZ+OQKx5/HF/xyWSv2hKZYjbA+
 TXB50NX1v/jC5qcjk1LaAPnV9DjykhSpsRG0g2SKMCE5Cpq0BfLsMPPRZNHyDGPgIZ0+
 cMrjsykM51Kx+EgJbA2vLfZlYrEmtSKbIk+GcYr/C25JpD86L0hpwtDAxW7BV4JFZ/vu
 N4TcU/gGSY5Pbt2PcsFgyKQDXAE6OpDDbYqE8D6E3dXDkBwD7lDtKvsP4pUXKflmqxnj
 myUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733922276; x=1734527076;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jsG+XSxCIlW+e472nR+/+67CLpCB+b/64oI2tAUQLco=;
 b=oNIAa+9CoAmQrhMjUYm5WLA6ia5RS3/bLIuRyjTV3arl0f3RP3ZpqHOKuJqmK6H7Ua
 Cp3RWOwY5BMz8gRflCiRpUBYjy0BhhR9k3tyg4Wf7OE9OAhqy37gaLMm+iLZf/Btwa7E
 sN9cBVDLYB/Qz9SKgQLmfD077BW7Uf4V46c0C98cWCwQwTzocWdsu5rM0ycghBldy9pU
 ga3DVWM81tCClzLAtmNYyyMFYvoWpFemfCGZILqqfpKipiQ+gs039iO72vcooSBbZbzk
 zohyTQJRUTxSZdkqN4h27D51TXnIpg+7+pjX9g7jwa2g9b69TJhh+3u4Rs/eyEx6W8RA
 DThg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUqRdey4codFlx2QDq8bh8HGwHXsKi5B06hPdovU8h8uCS0Dvuv5fD87te/xx0ck0FbHM85F1KT9Cw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy3umS+eaygyf2P9IdScux5ENg4YxxMO4fQadi838eP1nMTHZHH
 +A6oWOAyXgPKsclJD4HmPdFrBlMuKWk6+FJtnHxY6QzOVxtUBGOTYjBZ9Dys3Vs=
X-Gm-Gg: ASbGncvyJbaDJ72E76PZzmBE2fTmwFUtNOYyVsc+QJpZaxzETMdF6jvnBYyBfEnd3+q
 FFKX3QoOpOqkJzThGetaSs4HESjAPh3Udc2GU4WnjKKpqTKobeeX6BUAr8LZR1rwls0CASzIPTE
 IXGAFOHhhOXUrEIFxuzkupxnYLRJEkcb+bpqHX9IrdSTz71z5LlFNf/+3A6ZgShKklnwO9VXYO7
 EasSJNr2w9R3mc+nj6YgXwndDEsV/aTEmcxAdcGorw+MEaLih+eaw==
X-Google-Smtp-Source: AGHT+IH/N/7Qi5lOGS62q/FJc3jfg5/VFlEPdBezCXlKwuHs/rjy1qhhpa1z176oYyrAmrONn5isWw==
X-Received: by 2002:a05:6000:1888:b0:386:366d:5d03 with SMTP id
 ffacd0b85a97d-3864ce54e76mr2477280f8f.16.1733922274853; 
 Wed, 11 Dec 2024 05:04:34 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3878248e633sm1288081f8f.4.2024.12.11.05.04.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 05:04:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 11 Dec 2024 15:04:14 +0200
Subject: [PATCH v2 3/4] drm/i915/dp: Use the generic helper to control
 LTTPR transparent mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-3-d5906ed38b28@linaro.org>
References: <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-0-d5906ed38b28@linaro.org>
In-Reply-To: <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-0-d5906ed38b28@linaro.org>
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
 freedreno@lists.freedesktop.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2833; i=abel.vesa@linaro.org; 
 h=from:subject:message-id;
 bh=FUHQ0aZF7afF+UvlaYS5mgy99uzsyCnBxlW5sEXNdd0=; 
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnWY3YkQdfhiXDi2nEaZKtbiUO42rg8nSNvrOGf
 vp9Mu3EPd+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ1mN2AAKCRAbX0TJAJUV
 Vg87D/43/OKkPUILxMJlyOSUMimtMbjoDzsdQc5crRYcDXSJu5NcQncQ8PAkOa7LH0sqyI1kJCp
 3oBzSWaXT6m1lP2ZypArLC0oQUS9PbNz4UXqfMo+VvjiRQTTupMp+I38N3HJnrGGuafEW7EErmg
 PgP+3yfy89jne16xB09+sgMhx42IRpiT7yuNmJOXdQrZA5tfN0J+lyO8QKzaAZig+Ikfrwo7Him
 Ge69uNOlioLXwF8oaHH3AqWvOo4AZpJ695TYlonf0DLPo+6dlMcpm53wUToOqR5o4rIy2slxLnX
 kSwo94HXl7gTIb6nKElFhwvHrO8RnrrVZ2SUHRdbGlaPNb3nPX4emI8RhfIQMIhi0eBmDfTCdfZ
 Q13MXJPh+laLylGeqX9nRY+DQp0qZq2y4W0PNX6YbdiYMFeR5qBqXwWRJC1QNf1vY4r5vjN/63f
 B6yxKvjIcYeVQRQMuJMYAZjQc1ZQKJ5RqVHjzIvd0OhTJOFjMX1D1q95PMyqkTiVpbqxL2lgvnX
 UPO5o0ptgMPA3ZrI82TxcdqRFm0x/zBUQysMxvnZinLDHIZujfKJzrvIthTIWmznXHWzsXNeFF+
 0JYwupVl8Jbk4uwlyXpakXEHr2MhI5Nfzd5+Q2rl9g7Qleh1hzWfDSmyl+W5expId72lTLbCkMI
 cvs3aaFaMFtSd5A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Mailman-Approved-At: Thu, 12 Dec 2024 13:11:29 +0000
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

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 24 +++++-----------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ea9b4730a176f16af56810248d1b66b9d97c5fd0..6982e6e9bcc8ab5f689ba1b02df334aa352a430c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -118,9 +118,6 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
 			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
 
-	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
-		return false;
-
 	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
 				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
 
@@ -145,6 +142,7 @@ static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
 static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	int lttpr_count;
+	int ret;
 
 	if (!intel_dp_read_lttpr_common_caps(intel_dp, dpcd))
 		return 0;
@@ -171,22 +169,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
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
+	ret = drm_dp_lttpr_init(&intel_dp->aux, lttpr_count));
+	if (ret) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
 
@@ -195,6 +179,8 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 		goto out_reset_lttpr_count;
 	}
 
+	intel_dp_set_lttpr_transparent_mode(intel_dp, false);
+
 	return lttpr_count;
 
 out_reset_lttpr_count:

-- 
2.34.1

