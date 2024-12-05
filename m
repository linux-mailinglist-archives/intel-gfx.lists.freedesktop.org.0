Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2350B9E547F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 12:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F23C10E139;
	Thu,  5 Dec 2024 11:49:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="YdPXOdsB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
 [209.85.219.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C32C10E139
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 11:49:07 +0000 (UTC)
Received: by mail-yb1-f173.google.com with SMTP id
 3f1490d57ef6-e398273d6ffso905724276.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2024 03:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733399346; x=1734004146; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NNosSFnZWS3/0rAeqPqg7jsw4r2V2KBYZ8N3XXPfXDA=;
 b=YdPXOdsBGs57nbbNkkTib77JjPIqWumVwCK1rOOIIJFSd4km5EvL+1kCH8W6mF7A9O
 gPTy4CzS+adzqxPY3IK1QyyPDeDC2dc9GD2JR1zSkrPyFRdog12wmDv2Ruhg5X3c/uFP
 PWtbQZVxShsMq3ZaIM2+fWQGGoS6swGH6GKmBUd8YEfCBRBZiHpsy1K1Mc32MInbc6B8
 Rs19olJ7RF01IwjpdiETwI6TaoxDl0Relb4EefBI0nEtgGI867tiDKLbFkU5K+rkAM12
 KcBE9MFYDIvlokdSXfuqoS6tx+8wrXOifCX7ZBUo9T5T7CELLIkME+1+zEsi59AWKz8Q
 lP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733399346; x=1734004146;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NNosSFnZWS3/0rAeqPqg7jsw4r2V2KBYZ8N3XXPfXDA=;
 b=O/maqCd5A4JzF2Zv6ib5m7w+yv7NzcE2c8oFpTmNv4RLWadK8bYAIyPE1Z+WdltPt9
 rWpTENcr1w1FwhWc/2klK6y+D1j5zNmm67iDA+8OfHLAUwmZmlC2+c0VcJAFGXWE36sH
 +hH96UOolEVSh0uhhs07TCUgoWeh3zFpiqop52vQoXXA08JDCxM+VGeAqCcqKro9nD28
 6Z67Ui69xPNuRpFY1xvUlI+tntGfrnlS97BK8j0WkbXAFeG0W5h3JOnT6F61dydIaA12
 5r1fF/ZL3QUKErqiEjV3lfPRps2DFQc2uXzmPjtgfCZtgWOgWVM6UzRaR0Sf7IILe82S
 i1xA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHrf4XcFcPjRD+gppaEO2v011N4IBoQi856nur+Q5zsiE6HM+bRw6VG8+4O5/Wdh5eYK+Ix9mAD84=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx9xDsKgdFEVpPwI3bwPAJP8kPofqMAX/SaOph6ba2m+6kCAXkx
 p5hobRCR7JgOqqMbWD9mg6xT4yl1XerXhj0acwH+xkhT5hp5k3yelTUECvU7Y2u2HaK4tAopleI
 uBWIpmYfq3VSMsFA0pchOwWYbgvJeooRURaOtfw==
X-Gm-Gg: ASbGnct0KoNoUzaELMeJbh1Xo5ZKgDF2slTvQ96/uaASn0z2D7VtHYUAmHIpvoHUlg1
 8NoqN40crarJ4kMJ3iyT3xJvYztfWe718gey1plESm4EJWA==
X-Google-Smtp-Source: AGHT+IHsLDGCMgyHpl+ta8rwvROml6H1/zc0wRlaH4TAJqr+AXvmTTlfjU7Jmp6XmRkiRCRFiAxwe2sKkZpUsmLrYso=
X-Received: by 2002:a05:6902:2b02:b0:e39:8b10:30d0 with SMTP id
 3f1490d57ef6-e39d4386826mr9937682276.44.1733399346113; Thu, 05 Dec 2024
 03:49:06 -0800 (PST)
MIME-Version: 1.0
References: <20241204091456.1785858-1-arun.r.murthy@intel.com>
 <s3gkb36ga2pxmxocrhcjp5pcgbewx4x3joiyrpld3th4r4fvyi@rkpgbu4ekst3>
 <IA0PR11MB7307F22883ACF3AD873C3697BA302@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307F22883ACF3AD873C3697BA302@IA0PR11MB7307.namprd11.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 5 Dec 2024 13:48:55 +0200
Message-ID: <CAA8EJpp4HjyEL9XSLzXr6tG7+8M2FmZO1S2WrLXmP64J_aKs-w@mail.gmail.com>
Subject: Re: [PATCHv2 01/10] drm/crtc: Add histogram properties
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, 5 Dec 2024 at 09:58, Murthy, Arun R <arun.r.murthy@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: Wednesday, December 4, 2024 5:17 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; dri-
> > devel@lists.freedesktop.org
> > Subject: Re: [PATCHv2 01/10] drm/crtc: Add histogram properties
> >
> > On Wed, Dec 04, 2024 at 02:44:56PM +0530, Arun R Murthy wrote:
> > > Add variables for histogram drm_property, its corrsponding crtc_state
> > > variables and define the structure pointed by the blob property.
> > > struct drm_histogram defined in include/uapi/drm/drm_mode.h The blob
> > > data pointer will be the address of the struct drm_histogram.
> > > The struct drm_histogram will be used for both reading the histogram
> > > and writing the image enhanced data.
> > > struct drm_histogram {
> > >     u64 data_ptr;
> > >     u32 nr_elements;
> > > }
> > > The element data_ptr holds the address of the histogram statistics
> > > data and 'nr_elements' represents the number of elements pointed by
> > > the pointer held in data_ptr.
> > > The same element data_ptr in teh struct drm_histogram when writing the
> > > image enahnced data from user to KMD holds the address to pixel factor.
> > >
> > > v2: Added blob description in commit message (Dmitry)
> >
> > No, it is not a proper description. What is the actual data format inside the
> > blob? If I were to implement drm_histogram support for e.g.
> > VKMS, what kind of data should the driver generate? What is the format of the
> > response data from the userspace app? The ABI description should allow an
> > independent but completely compatible implementation to be written from
> > scratch.
> >
> The histogram is generated by the hardware.
> Histogram represents integer which is the pixel count and when it comes to
> the IET(Image Enhancement) to be written back to hardware its again an
> integer, pixel factor.
> Is this the information that you expected to be added or something else?

You are defining the interface between the kernel and userspace. The
interface should be defined in a way that allows us (developers) to
understand the data, make a decision whether it fits a generic
namespace (which means that other drivers must be able to implement
the same interface), it fits namespace specific to i915 / Xe (then we
will have platform-specific properties for the feature that might be
implemented by other platforms) or it doesn't fit anything at all.

So the documentation must contain the specification of the binary data
inside the blobs. An IGT, modetest or some other compositor must be
able to parse the data and generate (some) response without using your
library.

>
> > BTW: something is really wrong with the way you are sending the patchset. For
> > this iteration I see only two patches with no threading.
> > Please stop playing with individual versions of the patches, generate and send
> > the patchset via a single invocation of git send-email (or git format-patches / git
> > send-email). The version is a version of the patchset, not some other number.
> > You can use the b4 tool which can handle everything for you.
> Sorry, will send the entire patchset in future.
>
> Thanks and Regards,
> Arun R Murthy
> -------------------



-- 
With best wishes
Dmitry
