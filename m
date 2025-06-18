Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C4EADF319
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 18:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367D210E8E7;
	Wed, 18 Jun 2025 16:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="i7Hojr88";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7933310E8E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 16:54:39 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id
 5614622812f47-408d7e2b040so4370328b6e.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 09:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1750265678; x=1750870478; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OJ2gcooOP07f9omnCEawJUw60wsToiKqAdT6b09wVWg=;
 b=i7Hojr88XX8WmVGK/XRWC2o27v2Nfcis8skt3bq6R8Oanr/7mlu1TrGoGi/auTHWv5
 VGmK/h5uFsm/Wo+z4SuPzi6I2GrZXGY4yFijFVrnFZEFtYJHPPx9GyNe90w1YB+2NV0Y
 0VZDrs2cqDs0p/BycI7wnm5H8e2v6KXWwjXaUYu6fZG/CkzFYk7VYiLy7pDiATFSimTq
 ux4ZdCzELewy7qaysxg+z0TGndUtswcT7CCtd68uEF/cCK27s+mI4IgybYAIQVDUD1SJ
 FMZ9CzxzdQdxcYy6v63RfiBUbZES+xm65ei8kAUFKiFMhZ/TwLafnwO8qWC6je/qC8HH
 AMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750265678; x=1750870478;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OJ2gcooOP07f9omnCEawJUw60wsToiKqAdT6b09wVWg=;
 b=tmgx6/SiC1HrjnHpzXRlVu1DaTlgbKvAUsiHSRzRsAyNZRfD7UlHN2uFsHmlaOh60t
 3dii8kC849iPop8xMxjwEHfQEVcYuHQWezTXhWYcAO6r6i+gF8Vi02Ku6HTxIwxOVwQ3
 7VWxl2V1DRCdYjWqSgE09zwAmQSRjEuhz7eTBv5nv0dHNzLWd9EmPxkJ8gzx5yPJqnZd
 3UkY231w2Jt3RKDTma++R8WerFTsX/jOa0/cokGFMQ51zXkMrzxc7fsemjiVNhRpZ4YC
 AeBc42mwVIE7saQQ3UM248Ijn5H9lzsed7XNWvrNpCOFBFgd3D8UEIPKb58CoobASvw3
 tt7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgYI82EX9FecDrR3ZtKhG1LFi+8rCFABlq4sbtHYWdBQdEzeyekOIvUccBu7B8uBVNjFihSAVYERs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzbeahJTjgf34RCH913w223/VIjif47yy1RLJcfy/QhzGoletBi
 wxfCNj1qCAIom3nFUF3VOEQfTBhgBxmwWEK1kHJzcRcyZG68qOF069FrwzLRTnX3n/8=
X-Gm-Gg: ASbGncut9NURok2Pp2PeNFboQ4gBADR1CDepBvO6j+KpOskSskD2T/8VZ04NCr54nwu
 5JTujreyEU3IsPPgWWM6rJYCWWo9WPGY3nm3KLwahVqnKLOylU02fGXtb/45lEZbqJWppR9Erh2
 XsO9Txwsh9ULqze5bCClGd5kdvH5xuAS7blURD5AEkPB7yZ2BAFWRWSauQZBNmEhz+lNSvZd8ko
 +DI5Egxc10sGAqVeRLjuSUEbhMjOYUq2vlv7tjZH0cqhcYiaP+R0WeW6HitPzuJZrEIEwY7Wkn9
 Gg3zrwKJ/sCjVeV1PTqJwDShiUWq1/6zBzOCEUX5/pscjmoGOubl98X//oc90QzW5qbXoQ==
X-Google-Smtp-Source: AGHT+IGZt/Sr44zCZuiDpdUzJJJDzC8/TeAfQmItZfKDDSRquAFIHhPkjBQpw4diPA+6hMtv0/zkrA==
X-Received: by 2002:a05:6808:3083:b0:40a:54f8:2cac with SMTP id
 5614622812f47-40a7c196bf8mr13387419b6e.37.1750265678596; 
 Wed, 18 Jun 2025 09:54:38 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:1b3b:c162:aefa:da1b])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-40a740b2808sm2399744b6e.6.2025.06.18.09.54.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Jun 2025 09:54:37 -0700 (PDT)
Date: Wed, 18 Jun 2025 19:54:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Frederic Weisbecker <frederic@kernel.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] drm/i915/selftests: Fix error pointer vs NULL in
 __mock_request_alloc()
Message-ID: <419d4155-af68-4264-81df-f882c481534f@suswa.mountain>
References: <aEKvMfJ63V7i-6xU@stanley.mountain>
 <aFAxtBT7z4XphADq@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aFAxtBT7z4XphADq@intel.com>
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

On Mon, Jun 16, 2025 at 11:01:08AM -0400, Rodrigo Vivi wrote:
> On Fri, Jun 06, 2025 at 12:04:49PM +0300, Dan Carpenter wrote:
> > --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> > @@ -290,7 +290,12 @@ struct smoketest {
> >  static struct i915_request *
> >  __mock_request_alloc(struct intel_context *ce)
> >  {
> > -	return mock_request(ce, 0);
> > +	struct i915_request *rq;
> > +
> > +	rq = mock_request(ce, 0);
> > +	if (!rq)
> > +		return ERR_PTR(-ENOMEM);
> 
> I believe we should fix mock_request and make it to stop replacing the
> error per NULL, and make the callers to check for IS_ERR instead of is not NULL.
> 
> Then don't need to make up an error here.
> 

Sure, can do.

regards,
dan carpenter

