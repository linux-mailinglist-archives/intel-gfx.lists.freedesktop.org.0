Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0329F9B8EAD
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677CF10E97B;
	Fri,  1 Nov 2024 10:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Qt9cqjwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF4210E8D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:13:22 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-43168d9c6c9so8739485e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 08:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1730387600; x=1730992400; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=koellc828gBIGkngPTaX5UMcJE/cQUYf93Uf4lE+n04=;
 b=Qt9cqjwrIXSKnvn0ni/QOKuUXo0y3YBDyyO7dCL37saoCvdzQL6VWePMy/vnLFHYle
 up7l82Ok/Pg8j13xvI5SjpuLzu+Jki65sy4Gxfg89Gdat/s2axlQfFPVJZAcbxF9vGhU
 VlVZw3MHrBDmtGp2mKVH5lcOJXDtAvA+1+JTfVIyfmCa+DxSL92wR8Cm6z2XwkfTB+gs
 gZlrL8BAChx/42W+GJPi4n/WyYtHFdS3br6pK1Qm1BTynIe02IbmGdjXuYn8nlquqY50
 +GOUc+ShpBadlU5TJPrEnpJzakctGfX/SZpH9aqvrQz2U/Fq7qgxzcg7MRufo0UrBneL
 cYEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730387600; x=1730992400;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=koellc828gBIGkngPTaX5UMcJE/cQUYf93Uf4lE+n04=;
 b=oxIGnicLRTVadb0X9CwWzqnOo3721nVwamdstNR1Z4lsRvR48Q3losU3qK+uvG/9DU
 aPC4VB8bEfRf1qioa+Z8o3NcvN3e9YDZttF8YePi2mo2u3IJYxTleaD8homh5DPAL1vn
 iw/SsJwWIfC9t+Zl7bHs+ZSjfpblGxOPk/jLAVPF6rESL4BQS8fvC5xl/BcRju6Fojs0
 JPDECaK6a0rIFFVzFUe8si2VajPBPbKCwD8TE95txXsz+WX/fkOFHhINas2U1WonjG5w
 DMMpEIammniXLc6ZndlbQfM777g9Q5+kxH2M1NZ6BIFvU8F2nOgiZHI3rqnyqX22vg8B
 bQjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX42pXsu0WNfdV3+Rge+M3osTBICfh9fjGBT9stUt4e4BmhVHPVwn/nn49kebe+Y/M6q2GUC4BsWi8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+BMTIaLmkfZ7kuO9eyvv8qT9OFBAEdU9ZCoJ7hk0ydPGalwok
 Zwj8i6ekL3MEbI7YutXvkqTm97MBNwGz4MA1TpZylgQJOvuj/VazRksh34vCdtQ=
X-Google-Smtp-Source: AGHT+IGg80b65tTspWaDYwVaXtnM4k1pLyuTpaYB5uPEwlaaoxA0RYPUUFwU2dGIC6Dxl6JHvTcCDA==
X-Received: by 2002:a5d:51c1:0:b0:37d:4ab2:9cdc with SMTP id
 ffacd0b85a97d-38061127ff2mr13390244f8f.13.1730387600567; 
 Thu, 31 Oct 2024 08:13:20 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-381c10e734csm2418920f8f.60.2024.10.31.08.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2024 08:13:17 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 31 Oct 2024 17:12:47 +0200
Subject: [PATCH RFC 3/4] drm/i915/dp: Use the generic helper to control
 LTTPR transparent mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-3-cafbb9855f40@linaro.org>
References: <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-0-cafbb9855f40@linaro.org>
In-Reply-To: <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-0-cafbb9855f40@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1164; i=abel.vesa@linaro.org; 
 h=from:subject:message-id;
 bh=nh9PC5QaQozOlc1QcF5kI+I/IQ0W8ZETY6IyLhkA/Zw=; 
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnI558XyqiP6V/FkHya9Y9TdfEkxts8vArJrAJQ
 olNG9XMOn6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZyOefAAKCRAbX0TJAJUV
 VrYcD/4n7+eHqHDr6FgdMxeGHoPyPVwNbkIs2K2ddrqng4/N4VhsaQHT/7lbB1H7RzMWXcUwHR/
 Ql4Ig/5/1Hb8MFtBdVd6Pp/nyCM/Nz8OX8koCaHU8K/juQZ5tR/zgTMWHChUp4CJV2JIdG/oye2
 +jZF0TT0trdsHKzOfjlrUiBE7DzucNxg33rrgUFxgUpaiq3cBHb5NIS2fhWcdnjz2Qd7v/tCC9X
 6UmaLppzb10WQeZfy8xggJapGNWuIEx/meUlBjw6VpirOkZNf9CpW1NzAzahTrT3cuFOJ0Gx8yg
 khVX5hoMsMEBT4ggAbZoFmomXLzlC7MxaHzWJYl62PcumFzalz+pyxnHhTtcOmNqNsqJ3+6UQ4L
 r5q93pGGsgK2djH5QBNaQ+ONUj9XLhKfRBJ696w7Df4lydWZJK/WjXcDzlVjG2lYGHZZzprDcF8
 gu0fTRfxKmH/UyBpxBjUzY8nYiRwh39ho9BrrQBRl0OKxBU8QEuURK4VkUGA1B2TAKLuCIyE2Bb
 lKpWjwKPV00WLJlpMoNV8euD/EMoF0gpkuBbEv/5XcofZvInvVBbwlcdoL/LEvaU+3Pk6sDMhay
 nSxWoIAZQvJCwF3KPQUlKc6DhsBZmRZfwLLZlhdNuNSDI0sptzXmBjTqn7o9jzMfehej3wW1823
 He52S/uO/tXh5qQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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
generic framework now provides a helper to switch between them.
So use the drm generic helper instead as it makes the code a bit cleaner.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 397cc4ebae526a416fcda9c74f57a8f9f803ce3b..0038608d29219ff1423a649089a38980e95b87e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -118,7 +118,7 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
 			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
 
-	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
+	if (drm_dp_lttpr_set_transparent_mode(&intel_dp->aux, enable) != 1)
 		return false;
 
 	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -

-- 
2.34.1

