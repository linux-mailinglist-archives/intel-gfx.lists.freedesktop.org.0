Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F33D49A4E69
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 15:52:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE4B10E29C;
	Sat, 19 Oct 2024 13:52:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="bSPoMted";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E400A10E286
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2024 13:52:15 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-539fe02c386so4097730e87.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2024 06:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1729345934; x=1729950734; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vQwmYNtzm3cZvNfpTYZFoEiYNHH4mYbWhA3IgVfwxn8=;
 b=bSPoMtedn5f+zQiZucnMzvaVtLoZVgrZykBTyorsMiK8zYx9VUnL5OF56HR8pEWnDR
 vaQwil2X9Le2syiBW9qVEBPKWwP3cPklnGsg5DLW4v4ltNbKBPcC0pB7QNNre5vXLZnp
 gvGtck0cK9al3tnGZ0rwhQgP0bBBF7W6iRTfXnwKY0bNG4Iq0IXmMhaMh2m4x+byLG0F
 65RPDbfCxHFJh3wwMYHYOSBwOpMQtOsC2WTkjYlBeeXa7yKnIegdOTYbe4BuK2JTj41Y
 nDlL7Yk4wv53zE3UwcAykVEy8xCi52slK1Y7GGn+f8KkYj25Jpzin+cw02h0yebmaSDK
 AF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729345934; x=1729950734;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vQwmYNtzm3cZvNfpTYZFoEiYNHH4mYbWhA3IgVfwxn8=;
 b=qpxuzKZReZ7G3Ot9fMqfNz2PvOER1h0dDVFZLkNUyBFoOaTZx0KLX90Y7MS2FbZHnZ
 oR3WnfZQVlDBfXGbosna3MTTsXGKXnYD9F53fXkrrGAerASyUUgLrIO2gzjyZUabW90L
 cCnH500qr33UtawU5Cg5iPymcKdZy4+ZRe8tz9WpkP2/hCINVWCmX7ZIczXDgcRMHqK8
 Su+fZxNd5eQfCgzudE9bMhVQu7eVE8UQ2nVyyAo4XIn0e4xnS2MPmdhyqu6MWOqgOWJB
 RoW81VtkIftUVl+TduzN8ltbiqBuHG4Y3NPYpU8iqiAEHXp5AdGcZdvURnyS8SS21dD2
 cTHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUObt7ardhysxGU7TdQo4OoEy4cS0hORL3/2tGeY0SjLMlZfqYIVKh6PHj3XFQKfenMXFj16oVfsLc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy2VmxxgZ9CvkBC7cL0RuSLIyPJGyB8AQMr7Zw+M8MajmIB/ARI
 wrT8EWfZ2aPcKHsW0sueLps2CoPIOKn4bgT1g45BxBG6X5RWGWbAPdoVnKsILfY=
X-Google-Smtp-Source: AGHT+IHtKTwuA/16eF7+hnpWDZ2rjnjnTyFtXBWks05kOqX6iBQ8/kSxxHlzDOwjU9qt3ITnAANufg==
X-Received: by 2002:a05:6512:2210:b0:52c:ad70:6feb with SMTP id
 2adb3069b0e04-53a15b808bcmr1583655e87.20.1729345933627; 
 Sat, 19 Oct 2024 06:52:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53a15211e36sm534215e87.283.2024.10.19.06.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2024 06:52:13 -0700 (PDT)
Date: Sat, 19 Oct 2024 16:52:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: javierm@redhat.com, airlied@gmail.com, simona@ffwll.ch, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 dri-devel@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Subject: Re: [PATCH 11/28] drm/msm: Use video aperture helpers
Message-ID: <nua5c3v4vxxqlhtozshhhw6u2fpnhjzmmnbnx7joknlzotm5yr@zbhplfbawmu4>
References: <20240930130921.689876-1-tzimmermann@suse.de>
 <20240930130921.689876-12-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930130921.689876-12-tzimmermann@suse.de>
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

On Mon, Sep 30, 2024 at 03:03:09PM +0200, Thomas Zimmermann wrote:
> DRM's aperture functions have long been implemented as helpers
> under drivers/video/ for use with fbdev. Avoid the DRM wrappers by
> calling the video functions directly.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  drivers/gpu/drm/msm/msm_kms.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
