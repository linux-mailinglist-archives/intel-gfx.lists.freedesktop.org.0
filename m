Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92C59EA39D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 01:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E1E10E35B;
	Tue, 10 Dec 2024 00:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="oREeAIg9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B0810E593
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 00:26:08 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-5401c52000fso1666032e87.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Dec 2024 16:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733790367; x=1734395167; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4BwVrUZpTdtHulhLKWv2OcJChXM6uEDlwsocnkbKdQ4=;
 b=oREeAIg9F3F0g1xUaNQ9w4Tw3sCZJBs4RYtzUD4o2SoolaRpZMIqW0koP9DfAaJFnP
 jJZwuIczwzopJ8YofkKhjMkYQK7x/n0feNL+rT2ee4XD1X2VekQd/abgXZgsmT81+jT+
 CMH7Gyr4RmsfR5MM0otDHDAahKTAfnX7wTodleY5AXQOHQjWMO4YjamYNZMrkFZjlciy
 S14cUL69U5ZtdfrNa4sitsZxoCFgciC7LWwMkFOJTbYDaTYJY2Rwu6OLWjEr9bRvbN4O
 0uoT7UbrOKLV5bbRNIR1uXZ/z+ncIbXiG/TIDsY25DihkrgfBq3wPrzKtgSwmb7rXCVu
 beig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733790367; x=1734395167;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4BwVrUZpTdtHulhLKWv2OcJChXM6uEDlwsocnkbKdQ4=;
 b=gLwlK5p8QRgfiA3hRBj0whsr15PRnER4yVw+EfWXZryJV3MznvKfeH9rw9JuhC7BM5
 dTfh6VR6gaUkMcc812B/zSyepTZ5kkHWxh/ic8A+ATnfT22lEkfim5IkOihhAOPdU+n8
 UOqUGwnY2TC3NACxNyafLDacUihpEZu2effOONGJ0/p0Xq3LGamQhbXC2Xl6FE2QX9D6
 SfLp7dZoCd9KRrkeuwn5BZHluXHWO/gyNcUUBCEHPR+hF0Xy11FEsnNBG+v/7ugcwkZc
 KGwJbgspIIbhVr7PQ7H0qpTsHGJiuWKDaTRap7bBlGJwT4abxMGBMo+hQk99/18BFSTz
 dcjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGkdMix6/h0OFSia3MBomNrYpVK9JMfC09whruQpTFPuX7IT+8HlZi3tgz4MesIStm/QRZgq45GUw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXBspBIIzweuhMctN4IW8re2e73wwIxDK2q3sXhz/7ypbkY5Lt
 rof/fOTAjYZQ0XdgveSnjCi9gF+0hpqztbHRxuL/KCJe0K0hIi1K4rebryydaZc=
X-Gm-Gg: ASbGnctHL0tgdGoqOZHZ805qj0EkxW6a0EIxv93EO6Hzxsu9CbsY++Md3PBrUub+moe
 eQwf4OVzoqQdzgJrE1JFuWu104GrJRlQrnR9gAkvF0HkkVa8Fs/Qo7wKG1Wl/1gUSHzMLDRLhNa
 xTbqnHv0S4RIzpsih2R4hp2XCaSd5ZpygP/yYOhpua1dQ+eBNdqci8EU6SGkEdTr6h++2D4BGC8
 88Surwi3maq0sGMaMbWqOXirh4nlfWznl7ZWeZuEsjNyGbMBIcTdN4zB4zFSj2Rr+p/Igkn/t8o
 P+TECWHTdVJ4aEoNtdQGxrwNgO96oOcsaw==
X-Google-Smtp-Source: AGHT+IF2X1+jzpdAk4e9Hp3V3x/qmpFhWj2caHJ76xZxfhEu4S0Ho2FccWas++QMYQWHfk7RKLTQWw==
X-Received: by 2002:a05:6512:138c:b0:540:1d6c:f1c7 with SMTP id
 2adb3069b0e04-540240aa960mr829759e87.10.1733790366671; 
 Mon, 09 Dec 2024 16:26:06 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53e3ab8dd61sm912121e87.44.2024.12.09.16.26.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2024 16:26:05 -0800 (PST)
Date: Tue, 10 Dec 2024 02:26:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCHv3 01/10] drm/crtc: Add histogram properties
Message-ID: <7tho6j262nzbu6nvjgzelsu3ljjipxdhazjlzdfa3xi2lbn3vs@bx55yrrbmshg>
References: <20241209162504.2146697-1-arun.r.murthy@intel.com>
 <20241209162504.2146697-2-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209162504.2146697-2-arun.r.murthy@intel.com>
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

On Mon, Dec 09, 2024 at 09:54:55PM +0530, Arun R Murthy wrote:
> Add variables for histogram drm_property, its corrsponding crtc_state
> variables and define the structure pointed by the blob property.
> 
> struct drm_histogram and drm_iet defined in include/uapi/drm/drm_mode.h
> 
> The property HISTOGRAM_ENABLE allows user to enable/disable the
> histogram feature in the hardware. Upon KMD enabling by writing to the
> hardware registers, a histogram is generated. Histogram is composed of
> 'n' bins with each bin being an integer(pixel count).

Is it really a count of pixels that fall into one of the bins?

> An event HISTOGRAM will be sent to the user. User upon recieving this
> event user can read the hardware generated histogram using crtc property

Nit: here and further, it's CRTC, not crtc

> HISTOGRAM_DATA. User can use this histogram data, apply various
> equilization techniques to come up with a pixel factor. This pixel
> factor is an array of integer with 'n+1' elements. This is fed back to
> the KMD by crtc property HISTOGRAM_IET. KMD will write this IET data
> back to the hardware to see the enhancement/equilization done to the
> images on that pipe.
> The crtc property HISTOGRAM_DATA and HISTOGRAM_IET is of type blob.
> 
> For crtc property HISTOGRAM_DATA,
> the blob data pointer will be the address of the struct drm_histogram.
> struct drm_histogram {
> 	u64 data_ptr;
> 	u32 nr_elements;
> }
> Histogram is composed of @nr_elements of bins with each bin being an
> integer value, referred to as pixel_count.
> The element @data_ptr holds the address of histogam.
> Sample:
> Historgram[0] = 2050717
> Historgram[1] = 244619
> Historgram[2] = 173368
> ....
> Historgram[31] = 21631
> 
> For crtc_property HISTOGRAM_IET,
> the blob data pointer will be the address of the struct drm_iet.
> struct drm_iet {
> 	u64 data_ptr;
> 	u32 nr_elements;
> }
> ImageEnhancemenT(IET) is composed of @nr_elements of bins with each bin
> being an integer value, referred to as pixel factor.

What are pixel factors? How are they supposed to be used? You have
specified the format of the data, but one still can not implement
proper HISTOGRAM support for the VKMS.

> The element @data_ptr holds the addess of pixel factor.
> Sample:
> Pixel Factor[0] = 1023
> Pixel Factor[1] = 695
> Pixel Factor[2] = 1023
> ....
> Pixel Factor[32] = 512
> 
> Histogram is the statistics generated with 'n' number of frames on a
> pipe.
> Usually the size of pixel factor is one more than the size of histogram
> data.

What does that mean? What does it mean if this "Usually" isn't being
followed? Previously you've written that it always has n+1 elements.

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  include/drm/drm_crtc.h      | 51 +++++++++++++++++++++++++++++++++++++
>  include/uapi/drm/drm_mode.h | 24 +++++++++++++++++
>  2 files changed, 75 insertions(+)
> 

-- 
With best wishes
Dmitry
