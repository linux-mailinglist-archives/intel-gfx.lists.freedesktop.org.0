Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF658973A92
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 16:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4F910E838;
	Tue, 10 Sep 2024 14:51:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="q9hi8gsh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31F310E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 14:51:52 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-5353cd2fa28so6913249e87.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 07:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1725979911; x=1726584711; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OPNcqQDTNtB9FLYRVQUunHyQhw4bFfhZF9EYGYq1bPQ=;
 b=q9hi8gsh4ml8sYL8ME7CSyytXX/PvL4+2lKJGI3o4aeU4ciTKkqzeY0BdzWXSVospH
 zSRwqSP+nH3nGu9XUfSSnehzq7DneWI+nlR5xYO7ohuhJz5TE9+RltuGyrpAtZMSVlvg
 VBDni+flCAnGNBQfQHNtR4DijF2b6GOf/BZez9GaGmWtuXfvDBvlnE7OsIO4vMgfxGjq
 oWfcUaJSY89ZKhE/dnFmZvswwz2fyTkoBvjl2RXeoinw345GcAILqoU7FCanWzM/EMqc
 XrfzlZss0FIWAQnIQPHb02PYOvG/iGofERhJdSTHmACL7WJG+RbyYN0NfAoP97UFzlcw
 Kzag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725979911; x=1726584711;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OPNcqQDTNtB9FLYRVQUunHyQhw4bFfhZF9EYGYq1bPQ=;
 b=ePPLhw7L7m6DRTdZ8Utv8++33MO1+d2pAr0l8BdjOhx2oCMcttCLzuE0A4YV+itZn8
 mPu0fTmnk3VzdGpxrfGU7zP+8IqVUtU/S5gfBoSlsZEywQQEMnKumycuKNEqpV5JhICB
 VRBAQDndUkmIezB+u/Gf7ibcgWu8z3gO1ZEzH9vOgoUchyqQQb5GKT4sj+KppcWHZaUP
 QpdacDIO9XznjQWi35S+4u2Itn5an+Kb4vGPRR5pKpNJyPoMUO8mKDjG5Rvie0HqBhKf
 OA3bkwHQmBf9NWgUQs0+AojS+gBs9rpatUVKlq4lWjn3xV+FBLbkSo7booN19HLhQ7cJ
 VVIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVusiI1A9cOcmgnmxkzeU4D0VeoNyXgemmZkWXdiCDMrabMDelhi/eKQkR2F5iqf4EMcGOu0drtd+Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyHKI56yKOH3C6klLtWu4pcdO+WMFOcrSdT0u1gOtbi3kuvkF+t
 JeCHPsI54/pNIkSA+hZ5KDX73Dctl9uK49wEqcVdd2mazsMfai76XBHGspm54eJL3YlRlT/KZ3r
 a
X-Google-Smtp-Source: AGHT+IG+AWbYy78KvM7LBUg2X7pmVaUk8Y1WznGe5KKIxbksdIDi5B3WPEr8BmPZ7CuQcwHnA7OxUQ==
X-Received: by 2002:a05:6512:b90:b0:535:3d08:5844 with SMTP id
 2adb3069b0e04-536587a79b2mr9951482e87.6.1725979909923; 
 Tue, 10 Sep 2024 07:51:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5365f86fb1esm1185204e87.64.2024.09.10.07.51.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2024 07:51:49 -0700 (PDT)
Date: Tue, 10 Sep 2024 17:51:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jani Nikula <jani.nikula@intel.com>, Marc Gonzalez <mgonzalez@freebox.fr>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 7/8] drm/msmi: annotate pll_cmp_to_fdata() with
 __maybe_unused
Message-ID: <4ag2efwiizn5bnskauekqwfhgl4gioafcvetpvsmbdgg37bdja@3g6tt4rlfwcb>
References: <cover.1725962479.git.jani.nikula@intel.com>
 <3553b1db35665e6ff08592e35eb438a574d1ad65.1725962479.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3553b1db35665e6ff08592e35eb438a574d1ad65.1725962479.git.jani.nikula@intel.com>
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

On Tue, Sep 10, 2024 at 01:03:43PM GMT, Jani Nikula wrote:
> Building with clang and and W=1 leads to warning about unused
> pll_cmp_to_fdata(). Fix by annotating it with __maybe_unused.
> 
> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
> inline functions for W=1 build").
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I think this function can be dropped. Marc, your call, as an author of
the patch?

> 
> ---
> 
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> index 0e3a2b16a2ce..c0bf1f35539e 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> @@ -153,7 +153,7 @@ static inline u32 pll_get_pll_cmp(u64 fdata, unsigned long ref_clk)
>  	return dividend - 1;
>  }
>  
> -static inline u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
> +static inline __maybe_unused u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
>  {
>  	u64 fdata = ((u64)pll_cmp) * ref_clk * 10;
>  
> -- 
> 2.39.2
> 

-- 
With best wishes
Dmitry
