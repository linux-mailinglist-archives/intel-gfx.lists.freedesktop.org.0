Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B58F09EE779
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 14:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8D010E450;
	Thu, 12 Dec 2024 13:11:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="m9WTlTne";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A85F10EAD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 09:08:49 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-436202dd7f6so1583655e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 01:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733908128; x=1734512928; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=9vEtBjFWv0oJ9eIaHpJrX0BFB+4qp8phO4ofGzRE0Nw=;
 b=m9WTlTnerA/rr5OuHyqW60qnb4eKtj+T1YJGi7OUSZT/0UxuX4xV9MMUQYoMIYI5Bt
 QiqEPJdKEzBRbs3/00fKWwSYAUgfnNP5vajlNBrZ8twpg3LWvUMxo68wUZSfZHB9XYuN
 JAZ0al7NYCAD6XZ4a5Q9a2PMsMYAyOS6vMLR6YRwrFSvnUyM1+Zp8f/pZzkDRYTqFQbi
 0bZarWkKHRF+qRx7TygkGvj50Ykl8vHIV2U1QTUhhvl6iK9ABd6mudUL788dodFcHSOM
 eyq63ogNqXfqSRltb9HbwVxZ8j1GUOdFo0K9ovJ5b2Js76TPlHjUiZ1TzK4Z/GbpoybP
 or7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733908128; x=1734512928;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9vEtBjFWv0oJ9eIaHpJrX0BFB+4qp8phO4ofGzRE0Nw=;
 b=JDh8gftHURH59JmrleWxfGjp3kKF91iMT4fHY6mlJFxY8YFEliHNzetFnuoX8RR5RL
 XJoyU3eUL6RXMQZlRuvWcyuzCcw4l481GNYShbZpLT94h26Q0yzxlhYmwjeE1qV75mJ5
 +qJHIQdUSwPCPcTr9uNOV/82Hwc+icEVIbhsZMs5YwYM18Mo0RicWF4m9g9HESUF1CBN
 eJV5It+oW9d5gZDhxjZmli8jo0gHimH96oYCMvHfQIDGuiDUXbuLX/l7mBK9YHXh4WmA
 JuQzUU2Wbg74r4sXvV3qxuaUWcH51LWTIA1HkQWI+/nIV505ebvW4ijbVwnyc01wpABw
 cYeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLxCS0CrnfKAMIVXo+q/1/CKOHHkSUksQsnU/2SsmVBiDEeq6WIR5CvzeBYtRt/SCdSZouhK+V4FM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzcgdhw9MSmxvG00ZD68ZS8FcX7lYzWclYjyikJVe3jyaP8OwkX
 cWlbg+qZlhDBuairKof0Vd0C0QaR9zLbhbq4QFcqsA7h/e+OuA8KSY+6avSSNeA=
X-Gm-Gg: ASbGncvwmYkeUu1LFm8niX6OGPKTw5W0OkKarptjmUgfSOv/XyZJ040ZMX3QNfgQKA3
 f7WhQMYJpAoiWmHyD514Jhue3lSlwfvfNGSrqjXCLFGefLDwdPf67Nz09XpzD1cZGg/LAgVltkf
 vueaSMpp+W+fLMjZRVOnF5c+cgmsrVxB620F4hlVw+HnSKab+ZS6Nqx/E1mWPiVLm9BVUtvNVsK
 147brlXpkrEIHGke9n7T7yvstyWheudKSpAu40ifwV/ymq0cqhU
X-Google-Smtp-Source: AGHT+IGD0J/JRFizsjyOq9cq12J2ujkcAmyNKzRhsrMcAI97nrwbSWWcCwaN8qi6JkWUTmtl0C7NHQ==
X-Received: by 2002:a5d:64cf:0:b0:385:ec8d:8ca9 with SMTP id
 ffacd0b85a97d-3864cec5b76mr1446900f8f.42.1733908127884; 
 Wed, 11 Dec 2024 01:08:47 -0800 (PST)
Received: from linaro.org ([82.76.168.176]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-387824a4815sm807610f8f.26.2024.12.11.01.08.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 01:08:47 -0800 (PST)
Date: Wed, 11 Dec 2024 11:08:45 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Johan Hovold <johan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH RFC 2/4] drm/nouveau/dp: Use the generic helper to
 control LTTPR transparent mode
Message-ID: <Z1lWnY+TxSptkBiY@linaro.org>
References: <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-0-cafbb9855f40@linaro.org>
 <20241031-drm-dp-msm-add-lttpr-transparent-mode-set-v1-2-cafbb9855f40@linaro.org>
 <hh26gzyjhygphlrmhh2zkskoz7vezkgdepbx7fnzgfch75simf@hmr5ezp4khwi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hh26gzyjhygphlrmhh2zkskoz7vezkgdepbx7fnzgfch75simf@hmr5ezp4khwi>
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

On 24-10-31 18:44:55, Dmitry Baryshkov wrote:
> On Thu, Oct 31, 2024 at 05:12:46PM +0200, Abel Vesa wrote:
> > LTTPRs operating modes are defined by the DisplayPort standard and the
> > generic framework now provides a helper to switch between them.
> > So use the drm generic helper instead as it makes the code a bit cleaner.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/gpu/drm/nouveau/nouveau_dp.c | 9 +++------
> >  1 file changed, 3 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/nouveau/nouveau_dp.c b/drivers/gpu/drm/nouveau/nouveau_dp.c
> > index bcda0105160f1450df855281e0d932606a5095dd..80264e6186246903fa037861fe37493646de0c6e 100644
> > --- a/drivers/gpu/drm/nouveau/nouveau_dp.c
> > +++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
> > @@ -80,15 +80,12 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
> >  		int nr = drm_dp_lttpr_count(outp->dp.lttpr.caps);
> >  
> >  		if (nr) {
> > -			drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE,
> > -						DP_PHY_REPEATER_MODE_TRANSPARENT);
> > +			drm_dp_lttpr_set_transparent_mode(aux, true);
> >  
> >  			if (nr > 0) {
> > -				ret = drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE,
> > -							      DP_PHY_REPEATER_MODE_NON_TRANSPARENT);
> > +				ret = drm_dp_lttpr_set_transparent_mode(aux, false);
> >  				if (ret != 1) {
> > -					drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE,
> > -								DP_PHY_REPEATER_MODE_TRANSPARENT);
> > +					drm_dp_lttpr_set_transparent_mode(aux, true);
> >  				} else {
> >  					outp->dp.lttpr.nr = nr;
> >  				}
> 
> Could you please extract this true-false-true dance to a new helper too?
> This way Intel driver can use the simple helper, the rest of the drivers
> can benefit having the common code.

Will be part of the new version.

> 
> > 
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry
