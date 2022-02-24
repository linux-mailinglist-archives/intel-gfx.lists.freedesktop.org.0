Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F864C3626
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 20:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D974710E1AD;
	Thu, 24 Feb 2022 19:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FDF10E1A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 19:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645732191;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7djcR5eZM9ypZ5K78T6F47jB3cYy/Vnl/We0mGyktpo=;
 b=P/+tXHtTyJKorkNjN5t8roQ6h8QD7/yrEAkghpCivwdoIVoU1LL2tcKEyrGLiAPMAdxrpC
 NudB+TSMqZO3pmHAXLpS5UCOlp6UVQtBbAlfoKJYLexWps/L52cQAKtqr4iwwkyatUD5lb
 P9aO2P3XPLLqRXSF7q8wXwsFbKYk+8I=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-rLgr9hdhPLqsYJ_Od9n6Ag-1; Thu, 24 Feb 2022 14:49:46 -0500
X-MC-Unique: rLgr9hdhPLqsYJ_Od9n6Ag-1
Received: by mail-qv1-f69.google.com with SMTP id
 kc30-20020a056214411e00b0042cb92fe8bbso3946322qvb.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 11:49:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=7djcR5eZM9ypZ5K78T6F47jB3cYy/Vnl/We0mGyktpo=;
 b=2dJz4CJBL8xwfSEd7FQ58FHyKCLFaB5t1IbCavG4/9wymackI7pDlwVX5/A4/n5z5B
 8T+XHRGWRmV/xc8h3MP17yPZKDktgY3PD3o8m0c9NY0GpEZtioxgIwCr0jMQvlkXov4N
 M2GQDofY0Rs7NeIkq4BHHbo5z7/L+X2A/GBfDTkMh5hzspFnZILUHBPk7KwMhck4i8oJ
 VqlvXgN9Q5Eu2c7UsJiNZKrwMPg1N+IuUy8icd6D2utT4RjeEQ1SNlXWXvGb2m/3IgtZ
 xODVxZRraj8RG8YN6Xm+M2bdzvmewjrsu5QKZBRLPHiShiwKNWpTfvXeL0wBX5lRrGWP
 6QlQ==
X-Gm-Message-State: AOAM530n6WiWAMweR+Jfb5otGjT8vexijDeBmh5DqzCHv7fW/Q7IPbOd
 TfvU2e3ag0bG3pLKUhM2dzRD5yH+eSiWOp2TTHGVRqIloKddfoP3CYoeadnNW8KLFThB7GkuyYW
 Th3Z2QbgJbY9fw+kI3d1vlzRjCP6X
X-Received: by 2002:ac8:5b86:0:b0:2d5:3b8d:6a42 with SMTP id
 a6-20020ac85b86000000b002d53b8d6a42mr3941898qta.228.1645732185710; 
 Thu, 24 Feb 2022 11:49:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzuQu+W6pMn0T9SaL+qCRn1895t6ZE7SeUAMqYdjkezA6js93pt97D9QsTAaDGOZlkWxPZZGA==
X-Received: by 2002:ac8:5b86:0:b0:2d5:3b8d:6a42 with SMTP id
 a6-20020ac85b86000000b002d53b8d6a42mr3941883qta.228.1645732185407; 
 Thu, 24 Feb 2022 11:49:45 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 z16-20020a05622a061000b002ddcbdb3ee0sm152431qta.60.2022.02.24.11.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 11:49:44 -0800 (PST)
Message-ID: <7334a840537facc637e623cdfdc7c1723cf34910.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 14:49:43 -0500
In-Reply-To: <20220223124807.3284451-1-jouni.hogander@intel.com>
References: <20220223124807.3284451-1-jouni.hogander@intel.com>
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
Cc: Mihai Harpau <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I'm back so I will try this patch on my machine and see if it helps, thank
you!

On Wed, 2022-02-23 at 14:48 +0200, Jouni Högander wrote:
> Currently we are observing occasional screen flickering when
> PSR2 selective fetch is enabled. More specifically glitch seems
> to happen on full frame update when cursor moves to coords
> x = -1 or y = -1.
> 
> According to Bspec SF Single full frame should not be set if
> SF Partial Frame Enable is not set. This happened to be true for
> ADLP as PSR2_MAN_TRK_CTL_ENABLE is always set and for ADLP it's
> actually "SF Partial Frame Enable" (Bit 31).
> 
> Setting "SF Partial Frame Enable" bit also on full update seems to
> fix screen flickering.
> 
> Also make code more clear by setting PSR2_MAN_TRK_CTL_ENABLE
> only if not on ADLP as this bit doesn't exist in ADLP.
> 
> Bspec: 49274
> 
> v2: Fix Mihai Harpau email address
> 
> Reported-by: Lyude Paul <lyude@redhat.com>
> Cc: Mihai Harpau <mharpau@gmail.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/5077
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h          |  1 +
>  2 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2e0b092f4b6b..90aca75e05e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1439,6 +1439,13 @@ static inline u32
> man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private
>                PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>  }
>  
> +static inline u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private
> *dev_priv)
> +{
> +       return IS_ALDERLAKE_P(dev_priv) ?
> +              ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
> +              PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> +}
> +
>  static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>  {
>         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -1543,7 +1550,17 @@ static void psr2_man_trk_ctl_calc(struct
> intel_crtc_state *crtc_state,
>  {
>         struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>         struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -       u32 val = PSR2_MAN_TRK_CTL_ENABLE;
> +       u32 val = 0;
> +
> +       /*
> +        * ADL_P doesn't have HW tracking nor manual tracking enable
> +        * bit
> +        */
> +       if (!IS_ALDERLAKE_P(dev_priv))
> +               val = PSR2_MAN_TRK_CTL_ENABLE;
> +
> +       /* SF partial frame enable has to be set even on full update */
> +       val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
>  
>         if (full_update) {
>                 /*
> @@ -1563,7 +1580,6 @@ static void psr2_man_trk_ctl_calc(struct
> intel_crtc_state *crtc_state,
>         } else {
>                 drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 ||
> clip->y2 % 4);
>  
> -               val |= PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
>                 val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 +
> 1);
>                 val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 +
> 1);
>         }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 2b8a3086ed35..89bbb64e520d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2316,6 +2316,7 @@
>  #define 
> ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)       REG_FIELD_PREP(ADLP_PS
> R2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
>  #define 
> ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK         REG_GENMASK(12, 0)
>  #define 
> ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)         REG_FIELD_PREP(ADLP_PS
> R2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
> +#define  ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE         REG_BIT(31)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME            REG_BIT(14)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME         REG_BIT(13)
>  

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

