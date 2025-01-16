Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE0BA13A9F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 14:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364F710E965;
	Thu, 16 Jan 2025 13:13:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="lyClBcz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E44E10E965
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 13:13:56 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-5401bd6ccadso989092e87.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 05:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1737033175; x=1737637975; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IN5iErEK204hTsFbOEcPU9O7KFDei+gXebS5ZQrhPCE=;
 b=lyClBcz8iZ3Uf6ol3oG1TYaXPgNY6Q30Hog8ODdFX2iYHrH8iATSwePs3nBRBA80vz
 XLTaCCGyXHRI/+uIUakZ0ylPGrFeQMgCCa+ZiEiXNRsloESIuAyXyKU8lcC0bZe5Od8B
 9pbHhznVC3LR6p60bKGZ+TPZGLJdVb/WXODRdhtwvwRcrSkIH1h2fenwp17+MLjjYDaG
 RsJc6SXvJzkJYvCW5BYxwzgqM6k6EnYdfgOQRQGftMtFKrms69ENZtHGNFQEvgfSqSCD
 DNS2QiNAnpQJnHfrxKeT0qL7vUVocyt/HLhVzUdtsm2EfXnqqeNCPeh5+WK7+Jx3uzjM
 GtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737033175; x=1737637975;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IN5iErEK204hTsFbOEcPU9O7KFDei+gXebS5ZQrhPCE=;
 b=QXi5RayNargLOeYJ3yN3x7ICB36zL3DtFCl/6349f+WznULR/ropaCvfA9uCWWfnlU
 fNv2UPoUIfch51s8F6/yLMZEqd8zcm+J5kjezO3AwfizebIiJHNkr3InlJ8mhhOc2IuV
 AKZ/q3yvgpr0pAmauj4OKL5bvUSbfzvpBT3YhKsWIXTxLPKQSIGVDn3H2VVDPomV6tp8
 pc/Xy+WWeRJa1CMqBAsgn9YZAXDZT4t1dd7NgH4HY1/qdmMEFv+sGXbZVyCaNPjuaTah
 wcYgJZhkR3XacfG8MtzOcVEbgrBY+h0UGAFbPCd7bBEbyADHRM6aAalWCk1lBWLOywuF
 aZgA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2LwAJ812g7Jvx23lusBACkpzwkD5LwFe5xO/IauWPT7RyqOcG7/Zg6Hs3/DlqjX37XHu2hUXtFgo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxecCMTeZpkYYxAHrVzyFnMGcxmOCdlk5J2EBbB/lPkYZc5egZo
 mMSv76fsDojbl4XkUWCxJBYCck3N2T+KWOY945yM6GQJklHWMUDLaIbYtvsPqfE=
X-Gm-Gg: ASbGncsHPZQDgZzCjcqQQi/7ywyLWdfQm2TI7ub0barC+g8ux9tNnTQ+S8iyhjYdRNW
 dH4xzudolwzsL54XULSbJ9hKPHTLxWXuEL0yeKcX/r2aVfMmeX8iHHwb+A+3RTor4H6jGzjNDJe
 tuSwiXo8q9OPzty/lnBxi/popwHIpvk8JYdUHB0RlCiiJRQug79u5W2qpvUZksqPVwQioBs4N2R
 5WQK5A7+WwFp8f8bEEwCI6QwwK+8DESbY2DkPcDU2k2EEMOXojVB32HmibXXwLnbd7Hmzzci0/6
 8GoZwg4FTiSsYEBIXz4G9HbJAcjFMcs68Em6
X-Google-Smtp-Source: AGHT+IHsMwVVXHTANfdMqD7v8ryQa3xtKKNCW75Lyt2j8h7YnEXxIQ/19jtCGN+l81P00mW/j/xJOw==
X-Received: by 2002:a05:6512:3b90:b0:542:214c:533 with SMTP id
 2adb3069b0e04-54284559eefmr11207075e87.30.1737033174553; 
 Thu, 16 Jan 2025 05:12:54 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5428be496desm2319317e87.44.2025.01.16.05.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2025 05:12:53 -0800 (PST)
Date: Thu, 16 Jan 2025 15:12:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, 
 "Shankar, Uma" <uma.shankar@intel.com>, "Bhattacharjee,
 Susanta" <susanta.bhattacharjee@intel.com>
