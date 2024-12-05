Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D9F9E616C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 00:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1B010EFDD;
	Thu,  5 Dec 2024 23:39:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="YEv4rAz6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378AE10EFDA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 23:39:01 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-53e1c3dfbb0so1411819e87.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2024 15:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733441939; x=1734046739; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=x+KtdEWwaYEAS7NVE+2dcFcFQ+Dv6x3idu/TQviwsT0=;
 b=YEv4rAz6wt4vdwyk0a7fQA+7BDP/s9KNI8xPz0w3lqMxd4iZ8oTKPClU2ABTXRZrod
 3SBGcVFLM/87y8Goqee48TvZQPXuzm1lAuTxfl3/+wmXTCMKGWbamlCnmYAlNB2CPxSq
 XfB0JTxEQcO6o/wvrAWG2boPfQGrXbcB7FQ+vvpPn9kp5ew0GcPRmaQjY/EYRbWojXpY
 pbCOHHNNU1vpbNSMIsau9LXQ8tP92p/MzsSxPrwtZbV+GYxxV8FcOKwttVzELRuAPuca
 eOlCSZRPy7qmfJGz7kpVp6M/oMx4ntlD5OKNC7SP+/3om9YctfU4TpNpLmZ4RpTBklL1
 B/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733441939; x=1734046739;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x+KtdEWwaYEAS7NVE+2dcFcFQ+Dv6x3idu/TQviwsT0=;
 b=EskfU1bgrKxBEmEeiwrFtlOiI29muVhFNzGvxleiyJKoMMgeBtYQwFUVwkDHL+1iMB
 T8W6Glw/MsdecQgJM+PBcJMSp0K9z4rc/cuzoYnuUbT/SWRuJaZmjtg9J4rLuTA4FSFa
 A+XkgfpsKMpwFRrzen7JShRctvZRVuPQHtd5pcb9q0JdyI8P8FXUzwF6mGIO38dd9KRw
 nJknO1dKMrlfcU1j90KtzckeERWxcsR5W/JZtaGcEwCkb4pVnwaqSrXrjEe5nDFk6FHh
 YW1A7reKv/IQ9BapMcuf3RIFkeOmHpwenyWUKQd1j14s3dxa7YWZmZe4/hO663WeczHk
 dOdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfKPmLDBdzrc7qDsVYzciKBfzfQpO4lXw7j6nnLlNrGuWtTcMHtlswfj1HBjFoAiOM6UCcpgdzbVQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwKcq2a0JR54AYILbB686dWWWsH+v+RO5Pw0qYy10PBPXy97Tde
 owZwwggevSZgmpAOhRaZuqzvOd0R3JW/5tj1k+10Eh+21AkKu6R3ipVKws2+BRI=
X-Gm-Gg: ASbGnct5kN7KR0IiJhwlE2PhdE9RxseHN2g12ylEN4vWHBZrPlPDydqlQ3fHo2dtsJQ
 b7NWRz9mVj6Pr3l+tXq2zwuXzrW44NnlejmPTBzhk8Ky6NV0QWkdLaJ8TxyYSTLvm2B9RY68rbl
 hvRNtgJ/y/j08+heGqSGYdlWjFPGhD9Buc0gO59R8jr3J5qMYTLf21D5dZHpmiou+tdcoq8+Vqz
 K+dzNZ3WPH/8OhtjST4ixTp7ZOeIB1//IjUQKbD3oKMOSULNbnls9EUi+gcMRfvGNpYaf3JA4dO
 GMUf1yuOOvsAitlXS1i7kkuhMd6V2Q==
X-Google-Smtp-Source: AGHT+IGbdj0xt+8IkG99P5QkTi0gDWu+e9J0IZeREKHJi5fxrVX5HzFOPSts0eJkMFINTmaJC/Dc/w==
X-Received: by 2002:a05:6512:2210:b0:53b:1526:3a63 with SMTP id
 2adb3069b0e04-53e2c2f01b6mr212357e87.56.1733441939285; 
 Thu, 05 Dec 2024 15:38:59 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53e229473d2sm358466e87.14.2024.12.05.15.38.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2024 15:38:57 -0800 (PST)
Date: Fri, 6 Dec 2024 01:38:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, 
 "harry.wentland@amd.com" <harry.wentland@amd.com>,
 "pekka.paalanen@haloniitty.fi" <pekka.paalanen@haloniitty.fi>, 
 "sebastian.wick@redhat.com" <sebastian.wick@redhat.com>,
 "jadahl@redhat.com" <jadahl@redhat.com>, 
 "mwen@igalia.com" <mwen@igalia.com>,
 "contact@emersion.fr" <contact@emersion.fr>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Re: [v2 09/25] drm: Add helper to initialize segmented 1D LUT
Message-ID: <kb4oqfcbqhiowvkmqaxtvq6wdxixas3ltjk2dfqp4giq3irurr@xvgd6lwf7rzs>
References: <20241126132730.1192571-1-uma.shankar@intel.com>
 <20241126132730.1192571-10-uma.shankar@intel.com>
 <bhjkznwq2776cpjun56fqi6qgfu7ezojxs6mv4itb3njws3aeu@ixhixfv6uknj>
 <DM4PR11MB636063F43127CCDF65F7249DF4362@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB636063F43127CCDF65F7249DF4362@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Tue, Dec 03, 2024 at 09:14:58AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: Saturday, November 30, 2024 3:17 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; intel-
> > xe@lists.freedesktop.org; ville.syrjala@linux.intel.com;
> > harry.wentland@amd.com; pekka.paalanen@haloniitty.fi;
> > sebastian.wick@redhat.com; jadahl@redhat.com; mwen@igalia.com;
> > contact@emersion.fr; Kumar, Naveen1 <naveen1.kumar@intel.com>; Borah,
> > Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Subject: Re: [v2 09/25] drm: Add helper to initialize segmented 1D LUT
> > 
> > On Tue, Nov 26, 2024 at 06:57:14PM +0530, Uma Shankar wrote:
> > > From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > >
> > > Add helper to initialize 1D segmented LUT
> > >
> > > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/drm_colorop.c | 27 ++++++++++++++++++++++++++-
> > >  include/drm/drm_colorop.h     |  4 ++++
> > >  2 files changed, 30 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_colorop.c
> > > b/drivers/gpu/drm/drm_colorop.c index 111517c08216..871d5660e3b2
> > > 100644
> > > --- a/drivers/gpu/drm/drm_colorop.c
> > > +++ b/drivers/gpu/drm/drm_colorop.c
> > > @@ -104,7 +104,6 @@ static int drm_create_colorop_capability_prop(struct
> > drm_device *dev,
> > >  	return 0;
> > >  }
> > >
> > > -__maybe_unused
> > 
> > Squash all three patches so that you don't have to play with __maybe_unused.
> > Then please expand commit message to describe the problem that you are
> > solving.
> 
> Idea was to logically separate for ease of review. But we can squash if that looks better.

I think the patches are simple enough, but it's just my 2c.

> 
> > >  static int drm_colorop_lutcaps_init(struct drm_colorop *colorop,
> > >  				    struct drm_plane *plane,
> > >  				    const struct drm_color_lut_range *ranges,

-- 
With best wishes
Dmitry
