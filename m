Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7346D7DBD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 15:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C710510E962;
	Wed,  5 Apr 2023 13:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16AAF10E95D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 13:30:09 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-502208f7cb3so69154a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 06:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680701407;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=SUMDFnUb6x/ZZ3aLmeYCivVPX9ECbDP10N/pwzMf/TY=;
 b=G5q9TZU4APq7f1oI4bpOeO8ZoW4XdoPZ8NjfsI3mzFlz8FtZJkyXNPaJgAOTqNugMM
 Ertdb2/XRMAxZw0KmSjCQPm+ynb8mIzgRxk1ZvVE9yKb7jiIrcXIJTg+1TGSHeE1mWqJ
 g3xCM47wIOH48f7RmYimheOqtxlMTaWYBRkAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680701407;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SUMDFnUb6x/ZZ3aLmeYCivVPX9ECbDP10N/pwzMf/TY=;
 b=4phtuDkrvdqwJ/w2fVnNk16nfK8R8UXkW3/vp+/b/zy8s3QhYgwa3v/J8487/78ZB/
 iFCTZs7Ug19sun8battDi7BphHLMLjmzi9LWA5WcUWtktjlJ+E86A/0D+76bcU5Ugi6N
 s8XrJiYBeQv5U0dTlvJyiCxpoqhL6t85o8hyGHrEQHR1zsqUZRLubPd1g+IFrT1OZsHs
 fq7ld2R2WZGy6nveZQPq3AlAv5jGlYRNyXqz/owuPnZAsykIXjfCVb+dY9y9VSPniN7a
 4eE6cxiJyWU0oExBwtKHhhOv4VHblrsaUcc4Tagj2xjqwQC9H8AyVfqruDFeD2FEwVzW
 RygA==
X-Gm-Message-State: AAQBX9fX/OJ1/ojkUTi3N1RHuXMGiLyUuvnkjt5XACbGX4zuCxyxYkJ+
 LvV72ip3+4SKhkmFQ1aYPUoiRg==
X-Google-Smtp-Source: AKy350aqwbvgKPYlKHD4APbk5x6MRXfPK9tyk/uIlCTc9OF+GkwQh3LeL6DbIqr9APLo1RyXU8IYpQ==
X-Received: by 2002:a17:906:19c:b0:931:5145:c51d with SMTP id
 28-20020a170906019c00b009315145c51dmr1680024ejb.0.1680701407162; 
 Wed, 05 Apr 2023 06:30:07 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 xi3-20020a170906dac300b00947ab65d932sm7044235ejb.83.2023.04.05.06.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 06:30:06 -0700 (PDT)
Date: Wed, 5 Apr 2023 15:30:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZC133MAiKmGLoKY+@phenom.ffwll.local>
References: <20230405081650.797972-1-daniel.vetter@ffwll.ch>
 <ZC1oq1+oBWM6PpRR@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZC1oq1+oBWM6PpRR@intel.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/atomic-helper: Don't set deadline for
 modesets
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 05, 2023 at 03:25:15PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 05, 2023 at 10:16:50AM +0200, Daniel Vetter wrote:
> > If the crtc is being switched on or off then the semantics of
> > computing the timestampe of the next vblank is somewhat ill-defined.
> > And indeed, the code splats with a warning in the timestamp
> > computation code. Specifically it hits the check to make sure that
> > atomic drivers have full set up the timing constants in the drm_vblank
> > structure, and that's just not the case before the crtc is actually
> > on.
> > 
> > For robustness it seems best to just not set deadlines for modesets.
> > 
> > Link: https://lore.kernel.org/dri-devel/dfc21f18-7e1e-48f0-c05a-d659b9c90b91@linaro.org/
> > Fixes: d39e48ca80c0 ("drm/atomic-helper: Set fence deadline for vblank")
> > Cc: Rob Clark <robdclark@chromium.org>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Reported-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # test patch only
> > Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_atomic_helper.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> > index f21b5a74176c..6640d80d84f3 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -1528,6 +1528,9 @@ static void set_fence_deadline(struct drm_device *dev,
> >  	for_each_new_crtc_in_state (state, crtc, new_crtc_state, i) {
> >  		ktime_t v;
> >  
> > +		if (drm_atomic_crtc_needs_modeset(new_crtc_state))
> > +			continue;
> 
> Should this stuff also be skipped when !new_crtc_state->active?
> I didn't actually check what drm_crtc_next_vblank_start() ends
> up doing in that case.

Uh yes, I'll spin v2.
-Daniel
> 
> > +
> >  		if (drm_crtc_next_vblank_start(crtc, &v))
> >  			continue;
> >  
> > -- 
> > 2.40.0
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
