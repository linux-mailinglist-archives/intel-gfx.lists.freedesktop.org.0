Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E456F6F0A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 17:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8AD10E4F3;
	Thu,  4 May 2023 15:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0B110E4DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 15:35:16 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-4ec8149907aso771167e87.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 May 2023 08:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1683214512; x=1685806512;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=BjnjiQnONrT/gH4SwOB2yPNHL2j+rUciqyrZ2Jp9GXY=;
 b=B/Dn75TTcotcycsQm+2hyfdFbPA2AXB/+01rDumU7GgqFoHs8KpV8XvFXioYxb9woF
 6LlnPd9+Qs6HLorL27lusaC7M8P+0492CUEfnwJ/qCywYLc/CYPVTlgIxE+cO1gSfldB
 hpLe49hI6XC01W45KNqtTMdp9Uhs5XECSD0Gn+bCSQwBaoxImSTlMzJ72S2fC8pFNMWy
 pR2vusvH54lAANJTqQKfPzPIaCmuU5YautcekOZ9p0iH+bFDqFM7YuYxw8+h5F8iILnL
 zxu6NMEy+7/5WAwiBEqbn4AnAcuBFIngQ5DaYhflPO6GB4FGf9gFMzlUAh9YZL+YM0fD
 bosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683214512; x=1685806512;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BjnjiQnONrT/gH4SwOB2yPNHL2j+rUciqyrZ2Jp9GXY=;
 b=XZCEwJE37HQzfhqA+rZO6JW7d6hEPgTZRkR83lN8Tg7ZYdPlo00unVIceChWiXUhAe
 U/AiA7PrF85rvIERRr5LAUvz+qqMC+ZtLE77lgd+UYgtZZyaEcUznn9OUDMa7JpogmBw
 4hjM9GUmUFRac4iAB4dn88HWKjouTNqigG5UgC+dMwnMZ22GQ1lq8oI5Iu/m2HVxBi6E
 NvhqhbzPPZOX1VHYJQ3pz0qkhVqwFxuXYBcQyUDXX96gQv9SVCXQe6NJjdWgoMUZ63Qv
 kHsrNEPGrkw2pRLn29rvwFguxvZlTriNM86JGsJ1ebB4vUrok4A46ztagJyBhjYUXbGf
 PAlQ==
X-Gm-Message-State: AC+VfDxGOfEaJg5nXc32fmhu96By4SZP8NBKnJJW0sQFwAXoTZoJjyWv
 Fwc1oQTSvXBiVxkelmJhcJr9cw==
X-Google-Smtp-Source: ACHHUZ4qy1tlAc/kotyebm2J1Wa+PSnxnDPWRb7lwf9N+rL2F62ADTbh5+whm/pxm2v3Tu1Y11L3xg==
X-Received: by 2002:ac2:5189:0:b0:4eb:7e:1fa5 with SMTP id
 u9-20020ac25189000000b004eb007e1fa5mr1781803lfi.8.1683214512187; 
 Thu, 04 May 2023 08:35:12 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a0db:1f00::8a5]) by smtp.gmail.com with ESMTPSA id
 n15-20020a056512388f00b004e96afb1e9asm6608753lft.253.2023.05.04.08.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 May 2023 08:35:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Thu,  4 May 2023 18:35:03 +0300
Message-Id: <20230504153511.4007320-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/8] drm/i915: move DSC RC tables to
 drm_dsc_helper.c
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Other platforms (msm) will benefit from sharing the DSC config setup
functions. This series moves parts of static DSC config data from the
i915 driver to the common helpers to be used by other drivers.

Note: the RC parameters were cross-checked against config files found in
DSC model 2021062, 20161212 (and 20150914). The first patch modifies
tables according to those config files, while preserving parameter
values using the code. I have not changed one of the values in the
pre-SCR config file as it clearly looks like a typo in the config file,
considering the table E in DSC 1.1 and in the DSC 1.1 SCR.

Chances since v4:
- Rebased on top of drm-intel-next
- Cut the first 8 patches of the series to ease merging. The rest of the
  patches will go afterwards.

Chances since v3:
- Rebased on top of drm-intel-next
- Dropped the msm patch to make patchset fully mergeable through
  drm-intel
- Made drm_dsc_set_const_params() ignore rc_model_size, picked up
  drm_dsc_set_initial_scale_value() patch by Jessica and switched
  intel_vdsc.c to use those two helpers.
- Added a patch to make i915 actually use rc_tgt_offset_high,
  rc_tgt_offset_low and rc_edge_factor from struct drm_dsc_config.

Chances since v2:
- Rebased on top of drm-intel-next

Chances since v1:
- Made drm_dsc_rc_buf_thresh static rather than exporting it
- Switched drm_dsc_rc_buf_thresh loop to use ARRAY_SIZE. Added
  BUILD_BUG_ON's to be sure that array sizes are correct
- Fixed rc_parameters_data indentation to be logical and tidy
- Fixed drm_dsc_setup_rc_params() kerneldoc
- Added a clause to drm_dsc_setup_rc_params() to verify bpp and bpc
  being set.
- Fixed range_bpg_offset programming in calculate_rc_params()
- Fixed bpp vs bpc bug in intel_dsc_compute_params()
- Added FIXME comment next to the customizations in
  intel_dsc_compute_params().

Dmitry Baryshkov (8):
  drm/i915/dsc: change DSC param tables to follow the DSC model
  drm/i915/dsc: move rc_buf_thresh values to common helper
  drm/i915/dsc: move DSC tables to DRM DSC helper
  drm/i915/dsc: stop using interim structure for calculated params
  drm/display/dsc: use flat array for rc_parameters lookup
  drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters
  drm/display/dsc: include the rest of pre-SCR parameters
  drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters

 drivers/gpu/drm/display/drm_dsc_helper.c  | 986 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c | 443 ++--------
 include/drm/display/drm_dsc_helper.h      |   9 +
 3 files changed, 1042 insertions(+), 396 deletions(-)

-- 
2.39.2

