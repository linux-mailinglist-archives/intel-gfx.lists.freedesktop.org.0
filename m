Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D64CA17EDA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB8810E5AF;
	Tue, 21 Jan 2025 13:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bsNeLBt6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C75610E02F;
 Sat, 18 Jan 2025 17:10:02 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-4361c705434so21102725e9.3; 
 Sat, 18 Jan 2025 09:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737220201; x=1737825001; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3KlgTW8qoEnUZT7EjjZ/u9PK9WlkNroef5My8RmY27k=;
 b=bsNeLBt6BZnfTGU9pnfexUwHNYYnrGaNyXxjGDET2uMhcSmOsn4o8udQOE6v4QgwEO
 89j4n5zxIgbySvz/c0lk+kzA2b081wbndkUrHrIpPIM5/mLWw4r5pWcyXOx+chU/p8/K
 cnGwDmroWgyKbHwA3wU/jb20Au6n5KX/WLFbNrh3dXfDm8fggYx/3bpGL2vFcIub6ZYd
 Ft6Mx8Pg5srs3Boez74zZxKuShZzM5znrWgl+I7o+aYRy8tU8ABbyyOTItBy8ls32ZbV
 6q5yGqWpl860iKZm/lIGe/uF4sxhgulo6Jn6qqwh3+wOKgK85fhAbHkNI3F/XtPBfwf6
 V4Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737220201; x=1737825001;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3KlgTW8qoEnUZT7EjjZ/u9PK9WlkNroef5My8RmY27k=;
 b=qPsvsEHyjgoT25yo5wQILK3hu0aeU7hYbMAGMWtqhDXSosp2/5fo4relp4otqpBeju
 /8jMXzUOLPgIdXiVApEem5wSQSOCyWhg4y1JGzIDswYYSfP30hbDmMz9OlfhlLmnDkRv
 ZmP09wCgQEEvvqQKBrugNUrOPWJLJJaUpI7M31KXZ+8BtcPLTau8od8Vb6aWAxDuGwd7
 V56DHA9XeSMw/T9kTM4N6nGCVlmbr78ZnSUPcP3fQb+HVu4SqfgsQMTqCnQIWtoP6pSO
 h38/rCt+PCDt0Yrk9bfZetmWAqO56XZJFa4hkegvxNSj1h2KhiON3rkEjIq6yjrIqz2h
 CvOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4Y4TejthmKXW0eByh1/gkr1r8mAIeEP7qbRJqrhi2+u7xuEEi4p+RZ4u2wOzbJ4nXGl5U/wHM2I4=@lists.freedesktop.org,
 AJvYcCXF/MPuNoiNEXY1q2bL/N39024NL1SX0UOvGDqjzTyw/cgaRvn+bZKB1vuE6tkJ0jRsJ/wmKnRbIS8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxWsU0UJcFiduivLiPq1QJJWcFw2kDExve8yxF1K1J5XLbiviAi
 duXPFP7gVXjeKZrPgDIbzCaArauUkAJsIa4dPK7XQ0d0/9ox7fvB
X-Gm-Gg: ASbGncuCYPhwU0cjip9zbJ99fC70T1jHFiUWLkkXCjIGT7e6SwwR0F49OFBADMwi+bu
 AzPzA5k8Tr5ElZTGrVWMa9CZbsirgr7Bc94xe/I3fPpB9bb71o6moO0xOjhS5A6V0VKsy2bNLFt
 T9sSywGwP0aRouX/V3rAoUSsk56L/gNgHxfsibQBrJfbOU1wUzgEAUonLlgZJG2AWwFIgf3+U7D
 q69wOUjAp8LzRZBG8mjZ+6JP7p/gx0Cen3DwnzGQWIm+O0Zk5pZaWPT1WUHxZKmCLC0p3B1Vn6G
 mZdBARfpc1EIRxYow/FSc6B+R3R6TsA1
X-Google-Smtp-Source: AGHT+IHMW6aZx7u19ZQpXVb/KS9UCuBHquSRSELoo8MnVynv6LS9GzSLQvXkC5ETEtQhY9v53d8rGw==
X-Received: by 2002:a5d:6d86:0:b0:385:df6b:7ef6 with SMTP id
 ffacd0b85a97d-38bf57c94a2mr8056076f8f.51.1737220200795; 
 Sat, 18 Jan 2025 09:10:00 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-438904087cbsm75613495e9.3.2025.01.18.09.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2025 09:10:00 -0800 (PST)
Date: Sat, 18 Jan 2025 17:09:59 +0000
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
Subject: Re: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
Message-ID: <20250118170959.3aa56f4d@pumpkin>
In-Reply-To: <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
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

On Sat, 18 Jan 2025 08:13:06 -0800
Guenter Roeck <linux@roeck-us.net> wrote:

> Hi,
> 
> On Mon, Nov 18, 2024 at 07:13:31PM +0000, David Laight wrote:
> > Use BUILD_BUG_ON_MSG(statically_true(ulo > uhi), ...) for the sanity
> > check of the bounds in clamp().
> > Gives better error coverage and one less expansion of the arguments.
> > 
> > Signed-off-by: David Laight <david.laight@aculab.com>  
> 
> This patch triggers a build error when trying to build parisc:allmodconfig.
> See error message and bisect log below.
> 
> I don't think there is anything wrong with the patch. The underlying
> problem seems to be that parisc:allmodconfig enables CONFIG_DRM_XE which
> tries to build the affected file even though CONFIG_DRM_I915 is not
> enabled/supported on parisc.

