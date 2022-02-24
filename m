Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7DC4C3675
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 21:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662FA10E311;
	Thu, 24 Feb 2022 20:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5A310E13B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 20:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645732947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=guztHtEflM7LlCCQ1Yg9Uvj2FDqnuky0A5/FzHM4Rys=;
 b=PuKbkP8gJeHPhodldM60O2QTBP9LNaOIv6uB+30W4YhBSIUQRG+mRjz962Z83kNRZp++Se
 bT6uEqHjyLl9RyrP3haE5ckuQ1HWEs8M7Hm+tEXYPpssloYZOSNkgRMNTEXXTQKO5yGFp4
 SkCUvw7bldw6KOOEmeHI9HBeZbOQl50=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-416-ydGZ6WZBMkCKd9NPc6uGdg-1; Thu, 24 Feb 2022 15:02:26 -0500
X-MC-Unique: ydGZ6WZBMkCKd9NPc6uGdg-1
Received: by mail-qt1-f197.google.com with SMTP id
 c2-20020ac81102000000b002de4af72dcbso430498qtj.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 12:02:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=guztHtEflM7LlCCQ1Yg9Uvj2FDqnuky0A5/FzHM4Rys=;
 b=X0oxQVkh3gPUbVS/YBQ2XVEBp+ElTBlcCuyrgekShfw+oFyEQdj4uhxKcyf/pgROfA
 Qr/sFt16Q5LMDdl6Htbi67eecscLd3PZqLE8fvQjY9slq9CtXyryFgdxieWtelV7hlpK
 Y0mK2CG3mGcJX+qZROxTHNlzEqvb1ugngnlAkd17o0vaNWNtYZQLBJXr9jjpH2dS5fm6
 ZkDeoDjNODMA7MU9GSi6k9KM9f1TRGbkeV/rhJb+j6vuuLX3Cg7+aiTkOz+BLpr9aCfa
 zM3LePx47XU3ydhKkyHzJnd1gpWahHfc461FoS8QHrWaRIvpM04jMGLZDBywNfm/fr1R
 7ixg==
X-Gm-Message-State: AOAM5326gubw1J2vOyBjZ2xhGwXLgAR5+tx6HDQk0tpMV0Q39jDf9uDw
 LfnU27TjAGmrwiltzBSIxT2114gUgxZEMDf6UqMG3LwU7rGmgGOOg+bbkejcQ+fTUSw7p/yDh+e
 2hYEBlW0X9pJUmiKqPo3NFz77YcWT
X-Received: by 2002:ac8:7fcc:0:b0:2de:6ff:4a17 with SMTP id
 b12-20020ac87fcc000000b002de06ff4a17mr3873926qtk.151.1645732940010; 
 Thu, 24 Feb 2022 12:02:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyEjCNGO2xdfPQyrk7oUIWrxWjJCbnCV/pdrNCTLbSGzUMYvz1S+M9hTCbX82x58yOZlairQw==
X-Received: by 2002:ac8:7fcc:0:b0:2de:6ff:4a17 with SMTP id
 b12-20020ac87fcc000000b002de06ff4a17mr3873610qtk.151.1645732936679; 
 Thu, 24 Feb 2022 12:02:16 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 d15-20020a05622a15cf00b002de711a190bsm165524qty.71.2022.02.24.12.02.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 12:02:16 -0800 (PST)
Message-ID: <2b4072ba31eb3b26c205b3335020ebd4866ef000.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Date: Thu, 24 Feb 2022 15:02:09 -0500
In-Reply-To: <4cb2fee5d362cf2ac7172ad1405d164c6b0206dd.camel@intel.com>
References: <20220223124807.3284451-1-jouni.hogander@intel.com>
 <4cb2fee5d362cf2ac7172ad1405d164c6b0206dd.camel@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Set "SF Partial Frame
 Enable" also on full update
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
Cc: "mharpau@gmail.com" <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Also - I realized this is missing an appropriate Fixes: tag for the commit
that enabled PSR2 selective fetch on tigerlake in the first place

On Wed, 2022-02-23 at 17:32 +0000, Souza, Jose wrote:
> On Wed, 2022-02-23 at 14:48 +0200, Jouni Högander wrote:
> > Currently we are observing occasional screen flickering when
> > PSR2 selective fetch is enabled. More specifically glitch seems
> > to happen on full frame update when cursor moves to coords
> > x = -1 or y = -1.
> > 
> > According to Bspec SF Single full frame should not be set if
> > SF Partial Frame Enable is not set. This happened to be true for
> > ADLP as PSR2_MAN_TRK_CTL_ENABLE is always set and for ADLP it's
> > actually "SF Partial Frame Enable" (Bit 31).
> > 
> > Setting "SF Partial Frame Enable" bit also on full update seems to
> > fix screen flickering.
> > 
> > Also make code more clear by setting PSR2_MAN_TRK_CTL_ENABLE
> > only if not on ADLP as this bit doesn't exist in ADLP.
> 
> Bit exist but has another name.
> 
> > 
> > Bspec: 49274
> > 
> > v2: Fix Mihai Harpau email address
> > 
> > Reported-by: Lyude Paul <lyude@redhat.com>
> > Cc: Mihai Harpau <mharpau@gmail.com>
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/5077
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++++--
> >  drivers/gpu/drm/i915/i915_reg.h          |  1 +
> >  2 files changed, 19 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 2e0b092f4b6b..90aca75e05e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1439,6 +1439,13 @@ static inline u32
> > man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private
> >                PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> >  }
> >  
> > +static inline u32 man_trk_ctl_partial_frame_bit_get(struct
> > drm_i915_private *dev_priv)
> > +{
> > +       return IS_ALDERLAKE_P(dev_priv) ?
> > +              ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
> > +              PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> > +}
> > +
> >  static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
> >  {
> >         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > @@ -1543,7 +1550,17 @@ static void psr2_man_trk_ctl_calc(struct
> > intel_crtc_state *crtc_state,
> >  {
> >         struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >         struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > -       u32 val = PSR2_MAN_TRK_CTL_ENABLE;
> > +       u32 val = 0;
> > +
> > +       /*
> > +        * ADL_P doesn't have HW tracking nor manual tracking enable
> > +        * bit
> > +        */
> 
> Nit: Unnecessary comment.
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> 
> > +       if (!IS_ALDERLAKE_P(dev_priv))
> > +               val = PSR2_MAN_TRK_CTL_ENABLE;
> > +
> > +       /* SF partial frame enable has to be set even on full update */
> > +       val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
> >  
> >         if (full_update) {
> >                 /*
> > @@ -1563,7 +1580,6 @@ static void psr2_man_trk_ctl_calc(struct
> > intel_crtc_state *crtc_state,
> >         } else {
> >                 drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 ||
> > clip->y2 % 4);
> >  
> > -               val |= PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> >                 val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4
> > + 1);
> >                 val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 +
> > 1);
> >         }
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h
> > index 2b8a3086ed35..89bbb64e520d 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2316,6 +2316,7 @@
> >  #define 
> > ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)       REG_FIELD_PREP(ADLP_
> > PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
> >  #define 
> > ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK         REG_GENMASK(12, 0)
> >  #define 
> > ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)         REG_FIELD_PREP(ADLP_
> > PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
> > +#define 
> > ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE         REG_BIT(31)
> >  #define 
> > ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME            REG_BIT(14)
> >  #define 
> > ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME         REG_BIT(13)
> >  
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

