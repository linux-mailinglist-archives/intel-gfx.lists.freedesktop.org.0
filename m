Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BF4A25C76
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 15:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 924D810E509;
	Mon,  3 Feb 2025 14:29:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="DuGhZ99A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D0410E500
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 14:29:10 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-54298ec925bso5127652e87.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Feb 2025 06:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1738592949; x=1739197749; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Fe4Q/DRIIrkW1EpeCwCgG29YyiSxj0a6BvsfU0z5Psc=;
 b=DuGhZ99ASV8+4HsiwnQck/v+elZ8vugNpypyA6Va5EPTmF+QJ4iOLEdUyB3UoxEUdi
 1b4NHzKWIK+quRL7pC1bWsq/8TcQUvHvRDzVeEnc24wKF/hcDpUxtyAbdtMEoGDHFsbZ
 nwQA6jmPNOTLvV/pAwczj/PQvRLvcLFx+iVnUu4d+t9q/aJPRoAQ5toJuW+gXzv0inu+
 tnj4iFDBadDATbEYbMXtuXpq3bIJUBaalfmPlMrwUMLC5lNLEIAnhGPgB264pmQFYTaC
 x3Zo59Fom4VJyiLWdz3yXfFyM9YJ0tSR5YFxJpsADZl6oczYI5BDSD09fGgzDSHpyJZ1
 5LAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738592949; x=1739197749;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Fe4Q/DRIIrkW1EpeCwCgG29YyiSxj0a6BvsfU0z5Psc=;
 b=OD7pctaGxhInN5k7lEI3UM6qymF3i+spixPSdJUyBqb/XcwBVw6/rDUmsGTxKawvgu
 WQPt5TooisruD9ac4TfcSPYy3cvn17yvkaLwghZesgze0Z2LkUwhAamYUw1zTz1XGLnl
 BpzsWVXTWADa4V0bkMlXtucx+KXtRgqhV08dsJ+QRub2K1bFGvW0Dk73WL9yz8a174ui
 hljNj31BGlr+m73B8tF7ZBEIOf/gU6G+PXfhyX5zal93Qt+odW1R0xvWumt4v7Mu0Jgg
 Ju4AgMxoiN8u9fNoIlnvx8nVUjHLNpzK6Zu30tlxbsont/T7BjBegKYJKKJRSSbf/Tlh
 e03g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXpa7EgKbGXfq0nEI2377jd+8ekyYaEUSFLKPtNAcD+9rBF7myX2gw/BJFlxhCo+voKUz+78qFzgs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx38A33nas5r2urFunxd7FaHAlKYqictaRpDrLW19WGg3LfN/ne
 MePDHQDVdD+VA5egki2YhPEkEABDElkQasml01HNpoVAgHuB+AcoNLEeC0FIDg0=
X-Gm-Gg: ASbGncvJlkrQV5iV9H7cxQAsWEYQN1VtahT7mcc88MyEDAjK881K7WHExDAvQpawrRc
 5yrDqd0cDm5L7gYo4RO2o6zBPKA4Ycbncyxa4qLKGXWax/P4rJaO7u5dxuU2eahNUWb7df5Mm8z
 eyUDdaDGiMoqhIRh61i96p1pYEUMedghHVKAlptcQ8zkOIvlM2YUxvHIFIRiuyIzCTZguNG1D6G
 rQk8LiKn6bfk8HX/F1yOuRKyOa/HWUMXxpvJJOyCV9FfYTZtbFZ88O+i3WKcx/1Z9qPhcumbRoq
 lrj4S9f4YhUxBO8OwzWZxsbvl1dnOneovOBhja4ni0KbEg2xiBIj4syg8sxPTxvefS1wguk=
X-Google-Smtp-Source: AGHT+IExpISW4A9NBYLe/eUHhUm4OiraqJx3D/HFyEVGSsv6FQMJHoejQlBCGWRe4itczr/wgtNZJg==
X-Received: by 2002:a05:6512:1383:b0:542:2a0b:cdd4 with SMTP id
 2adb3069b0e04-543e4c3fba5mr6465348e87.47.1738592948844; 
 Mon, 03 Feb 2025 06:29:08 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-543ebeb0666sm1297993e87.110.2025.02.03.06.29.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2025 06:29:08 -0800 (PST)
Date: Mon, 3 Feb 2025 16:29:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>,
 dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, 
 Johan Hovold <johan+linaro@kernel.org>, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH v5 0/4] drm/dp: Rework LTTPR transparent mode handling
 and add support to msm driver
Message-ID: <estdb6w4vmcd43jar5rzivjpo6hhmov52jv6tghjqm3xefd56t@spcodpfftmns>
References: <20250203-drm-dp-msm-add-lttpr-transparent-mode-set-v5-0-c865d0e56d6e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203-drm-dp-msm-add-lttpr-transparent-mode-set-v5-0-c865d0e56d6e@linaro.org>
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

