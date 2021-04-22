Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B407367E1D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 11:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907666E073;
	Thu, 22 Apr 2021 09:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7B26E073
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 09:49:47 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id e5so15468543wrg.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 02:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1tSmh46F66x3ZMfF4P2Jo4ciW4LOkmzVxDUu/LcbcR8=;
 b=DtzsAVcX+D6cS9PqSx9xmssWTGZYIw8a8GhSpgWYAvZnviGK4Qbe3yAKoUySGbr3QT
 RG/nx+ceopUNY6kf8wLEmAbAE5/3k30uKfjzBqJD2v2+qs3e+eazYjqSHlLlygsV59xv
 mRmV3YGkof+L2LtYe6rjGfnGFMrrvdb3fnAh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1tSmh46F66x3ZMfF4P2Jo4ciW4LOkmzVxDUu/LcbcR8=;
 b=fs9DRS85R7Hduspb003aKGHFqDxRb1iJs6Cqk7wRxeaxhpbvg++jXCzTE1eJctZd4p
 w87NGOaN865utpb/Uk+HeKV2BoG8XUq2db8Nr6maY5QSTkj6RNvDK0TB1Nk5EFoDM7c8
 ojwcHDomOJQvlnr2stXRPunUJA6AY4xuUqs0fPR90mbtG5LWm2XhFShtnqpULeZJIbSS
 WxF7US/eFOWF8NJ1MgtlO1xOdOrOZsyRRA2q/ps1G7flkfVYCQVDwCLCrJ0Ou6xqS0ZN
 yQUEybaj6fwg1MDzDCgxVDmcbPu2FRemeIr3V0fzP4HV8n1SdcrXGdBi/mpKiWeSHEpT
 DyuQ==
X-Gm-Message-State: AOAM53214icPEguM1jxnsbL+v1wi8HFVvsLnUPXSPIk0Wp0INyojfflZ
 buXIm2fe9bo1Wl1B3Hy/yi2ORXxrglR6cQ==
X-Google-Smtp-Source: ABdhPJy8nDw8FbCNzvK0ud/GMezmTOrw0/YCJKC81A/JTwkQwfslRk9UR0lD7t3GlxsM4S221eDqjw==
X-Received: by 2002:a5d:4682:: with SMTP id u2mr3050340wrq.167.1619084986185; 
 Thu, 22 Apr 2021 02:49:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b206sm2455570wmc.15.2021.04.22.02.49.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Apr 2021 02:49:45 -0700 (PDT)
Date: Thu, 22 Apr 2021 11:49:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YIFGt+I8LMckYyVG@phenom.ffwll.local>
References: <20210421153401.13847-1-ville.syrjala@linux.intel.com>
 <20210421153401.13847-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210421153401.13847-5-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Rewrite CL/CTG L-shaped
 memory detection
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 21, 2021 at 06:34:01PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently we try to detect a symmetric memory configurations
> using a magic DCC2_MODIFIED_ENHANCED_DISABLE bit. That bit is
> either only set on a very specific subset of machines or it
> just does not exist (it's not mentioned in any public chipset
> datasheets I've found). As it happens my CL/CTG machines never
> set said bit, even if I populate the channels with identical
> sticks.
> =

> So let's do the L-shaped memory detection the same way as the
> desktop variants, ie. just look at the DRAM rank boundary
> registers to see if both channels have an identical size.
> =

> With this my CL/CTG no longer claim L-shaped memory when I use
> identical sticks. Also tested with non-matching sticks just to
> make sure the L-shaped memory is still properly detected.
> =

> And for completeness let's update the debugfs code to dump
> the correct set of registers on each platform.
> =

> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Did you check this with the swapping igt? I have some vague memories of
bug reports where somehow the machine was acting like it's L-shaped memory
despite that banks were populated equally. I've iirc tried all kinds of
tricks to figure it out, all to absolutely no avail.

tbh I'd just not touch this, not really worth it.
-Daniel
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 15 ++++++++-------
>  drivers/gpu/drm/i915/i915_debugfs.c          | 16 ++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h              |  4 ++++
>  3 files changed, 24 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/d=
rm/i915/gt/intel_ggtt_fencing.c
> index 0fa6c38893f7..754f20768de5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -693,14 +693,15 @@ static void detect_bit_6_swizzle(struct i915_ggtt *=
ggtt)
>  				swizzle_x =3D I915_BIT_6_SWIZZLE_9_10_17;
>  				swizzle_y =3D I915_BIT_6_SWIZZLE_9_17;
>  			}
> -			break;
> -		}
>  =

