Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1847E9F0A12
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 333D910EFBD;
	Fri, 13 Dec 2024 10:51:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="FT47pd2+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA93A10EFB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 10:51:26 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-5401c52000fso1573157e87.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 02:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1734087085; x=1734691885; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LnP8gFtJmpG9uae63t0E5cLFvDIYUTdp96d92xuKYIg=;
 b=FT47pd2+DkeDquG0BjIfNOMnmF2/v456/6oZ30FzC0089Fq9xtjzAndCeCqEv+2TZa
 7mTVh/YSWnsVnLWZCL0yVaD6vv+xiaLpYSHXK0PJEk05NOlKpEGJJIIbfz276kYyTH2/
 oAk1GBjJ69fUbm1dvHJzZ/XmpKAowq0nc6DaAjrCSLK/+NIsvWaumT0YvYp4N8W1I0KK
 vKHHcCLKeTdujl4VYGYoxRcWDOAScwYh+QXpclNNNCfSJhb+t7yUAeOnMouCeYO4SuHR
 7nAroYhUfPeHqKdY/JDFwl3JnOL/+VulDHxv3CtJRYI46nhvnOMHl07BMN7TWh5A3iCq
 traA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734087085; x=1734691885;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LnP8gFtJmpG9uae63t0E5cLFvDIYUTdp96d92xuKYIg=;
 b=ToYcioOWKj2lsA1/cp5ScVhRu7OMZN5MvivojsoXajoQhHkNc0I77hZs0tl+treScI
 DcGL5KNmTAst0aRaBPsH7UTfVuFMp3slWOGz1dLAuRPLUJLAcXdqbAVP09ZbL1NuQNm7
 WzN0NJE5TMxoi+IG97JKA/ht5zaBRgU4z4KZdV9l3hRBbi230aQww+gQQ74El1HIH3CK
 zhlXr3X1trxDihEZSX13UpwvbgeiuIlo9n/mNWMVlJwECxoLAdvpR1XboocwQqI5QKiL
 DNtfCC2Uj2xFLIPBD2iFuumoiyqZgIf+CiBq5sZ4s/E0zRsP4FSpz8A6TAKJsCPxfL4p
 yzsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMYs+xEYSdMk20oXzdwfnPcOyVgSXJa8jfYfteMYOynWaTAdXqw2ljb0N8mANiY+2H0M57gc5UrnI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzIvQMK744JowU6fBPKmJfzziVW9kY+J8CVXoT2BhHIk5/9O96C
 HUGJDEvmguaDGa3/KZBjJNthM3jkLRH1icicJyKEqu5hyNBw95DTc0L35t/60O4=
X-Gm-Gg: ASbGncvqpMTUaSVPRyDEsmICNy232hS2CpjtzDVQImefTEl13EQ0WpZ4YQaX7iP/SU2
 Mu69nlQvgci7l3rfzg3kB66CEd5lTNcWamZJfbo8ikbZU2rqZO5sqHr67BsSCpbpDysECcWzyIu
 ZznPpfrIVxlOecllS27WDY0ePdzzrLQB0MTRJr/5LoGPm+eoA+xtWM6ZdniU0eq/jNLqebmFhkO
 FfkC1hmpmdBJzNwWESUh57JVLWqXY7x9mVIfu2efFwC4uSNF8BMiZIYkMqX7qRFqF3jkWXOM6nq
 olEsyk9nRuuiwrzgVO0xhvk+LOFxi3wVUEOf
X-Google-Smtp-Source: AGHT+IEDuFoGLuIuP53DhPi1O/BDv4/qO5VgR1m2bdJZc4tElHnfEJBCyfzGGLUAk8FR/PQbgsVdxw==
X-Received: by 2002:a05:6512:3996:b0:540:1d58:da7b with SMTP id
 2adb3069b0e04-5408ad7f99dmr551790e87.11.1734087085029; 
 Fri, 13 Dec 2024 02:51:25 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53e44a45769sm1996851e87.60.2024.12.13.02.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2024 02:51:24 -0800 (PST)
Date: Fri, 13 Dec 2024 12:51:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCHv3 01/10] drm/crtc: Add histogram properties
Message-ID: <cn63on775l35olcywzhwx3hzivve4ch7h7edp7mvnn3l5x6e2i@z34t36lr2ktj>
References: <20241209162504.2146697-1-arun.r.murthy@intel.com>
 <20241209162504.2146697-2-arun.r.murthy@intel.com>
 <7tho6j262nzbu6nvjgzelsu3ljjipxdhazjlzdfa3xi2lbn3vs@bx55yrrbmshg>
 <IA0PR11MB7307E1C101F417CFAE3B114ABA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <l6dpikqfgwlio5rungx4ckvw524woz4mybkiqfp4k5fpkokj2c@zox6yfhxnzeh>
 <IA0PR11MB73078417607420EC685A4C73BA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB73078417607420EC685A4C73BA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Tue, Dec 10, 2024 at 05:52:38PM +0000, Murthy, Arun R wrote:
> > On Tue, Dec 10, 2024 at 08:42:36AM +0000, Murthy, Arun R wrote:
> > > > On Mon, Dec 09, 2024 at 09:54:55PM +0530, Arun R Murthy wrote:
> > > > > Add variables for histogram drm_property, its corrsponding
> > > > > crtc_state variables and define the structure pointed by the blob property.
> > > > >
> > > > > struct drm_histogram and drm_iet defined in
> > > > > include/uapi/drm/drm_mode.h
> > > > >
> > > > > The property HISTOGRAM_ENABLE allows user to enable/disable the
> > > > > histogram feature in the hardware. Upon KMD enabling by writing to
> > > > > the hardware registers, a histogram is generated. Histogram is
> > > > > composed of 'n' bins with each bin being an integer(pixel count).
> > > >
> > > > Is it really a count of pixels that fall into one of the bins?
> > > It's the statistics generated for each frame that is sent to the display and the
> > value corresponds to 5 bit pixel depth.
> > 
> > Let me try it once more, but this is becoming tiresome. Please provide a
> > description of the property good enough so that one can implement
> > HISTOGRAM support for the VKMS driver. You don't have to provide Intel-
> > specific details, but the description should be complete enough.
> > "The number of pixels falling into each of the bins, sorted by luminosity, started
> > from the brighest ones" might be an example of a good enough desription.
> > Then one can add such functionality to other drivers. Just saying "statistics"
> > doesn't give us anything.
> > 
> This is a hardware feature and hence for other drivers to add support for this
> means that the hardware should have support for this.

OpenGL, OpenGL ES, Vulkan and other libraries also define software
interface for hardware features. However they define it in a way that
allows at least software implementation. I'm not arguing about the
particular feature or its implementation. I'm not asking for the
_hardware_ description or any other kind hardware-related information.
But I really want to see a good documentation for the userspace
interface that will allows other vendors to implement it in their
drivers (including my example, VKMS). Up to now I have not seen a
definition of properties that fits this criteria.

> Each bin consists of 5 bit pixel depth.
> Example code of how to use this histogram and increase the contrast is GHE.

Yes, I have taken a look. No, it's not a replacement for the
documentation.

I'm really sorry to write that, but until the documentation issue is
resolved, please consider this patch to be:

Nacked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
With best wishes
Dmitry
