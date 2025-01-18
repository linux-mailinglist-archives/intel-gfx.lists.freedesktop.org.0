Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61420A17ED8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58CC10E599;
	Tue, 21 Jan 2025 13:31:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a7Bgf7OT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6C510E00D;
 Sat, 18 Jan 2025 21:19:25 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-385de59c1a0so1802132f8f.2; 
 Sat, 18 Jan 2025 13:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737235104; x=1737839904; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mpf4SfqnD25J/YTWoixYifvlss+fNguqHz/eTGg6pfY=;
 b=a7Bgf7OTFMHXcj2o8ionczUU6HIGFjeIv6efvsde50UCwdTjXqs4tiPAyhW58FnRhO
 IH3oXT71UlYaMnUBJ1ACIq0+ckncp2kakhnHJIM6C3F1tMD1OZFuFrIb9WZi1613H8Cx
 1VJloQ+a9V6MNIMkVmk1VTgYNDlCWT58o7VInz3Ee+xvpLlzhR+RqY1W2WwBJtQHY3CI
 80LA7pLny+ueLMmnkHJMg38YHHRjtzhvJWhWOpyuyChb1tT2XTGl8vKqaDWlq7PLq0zR
 EvZOGaDK8S7PBAqVZR/v/2FEIoqNLpXWltYOAXrvx02Z6bhCnzIY1JbJ9y+tnipw/Boc
 03IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737235104; x=1737839904;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mpf4SfqnD25J/YTWoixYifvlss+fNguqHz/eTGg6pfY=;
 b=phAkowmdNV6g2BUGo4Y1xL9gZZE8J1wZkjc1p7/Qhceg/qAoGEYGIYOZH3Csrh2Zq2
 pOkPcwb76EoSYbVUxwqtZN15WyPq1VUf29xgFtFl/6d+By+LoBR4spkRnCKPcFA0dsrW
 vH6/+0572ZEMwLcV6kFLY8XFX8p99LWe5MBPGRjv8NOIRd3p8ovZC1UvUSZSDio4dNb7
 8dfeM0EFfn7dcg8GiqDfA7m0f9/ydFJZJjetoUVQRa0i0qanX9oZQRjoKrkCWliXaM51
 KUp3pbCaORDeKQEukAWXFzITWrEfpHkBXmuQOKbLeEA+bj8XPyKw+Ab5hTSGkw8jha0h
 w0/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXqNa00Kt+8aEdSMACq6v2jkRz0dBViccoERscKjyfUQQ/U/5zEy/QrR1bsar+EaTYvSHCLiXbiuo=@lists.freedesktop.org,
 AJvYcCXvY3rjxACyYmwtDfwDQnVJH8RZppBvqcI6M3UN0M/9B4z2FyXjfKz494Oy/+k18PLk5lfCTJtBz/Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+MT2fgekTDHCV+odRqYP6fyRwxizZzny/a8NS8vj0t9dKHJNd
 1zjTAKyY6O9RuFGa7byVaWfIbR3b6WJE3tNSFvaYevtzxHuRHsdq
X-Gm-Gg: ASbGnctAKOMcD0jbK6q5JHEf1GtxkNxF2oGXu9EdbMzs2T5dbJjKLjmpfDcdY+LRva8
 neYATowGHJ+lZUpA5xCsLnanzNyygrVQjgncz6++QNaG91SqBDx9kwo8uZ7ww0a2oisEPj4DuhR
 QDs0Sib3BJQsZsH2oBNwpXT1rceeNVPXvcf/UixT0cy2jN3YUFR4kQPE08OXQ/LRZkxYEcH/vqv
 usVjsfu4Q3D4ZqqODKWzRL7STO60aA4uW4fsWGCUpDGysIK37Bthyo3u34Ts1lsKzYoSiRVf5lL
 Z41udKQz4j2uVgsuKx9YPv1dgUTPh+Dz
X-Google-Smtp-Source: AGHT+IHzC49qJigI15jYyMO47UhxKy6QnmDwTiLc/s5hoO6z29BxgyRIOihRyPzxw9V9nFo/UtDyAg==
X-Received: by 2002:adf:e84a:0:b0:385:f0c9:4b66 with SMTP id
 ffacd0b85a97d-38bf5686090mr5730089f8f.33.1737235104085; 
 Sat, 18 Jan 2025 13:18:24 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38bf32754dcsm6106637f8f.77.2025.01.18.13.18.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2025 13:18:23 -0800 (PST)