Subject: Re: [PATCH v7 01/14] drm: Define histogram structures exposed to user
Message-ID: <yyn35zkvqfajyyata2kuwfswfzjf3oqv4hzq5pc5rw7o2sporu@vsybecmh54ow>
References: <20250110-dpst-v7-0-605cb0271162@intel.com>
 <20250110-dpst-v7-1-605cb0271162@intel.com>
 <kwklrd2zjovabsa537jwg3bpqilvhfmxxyr4exmqbi2b35uxej@mhequ6ttibsd>
 <IA0PR11MB73079537444DAA9596F0A837BA1A2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <CAA8EJpojDKtcG=amuwT7B+iaU_A9EwcvpkyyQ8nupKtsF_79gg@mail.gmail.com>
 <IA0PR11MB73070AE8FD9EAF5E47A56A96BA1A2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB73070AE8FD9EAF5E47A56A96BA1A2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Thu, Jan 16, 2025 at 12:33:20PM +0000, Murthy, Arun R wrote:
> > > > On Fri, Jan 10, 2025 at 01:15:29AM +0530, Arun R Murthy wrote:
> > > > > Display Histogram is an array of bins and can be generated in many
> > > > > ways referred to as modes.
> > > > > Ex: HSV max(RGB), Wighted RGB etc.
> > > > >
> > > > > Understanding the histogram data format(Ex: HSV max(RGB))
> > > > > Histogram is just the pixel count.
> > > > > For a maximum resolution of 10k (10240 x 4320 = 44236800)
> > > > > 25 bits should be sufficient to represent this along with a buffer
> > > > > of
> > > > > 7 bits(future use) u32 is being considered.
> > > > > max(RGB) can be 255 i.e 0xFF 8 bit, considering the most
> > > > > significant 5 bits, hence 32 bins.
> > > > > Below mentioned algorithm illustrates the histogram generation in
> > > > > hardware.
> > > > >
> > > > > hist[32] = {0};
> > > > > for (i = 0; i < resolution; i++) {
> > > > >     bin = max(RGB[i]);
> > > > >     bin = bin >> 3; /* consider the most significant bits */
> > > > >     hist[bin]++;
> > > > > }
> > > > > If the entire image is Red color then max(255,0,0) is 255 so the
> > > > > pixel count of each pixels will be placed in the last bin. Hence
> > > > > except hist[31] all other bins will have a value zero.
> > > > > Generated histogram in this case would be hist[32] =
> > > > > {0,0,....44236800}
> > > > >
> > > > > Description of the structures, properties defined are documented
> > > > > in the header file include/uapi/drm/drm_mode.h
> > > > >
> > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > ---
> > > > >  include/uapi/drm/drm_mode.h | 59
> > > > > +++++++++++++++++++++++++++++++++++++++++++++
> > > > >  1 file changed, 59 insertions(+)
> > > > >
> > > > > diff --git a/include/uapi/drm/drm_mode.h
> > > > > b/include/uapi/drm/drm_mode.h index
> > > > >
> > > >
> > c082810c08a8b234ef2672ecf54fc8c05ddc2bd3..7a7039381142bb5dba269bda
> > > > ec42
> > > > > c18be34e2d05 100644
> > > > > --- a/include/uapi/drm/drm_mode.h
> > > > > +++ b/include/uapi/drm/drm_mode.h
> > > > > @@ -1355,6 +1355,65 @@ struct drm_mode_closefb {
> > > > >     __u32 pad;
> > > > >  };
> > > > >
> > > > > +/*
> > > > > + * Maximum resolution at present 10k, 10240x4320 = 44236800
> > > > > + * can be denoted in 25bits. With an additional 7 bits in buffer
> > > > > +each bin
> > > > > + * can be a u32 value.
> > > > > + * Maximum value of max(RGB) is 255, so max 255 bins.
> > > >
> > > > HDR planes have higher max value for a component.
> > > > Likewise even in an RGB24 case there are 256 possible values. It's
> > > > not clear why
> > > > 0 gets excluded.
> > > >
> > > This applies to only SDR and excludes HDR.
> > 
> > Why?
> > 
> We are limiting to only SDR. HDR includes a broad range of color and finer details,
> which essentially means its an enhanced image.
> We are trying to enhance the image quality of SDR with the support of histogram.

You are defining generic API. It might be broader than your existing
usecase. Please consider supporting HDR too.

> > > RGB in hex can have a maximum value of 0xFF { RGB (255, 255, 255) }
> > >

-- 
With best wishes
Dmitry
