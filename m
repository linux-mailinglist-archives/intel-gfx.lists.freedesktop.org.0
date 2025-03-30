Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3F1A75A5A
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Mar 2025 16:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D4410E03A;
	Sun, 30 Mar 2025 14:43:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cj4/2MDr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8679C10E03A
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Mar 2025 14:43:23 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-224019ad9edso41552285ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Mar 2025 07:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743345802; x=1743950602; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Yrfuw0op0D1KgO03Vy0S9UwbZTvFpOmnD+23E+cpT1E=;
 b=cj4/2MDrtKEnsq9cxNEc/hQUf4sfzxVk2UDqkawCeDcPhJbfbrsq3aM1hdemc8Z46i
 fSArXOr58cYAnfZQe8eP1HWvwfdsYvC4WxT20fNHlCoEMbvT1+E87LSGx9h77NBAiI7n
 On2JzlIIcKDErfngO/nC5NeD2MNKpDpTAbE9YGVsqDqzNcN+XUpbdmhViBHyBThbH5To
 ZElSvf4rn5mk3WpXzvD52sJJ3rfB2J11ZIePxgIeDK0ywTS4LL7121fgL4JU2b7a4QFD
 U2lRWdi+8hV/ymN4oNyRM87IqRMlUsu1JbadHVpGk+3WuSzilaYCKM1ShbPidO/Rhd95
 m06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743345802; x=1743950602;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Yrfuw0op0D1KgO03Vy0S9UwbZTvFpOmnD+23E+cpT1E=;
 b=bDVOR4aSle1ZYz+C+PW9BWI2wGQlzIzyvjinTiqMi07S32WOEBij7e+OFua3gkp6z3
 xbGVyF+yFpi7/7y0Cimq6GC9Oo+811N2D+xCnV64ytopbctTS0UK4eDddGhedLj8NbHD
 P/T/z/YIgcBsPC3l5hCjy4Da9C3LuzYdZVotGk/N4VGcJ31Vm0KfJ6/AOyRvM0fftumK
 fq614daX31Db7rMvjIBKmJ1EExoeFJVRBpqDXc5BSkOeXGbl897DFIj6SkTdH4DEemkT
 Ds6pn2JxW8bUorIbvsSdVBYktI4pMXAFjkps+VxK6GncGFKChNh5uZdlYM26pJxMvZXl
 NHMg==
X-Gm-Message-State: AOJu0YzlXKXLxBB3hlrEhbekaFKuEN/wkyit0AQuLvcEHsO4tIlyGP6J
 aVqxLBlm49sJHmsIiYlfWNsuSZIvjtk8cUjHzSDw2JvkEQdBiolsezEhsg==
X-Gm-Gg: ASbGncsrqVy4L+wCuTVV/n1SyOKOtvmdCHS/Yj7+TTKZO9878aJSCFNJUozdKN5YJA4
 b2wO/FLTsOO3frp8IThHPM6DfttGGGKOPr/a6CCkS0WKFYxzvKGej5Qjwdf5DwsDgJu3hIqdfdl
 k37hOxxugFTXYm8Eiyw+wrT76dWJA7DDbQtZRK3aaWT9Mfvws2NLsbP7m0CQkX3ntjCQZOwh4nu
 +bSaBHhzHupZdp9aySdMwTSwmEEoFplvVtyQRZtmW8hIwf8SyFEQokUiaKXfNn77T+SqNBuD+a6
 aOt6DyJmh2UtUcFMWujiymrFGHlCBJEPQHo1flljvVKtYGrNjej7trG+01qaCRI9N+89GQ8PNee
 TVw5TxoQ=
X-Google-Smtp-Source: AGHT+IEIiIfplvPkNgK+CT0s+LXnQzg2WGA+uhxcP0wJA6wAiNKSVu5TZ9Yg9SBaKde8l7HdWqBFng==
X-Received: by 2002:a17:902:ecd1:b0:21f:35fd:1b6c with SMTP id
 d9443c01a7336-2292f9fa422mr78832525ad.45.1743345802617; 
 Sun, 30 Mar 2025 07:43:22 -0700 (PDT)
Received: from localhost (om126233180002.36.openmobile.ne.jp. [126.233.180.2])
 by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2291f1cdd43sm52602495ad.133.2025.03.30.07.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Mar 2025 07:43:22 -0700 (PDT)
Date: Sun, 30 Mar 2025 23:43:19 +0900
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [RESEND] drm/i915/gvt: use hardcoded reference clocks
Message-ID: <Z-lYh8toArVVUZgC@dell-wzy>
References: <20250321125114.750062-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250321125114.750062-1-jani.nikula@intel.com>
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

On Fri, Mar 21, 2025 at 02:51:14PM +0200, Jani Nikula wrote:
> Usually I'd argue hardcoding values is the wrong thing to do, but in
> this case, GVT looking deep into the guts of the DPLL manager for the
> reference clocks is worse. This is done for BDW and BXT only, and there
> shouldn't be any reason to try to be so dynamic about it.
> 
> This helps reduce the direct pokes at display guts from non-display
> code.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/handlers.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 4efee6797873..5e08f4df172c 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -513,7 +513,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
>  
>  		switch (wrpll_ctl & WRPLL_REF_MASK) {
>  		case WRPLL_REF_PCH_SSC:
> -			refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.ssc;
> +			refclk = 135000;
>  			break;
>  		case WRPLL_REF_LCPLL:
>  			refclk = 2700000;
> @@ -544,7 +544,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
>  static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
>  {
>  	u32 dp_br = 0;
> -	int refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.nssc;
> +	int refclk = 100000;
>  	enum dpio_phy phy = DPIO_PHY0;
>  	enum dpio_channel ch = DPIO_CH0;
>  	struct dpll clock = {};
> -- 

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

