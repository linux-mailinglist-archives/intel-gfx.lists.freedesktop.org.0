Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1259A05D29
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 14:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559E710E8B2;
	Wed,  8 Jan 2025 13:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="kA/va2YE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5534410E2BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 13:45:49 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-304d760f118so48547501fa.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jan 2025 05:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736343888; x=1736948688; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=go7fn8G/ymJBJOoBu9CCL9fg2QtY/C41teH6UPJDvwo=;
 b=kA/va2YEvoYYlwMYRZNHWI2LGtISO4IUFJ1MygVJ0yMiVsmIr1/tFdlhWNNqG9f8AQ
 is0wXfmnLrLytgtyGfvnwlKTISr2HVMMZqrExpIvExvRkLZdv6pQYLjVQiHw8Qf55Xfa
 bvzh+QTdC2MTsdrq3iZSU4GTz8cby3GxVIixaJogH1wA0En5dxRYt0APbrOp+ESOAf0y
 MU6eCm6VjdkK0wHQrcSKIsUR0rsS7BNihtPOPhZm9AJ4qHJ9koOUPa9BkFdmigGjR47i
 ghhkLR1OTmlHGks5cpJxNUIny7p3CTsWw8UBhIxbGx+coXxjP8yfCQOog1rJ7r3ORJ3Z
 9EMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736343888; x=1736948688;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=go7fn8G/ymJBJOoBu9CCL9fg2QtY/C41teH6UPJDvwo=;
 b=KGCCDgoiZf+oJDFMvDTlx4d/R5ICcGXAz2qyogK07sTeVigj7pR9Y8vKWo7jDQG7Mn
 KJQ0kLF+34Qk9T3rb8wC906e887nfQHvt2F1HP3EjqpJs6Qo9P23XK8PzkXmWlvGD98/
 OrG71bOm7zq6Yz86PXbFsHInuzyPlXhJnfFDSuO+cIqhj1OGvcWq4h0Qa3OGHKfcz2Mg
 dxBqrdG+yfaKOeoh5kJV0FoU+6D7SMTWHQzxwXP3ZcT3XJ7OvovQksp7x2C1bbxxKpuh
 GTAnNX41eTDNpWRrlvwR+sLvYX9o5tv2RDQ4iEjmanVkC7+Z8MXx4RirrBpuZa4Vr3cd
 roSA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWn+jsgupfhyB/7pzUvjigPq00mDwxtCu/lsL6Ycn49wm2vkFJTih1FOFA66xHj6DzrfHqN6LIkKGU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz9WZ5tmOHbyEsmiRhKkRc7nF/iCDwAAhRkh0WlxsgvTebXKB2O
 HguM53GqWEXVmoA4aJLZCI+sq6+Aiv7xyGuD5449gIWaE0Dn9dN2mR68H7pT6pqT2q1OQ2nk1ez
 A
X-Gm-Gg: ASbGncupqh8q16Z+4G7xNjV9OlJxMVPyw6hUBIJvziY/nPLi+2/NsMbjMJRd9o/2tLY
 o/Ztg+HeyMPPyw0vhLH1TA4fgVjw0s4jG30V7Zun4xRyHt11F4uGHbrKf5hkh+SPTH26x4cr8tX
 8w/V5WmWSZl1Ig/UexXnEDXRqOxq1ZgDL9MsQb1tcxC9pfkhd+GFNwlzrfCbpI5yTtlSWaUuS9K
 /sadQ4mU4Ia3FuJ3ix9WWbOapqU+70IceQDHkGdJx1GVMjQ4upwuJo=
X-Google-Smtp-Source: AGHT+IHuzod8aMhCQ+n6NVLGNnPNVKNs6REXYs0yamrClbVZfZoa7djflMAszxH2qhTaAW4scrTx/w==
X-Received: by 2002:a5d:64ed:0:b0:385:e303:8dd8 with SMTP id
 ffacd0b85a97d-38a872e8b18mr2604012f8f.26.1736342197530; 
 Wed, 08 Jan 2025 05:16:37 -0800 (PST)
Received: from linaro.org ([86.121.162.10]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c832c45sm52417065f8f.32.2025.01.08.05.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2025 05:16:37 -0800 (PST)
Date: Wed, 8 Jan 2025 15:16:29 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
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
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 1/4] drm/dp: Add helper to set LTTPRs in transparent
 mode
Message-ID: <Z356ra0IDQ4SMbfN@linaro.org>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
 <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-1-5c367f4b0763@linaro.org>
 <Z3z0NcDhmwOoQhlG@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z3z0NcDhmwOoQhlG@hovoldconsulting.com>
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

On 25-01-07 10:30:29, Johan Hovold wrote:
> On Fri, Jan 03, 2025 at 02:58:15PM +0200, Abel Vesa wrote:
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
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> > +/**
> > + * drm_dp_lttpr_init - init LTTPR transparency mode according to DP standard
> > + *
> > + * @aux: DisplayPort AUX channel
> > + * @lttpr_count: Number of LTTPRs. Between 0 and 8, according to DP standard.
> > + *               Negative error code for any non-valid number.
> > + *               See drm_dp_lttpr_count().
> > + *
> > + * Returns 0 on success or a negative error code on failure.
> > + */
> > +int drm_dp_lttpr_init(struct drm_dp_aux *aux, int lttpr_count)
> > +{
> > +	int ret;
> > +
> > +	if (!lttpr_count)
> > +		return 0;
> > +
> > +	/*
> > +	 * See DP Standard v2.0 3.6.6.1 about the explicit disabling of
> > +	 * non-transparent mode and the disable->enable non-transparent mode
> > +	 * sequence.
> > +	 */
> > +	ret = drm_dp_lttpr_set_transparent_mode(aux, true);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (lttpr_count < 0)
> > +		return -ENODEV;
> > +
> > +	/*
> > +	 * Roll-back to tranparent mode if setting non-tranparent mode failed
> 
> typo: transparent (2x)

Will fix.

> 
> > +	 */
> 
> I think this comment now needs to go inside the conditional, if you want
> to keep it at all.

Yes, will move it.

> 
> > +	if (drm_dp_lttpr_set_transparent_mode(aux, false)) {
> > +		drm_dp_lttpr_set_transparent_mode(aux, true);
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(drm_dp_lttpr_init);
> 
> This looks much better to me now, so with the above addressed: 
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Thanks for reviewing!

Abel