This has appeared before.
Any idea which inlined copy of scale() is causing the problem.
On the face of it they all look ok.

If you can reproduce it maybe try commenting out some of the calls.

	David

> 
> Copying XE maintainers for feedback/advice.
> 
> Thanks,
> Guenter
> 
> ---
> Building parisc:allmodconfig ... failed
> --------------
> Error log:
> In file included from <command-line>:
> drivers/gpu/drm/i915/display/intel_backlight.c: In function 'scale':
> include/linux/compiler_types.h:542:45: error: call to '__compiletime_assert_415' declared with attribute error: clamp() low limit source_min greater than high limit source_max
>   542 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>       |                                             ^
> include/linux/compiler_types.h:523:25: note: in definition of macro '__compiletime_assert'
>   523 |                         prefix ## suffix();                             \
>       |                         ^~~~~~
> include/linux/compiler_types.h:542:9: note: in expansion of macro '_compiletime_assert'
>   542 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>       |         ^~~~~~~~~~~~~~~~~~~
> include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
>    39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>       |                                     ^~~~~~~~~~~~~~~~~~
> include/linux/minmax.h:188:9: note: in expansion of macro 'BUILD_BUG_ON_MSG'
>   188 |         BUILD_BUG_ON_MSG(statically_true(ulo > uhi),                            \
>       |         ^~~~~~~~~~~~~~~~
> include/linux/minmax.h:195:9: note: in expansion of macro '__clamp_once'
>   195 |         __clamp_once(type, val, lo, hi, __UNIQUE_ID(v_), __UNIQUE_ID(l_), __UNIQUE_ID(h_))
>       |         ^~~~~~~~~~~~
> include/linux/minmax.h:206:28: note: in expansion of macro '__careful_clamp'
>   206 | #define clamp(val, lo, hi) __careful_clamp(__auto_type, val, lo, hi)
>       |                            ^~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/display/intel_backlight.c:48:22: note: in expansion of macro 'clamp'
>    48 |         source_val = clamp(source_val, source_min, source_max);
>       |                      ^~~~~
> 
> ---
> # bad: [0907e7fb35756464aa34c35d6abb02998418164b] Add linux-next specific files for 20250117
> # good: [5bc55a333a2f7316b58edc7573e8e893f7acb532] Linux 6.13-rc7
> git bisect start 'HEAD' 'v6.13-rc7'
> # bad: [195cedf4deacf84167c32b866ceac1cf4a16df15] Merge branch 'main' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
> git bisect bad 195cedf4deacf84167c32b866ceac1cf4a16df15
> # bad: [e8c0711b153b0db806410d8b31ed23b590f4eab4] Merge branch 'xtensa-for-next' of git://github.com/jcmvbkbc/linux-xtensa.git
> git bisect bad e8c0711b153b0db806410d8b31ed23b590f4eab4
> # bad: [81d45722d699e594c66c150c8f7a0ec2e2bc9be6] Merge branch 'for-next/perf' of git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git
> git bisect bad 81d45722d699e594c66c150c8f7a0ec2e2bc9be6
> # bad: [7acb844a672defb15cf202a501815ec22c68c800] foo
> git bisect bad 7acb844a672defb15cf202a501815ec22c68c800
> # good: [fb2368075b135f174264071b851330649d55f9d0] mm/damon/core: add damos_filter->allow field
> git bisect good fb2368075b135f174264071b851330649d55f9d0
> # bad: [fc83c501e385753c90db7316faf9fd4158caaa96] minmax.h: remove some #defines that are only expanded once
> git bisect bad fc83c501e385753c90db7316faf9fd4158caaa96
> # good: [b04d305df1171448df5e87802c4d1f1022cc5784] ocfs2: use a folio in ocfs2_map_and_dirty_page()
> git bisect good b04d305df1171448df5e87802c4d1f1022cc5784
> # good: [7e01619507058f90ab603acec482951f3c452aaa] kthread: correct comments before kthread_queue_work()
> git bisect good 7e01619507058f90ab603acec482951f3c452aaa
> # good: [21b510a64c223707caa6db6176128779f0806a73] nilfs2: correct return value kernel-doc descriptions for ioctl functions
> git bisect good 21b510a64c223707caa6db6176128779f0806a73
> # good: [6afb87f23458f2d4e4334ee5a4efb8b0d07af68b] nilfs2: handle errors that nilfs_prepare_chunk() may return
> git bisect good 6afb87f23458f2d4e4334ee5a4efb8b0d07af68b
> # good: [8f6d46fed0bad163e5146fea1fdff150039235b2] minmax.h: reduce the #define expansion of min(), max() and clamp()
> git bisect good 8f6d46fed0bad163e5146fea1fdff150039235b2
> # bad: [7a70c678548d71e609b95dbddf2d411a02d13b54] minmax.h: move all the clamp() definitions after the min/max() ones
> git bisect bad 7a70c678548d71e609b95dbddf2d411a02d13b54
> # bad: [37f375aab0c585388b90d1af6968454fc2769cb9] minmax.h: use BUILD_BUG_ON_MSG() for the lo < hi test in clamp()
> git bisect bad 37f375aab0c585388b90d1af6968454fc2769cb9
> # first bad commit: [37f375aab0c585388b90d1af6968454fc2769cb9] minmax.h: use BUILD_BUG_ON_MSG() for the lo < hi test in clamp()
> 
> 

