Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C8997DF07
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Sep 2024 23:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8F910E32D;
	Sat, 21 Sep 2024 21:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="QJ/9q8Xu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3CE10E326
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2024 21:16:12 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-535694d67eeso3321713e87.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2024 14:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1726953370; x=1727558170; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wfY6hEGVgBSeeADzpkHr3ZptQ8VvnlBmZmvgQTMe9+k=;
 b=QJ/9q8XuZIDxN3tpwHSSXhjB7xbhZHaJqrIBhInwhgKFWPJ1C76lLBANXPBpraxjrl
 AVjPqVkTG8ppapeA/LAHmxQ6ODSoXyvfbId0dHeUlQ+JiaJW12abYH7Xs0GqqHTithwH
 SzNLvYPW3HjCLeUmVFBn9ML1XCJEW3voB71NGMbCTOy/2aSIvvuiBxDZrb31ITB6Xgve
 rOguSLJURq/4mtyb9k3XjPtoJiBroC6RYQbAaK9UNKaqJJVlzho/lxhnkByI7EPDpJSI
 lZiKXuHyxi1O9ryH4uvW2bWUKeuztOfpH99Q/j5vKtmB1wgpoQLxZrMs3BFnDDXzK8Fg
 vwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726953370; x=1727558170;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wfY6hEGVgBSeeADzpkHr3ZptQ8VvnlBmZmvgQTMe9+k=;
 b=s8CEieiFKktPdjZL2z8UggTib0dIJ3szlud3tI1mrqvOrTSWgwORZ92yX6vcH/8sPQ
 qFrY4B78Ent+QJ1c+dxxPpt1bgc1/Rmr2e/H2lIakuWVoanifBoFFBMwxsKUraqWcOeS
 7qS6rh6w6YG4blCv7A5U6nF5aOdXxxrBWcB6+D/8PqzkSv9+mt6OzJDfoU2SLWWC72SG
 cDJu2oulRrjUQ71j6mn01H64csy44wQCbF0gWh1u5smAKUg7/1FmtWyFmrqn6ayFH/h4
 7Wu8jnIOo3rc+pOSOuoY29LThYGMJpqozuRUHaGunKyXMwg/Z/LoqEmBfM1aFLXjSKCD
 WbVA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWs8btf0lTv1hk0Lqz05ZG9JPJTCBWMKXu3QDCHc/5/dmyDtbrTMqvFWYb2QxDtZ6MfpxB7wvKUphI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxz8nHd+1f7SIB/C6gjoKWwgJDQUJDOo2Bh1o9OUqRvybtvVi6l
 zMnnFIQm9qZnRnO1Wd/VNA7aQmWdL1i7MxLwlrYXHUpOGEU5aVLBPw/VBrqwoZY=
X-Google-Smtp-Source: AGHT+IHgSw3RH8nc0yn45Wrv03bvJaS53+RdIUYggI8KT7gXTHwNdGyEo8a5X+dnHH8bjNw4LBjd2A==
X-Received: by 2002:a05:6512:6c7:b0:52f:cc9e:449d with SMTP id
 2adb3069b0e04-536a553c370mr3684742e87.3.1726953370124; 
 Sat, 21 Sep 2024 14:16:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-536870969e7sm2693163e87.123.2024.09.21.14.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2024 14:16:09 -0700 (PDT)
Date: Sun, 22 Sep 2024 00:16:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 Nathan Chancellor <nathan@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 7/8] drm/msmi: annotate pll_cmp_to_fdata() with
 __maybe_unused
Message-ID: <n3w7pq364l5ugsnmenece73ke4f3msqmaqoxfrpnqssdo3znyc@psa4cbbmmbix>
References: <cover.1725962479.git.jani.nikula@intel.com>
 <3553b1db35665e6ff08592e35eb438a574d1ad65.1725962479.git.jani.nikula@intel.com>
 <4ag2efwiizn5bnskauekqwfhgl4gioafcvetpvsmbdgg37bdja@3g6tt4rlfwcb>
 <19ac4e25-7609-4d92-8687-585c6ea00c79@freebox.fr>
 <878qvyjxpg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878qvyjxpg.fsf@intel.com>
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

On Wed, Sep 11, 2024 at 01:23:23PM GMT, Jani Nikula wrote:
> On Tue, 10 Sep 2024, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
> > On 10/09/2024 16:51, Dmitry Baryshkov wrote:
> >
> >> On Tue, Sep 10, 2024 at 01:03:43PM GMT, Jani Nikula wrote:
> >>
> >>> Building with clang and and W=1 leads to warning about unused
> >>> pll_cmp_to_fdata(). Fix by annotating it with __maybe_unused.
> >>>
> >>> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
> >>> inline functions for W=1 build").
> >>>
> >>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> 
> >> I think this function can be dropped. Marc, your call, as an author of
> >> the patch?
> >
> > ( Why is the patch prefixed "drm/msmi", is "msmi" a typo? )
> 
> Whoops, a typo.
> 
> >
> > -> For the record, Arnaud is the driver's author.
> >
> > pll_cmp_to_fdata() was used in hdmi_8998_pll_recalc_rate()
> > in a commented code block which was later removed.
> >
> > Thus, yes, it is safe to completely delete the unused function.
> > I'm surprised gcc didn't catch that...
> 
> Thanks, I'll change this to drop the function.

Seeing no updated revisions here, I've posted a patch that drops the
offending function. If I missed an update, please exuse me.

> 
> GCC doesn't catch unused static inlines, while Clang does.
> 
> BR,
> Jani.
> 
> 
> >
> > Regards
> >
> >
> >>> ---
> >>>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> >>> index 0e3a2b16a2ce..c0bf1f35539e 100644
> >>> --- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> >>> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> >>> @@ -153,7 +153,7 @@ static inline u32 pll_get_pll_cmp(u64 fdata, unsigned long ref_clk)
> >>>  	return dividend - 1;
> >>>  }
> >>>  
> >>> -static inline u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
> >>> +static inline __maybe_unused u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
> >>>  {
> >>>  	u64 fdata = ((u64)pll_cmp) * ref_clk * 10;
> >>>  
> >>> -- 
> >>> 2.39.2
> >
> >
> 
> -- 
> Jani Nikula, Intel

-- 
With best wishes
Dmitry
