Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4B093C7CA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 19:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4274F10E25C;
	Thu, 25 Jul 2024 17:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="aME5LoN7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com
 [209.85.161.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233B010E25C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 17:46:58 +0000 (UTC)
Received: by mail-oo1-f52.google.com with SMTP id
 006d021491bc7-5ca9835db95so71040eaf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 10:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1721929617; x=1722534417; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cviWriEbr/FbVoJOj47UlPdrhDPksgsah9tvdUH770M=;
 b=aME5LoN7AxRC+kRx+9vpUTqyPt08U4DQnakyEGRt8QA3VL0r1B7JynYkpIC1MQ4QCl
 up/WD0VBB4wm0fF39ULmyy3sVZT/BaLqzQiF+rcSKWVHBEpaizjT6P5O43idak/MS3zr
 MYSgq1Meif7qMs09Vh6cG7jY2tvNN4vo1qUYv9Xjc/so2mjp2HnPyMPfh+SylJuDQ+Bv
 5b6pD0VDByG7X/dOIRtkA+GyRnRnlD9T0/WWZgZmUVMvWN+VE0mEjHAKrhf7YkBEhLSp
 2S7rUMaIsDhEq2Crlhnv6n7ygyR54K/QZvqfg6s8//bODaaqOzXGKsooaXKcSQ2Xcgv4
 WrsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721929617; x=1722534417;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cviWriEbr/FbVoJOj47UlPdrhDPksgsah9tvdUH770M=;
 b=jU/c87s2aVX7RrUyC0W6y0fXfbSJBP1oFX1eA13abCdEdBNBGh0aQWHRo+iZGwibQX
 FQC1IcKzskwD8fw3d/g9va3AocKsUvjkJAt/D+ximu5lAyweSmaC5x46QRkqeLqt8TTQ
 dvqtuT5bb5KCG/ZDSOwJCfEhwjisvvZ29d86lQlcwcZX9FHaTJ6Eis9vb0kj2bk+qlgq
 P6hD/qE4GP1HJMc6uIEn+LWmn15cgFzjzIjsAMU1st920TANdBMYgzqVQzrvZod9D8hI
 pO7rQqbezhUKjKr/JvOJy5S7JoktUScHwuY7CrhJTgm+ogxkk7acNG9MhYvXX2HMC8lE
 eiww==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJGP4ZONJq7GoIZZ65t8zatKwMnHhNrLMU280AwH9Z+MgMNzsP4ZedYzaLB4B86iHnSDb5tGH9CL+ZTmnSgxGS+iHnxKvJMI7H7fxB06Sk
X-Gm-Message-State: AOJu0YwtR/HyCxHV0PzqgzkN5Ox0w+Dde4TUQBMn8x/rp/jkQsZEUzGP
 jYenII7IIDTh15Vw9UDeayQ4+R54gMb7P8MjGDu25iJWkHosdw689OpAoZtcXFA=
X-Google-Smtp-Source: AGHT+IG35YQG+Pz5NmozaWdQHCeqagW6NObc7QetfXSKCyEpLnn5neidVx8fhI8H9XGBeJ8uga7szQ==
X-Received: by 2002:a05:6820:2614:b0:5c4:c70:281f with SMTP id
 006d021491bc7-5d5b430b3a2mr2395545eaf.7.1721929617004; 
 Thu, 25 Jul 2024 10:46:57 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6751:f2ec:fdb9:323e])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-70930777fe0sm377171a34.56.2024.07.25.10.46.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jul 2024 10:46:56 -0700 (PDT)
Date: Thu, 25 Jul 2024 12:46:54 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <a41fda2f-b525-405b-8ab3-4f2a521eee4d@suswa.mountain>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
 <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
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

On Thu, Jul 25, 2024 at 10:58:08AM -0500, Dan Carpenter wrote:
> On Thu, Jul 25, 2024 at 08:48:35AM +0100, Tvrtko Ursulin wrote:
> > 
> > Hi,
> > 
> > On 12/07/2024 22:41, Jonathan Cavitt wrote:
> > > Prevent a NULL pointer access in intel_memory_regions_hw_probe.
> > 
> > For future reference please include some impact assessment in patches tagged
> > as fixes. Makes maintainers job, and even anyone's who tries to backport
> > stuff to stable at some future date, much easier if it is known how
> > important is the fix and in what circumstances can the problem it is fixing
> > trigger.
> > 
> 
> As someone doing backport work, I think this patch is fine.  Everyone
> knows the impact of a NULL dereference in probe().
> 
> I guess with patches that add NULL dereferences, the trick is

s/dereferences/checks/

> understanding when people are adding NULL checks to make a static
> checker happy or when it's a real bug.

regards,
dan carpenter

