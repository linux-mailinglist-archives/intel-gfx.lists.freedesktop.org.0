Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4903B4C50D3
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 22:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88AF10E215;
	Fri, 25 Feb 2022 21:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CF610E215
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 21:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645825278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GbtVdma75CpPyQgF7M9bEhxuk1+ZSNVU310A/ICFAh8=;
 b=erKBWjHUddWY94/zUMusGe9CTncwL7pLs6D9Dc6XP7TtMFMN4NKlZUC6+NTXdRmBrq6dQc
 vs7+tDUdHUXZHgD0cdZbolbbs2tNXmlgi19AaT9w/krkRGLPz0sHyjsm8cXYLi97+iUFPG
 hpFGxgV4iKdWpZMaIGHjmOBNpl9EqI0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-J75BwtVrOQqXU8_Btxo9Hg-1; Fri, 25 Feb 2022 16:41:10 -0500
X-MC-Unique: J75BwtVrOQqXU8_Btxo9Hg-1
Received: by mail-qt1-f198.google.com with SMTP id
 g6-20020ac87d06000000b002ddaaeacb91so3134789qtb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 13:41:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=GbtVdma75CpPyQgF7M9bEhxuk1+ZSNVU310A/ICFAh8=;
 b=a2/l96f/ZOGuRIPdjIKz+7U5htxKDkOP2WZLkoHm3wRhuPYvL3SBGw3HhLKEk9tR9N
 VL1YMqw29Q2gRMTUfNm+hm0qi29gZwyZQKn3/KTVe34D9T2m0hlo9WB/aVDLfnUAMZFf
 49fn8PQEl5sF8Io2vlwmhZD1GXADQLMhPeGU7PxFHQKgys6W+MNI5zw9ukbPr3IPMA0p
 AkvjAb9VwU6fjf8MVnPmTa2LztK+mb25lY8ewglbpaVQHsZrVPTHMXbEzE5a4KvcnvKI
 SriovhlIcIzlVS2Ob1Mut3LajYmcIedwgrkfNnDhSs8cP5jdltGYK5jswkZcMp1kNDAx
 DgsA==
X-Gm-Message-State: AOAM5328y86KtEdrRF59r15QJrrp46JVwLvTMomNZD/NXbe0616WjBYi
 TrD9/crnR1RYyjfgMD5hMS9Fqz32iw5vAHG+CtoHElYbR3N7ilNuKobFS7lrGbk/kewsgUWx2jD
 St8BHbtHjYmOXyY9h4YBoAVgYDrgb
X-Received: by 2002:a37:9c8b:0:b0:47a:c106:9a80 with SMTP id
 f133-20020a379c8b000000b0047ac1069a80mr6057453qke.653.1645825270403; 
 Fri, 25 Feb 2022 13:41:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwFKObhLQHlmjL3FQ8sYBW9b6sM5Gb1mkZe7VZMY7EUux0NS0rOhW09SFQAEeT4y2YwLv67SA==
X-Received: by 2002:a37:9c8b:0:b0:47a:c106:9a80 with SMTP id
 f133-20020a379c8b000000b0047ac1069a80mr6057444qke.653.1645825270135; 
 Fri, 25 Feb 2022 13:41:10 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 y18-20020a05622a165200b002dda08f1371sm2293365qtj.0.2022.02.25.13.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 13:41:09 -0800 (PST)
Message-ID: <6a55495c4c5585e7bf6c912447d0d27765fc2c72.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Date: Fri, 25 Feb 2022 16:41:08 -0500
In-Reply-To: <2b4072ba31eb3b26c205b3335020ebd4866ef000.camel@redhat.com>
References: <20220223124807.3284451-1-jouni.hogander@intel.com>
 <4cb2fee5d362cf2ac7172ad1405d164c6b0206dd.camel@intel.com>
 <2b4072ba31eb3b26c205b3335020ebd4866ef000.camel@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
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

JFYI I've been running the patch on my laptop for about a day now, flickering
is totally gone and also I'm a bit astonished at the power savings!

Tested-by: Lyude Paul <lyude@redhat.com>

