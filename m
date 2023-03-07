Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0541D6AE124
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 14:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D83D10E4A2;
	Tue,  7 Mar 2023 13:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29F610E4A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 13:49:04 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id z5so13208661ljc.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Mar 2023 05:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1678196943;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Pb2LmnLi9basFISjOnLYVYII1gXbNsybO5NwslYa35o=;
 b=y5kdLG/CBTv1qYMVbgsbQeTOHeQMI8G9XDuZXNc96uOVtssp6YhJLSeXOrQ2jH50IZ
 FljEbFw2e+IW6vy4QWULUdmNqTzbmIego6uGmRD1vhP/gZC623DDjvqdrChhhiSC1fPX
 +vKNXogjsgeKk6A0H4etjM3EpEd0f8y1yjdQ6KmLD6iStAshFU86NKreH+5a2B8ll1zX
 SxR+jbkueDbdARhXvTPob9Kozx4jYFP4Cbj12Pv4IPx0B9z6BGZaAR+jBZq+RXNTzMAP
 cddh40ShcQxcB11Sp4/XDEcAcHuLLiHJGpDdV5IBpsqjNAlfvNHBdJroCW4LeANLwGuS
 pJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678196943;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Pb2LmnLi9basFISjOnLYVYII1gXbNsybO5NwslYa35o=;
 b=H80dNZKKL1XCstl2T9GayJ8xrmpPsgnw8coIwXybCDE2v+/gYx2C3pib/rpP9Oi8VQ
 v9y9ykcQr9ocYa5e7OuvniEfTfAmG3z2+qGX4e4jPLEpPxdQ2q4ERWxGRHlQJZMYM5vX
 mY5mkQ9z4aMdh916q4t/iXRDnDhZM6E9qMA1tag39jfqH70KvN8merdGEx0EXaphLlw+
 LN2l3ugZ3vYkR108tgsur7DGJdHnzGLM1gE7XecwJUB55rTIWpYqRrQWGdlN+nYdDZqj
 w8NUPc+DMTKNWDBPqzbaiAcGctqijoyIEkOJVgzavIT8+XHGyan6TcLjnVz/BTvmW2q6
 DLIg==
X-Gm-Message-State: AO0yUKWd17TAjg0/RzGBTfDbxLU/dhI801gMacN0fVDDkYqjv/vLxf3C
 s47B0bYkR9Ymge+rxJdB3PkjGQ==
X-Google-Smtp-Source: AK7set9aCXsQLLKfITapXEIME/b4HoKdOBCdpKVV0DLrLhqwUFd2zh0HuWLHU7kJQQr/1adKaapnew==
X-Received: by 2002:a2e:a58b:0:b0:294:7360:7966 with SMTP id
 m11-20020a2ea58b000000b0029473607966mr6924106ljp.30.1678196942974; 
 Tue, 07 Mar 2023 05:49:02 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 u14-20020a2e91ce000000b0029597ebacd0sm2128991ljg.64.2023.03.07.05.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Mar 2023 05:49:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Tue,  7 Mar 2023 15:48:51 +0200
Message-Id: <20230307134901.322560-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/10] drm/i915: move DSC RC tables to
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

Dmitry Baryshkov (10):
  drm/i915/dsc: change DSC param tables to follow the DSC model
  drm/i915/dsc: move rc_buf_thresh values to common helper
  drm/i915/dsc: move DSC tables to DRM DSC helper
  drm/i915/dsc: stop using interim structure for calculated params
  drm/display/dsc: use flat array for rc_parameters lookup
  drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters
  drm/display/dsc: include the rest of pre-SCR parameters
  drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters
  drm/display/dsc: add helper to set semi-const parameters
  drm/msm/dsi: use new helpers for DSC setup

 drivers/gpu/drm/display/drm_dsc_helper.c  | 1007 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c |  443 +--------
 drivers/gpu/drm/msm/dsi/dsi_host.c        |   61 +-
 include/drm/display/drm_dsc_helper.h      |   10 +
 4 files changed, 1072 insertions(+), 449 deletions(-)

-- 
2.39.2