On Mon, Feb 03, 2025 at 12:57:55PM +0200, Abel Vesa wrote:
> Looking at both i915 and nouveau DP drivers, both are setting the first
> LTTPR (if found) in transparent mode first and then in non-transparent
> mode, just like the DP v2.0 specification mentions in section 3.6.6.1.
> 
> Being part of the standard, setting the LTTPR in a specific operation mode
> can be easily moved in the generic framework. So do that by adding a new
> helper.
> 
> Then, the msm DP driver is lacking any kind of support for LTTPR handling,
> so add it by reading the LTTPR caps for figuring out the number of LTTPRs
> found on plug detect and then do exactly what the i915 and nouveau drivers
> do with respect to toggling through operating modes, just like the
> up-mentioned section from DP spec describes.
> 
> At some point, link training per sub-segment will probably be needed, but
> for now, toggling the operating modes seems to be enough at least for the
> X Elite-based platforms that this patchset has been tested on.

As it seems that everybody is more or less happy with the patches,
should we pick the series into drm-misc-next now? Then i915 and msm
drivers can submerge a fresh-after-rc1 (or fresh-with-rc1?) trees into
the trees, reducing a risk of the conflicts during the next development
cycle?

> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Changes in v5:
> - Added kernel-doc () suffix and semicolon after "Return" for
>   drm_dp_lttpr_set_transparent_mode, and dropped the extra blank
>   line from kernel-doc of drm_dp_lttpr_init, like Bjorn suggested
> - Picked up Abhinav's R-b tag.
> - Moved the lttpr_caps on stack, as suggested by Bjorn and Abhinav in
>   the msm implementation.
> - Moved the msm_dp_display_lttpr_init call after msm_dp_panel_read_sink_caps,
>   as Abhinav suggested.
> - Link to v4: https://lore.kernel.org/r/20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org
> 
> Changes in v4:
> - Picked up Dmitry's and Johan's R-b tags for the drm generic and drm
>   msm patches.
> - Moved the comment about the roll-back to transparent mode inside the
>   if statement and fixed the typos, like Johan suggested.
> - Added more details in the commit message for the i915 changes. Details
>   about the update that the lttpr_common_caps need w.r.t. rollback to
>   transparent mode in case of failure.
> - Link to v3: https://lore.kernel.org/r/20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org
> 
> Changes in v3:
> - Picked-up T-b tag from Johan for the drm/dp transparent mode set helper
>   patch
> - Re-worked the return value of the drm/dp transparet mode set helper
> - Added some more details about what the values of the lttpr_count arg
>   is expected to be for the drm_dp_lttpr_init(), like Johan suggested.
> - Re-worked the non-transparent mode disable->enable so that the rollback
>   doesn't happen unless enable failed.
> - Picked-up Lyude's R-b tag for the nouveau patch.
> - Dropped extra parantesis at the end of the drm_dp_lttpr_init() call in
>   i915 patch.
> - Picked-up Johan's T-b tag for the drm/msm/dp patch.
> - Added some error handling and an error message in the
>   msm_dp_display_lttpr_init(), while dropping the unnecessary lttpr_count
>   local variable.
> - Link to v2: https://lore.kernel.org/r/20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-0-d5906ed38b28@linaro.org
> 
> Changes in v2:
> - Added new wrapper over the set_transparent new helper in order to
>   move the non-transparent disable and the its enable->disable sequence
>   mentioned in the DP standard section 3.6.6.1 entirely in the generic
>   implemetation.
> - Switch all 3 drivers to use the new wrapper.
> - Fixed the return value of the helper to return 0 on success and
>   negative value on error.
> - Added explanation about the transparent/non-transparent modes into the
>   msm dp commit message.
> - Dropped the condition for non-eDP in msm DP driver since it is allowed
>   to try to get the number of LTTPRs even on eDP and it will be always
>   0 anyway.
> - Dropped the RFC prefix
> - Link to v1: https://lore.kernel.org/r/20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-0-cafbb9855f40@linaro.org
> 
> ---
> Abel Vesa (4):
>       drm/dp: Add helper to set LTTPRs in transparent mode
>       drm/nouveau/dp: Use the generic helper to control LTTPR transparent mode
>       drm/i915/dp: Use the generic helper to control LTTPR transparent mode
>       drm/msm/dp: Add support for LTTPR handling
> 
>  drivers/gpu/drm/display/drm_dp_helper.c            | 61 ++++++++++++++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_training.c  | 24 ++-------
>  drivers/gpu/drm/msm/dp/dp_display.c                | 15 ++++++
>  drivers/gpu/drm/nouveau/nouveau_dp.c               | 17 +-----
>  include/drm/display/drm_dp_helper.h                |  2 +
>  5 files changed, 85 insertions(+), 34 deletions(-)
> ---
> base-commit: 00f3246adeeacbda0bd0b303604e46eb59c32e6e
> change-id: 20241031-drm-dp-msm-add-lttpr-transparent-mode-set-136cd5bfde07
> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

-- 
With best wishes
Dmitry
