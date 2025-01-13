Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4020A0B22C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 10:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4CB10E5CD;
	Mon, 13 Jan 2025 09:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="QCmXJkhz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A8210E5EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 09:02:25 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-54024ecc33dso4232210e87.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 01:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736758883; x=1737363683; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gVmv06UiciOif9n0zEXjWMnBVceV6C66Mfpmv3QehtQ=;
 b=QCmXJkhzztEci3cfudHXMJMChqDgbD7vg+PcCUnhusx/qVwo9pEEWa6raxrYBSL36A
 bqsa4ZPiIksf2oZM9el4jvOJR8e6bs3fodlFICHbguRkR0Z7QTQ24eezVuIYuh9Iwsec
 FMJH/fPRgwzSGEItDrXkKdyAvyKh1bI2O1KOthIwb9pQSTCaq98E4VmZstWLRRVDMCfU
 ecdTH2IURxjXp9Hu8dWwezEcO19RWmmIhSxqj0P+GFAtsjYXxDm2J29V5doyMa0Uc6E1
 PDBZ+86UBaimQGyd+stRbs6NHpHFjJBFMPG/Bc/mZfDQPpiY3J0bGsvL2+nCQm2rP4Eu
 b1Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736758883; x=1737363683;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gVmv06UiciOif9n0zEXjWMnBVceV6C66Mfpmv3QehtQ=;
 b=FGNjTNAS+Sol6oUh2FVvfJM9tTAxh4yVPxHLK5TbjwrU9gdnsNzGGBuqefNw09iRuc
 fLsLSNryQNQbYmXewcoTBShEs+uenV6UgH1/4brCW9EbZ345+P8nbEN2TU6V2YEguhaC
 18TadImEyP/0xz1rytoSkDGrrRttH5Zdl4oqBir2YMZc4vPeqJQ2xP3A9NlJpSQ9LaA6
 us1ZCEYSoDwc38V9LphsIzCbzI/qMyKNeSlgZyVpPqL5bHXSNqBSMSCfRWEOt/9R4I2q
 7/Ku+kRXoYnORozvJQp39bLyj/iHot4quMZI/boW802QHs88pO32y6rG1QZpI9NXnMFT
 tLfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGsnesuVsm5A0kW6GgNkD5kK5tSdnClzfx8Rg8Wb+u9fZtbvNHYIW6rctbMA9kdDKkux+FxxgGN48=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyxMo3HOtD0gkHLGM3lnQoeAsqfgYxT+ov4BC2ZlMp3RuAGZNYY
 HBfz2ZSINiMxIuSww3//qyrqgjlMc1enbCLX6IbYx+rttN4+R1NAKylnADfFRAM=
X-Gm-Gg: ASbGnctAXLNVmIy57hwUFydCGfk+BwXvUis6H9XWyf5v8qYIahU8woDAwOZd9hvcCts
 y5WNDSRe3uj77LZ/1+rkgFsqCcYMZO0P1NzRBEdmNto43BsUsDZey6J4F89Vh3Q2vMfrupTvgQA
 XRLgSFevAifPANAHUcVS3+Vfc7nStr1v+lklkX9AlEVgtBwqQoB8tNQzUr01dVRNYSCAQiA99jl
 4JYyu9Qd3PISJoW+ZK9/3ULmA1Q1B8rSXpUJ3VlOH9eIhNC22jrI9/yTdxro7c2zyTboseX5g3k
 scRxPpsLmnmXolEtnKnGLLtwUJ9mEvcdymmN
X-Google-Smtp-Source: AGHT+IGcTFUXjIwHW9lpVqJAyyIcRCFXMgiGOEb3ziE970UiReLi1TBQykdVRRw2foBrKdh4TrGJCQ==
X-Received: by 2002:a05:6512:2214:b0:542:29e5:731c with SMTP id
 2adb3069b0e04-542844f649cmr6246866e87.11.1736758883364; 
 Mon, 13 Jan 2025 01:01:23 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5428be49d7esm1279018e87.19.2025.01.13.01.01.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2025 01:01:22 -0800 (PST)
