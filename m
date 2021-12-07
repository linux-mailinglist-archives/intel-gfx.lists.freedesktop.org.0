Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB046C2DE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 19:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13EE67340B;
	Tue,  7 Dec 2021 18:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06949735CF
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 18:29:22 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id kl8so166784qvb.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Dec 2021 10:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8wcyYSe2LJGkUYSvAsDjMoBsFN4E3uv7iW32aolmSPY=;
 b=mgIOOzam48LNCH6wwahsmkGMIPYV3XUJ4j6sSNsTZJ4fhzaXlRyDFvbmuf4mACy7m+
 CcEBNhVPZvwTDAQL4F8WIH2QH6F6nCGNF543sIIYPVkhA1x+DyvZElPA0zwnfk7qtsU3
 p6S38irh5aeBSWTu7SIjgGPtC5ekVD+hTc4PgOGCvI7qJJsEj/Z+W5V97uqUBmmrPB//
 Brhw7kqlTdgzrk4HLobAgfH6/hNIeZwcRAqEB/HEm4e4vtgtzFbobeRm4i0ysQlJcTut
 ZDE7+CPG5K/L7w89mEBs+j5abSF6pogj164JWn4k4zicFuw12BDlf3lSB1iSzB5u8r3y
 gcJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8wcyYSe2LJGkUYSvAsDjMoBsFN4E3uv7iW32aolmSPY=;
 b=RRVt6HNLCcPMM8al3CJx7Oyl4Pv/RWQHD+4vkZ+AiO8qwh2S/XUlgHrDunxt6Nu0vK
 PB7afkhCuegB2bJpdNynXTJOZcp+rBSIX00+Pe/691/eFlV2254lDARF190M99Wr12zq
 gKsI9nhMCmk0xoO9zgiY3So3z62CDXCy1wif3qzGcTsjrjtj4q9wynTRNtoPfkgwFhqR
 5j6wkpa+KVWvShsetw95z0X33DmG+zKWI8pcqE7OUh26puAMRflyistPH2Ste8cK8It8
 HiXCgHLKjKpR4FMYp1Oy20n4+OeOTjpWeOWUK1GzbR1Kt5rg5gMCgw2zf3KAzV/B+tus
 /j+w==
X-Gm-Message-State: AOAM531eOnbMPeH2qSh3+OhMT3WmwuR/7QOeGlzKoKDn7ixNNSOyxiAw
 ExEyjVyoy7hcJqfgG3M+3z8a/pU42BytTnHQnk8=
X-Google-Smtp-Source: ABdhPJzBs4uEms9pV4Fy9Yyrd+v380p2m8beBFxljeBBdSGKNwYQq2HcAblTQYo4GI+an0TQcPm6RFEnzOrCvTQupZQ=
X-Received: by 2002:ad4:4ea6:: with SMTP id ed6mr1141792qvb.54.1638901762055; 
 Tue, 07 Dec 2021 10:29:22 -0800 (PST)
MIME-Version: 1.0
References: <20211207143336.11381-1-ramalingam.c@intel.com>
 <CAM0jSHMGZYr8fsk0k1BCJk-r5hR6bzoB=T1O4UKCbVkUb9GYug@mail.gmail.com>
In-Reply-To: <CAM0jSHMGZYr8fsk0k1BCJk-r5hR6bzoB=T1O4UKCbVkUb9GYug@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 7 Dec 2021 18:28:55 +0000
Message-ID: <CAM0jSHMPmZTTTGy687mVcC=_3a0zPP4pgiLRGRUt=17XqQCyGw@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 0/2] Sanity Check for device memory region
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, Andi <andi.shyti@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 7 Dec 2021 at 16:04, Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Tue, 7 Dec 2021 at 14:34, Ramalingam C <ramalingam.c@intel.com> wrote:
> >
> > Changes for introducing the quick test on the device memory range and
> > also a test of detailed validation for each addr of the range with read
> > and write.
> >
> > Detailed testing is optionally enabled with a modparam i915.memtest=1
>
> Series is missing Cc: dri-devel
>
> Also on DG1, CI is apparently spitting out:
>
> <7> [128.605872] i915 0000:03:00.0: [drm:i915_gem_init_stolen [i915]]
> GEN6_STOLEN_RESERVED = 0x00000000ffc00107
> <7> [128.605978] i915 0000:03:00.0: [drm:i915_gem_init_stolen [i915]]
> Memory reserved for graphics device: 65536K, usable: 61440K
> <3> [128.606145] i915 0000:03:00.0: Failed to read back from memory
> region:[mem 0xfc000000-0xffffffff] at [0x00000040fc000000 +
> 0x0000000003fff000] for i915_gem_stolen_lmem_setup [i915]; wrote 0,
> read (ff, ff, ff)
> <3> [128.606297] i915 0000:03:00.0: [drm] *ERROR* Failed to setup
> region(-22) type=3
> <3> [128.623091] i915 0000:03:00.0: Device initialization failed (-22)
>
> So something is busted with stolen-lmem it seems...wonder if that's
> related to the DG2 issue.

Ram, as part of this series can you also grab:
drm/i915: Exclude reserved stolen from driver use

That might fix the DG2 stolen issue also...

>
> >
> > Chris Wilson (2):
> >   drm/i915: Sanitycheck device iomem on probe
> >   drm/i915: Test all device memory on probing
> >
> >  drivers/gpu/drm/i915/i915_params.c         |   3 +
> >  drivers/gpu/drm/i915/i915_params.h         |   1 +
> >  drivers/gpu/drm/i915/intel_memory_region.c | 116 +++++++++++++++++++++
> >  3 files changed, 120 insertions(+)
> >
> > --
> > 2.20.1
> >
