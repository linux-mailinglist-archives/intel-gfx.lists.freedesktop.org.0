Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA5CA07572
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 13:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E69110ED8C;
	Thu,  9 Jan 2025 12:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="B5Ear+Jh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C9810ED89
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 12:15:25 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-4363ae65100so9371495e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jan 2025 04:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736424864; x=1737029664; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Qgi4e6BoGIUkq88BVzT7YBbI2Ar0NhYklw/AGMjsAlg=;
 b=B5Ear+JhPAVnF0evzlI3EQqzkt7dmuahMHwTSYE4mWta/F7T6iRE5RV7hp8pxQKhLX
 aoBWPCC+ndsTTQZ2/tiV8DXvNZTeES+atiSoc5XKtm83YcyzUPZMtkpkoCoZb1/+8v5+
 WC0LTNd8fg+PHZaPKxOMrYxv35LRs3FN2ltpYvgoGW6tWV6AWiyCBpE7GbxtszMdNzxg
 tHBPUoXAzuaJjOXOFiHiNABaY0CEGs4jBg1yk5xXDXT73tIyD+/PGiJr/6WX9izgDC1p
 /HRnLk0qSTogsgDlolVsmOPRHXNy4IsYxvVSGIhZ2vTIKRjxvg6tdumz74EqpTVwVGkF
 nkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736424864; x=1737029664;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qgi4e6BoGIUkq88BVzT7YBbI2Ar0NhYklw/AGMjsAlg=;
 b=HEhYk15mVFu0f5OecEzvUCEQtavsSJQNuR/vGJowYvnyN/jTLrB1a//2cvY7aV7E87
 kqrb9zVG6xT5ZW0hwFpMbdSstDtuMsZWgbI2LloixLhs/RyKIrTz6nBKpFXJPck1BjxD
 /YkZKCvlnUhda+0ZjQFAl2DPNEayrtZkYQkOToHxg071geNWiGY6x2ObG1+w7VMVzVGL
 +3KojnaN4ckWF8qxNrxYn9YPZAUdEDF5+DJJGVpvL0oEdjl/cnpnn+9P3chpjr79A/lS
 GgeasSzSpRcezx2qrfQ2lcT6Fvx8rUT+FzqYiyhPi7BWHuCW5PoaYIzFK7mVL5sjlja+
 KApw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWf1yzJXfNAXcZKoKuHiOVwSCNNVAtAqeeQD3e++WbqMDZT6YNMxS9NxOTkaaV1By6w1AwsvTYXV0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzW1oaga8H0MOwfq69T2q3jqCqhtwvVxsNj1nf31KV9fP7s0k/G
 EoDe+HVv/3/t2Lgdp7CzinKSn2FIjZB+dfzkhd5M0wUUYZpfaU79I3FZkg31fXU=
X-Gm-Gg: ASbGncs0lM2HKPTt1mG+kv+2HOwKOhgpVGo+6NwcLius2kHtRSOxZgBE2/HMxdoFGoL
 ILx1DCR30kQIwopdRQ9FOqtsGQlHFhUg5aEeCLLAz8xft0lOTxpFXuAcZo09Asa+eOVFLUaNdGV
 5uNGpxBvDivfU9BFwu3324j2/p+wFh0aTNmTDc9Aa/NE5JhFfAxuK3AUOhRgXxmQ9nsq+1dJQj6
 D+9aR9SMrJZiWc6zz8ANL31g35CnLcft9ruksviXfEntkcxlhHgBPA=
X-Google-Smtp-Source: AGHT+IFZfJfwssLNpBYM5MjiXFRSaZImZ4dWDIr4RYjQoPZfimRRPYITmNGGjTmVo8KU+9ieJp1Ivg==
X-Received: by 2002:a05:600c:6b6f:b0:436:e86e:e4ab with SMTP id
 5b1f17b1804b1-436e86ee529mr33625975e9.30.1736424863901; 
 Thu, 09 Jan 2025 04:14:23 -0800 (PST)
Received: from linaro.org ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2da6401sm53853955e9.2.2025.01.09.04.14.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2025 04:14:23 -0800 (PST)
Date: Thu, 9 Jan 2025 14:14:21 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Johan Hovold <johan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v4 1/4] drm/dp: Add helper to set LTTPRs in transparent
 mode
Message-ID: <Z3+9nUwDyyYkB2Jl@linaro.org>
References: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
 <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-1-918949bc2e3a@linaro.org>
 <b4z2o4sgyjyh7wqbybtifi5evhh7b3tgfujson6l5ajmjdwt3f@x2xz6iod54vz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b4z2o4sgyjyh7wqbybtifi5evhh7b3tgfujson6l5ajmjdwt3f@x2xz6iod54vz>
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

On 25-01-08 16:17:47, Bjorn Andersson wrote:
> On Wed, Jan 08, 2025 at 04:31:43PM +0200, Abel Vesa wrote:
> > According to the DisplayPort standard, LTTPRs have two operating
> > modes:
> >  - non-transparent - it replies to DPCD LTTPR field specific AUX
> >    requests, while passes through all other AUX requests
> >  - transparent - it passes through all AUX requests.
> > 
> > Switching between this two modes is done by the DPTX by issuing
> > an AUX write to the DPCD PHY_REPEATER_MODE register.
> > 
> > Add a generic helper that allows switching between these modes.
> > 
> > Also add a generic wrapper for the helper that handles the explicit
> > disabling of non-transparent mode and its disable->enable sequence
> > mentioned in the DP Standard v2.0 section 3.6.6.1. Do this in order
> > to move this handling out of the vendor specific driver implementation
> > into the generic framework.
> > 
> > Tested-by: Johan Hovold <johan+linaro@kernel.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/gpu/drm/display/drm_dp_helper.c | 62 +++++++++++++++++++++++++++++++++
> >  include/drm/display/drm_dp_helper.h     |  2 ++
> >  2 files changed, 64 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> > index da3c8521a7fa7d3c9761377363cdd4b44ab1106e..fa7eff94d408718a1762834597f0cd51376d2596 100644
> > --- a/drivers/gpu/drm/display/drm_dp_helper.c
> > +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> > @@ -2817,6 +2817,68 @@ int drm_dp_lttpr_max_link_rate(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE])
> >  }
> >  EXPORT_SYMBOL(drm_dp_lttpr_max_link_rate);
> >  
> > +/**
> > + * drm_dp_lttpr_set_transparent_mode - set the LTTPR in transparent mode
> 
> kernel-doc functions should have () suffix

Yes, will add.

> 
> > + * @aux: DisplayPort AUX channel
> > + * @enable: Enable or disable transparent mode
> > + *
> > + * Returns 0 on success or a negative error code on failure.
> 
> And this should be "Return: ...".

Will fix as well.

> 
> > + */
> > +int drm_dp_lttpr_set_transparent_mode(struct drm_dp_aux *aux, bool enable)
> > +{
> > +	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> > +			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> > +	int ret = drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE, val);
> > +
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	return (ret == 1) ? 0 : -EIO;
> > +}
> > +EXPORT_SYMBOL(drm_dp_lttpr_set_transparent_mode);
> > +
> > +/**
> > + * drm_dp_lttpr_init - init LTTPR transparency mode according to DP standard
> > + *
> 
> Documentation also explicitly says not to leave a blank line here...

Will drop the blank line.

> 
> Regards,
> Bjorn
> 

Thanks for reviewing!

Abel
