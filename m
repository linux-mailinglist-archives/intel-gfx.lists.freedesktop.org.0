Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0F19ED572
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 20:00:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A14410E1D6;
	Wed, 11 Dec 2024 19:00:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="ntsLPiz2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4B510EBEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 19:00:38 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-30229d5b21cso28323211fa.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 11:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733943636; x=1734548436; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3sm2j3frVX6XobbLx+2sssGo00nVIVVj/64ej0M6DaQ=;
 b=ntsLPiz2qV+/zq7ih968cyD6PacwCu+V6laCxWOiWfu1mAtBEPQ33+3uH4sFeBAN4s
 BCAl6tUYadvVieQo9iY7UZ9p2Da6/OAByCH3efRjYWcJrctu+YE2iGnRG3Opd19M3MDP
 qmh187BB/aZj1JUhYh5zw0FAJoQJyRUp3SJIi+E6TeziAoLTK29TXTaV5dnzX/uqx/Tk
 mryVIpfX0RodelV2gldvh/k6N74ePpob53VQs1HH0DtZiTAsWYxLQG1YxpBdbZTESRpE
 fSeZ3I1DIpqJGpd9uVpUf6asvliSO49yyFevnoSh5UEPuiE4Ogv2Y6s90tDwekWJMMr0
 Y9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733943636; x=1734548436;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3sm2j3frVX6XobbLx+2sssGo00nVIVVj/64ej0M6DaQ=;
 b=IQ1Sb05gsJy5xeldgiswKoBGDUbalHl9tKQrizeSiKkv5ZGwB0n3ECuoNSznGW3khj
 UXp9SfAAcIE2ssoFg6dLIM2jGSx2dtCZ4BMTFnX/epfN2XAXY5WrKn5nPgplWn37t3CX
 viq5cMVbxUWEAkGRKuRHJi77XB3Z66QmYal+Qx4236V8vnTa02D0afPzmbZnD+POBB1U
 QKy4nEGBZDOFoi8p/m5LlZAS1E+4IeGvfa6op9/HYrjmMfTkjLo787eTMlGfXI+wjUQr
 CWDeQKKppjPabR8jzLEt4XzHrYEGIR7n/74szR2ocxdVIWYGq4aYPev4wqmh0xeSg339
 vyqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjqPYYhFOhSckLg8xbS7fiiXaRgbS6Lbo6Oa0QQXQI1q//9t80KCxWylJZ7P4njAFnaFitu+AoQZY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxwFgYwkaUDvXbRzIJPzxDkMHy/BiD9NTRMGR3STRGVTNnIgAJC
 QsZ4doG1YzUWgmNLrizxOynfDWMEElnCx8OsTRSUtyRpf4b8Tv1V52wh0iiH3LE=
X-Gm-Gg: ASbGncveLs22LWgbQKHIF/0eV9RVa8gIwhBRpU46u0ZKPngTwlttuzsgzufyX3U2GrJ
 tsN6I2bMlxflZm3FZ0qAMMqppull6xG2JTFtyDmBE4BrjL+1UgAhzWPobniYpp1WIrxlTwgqESj
 mPGKgw1su0MaPkd0M0CRhBymeUNLOdwtcTiIEXCkh2G7IAPuN5sG5milSShOlJgXpm/hcLQRBo1
 HANAKLqUOi5cwIVu933ozqH4PCA5ikCLledjUqhfRKSN1PfHZg5JLMLN3DeayV+eXz7I+9e3r7j
 pGZp4lAdczSEeDjr5gApQ5Sg13W//cNYOQ==
X-Google-Smtp-Source: AGHT+IGsgdXAdVI72VjehBhRAGYyQYi2ZlWZ5S+RtIUjGgQQsMEhY9vE/LoWlhZJn7MQjhDvpgk8fA==
X-Received: by 2002:a2e:bea2:0:b0:302:2620:ecc7 with SMTP id
 38308e7fff4ca-30249e89ee5mr1842641fa.35.1733943636318; 
 Wed, 11 Dec 2024 11:00:36 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-302292959c0sm8657671fa.94.2024.12.11.11.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 11:00:34 -0800 (PST)
Date: Wed, 11 Dec 2024 21:00:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] drm/dp: Add helper to set LTTPRs in transparent
 mode
Message-ID: <qh5ochh2cjqj76qqbbj7e2jmyie6pbnvgcr5wti5eigc4qxjod@v5tov4s65sdb>
References: <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-0-d5906ed38b28@linaro.org>
 <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-1-d5906ed38b28@linaro.org>
 <Z1mk08SHEd5_vc99@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1mk08SHEd5_vc99@hovoldconsulting.com>
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

On Wed, Dec 11, 2024 at 03:42:27PM +0100, Johan Hovold wrote:
> On Wed, Dec 11, 2024 at 03:04:12PM +0200, Abel Vesa wrote:
>  
> > +/**
> > + * drm_dp_lttpr_set_transparent_mode - set the LTTPR in transparent mode
> > + * @aux: DisplayPort AUX channel
> > + * @enable: Enable or disable transparent mode
> > + *
> > + * Returns 0 on success or a negative error code on failure.
> > + */
> > +int drm_dp_lttpr_set_transparent_mode(struct drm_dp_aux *aux, bool enable)
> > +{
> > +	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> > +			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> > +	int ret = drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE, val);
> > +
> > +	return ret == 1 ? 0 : ret;
> 
> This looks correct, but I had to go look at drm_dp_dpcd_writeb() to make
> sure it never returns 0 (for short transfers).

Indeed. It got me a while to check that drm_dp_dpcd_writeb() ->
drm_dp_mst_dpcd_write() -> drm_dp_send_dpcd_write() ->
drm_dp_mst_wait_tx_reply() never returns '0'. I'd prefer an explicit

if (ret < 0)
	return ret;
return (ret == 1) ? 0 : -EIO;

> 
> > +}
> > +EXPORT_SYMBOL(drm_dp_lttpr_set_transparent_mode);
> 

-- 
With best wishes
Dmitry