On Thu, 2022-02-24 at 15:02 -0500, Lyude Paul wrote:
> Also - I realized this is missing an appropriate Fixes: tag for the commit
> that enabled PSR2 selective fetch on tigerlake in the first place
> 
> On Wed, 2022-02-23 at 17:32 +0000, Souza, Jose wrote:
> > On Wed, 2022-02-23 at 14:48 +0200, Jouni Högander wrote:
> > > Currently we are observing occasional screen flickering when
> > > PSR2 selective fetch is enabled. More specifically glitch seems
> > > to happen on full frame update when cursor moves to coords
> > > x = -1 or y = -1.
> > > 
> > > According to Bspec SF Single full frame should not be set if
> > > SF Partial Frame Enable is not set. This happened to be true for
> > > ADLP as PSR2_MAN_TRK_CTL_ENABLE is always set and for ADLP it's
> > > actually "SF Partial Frame Enable" (Bit 31).
> > > 
> > > Setting "SF Partial Frame Enable" bit also on full update seems to
> > > fix screen flickering.
> > > 
> > > Also make code more clear by setting PSR2_MAN_TRK_CTL_ENABLE
> > > only if not on ADLP as this bit doesn't exist in ADLP.
> > 
> > Bit exist but has another name.
> > 
> > > 
> > > Bspec: 49274
> > > 
> > > v2: Fix Mihai Harpau email address
> > > 
> > > Reported-by: Lyude Paul <lyude@redhat.com>
> > > Cc: Mihai Harpau <mharpau@gmail.com>
> > > Cc: José Roberto de Souza <jose.souza@intel.com>
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/5077
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++++--
> > >  drivers/gpu/drm/i915/i915_reg.h          |  1 +
> > >  2 files changed, 19 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 2e0b092f4b6b..90aca75e05e0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1439,6 +1439,13 @@ static inline u32
> > > man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private
> > >                PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> > >  }
> > >  
> > > +static inline u32 man_trk_ctl_partial_frame_bit_get(struct
> > > drm_i915_private *dev_priv)
> > > +{
> > > +       return IS_ALDERLAKE_P(dev_priv) ?
> > > +              ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
> > > +              PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> > > +}
> > > +
> > >  static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
> > >  {
> > >         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > @@ -1543,7 +1550,17 @@ static void psr2_man_trk_ctl_calc(struct
> > > intel_crtc_state *crtc_state,
> > >  {
> > >         struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > >         struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > > -       u32 val = PSR2_MAN_TRK_CTL_ENABLE;
> > > +       u32 val = 0;
> > > +
> > > +       /*
> > > +        * ADL_P doesn't have HW tracking nor manual tracking enable
> > > +        * bit
> > > +        */
> > 
> > Nit: Unnecessary comment.
> > 
> > Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> > 
> > > +       if (!IS_ALDERLAKE_P(dev_priv))
> > > +               val = PSR2_MAN_TRK_CTL_ENABLE;
> > > +
> > > +       /* SF partial frame enable has to be set even on full update */
> > > +       val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
> > >  
> > >         if (full_update) {
> > >                 /*
> > > @@ -1563,7 +1580,6 @@ static void psr2_man_trk_ctl_calc(struct
> > > intel_crtc_state *crtc_state,
> > >         } else {
> > >                 drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 ||
> > > clip->y2 % 4);
> > >  
> > > -               val |= PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> > >                 val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 /
> > > 4
> > > + 1);
> > >                 val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4
> > > +
> > > 1);
> > >         }
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h
> > > index 2b8a3086ed35..89bbb64e520d 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -2316,6 +2316,7 @@
> > >  #define 
> > > ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)       REG_FIELD_PREP(ADL
> > > P_
> > > PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
> > >  #define 
> > > ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK         REG_GENMASK(12, 0)
> > >  #define 
> > > ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)         REG_FIELD_PREP(ADL
> > > P_
> > > PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
> > > +#define 
> > > ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE         REG_BIT(31)
> > >  #define 
> > > ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME            REG_BIT(14)
> > >  #define 
> > > ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME         REG_BIT(13)
> > >  
> > 
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

