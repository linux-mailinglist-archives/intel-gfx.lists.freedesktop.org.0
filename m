Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EA7A13415
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 08:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D4E10E8C4;
	Thu, 16 Jan 2025 07:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="lsPKti8F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
 [209.85.219.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2715810E8C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 07:43:19 +0000 (UTC)
Received: by mail-yb1-f173.google.com with SMTP id
 3f1490d57ef6-e3978c00a5aso1006469276.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 23:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1737013338; x=1737618138; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=LdPX8OlHOkR4NaGRp55IEgkJ9YB2z8exnCkiZSikJV8=;
 b=lsPKti8FKPPdVKAfVzfZrocq9bpJfpcnSL34+8vdMu1MaILHoDnGfJGf/QtUUPUeyT
 1Q5Y7jaXIvzThvMsjy5zBQhyrXiALudWPGA/gyPEbFbea/SvesiVsqQCSns654AREUe4
 m6DmaY5Vd6VwglLjur1SnAHrx0+3Ibl/HAv5QP9eLrQdp465vTGziowIC1leLdQhwa8A
 ywdoOMTLfkpIZdlEnK9osZcOvn97pvJ0uugAxBIkpDtpFv3ng3ghqmgZPcm+Cu2tzhhc
 QWk5/BMZTifZT0maQ/I6JwN29omLulGrJX+Qx6/1wLxxAaAhndnxzeGFytPXDthZEV5d
 2ePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737013338; x=1737618138;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LdPX8OlHOkR4NaGRp55IEgkJ9YB2z8exnCkiZSikJV8=;
 b=maQoYH/FoMr8Ri9UWh8ABvIM2GuFiSu7FiiRJH9vQvAGRpfep0tEEdC4yfR7HkW6RN
 b24e/4dPKUeJi5J73torWRNfVnNEff20B8D4L7jjExo2Fpl+ia72nzNKjgF3yJFkLl9E
 IMCZCyPA38dxvuBz6trNJ0hAN1EyIHZdJVbdeYk2UaXrZmw7KyH+/UC2g5HsGUvj2GTg
 q2SG5xKRxljXQUkRVjtPS/j8j0ytIiNmknZmuYVhPxtQuaU7oJ//wCuBzoBmpxAZguRs
 IZ4kMYkGOHmi1AvSP0nhqRt7cMstWubSV+kjD2puUjmAK/8Kg5iZumcMCDOj0XBsdwhh
 ay4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWe5k3uIi4UGT+Zx+XWV1pNoBilZejOmd6LuzU8i85vb92OkecFNQ1POFbHjbZSZvbE8kUG4ZCCbWw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwkgJlj4B8gpkbir7EPBNPR5/ZBsMamzj5Pl5rR1PMnaBOqoy1X
 Sb5rlRzkPk60efWo0VYlpyOZJZnohj5CkBYYRAceK9Od8faXcLf6kCdYny8uoOVKjGn8UaTYFUn
 ljCIaalHXiLL5bZyvQ+X/HSIpq00Ufbpb4rhGFA==
X-Gm-Gg: ASbGncsS0U8mji9J58G118ni9+Zr24//Vb8SY37QsLGDKNwGLLClE0gcblG85inugIv
 rFEY3FBg2iAJyEHjZ3CsA1vWNughZromNCgoIoWZVBpzppSSbhdBP
X-Google-Smtp-Source: AGHT+IFh0A/VFc7qGcLPZw0qR04jC0cp5sLGJJHyMqlrhG2QaTLMppoVjFh/WnBGuvtlcvbW7meD7ZGB7xtEg+gozeM=
X-Received: by 2002:a05:6902:1887:b0:e57:4f59:55d1 with SMTP id
 3f1490d57ef6-e574f5958eamr13551371276.45.1737013338308; Wed, 15 Jan 2025
 23:42:18 -0800 (PST)
MIME-Version: 1.0
References: <20250110-dpst-v7-0-605cb0271162@intel.com>
 <20250110-dpst-v7-1-605cb0271162@intel.com>
 <kwklrd2zjovabsa537jwg3bpqilvhfmxxyr4exmqbi2b35uxej@mhequ6ttibsd>
 <IA0PR11MB73079537444DAA9596F0A837BA1A2@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB73079537444DAA9596F0A837BA1A2@IA0PR11MB7307.namprd11.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 16 Jan 2025 09:42:07 +0200
X-Gm-Features: AbW1kvYYHWiNxNczAV9MZfS44Dpz1U21Ygobr5VB-EY6AHC93HuVXuTwTgPZmts
Message-ID: <CAA8EJpojDKtcG=amuwT7B+iaU_A9EwcvpkyyQ8nupKtsF_79gg@mail.gmail.com>
Subject: Re: [PATCH v7 01/14] drm: Define histogram structures exposed to user
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>, 
 "Bhattacharjee, Susanta" <susanta.bhattacharjee@intel.com>
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

On Thu, 16 Jan 2025 at 09:08, Murthy, Arun R <arun.r.murthy@intel.com> wrote:
>
> > On Fri, Jan 10, 2025 at 01:15:29AM +0530, Arun R Murthy wrote:
> > > Display Histogram is an array of bins and can be generated in many
> > > ways referred to as modes.
> > > Ex: HSV max(RGB), Wighted RGB etc.
> > >
> > > Understanding the histogram data format(Ex: HSV max(RGB)) Histogram is
> > > just the pixel count.
> > > For a maximum resolution of 10k (10240 x 4320 = 44236800)
> > > 25 bits should be sufficient to represent this along with a buffer of
> > > 7 bits(future use) u32 is being considered.
> > > max(RGB) can be 255 i.e 0xFF 8 bit, considering the most significant 5
> > > bits, hence 32 bins.
> > > Below mentioned algorithm illustrates the histogram generation in
> > > hardware.
> > >
> > > hist[32] = {0};
> > > for (i = 0; i < resolution; i++) {
> > >     bin = max(RGB[i]);
> > >     bin = bin >> 3; /* consider the most significant bits */
> > >     hist[bin]++;
> > > }
> > > If the entire image is Red color then max(255,0,0) is 255 so the pixel
> > > count of each pixels will be placed in the last bin. Hence except
> > > hist[31] all other bins will have a value zero.
> > > Generated histogram in this case would be hist[32] =
> > > {0,0,....44236800}
> > >
> > > Description of the structures, properties defined are documented in
> > > the header file include/uapi/drm/drm_mode.h
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  include/uapi/drm/drm_mode.h | 59
> > > +++++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 59 insertions(+)
> > >
> > > diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> > > index
> > >
> > c082810c08a8b234ef2672ecf54fc8c05ddc2bd3..7a7039381142bb5dba269bda
> > ec42
> > > c18be34e2d05 100644
> > > --- a/include/uapi/drm/drm_mode.h
> > > +++ b/include/uapi/drm/drm_mode.h
> > > @@ -1355,6 +1355,65 @@ struct drm_mode_closefb {
> > >     __u32 pad;
> > >  };
> > >
> > > +/*
> > > + * Maximum resolution at present 10k, 10240x4320 = 44236800
> > > + * can be denoted in 25bits. With an additional 7 bits in buffer each
> > > +bin
> > > + * can be a u32 value.
> > > + * Maximum value of max(RGB) is 255, so max 255 bins.
> >
> > HDR planes have higher max value for a component.
> > Likewise even in an RGB24 case there are 256 possible values. It's not clear why
> > 0 gets excluded.
> >
> This applies to only SDR and excludes HDR.

Why?

> RGB in hex can have a maximum value of 0xFF { RGB (255, 255, 255) }
>
> > > + * If the most significant 5 bits are considered, then bins = 0xff >>
> > > + 3
> > > + * will be 32 bins.
> >
> > If 5 bits are considered, there will be 2^5 bins, no matter of 0xff >> 3.
> >
> Agree!
>
> > > + * For illustration consider a full RED image of 10k resolution
> > > +considering all
> > > + * 8 bits histogram would look like hist[255] = {0,0,....44236800}
> > > +*/
> > > +#define DRM_MODE_HISTOGRAM_HSV_MAX_RGB                     (1 <<
> > 0)
> >
> > Why do you have a bitshift here?
> >
> Bitwise notification is used to differentiate multiple histogram modes.
> Currently we have max(RGB), upon adding other histogram modes the
> same can be included here.

