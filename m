Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748AD932F08
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 19:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BFD10E7E7;
	Tue, 16 Jul 2024 17:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="PBhLFILd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D6910E574
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 17:25:46 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-52ea952ce70so6155721e87.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 10:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1721150745; x=1721755545; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=BIzlW/re+zqWdbXrMFMpZtR9RUNKkE+7zdmZJ+T5ET8=;
 b=PBhLFILdxrYYhIyDCvdLPsgfJp6POjrcRD/06ulW90QzE1nYbzp6p5lxh3lS8IoMtf
 Ib72xeuZu6yZ8E72wwPQbNolWD0DdnXQTpod+DkBWv8JmFgRr+U+8QZukcIne1BJuYIC
 3Ad0w6Jmhygq9rVAC9oNr852jaelDn1VqMjPNQHHO1xt1PW8XMZxj7gi4gAnradPF9Rd
 DVGmh8C/Xg+qeTRYei9w+iOlJWrjC7VG3YY7ZoMz4I/OiY3DM8+Y85mw8mOAXkjK93ZJ
 xciDRD+1R8w18rWcZdInJsJltX2ra6huVEP1jm6iTDbr5HfF3N9Fp54qpjoGdeYiPlDD
 suHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721150745; x=1721755545;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BIzlW/re+zqWdbXrMFMpZtR9RUNKkE+7zdmZJ+T5ET8=;
 b=Urm+J+qIqY+SL7RZ3IdzHkzmGPYOO1hAgPg8orbwm+kiJXOxxkbfbLpHNV9ukIMNbq
 WBdiJ+C5vFuBFqW8qPs01zHf8eFUNMqZmW37OqZlyf3ljsIbZLWvn2+TgNGldPlGuhsP
 pfmI1XWIZhSCd05HQc0zxMZi+5Qb1Tqnm+wimLLOBCT7/8c1fdVDsSQuO+84a/s5V25E
 fdd0xW45LKHdCmeZsbAjOe0u0fjqPzsqR2Ak/ZBKDXvC+ui6iL3k3nkpouQkP0/EvRaW
 lJce9fQKRBBkA7yuzVVnDTJJMwP0nMxRtskw4pq5mXqtd1FsAXA6Mso3tffg4A8xPdEv
 3tjA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHfFGW7WJ9C9UksViOXDOvDYQDUosmjxzPhHXHjvaXQRcQDnwVySHedHUmy5/55FUaU3Smy2T6+NDUOp5Q0949prTbsduQpH8Ngf3FsNg6
X-Gm-Message-State: AOJu0YwMqrPegmAXFXrpXlaVchIT1FD70QkY5aEJEBYFoi4ltOWHr+tg
 tvrqPWmpo8hYdeSbd9xu74Cs3KPUmY5n3y+4pRUBUoiJ11DltnosC0dZJDiN4uc=
X-Google-Smtp-Source: AGHT+IGGXs9LQIjcLFKl+/yb9bNVeYQzPggbFyrU2zP9kH7kEuX20Nqc1cSioz/zdX1LY1hUP9w7jg==
X-Received: by 2002:a05:6512:15a4:b0:52b:bee3:dcc6 with SMTP id
 2adb3069b0e04-52edf03011emr1612383e87.51.1721150744972; 
 Tue, 16 Jul 2024 10:25:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-52ed24e2a10sm1200582e87.7.2024.07.16.10.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jul 2024 10:25:44 -0700 (PDT)
Date: Tue, 16 Jul 2024 20:25:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: "open list:DRM DRIVER FOR MSM ADRENO GPU"
 <dri-devel@lists.freedesktop.org>, 
 amd-gfx list <amd-gfx@lists.freedesktop.org>, nouveau@lists.freedesktop.org, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 freedreno <freedreno@lists.freedesktop.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: Re: DisplayPort: handling of HPD events / link training
Message-ID: <s6kua7scw65q2f43b6qimxjaqmm2a3giszkv4654ffnr4c7q7a@y2xqhp3mgf46>
References: <CAA8EJprfbMs_3PnpebhVg=NVrO5zc23cgx=1f4HAKLnT5b9J6Q@mail.gmail.com>
 <d3be8832-a6f2-496e-ac2e-9b29cae9f8f2@suse.de>
 <CAA8EJprA3aXHex4ctSE+ChhhWVLLdcXtppsadrNYbnHWi+gKLQ@mail.gmail.com>
 <e924c624-8664-4739-84c5-8229325f78ce@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e924c624-8664-4739-84c5-8229325f78ce@suse.de>
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

On Tue, Jul 16, 2024 at 06:48:12PM GMT, Thomas Zimmermann wrote:
> Hi
> 
> Am 16.07.24 um 18:35 schrieb Dmitry Baryshkov:
> > On Tue, 16 Jul 2024 at 18:58, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> > > Hi
> > > 
> > > Am 27.02.24 um 23:40 schrieb Dmitry Baryshkov:
> > > > Hello,
> > > > 
> > > > We are currently looking at checking and/or possibly redesigning the
> > > > way the MSM DRM driver handles the HPD events and link training.
> > > > 
> > > > After a quick glance at the drivers implementing DP support, I noticed
> > > > following main approaches:
> > > > - Perform link training at the atomic_enable time, don't report
> > > > failures (mtk, analogix, zynqmp, tegra, nouveau)
> > > > - Perform link training at the atomic_enable time, report errors using
> > > > link_status property (i915, mhdp8546)
> > > > - Perform link training on the plug event (msm, it8605).
> > > > - Perform link training from the DPMS handler, also calling it from
> > > > the enable callback (AMDGPU, radeon).
> > > > 
> > > > It looks like the majority wins and we should move HPD to
> > > > atomic_enable time. Is that assumption correct?
> > > Did you ever receive an answer to this question? I currently investigate
> > > ast's DP code, which does link training as part of detecting the
> > > connector state (in detect_ctx). But most other drivers do this in
> > > atomic_enable. I wonder if ast should follow.
> > Short answer: yes, the only proper place to do it is atomic_enable().
> 
> Thanks.
> 
> > 
> > Long answer: I don't see a way to retrigger link training in ast_dp.c
> > Without such change you are just shifting things around. The
> > end-result of moving link-training to atomic_enable() is that each
> > enable can trigger link training, possibly lowering the link rate,
> > etc. if link training is just a status bit from the firmware that we
> > don't control, it doesn't make real-real sense to move it.
> 
> I have to think about what to do. People tend to copy existing drivers,
> which alone might be a good argument for using atomic_enable. The link
> training is indeed just a flag that is set by the firmware. I think it's
> possible to re-trigger training by powering the port down and up again.
> atomic_enable could likely do that. The hardware is also somewhat buggy and
> not fully standard conformant.

It stil looks like having an explicit comment ('check LT here becasue
handled by firmware') might be better.

-- 
With best wishes
Dmitry