Date: Mon, 13 Jan 2025 11:01:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "maxime@cerno.tech" <maxime@cerno.tech>
Cc: Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "michel@daenzer.net" <michel@daenzer.net>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, 
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "mikita.lipski@amd.com" <mikita.lipski@amd.com>, 
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "daniel.vetter@intel.com" <daniel.vetter@intel.com>, 
 "nicholas.kazlauskas@amd.com" <nicholas.kazlauskas@amd.com>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "quic_abhinavk@quicinc.com" <quic_abhinavk@quicinc.com>, 
 Project_Global_Chrome_Upstream_Group
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 "manasi.d.navare@intel.com" <manasi.d.navare@intel.com>, 
 "lucas.demarchi@intel.com" <lucas.demarchi@intel.com>,
 "sean@poorly.run" <sean@poorly.run>, 
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "dmitry.osipenko@collabora.com" <dmitry.osipenko@collabora.com>, 
 "fshao@chromium.org" <fshao@chromium.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "jani.nikula@intel.com" <jani.nikula@intel.com>, 
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>, 
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Subject: Re: [PATCH] drm/atomic-helpers: remove legacy_cursor_update hacks
Message-ID: <4getu2xtlxudcy53emipvtfxjnxg2mrupwfcekdjizjdtbk3k7@nlii76skfuh4>
References: <20230216111214.3489223-1-daniel.vetter@ffwll.ch>
 <20230307145613.xvhru3fpcudlpazt@houat>
 <aac416742920953999a9ce230ac68139bf5b9790.camel@mediatek.com>
 <ZbKlsTEvGPiGtzS3@phenom.ffwll.local>
 <1349365de499bae53a8c868738c7270fc16813d5.camel@mediatek.com>
 <ZboOp7JOp5teV1Cs@phenom.ffwll.local>
 <CAA8EJpqAU=RvqJUPmPO2LCJ+6KMOT8Pi2WrkPq8YHzhyRVxHeg@mail.gmail.com>
 <Zbou-y7eNhQTMpKo@phenom.ffwll.local>
 <20250113-melodic-cuckoo-of-experience-bb6ac7@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250113-melodic-cuckoo-of-experience-bb6ac7@houat>
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

On Mon, Jan 13, 2025 at 09:28:36AM +0100, maxime@cerno.tech wrote:
> Hi Dmitry,
> 
> On Wed, Jan 31, 2024 at 12:28:59PM +0100, Daniel Vetter wrote:
> > On Wed, Jan 31, 2024 at 12:26:45PM +0200, Dmitry Baryshkov wrote:
> > > On Wed, 31 Jan 2024 at 11:11, Daniel Vetter <daniel@ffwll.ch> wrote:
> > > >
> > > > On Wed, Jan 31, 2024 at 05:17:08AM +0000, Jason-JH Lin (林睿祥) wrote:
> > > > > On Thu, 2024-01-25 at 19:17 +0100, Daniel Vetter wrote:
> > > > > >
> > > > > > External email : Please do not click links or open attachments until
> > > > > > you have verified the sender or the content.
> > > > > >  On Tue, Jan 23, 2024 at 06:09:05AM +0000, Jason-JH Lin (林睿祥) wrote:
> > > > > > > Hi Maxime, Daniel,
> > > > > > >
> > > > > > > We encountered similar issue with mediatek SoCs.
> > > > > > >
> > > > > > > We have found that in drm_atomic_helper_commit_rpm(), when
> > > > > > disabling
> > > > > > > the cursor plane, the old_state->legacy_cursor_update in
> > > > > > > drm_atomic_wait_for_vblank() is set to true.
> > > > > > > As the result, we are not actually waiting for a vlbank to wait for
> > > > > > our
> > > > > > > hardware to close the cursor plane. Subsequently, the execution
> > > > > > > proceeds to drm_atomic_helper_cleanup_planes() to  free the cursor
> > > > > > > buffer. This can lead to use-after-free issues with our hardware.
> > > > > > >
> > > > > > > Could you please apply this patch to fix our problem?
> > > > > > > Or are there any considerations for not applying this patch?
> > > > > >
> > > > > > Mostly it needs someone to collect a pile of acks/tested-by and then
> > > > > > land
> > > > > > it.
> > > > > >
> > > > >
> > > > > Got it. I would add tested-by tag for mediatek SoC.
> > > > >
> > > > > > I'd be _very_ happy if someone else can take care of that ...
> > > > > >
> > > > > > There's also the potential issue that it might slow down some of the
> > > > > > legacy X11 use-cases that really needed a non-blocking cursor, but I
> > > > > > think
> > > > > > all the drivers where this matters have switched over to the async
> > > > > > plane
> > > > > > update stuff meanwhile. So hopefully that's good.
> > > > > >
> > > > >
> > > > > I think all the drivers should have switched to async plane update.
> > > > >
> > > > > Can we add the checking condition to see if atomic_async_update/check
> > > > > function are implemented?
> > > >
> > > > Pretty sure not all have done that, so really it boils down to whether we
> > > > break a real user's use-case. Which pretty much can only be checked by
> > > > merging the patch (hence the requirement to get as many acks as possible
> > > > from display drivers) and then being willing to handle any fallout that's
> > > > reported as regressions for a specific driver.
> > > >
> > > > It's a pile of work, at least when it goes south, that's why I'm looking
> > > > for volunteers.
> > > 
> > > I can check this on all sensible msm generations, including mdp4, but
> > > it will be next week, after the FOSDEM.
> > > 
> > > BTW, for technical reasons one of the msm platforms still has the
> > > legacy cursor implementation might it be related?
> > 
> > Yeah, msm is one of the drivers I had to change with some hacks to avoid
> > really bad fallout. It should still work like before, but that's one that
> > definitely needs testing.
> 
> Since it looks like you're in a mood to deal with kms reworks vs msm, we
> still have this one to address too :)

And of course this has falled of my radar into the memory blackhole. I
will take a look in one of the forcoming weeks, thanks for the reminder.

-- 
With best wishes
Dmitry