Define a normal enum. There is no need to use bitmasks for histogram modes.

>
> > > +
> > > +/**
> > > + * struct drm_histogram_caps
> > > + *
> > > + * @histogram_mode: histogram generation modes, defined in the above
> > > +macros
> > > + * @bins_count: number of bins for a chosen histogram mode. For
> > illustration
> > > + *         refer the above defined histogram mode.
> > > + */
> > > +struct drm_histogram_caps {
> > > +   u8 histogram_mode;
> > > +   u32 bins_count;
> > > +};
> > > +
> > > +/**
> > > + * struct drm_histogram_config
> > > + *
> > > + * @enable: flag to enable/disable histogram
> > > + * @hist_mode: histogram mode(HSV max(RGB), RGB, LUMA etc)
> > > + * @reserved1: Reserved for future use
> > > + * @reserved2: Reserved for future use
> > > + * @reserved3: Reserved for future use
> > > + * @reserved4: Reserved for future use  */ struct
> > > +drm_histogram_config {
> > > +   bool enable;
> > > +   u8 hist_mode;
> > > +   u32 reserved1;
> > > +   u32 reserved2;
> > > +   u32 reserved3;
> > > +   u32 reserved4;
> >
> > What for? Also this struct leaves a 3-byte hole, which might be not so
> > beneficial.
> >
> This is kept for future use. If weighted RGB mode is used for histogram generation
> then we need 3 variables to get the weightage. For any other new histogram
> modes or for future usage this is kept reserved.

What for? Please don't pollute it with 'reserved' fields. Consider how
the Color Pipelines data is defined: it has separate 'type' and 'data'
objects.
Type can be selected via enum. Data is blob which is parsed according
to the type.

> Regarding the padding, will re-oder the elements in the struct.
>
> > > +};
> > > +
> > > +/**
> > > + * struct drm_histogram
> > > + *
> > > + * @config: histogram configuration data pointed by struct
> > > +drm_histogram_config
> > > + * @data_ptr: pointer to the array of histogram.
> > > + *       Histogram is an array of bins. Data format for each bin depends
> > > + *       on the histogram mode. Refer to the above histogram modes for
> > > + *       more information.
> > > + * @nr_elements: number of bins in the histogram.
> > > + */
> > > +struct drm_histogram {
> > > +   struct drm_histogram_config config;
> > > +   __u64 data_ptr;
> > > +   __u32 nr_elements;
> > > +};
> > > +
> > >  #if defined(__cplusplus)
> > >  }
> > >  #endif
> > >
> > > --
> > > 2.25.1
> > >
> >
> Thanks and Regards,
> Arun R Murthy
> --------------------



-- 
With best wishes
Dmitry