> -		/* check for L-shaped memory aka modified enhanced addressing */
> -		if (IS_GEN(i915, 4) &&
> -		    !(intel_uncore_read(uncore, DCC2) & DCC2_MODIFIED_ENHANCED_DISABLE=
)) {
> -			swizzle_x =3D I915_BIT_6_SWIZZLE_UNKNOWN;
> -			swizzle_y =3D I915_BIT_6_SWIZZLE_UNKNOWN;
> +			/* check for L-shaped memory aka modified enhanced addressing */
> +			if (IS_GEN(i915, 4) &&
> +			    intel_uncore_read16(uncore, C0DRB3_CL) !=3D
> +			    intel_uncore_read16(uncore, C1DRB3_CL)) {
> +				swizzle_x =3D I915_BIT_6_SWIZZLE_UNKNOWN;
> +				swizzle_y =3D I915_BIT_6_SWIZZLE_UNKNOWN;
> +			}
> +			break;
>  		}
>  =

>  		if (dcc =3D=3D 0xffffffff) {
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 8dd374691102..6de11ffcde38 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -621,10 +621,18 @@ static int i915_swizzle_info(struct seq_file *m, vo=
id *data)
>  			   intel_uncore_read(uncore, DCC));
>  		seq_printf(m, "DDC2 =3D 0x%08x\n",
>  			   intel_uncore_read(uncore, DCC2));
> -		seq_printf(m, "C0DRB3 =3D 0x%04x\n",
> -			   intel_uncore_read16(uncore, C0DRB3_BW));
> -		seq_printf(m, "C1DRB3 =3D 0x%04x\n",
> -			   intel_uncore_read16(uncore, C1DRB3_BW));
> +
> +		if (IS_G45(dev_priv) || IS_I965G(dev_priv) || IS_G33(dev_priv)) {
> +			seq_printf(m, "C0DRB3 =3D 0x%04x\n",
> +				   intel_uncore_read16(uncore, C0DRB3_BW));
> +			seq_printf(m, "C1DRB3 =3D 0x%04x\n",
> +				   intel_uncore_read16(uncore, C1DRB3_BW));
> +		} else if (IS_GEN(dev_priv, 4)) {
> +			seq_printf(m, "C0DRB3 =3D 0x%04x\n",
> +				   intel_uncore_read16(uncore, C0DRB3_CL));
> +			seq_printf(m, "C1DRB3 =3D 0x%04x\n",
> +				   intel_uncore_read16(uncore, C1DRB3_CL));
> +		}
>  	} else if (INTEL_GEN(dev_priv) >=3D 6) {
>  		seq_printf(m, "MAD_DIMM_C0 =3D 0x%08x\n",
>  			   intel_uncore_read(uncore, MAD_DIMM_C0));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 0587b2455ea1..055c258179a1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3790,6 +3790,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>  #define C0DRB3_BW		_MMIO(MCHBAR_MIRROR_BASE + 0x206)
>  #define C1DRB3_BW		_MMIO(MCHBAR_MIRROR_BASE + 0x606)
>  =

> +/* 965gm,ctg DRAM channel configuration */
> +#define C0DRB3_CL		_MMIO(MCHBAR_MIRROR_BASE + 0x1206)
> +#define C1DRB3_CL		_MMIO(MCHBAR_MIRROR_BASE + 0x1306)
> +
>  /* snb MCH registers for reading the DRAM channel configuration */
>  #define MAD_DIMM_C0			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5004)
>  #define MAD_DIMM_C1			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5008)
> -- =

> 2.26.3
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
