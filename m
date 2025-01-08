Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17363A05EF7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:41:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85A110E8D4;
	Wed,  8 Jan 2025 14:41:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="sQ3HoPD9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65D610E8D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:41:00 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-54252789365so10646029e87.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jan 2025 06:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736347199; x=1736951999; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=8ja7AsPHVhh/ztffyEqltS3S3NOI8MWwC75cFS3zUfQ=;
 b=sQ3HoPD9A99VTq6CBMRRPyaRlMvqEe0d7sQR3m/PTwy7Xaec77Fx9y6DmEU3ZNkk5J
 pHt7KRHaiVzUvtc9YJEKTUE4TY+lfAl1J9xK4FXNlmM0oWmvKGYMrc8vTyB/OXDtR6jJ
 CLwmYf4fC4OPqNwJfA9ZP8I+oUQ04A1c8zIxtn9+O2ECds79fnfpA0QC40f5DMu84pA3
 1frCbUfXWvNjM+aBa9PFXQWMhIS9YJblvbus5SxCw5xCTB0q63brXm2SXmhHqe1dumCd
 rb7hQ/z+MIDpwV4J/WJ0ZMW0JMENj5MO91MLIEwzZ3RjI/r8ccJqO9PA45iQdGn3ot+K
 IPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736347199; x=1736951999;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8ja7AsPHVhh/ztffyEqltS3S3NOI8MWwC75cFS3zUfQ=;
 b=k285clxNg2J8pObHDPzEL/OqCHtatvwSacCN7NX8B2XMrmzfT+xfvRvKt899xrD+qD
 iQrDBanM4VxUe1TAb6yPb7uihBorn6XWt3KUimVnJAagyn64bhmjJzD3C67ezaFmteHn
 Smz8QuRN+hKWApOjqCsHhfExGwZSgn7a4bHx0HopcvJLvzHoTj7wtqDBor50P9NWBFBf
 EtRZREHzhoofCNgB6Fnx3M4NOiAFroq7GjI2Gq7bpFLoYDW51O1HPOiKyi7JXKQaYbpm
 /svvl8ZMx91bxKmihVTPFMogfv3FdBWi2wlCs4rrrgJj38B6pjn0PQF1MWOLN2EUASCi
 EHhA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUGktRVeUGgG77tC2a5wUhsu51ruWyyCZg22CbdQa3JDd9y/lTfxiWQSNLKHAt+aM7s0SAFEr7wOFk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzeaa0qVKgwD9HV+Qsx4RUvla/3pIMP+VcFUJJPxE212JMtgaYL
 430SJV4T1tvU4Q1TxJIzzfJZDrXgMoGjePwLXsktChlH8IOjnZ2Sz+TNw8URmyGPuPvcLzusnZP
 C
X-Gm-Gg: ASbGncsyC2xF4kqt01cjs+iep82iarZTn2VlkMB5zTysQAE2jQF0GIjuD6KNSYlvFaq
 fS9ShDibiL5aQa3YTpbK7XRRRB0QWXMP01ITaX8CAhWuOiMSVS0D07MlBi9gM+DEjm/czvAC9Jj
 gL/KZHzPhI1jWEcTNUsaL+t9RB4nNO37OKflfRHKdywLecWRelMT80ntmRQgy7DwaP2Hyx2n1/a
 N+RXRsfvgi934ArH+Ne5XxPItBfMHX0CE161EZiAijxRySi4EbWWoq5
X-Google-Smtp-Source: AGHT+IEeHzOxvdMOGmcpEKHTmCQ1xR9X2mBdhrRAs090fw105gW9jWt3zL5YMm4BKVnJtfcnbPIJ6g==
X-Received: by 2002:a05:600c:1c1d:b0:431:4f29:9539 with SMTP id
 5b1f17b1804b1-436e26fbaa6mr23365835e9.32.1736346727258; 
 Wed, 08 Jan 2025 06:32:07 -0800 (PST)
Received: from [127.0.1.1] ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2e89e14sm22741445e9.33.2025.01.08.06.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2025 06:32:06 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 08 Jan 2025 16:31:44 +0200
Subject: [PATCH v4 2/4] drm/nouveau/dp: Use the generic helper to control
 LTTPR transparent mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-2-918949bc2e3a@linaro.org>
References: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
In-Reply-To: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1634; i=abel.vesa@linaro.org; 
 h=from:subject:message-id;
 bh=zSpYhtCfdoGV8lx5sZ6QJCKOEoZaxgqNtvMuGie1uZU=; 
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnfoxd1zaADCiqyAG6sqqGiZaCSMDvAko7Z/RAB
 qnzYaAuP/uJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ36MXQAKCRAbX0TJAJUV
 VsotEACKVYOAT4FX0Zl5/UtLfxszK6yqfSpvZBETDmfriJH3iARfEmyFCwzxT5krleGndSDwyWo
 muThvi9bmeveOffXwjS8yLtngaQQXm823SZWXLksm4rnDrgYtt8neXuYFKlkIwT7bLnydJ0DaJN
 JHTd3qWl1JqaA2voGitbWcjHGm+pQsyLr2qPugi3oVy0SbKleIX4uOHpcF/bie7veTJF4NIZIwn
 78+SUdHeJnvW0KMTl+Lx3YB+0kuMf0lzwSSFNiMZh8gAngpJQRE83FncDSI9g3RDXdaIX1VHmZ5
 cx/PkZKSloNzdooFCZWaHCeEShwsSeLD2xPGWA9JRf49cKwyEso50jtquK264rKvDzrAAvWV2QT
 6XXoLhrTkffqBoOqgbrc2WQbCpi2K6lIsWiqcKWPqfpr3XSUYpRNbvq+b0xwy42+D+LgpfbhUXJ
 dpM7NrjpU5qwl3BcPEHj+6IrytmW2bX4R5o9NArIQIi1rxnExJtr5XP9GGI7U3rHuW1wnciXJJx
 ogtweTyXXFCBIQXSAf4Uxwu+GkVziAZ1KkCB0OX5wDzOScajLIhPmr0Pt05vMOZbglN4KM2y+Rl
 esuSrBYIrshvVYjjyJ5H+uB0nipBl+fsNU0e9efycXuEOiA/7n2y7TeXx2vsg422BzYLPp0aHam
 l+vjJUlVNxarFVw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
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

Reviewed-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/nouveau/nouveau_dp.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_dp.c b/drivers/gpu/drm/nouveau/nouveau_dp.c
index bcda0105160f1450df855281e0d932606a5095dd..55691ec44abaa53c84e73358e33df1949bb1e35c 100644
--- a/drivers/gpu/drm/nouveau/nouveau_dp.c
+++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
@@ -79,21 +79,8 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
 	    !drm_dp_read_lttpr_common_caps(aux, dpcd, outp->dp.lttpr.caps)) {
 		int nr = drm_dp_lttpr_count(outp->dp.lttpr.caps);
 
-		if (nr) {
-			drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE,
-						DP_PHY_REPEATER_MODE_TRANSPARENT);
-
-			if (nr > 0) {
-				ret = drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE,
-							      DP_PHY_REPEATER_MODE_NON_TRANSPARENT);
-				if (ret != 1) {
-					drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE,
-								DP_PHY_REPEATER_MODE_TRANSPARENT);
-				} else {
-					outp->dp.lttpr.nr = nr;
-				}
-			}
-		}
+		if (!drm_dp_lttpr_init(aux, nr))
+			outp->dp.lttpr.nr = nr;
 	}
 
 	ret = drm_dp_read_dpcd_caps(aux, dpcd);

-- 
2.34.1