Date: Sat, 18 Jan 2025 21:18:21 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: David Laight <David.Laight@aculab.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, 'Arnd Bergmann' <arnd@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>, 'Jens
 Axboe' <axboe@kernel.dk>, 'Matthew Wilcox' <willy@infradead.org>,
 'Christoph Hellwig' <hch@infradead.org>, 'Andrew Morton'
 <akpm@linux-foundation.org>, 'Andy Shevchenko'
 <andriy.shevchenko@linux.intel.com>, 'Dan Carpenter'
 <dan.carpenter@linaro.org>, "'Jason A . Donenfeld'" <Jason@zx2c4.com>,
 "'pedro.falcato@gmail.com'" <pedro.falcato@gmail.com>, 'Mateusz Guzik'
 <mjguzik@gmail.com>, "'linux-mm@kvack.org'" <linux-mm@kvack.org>, 'Lorenzo
 Stoakes' <lorenzo.stoakes@oracle.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Buiild error in i915/xe
Message-ID: <20250118211821.7cb5140f@pumpkin>
In-Reply-To: <f36700c5-eb86-46c3-afd7-5d3ad67e0130@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <20250118180916.433bb73c@pumpkin>
 <f36700c5-eb86-46c3-afd7-5d3ad67e0130@roeck-us.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 21 Jan 2025 13:31:29 +0000
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

On Sat, 18 Jan 2025 10:36:11 -0800
Guenter Roeck <linux@roeck-us.net> wrote:

> On 1/18/25 10:09, David Laight wrote:
> > On Sat, 18 Jan 2025 09:49:21 -0800
> > Guenter Roeck <linux@roeck-us.net> wrote:
> >   
> >> On Sat, Jan 18, 2025 at 05:09:59PM +0000, David Laight wrote:  
> >>> On Sat, 18 Jan 2025 08:13:06 -0800
> >>> Guenter Roeck <linux@roeck-us.net> wrote:
> >>>      
> >>>> Hi,
> >>>>
> >>>> On Mon, Nov 18, 2024 at 07:13:31PM +0000, David Laight wrote:  
> >>>>> Use BUILD_BUG_ON_MSG(statically_true(ulo > uhi), ...) for the sanity
> >>>>> check of the bounds in clamp().
> >>>>> Gives better error coverage and one less expansion of the arguments.
> >>>>>
> >>>>> Signed-off-by: David Laight <david.laight@aculab.com>  
> >>>>
> >>>> This patch triggers a build error when trying to build parisc:allmodconfig.
> >>>> See error message and bisect log below.
> >>>>
> >>>> I don't think there is anything wrong with the patch. The underlying
> >>>> problem seems to be that parisc:allmodconfig enables CONFIG_DRM_XE which
> >>>> tries to build the affected file even though CONFIG_DRM_I915 is not
> >>>> enabled/supported on parisc.  
> >>>
> >>> This has appeared before.
> >>> Any idea which inlined copy of scale() is causing the problem.
> >>> On the face of it they all look ok.
> >>>
> >>> If you can reproduce it maybe try commenting out some of the calls.
> >>>      
> >>
> >> See diff below. All three changes are needed.
> >> No idea why the compiler would know that the values are invalid.  
> > 
> > Maybe it isn't even an inlining issue.
> > Perhaps that compiler just doesn't like the function ?
> > What happens without the 'static' (and an extra prototype)?
> >   
> 
> 
> You mean like that ?
> 
> -static u32 scale(u32 source_val,
> +
> +u32 scale(u32 source_val,
> +                u32 source_min, u32 source_max,
> +                u32 target_min, u32 target_max);
> +
> +u32 scale(u32 source_val,
>                   u32 source_min, u32 source_max,
>                   u32 target_min, u32 target_max)
> 
> It doesn't help. Worse, after that change the error is still reported
> even with the #if 0 elsewhere.

Yes - that means the compiler is 'objecting' to the scale() function itself.
(Without any regard for its callers.)
Which should make it easy to reproduce outside the kernel build.

I think Mat had a successful build with a different (older?) version of gcc for
parisc.

There must be something odd causing the problem - there will be other clamp()
calls in the build that don't generate the error.

Remember that lack of the error messages requires the compiler optimise away
some code - so if the optimisation is skipped the call could be generated
and the warning output (even if the call is optimised away later).

Perhaps there is some obscure interaction with the WARN() statements?

I don't have the required compiler (neither does godbolt).

	David 

> 
> Guenter
> 

