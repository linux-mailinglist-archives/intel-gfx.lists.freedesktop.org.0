Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FD5A15DF5
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 17:13:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C4410E298;
	Sat, 18 Jan 2025 16:13:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NLSg3yX3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D875910E298;
 Sat, 18 Jan 2025 16:13:08 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-21680814d42so51948375ad.2; 
 Sat, 18 Jan 2025 08:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737216788; x=1737821588; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=PRxl7tw1tBVTf8wfl2sTflbbSC/aCmrPpnmfRo4YyNE=;
 b=NLSg3yX3sOFJi1lZfsjbQE0zHAD+Tchi4qB4JTIQ+xtX2vDWocStdnrH3MCj/At8+q
 dOtlSEzmTSw7AZ07acsrcLVa1IGil8nCIvTFRhEwV6QXS+t1ZghQzZ2erijPTT6B1Caf
 lXaqor2cZGF771l/9Zl3uln1zAlTHm1KkBFDVCgBFd5zGAd1K36rcarb48Py+TAODD2b
 EXrq/Jh4j/RyRHYxNAuRu5RevTQO6U19jJKELHw7jA9xMYvI57ZMv0QIk0Jq+K3/Q0rX
 rbzHhIrd2ZrrilQkqbjxiYQZbNMraa/XNWY7+PAc57LerFhrVlUGWcaQpp+5ZjJSREXv
 CpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737216788; x=1737821588;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PRxl7tw1tBVTf8wfl2sTflbbSC/aCmrPpnmfRo4YyNE=;
 b=wC7pp/mLt2MKaXIa84ibPItPvtXB5Y5m/kqMsYO/x4QEiQ4NmiNdow9O1YHVBSEOip
 oJSH8rh4Z5jMo/HDapbseMgccNNXAan7WcgOrzVMISDXUFru5TbhCdI/CkmNJ19Mv+AI
 W0Vcvjze/tVFsyWjy7iweM6TDz62zNjTzdq8IMqm8ii/Z7EjL1X6me8WuMPODLwGQOGy
 rd3wa8CAjC40wLm1ouEBKy1LyQdpjdLAvMVgXOcb+Mk6sZOLRPM6N+ZqbZIef9B4VFUt
 TeQdhrL7qcU/mgckPSyCRrZ2eurVcIYNwQ6PjBl6/ky3LPX+FM/fl8SuD2hpcMckZkGO
 anNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgM6Ea5udaKVqTspnn7maij/5oINQTNz5D6BtjpoG9Ggb/dy+JjfJBWpCFcEvKrLxUNo4qvPQg3bo=@lists.freedesktop.org,
 AJvYcCXvwZcbYbI0hQuS4v6E/7VpbVJ/A8abMP2mwmIxs73xeJFqaIv27160H72QA+ccUUyX38YaXPwzLwo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzwpMsqEDIjcotrnxBFOdax7AJY7jvp6ZDFahKSXHWihxqzSSCN
 sk22a+g1SE7/Yhn6nxAvlSM3kq09dDR6/PxUEdEoquRwd2HNmGmd
X-Gm-Gg: ASbGncsk3uyuCic6nb2pVA+bG8W5PlzqBpBAU6FBXa+aUcCDiSHvjcHadptPSnZGQ6F
 6bSDOakjMsq9yqQiW53lFRFpJc0sx0a0SiO2FzWFvq1nV7thryDAEQbTsRkMsYRLWaeKeGc5GM0
 9J8xzWH33AcqzvlIotZ9UC+SvRYaS0dKo+INHoGQcQxNN9Wv/vAxW53z2BlobfEFrusYqrgPjLU
 27VtJPeFQfqyxj0cAQ/xzT+FSI2cak/OsruACCiItYxSYQesZNYciDmJ6U/VsNPMMKD3vg9ECJF
 9r0H69s=
X-Google-Smtp-Source: AGHT+IGccmzskmYB9AUwNl5v5brzjltc2G9SiDMIOf8YUDLyCHNVVfV+jcvrChvPtP7dnXsTlgp1ow==
X-Received: by 2002:a05:6a00:4c94:b0:724:e75b:22d1 with SMTP id
 d2e1a72fcca58-72dafa800c4mr10673668b3a.16.1737216788407; 
 Sat, 18 Jan 2025 08:13:08 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72dab7f190fsm3916275b3a.26.2025.01.18.08.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2025 08:13:07 -0800 (PST)
Date: Sat, 18 Jan 2025 08:13:06 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: David Laight <David.Laight@aculab.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 'Arnd Bergmann' <arnd@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 'Jens Axboe' <axboe@kernel.dk>, 'Matthew Wilcox' <willy@infradead.org>,
 'Christoph Hellwig' <hch@infradead.org>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 'Andy Shevchenko' <andriy.shevchenko@linux.intel.com>,
 'Dan Carpenter' <dan.carpenter@linaro.org>,
 "'Jason A . Donenfeld'" <Jason@zx2c4.com>,
 "'pedro.falcato@gmail.com'" <pedro.falcato@gmail.com>,
 'Mateusz Guzik' <mjguzik@gmail.com>,
 "'linux-mm@kvack.org'" <linux-mm@kvack.org>,
 'Lorenzo Stoakes' <lorenzo.stoakes@oracle.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
Message-ID: <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
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

Hi,

On Mon, Nov 18, 2024 at 07:13:31PM +0000, David Laight wrote:
> Use BUILD_BUG_ON_MSG(statically_true(ulo > uhi), ...) for the sanity
> check of the bounds in clamp().
> Gives better error coverage and one less expansion of the arguments.
> 
> Signed-off-by: David Laight <david.laight@aculab.com>

This patch triggers a build error when trying to build parisc:allmodconfig.
See error message and bisect log below.

I don't think there is anything wrong with the patch. The underlying
problem seems to be that parisc:allmodconfig enables CONFIG_DRM_XE which
tries to build the affected file even though CONFIG_DRM_I915 is not
enabled/supported on parisc.

Copying XE maintainers for feedback/advice.

Thanks,
Guenter

---
Building parisc:allmodconfig ... failed
--------------
Error log:
In file included from <command-line>:
drivers/gpu/drm/i915/display/intel_backlight.c: In function 'scale':
include/linux/compiler_types.h:542:45: error: call to '__compiletime_assert_415' declared with attribute error: clamp() low limit source_min greater than high limit source_max
  542 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
      |                                             ^
include/linux/compiler_types.h:523:25: note: in definition of macro '__compiletime_assert'
  523 |                         prefix ## suffix();                             \
      |                         ^~~~~~
include/linux/compiler_types.h:542:9: note: in expansion of macro '_compiletime_assert'
  542 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
      |         ^~~~~~~~~~~~~~~~~~~
include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
   39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
      |                                     ^~~~~~~~~~~~~~~~~~
include/linux/minmax.h:188:9: note: in expansion of macro 'BUILD_BUG_ON_MSG'
  188 |         BUILD_BUG_ON_MSG(statically_true(ulo > uhi),                            \
      |         ^~~~~~~~~~~~~~~~
include/linux/minmax.h:195:9: note: in expansion of macro '__clamp_once'
  195 |         __clamp_once(type, val, lo, hi, __UNIQUE_ID(v_), __UNIQUE_ID(l_), __UNIQUE_ID(h_))
      |         ^~~~~~~~~~~~
include/linux/minmax.h:206:28: note: in expansion of macro '__careful_clamp'
  206 | #define clamp(val, lo, hi) __careful_clamp(__auto_type, val, lo, hi)
      |                            ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_backlight.c:48:22: note: in expansion of macro 'clamp'
   48 |         source_val = clamp(source_val, source_min, source_max);
      |                      ^~~~~

---
# bad: [0907e7fb35756464aa34c35d6abb02998418164b] Add linux-next specific files for 20250117
# good: [5bc55a333a2f7316b58edc7573e8e893f7acb532] Linux 6.13-rc7
git bisect start 'HEAD' 'v6.13-rc7'
# bad: [195cedf4deacf84167c32b866ceac1cf4a16df15] Merge branch 'main' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
git bisect bad 195cedf4deacf84167c32b866ceac1cf4a16df15
# bad: [e8c0711b153b0db806410d8b31ed23b590f4eab4] Merge branch 'xtensa-for-next' of git://github.com/jcmvbkbc/linux-xtensa.git
git bisect bad e8c0711b153b0db806410d8b31ed23b590f4eab4
# bad: [81d45722d699e594c66c150c8f7a0ec2e2bc9be6] Merge branch 'for-next/perf' of git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git
git bisect bad 81d45722d699e594c66c150c8f7a0ec2e2bc9be6
# bad: [7acb844a672defb15cf202a501815ec22c68c800] foo
git bisect bad 7acb844a672defb15cf202a501815ec22c68c800
# good: [fb2368075b135f174264071b851330649d55f9d0] mm/damon/core: add damos_filter->allow field
git bisect good fb2368075b135f174264071b851330649d55f9d0
# bad: [fc83c501e385753c90db7316faf9fd4158caaa96] minmax.h: remove some #defines that are only expanded once
git bisect bad fc83c501e385753c90db7316faf9fd4158caaa96
# good: [b04d305df1171448df5e87802c4d1f1022cc5784] ocfs2: use a folio in ocfs2_map_and_dirty_page()
git bisect good b04d305df1171448df5e87802c4d1f1022cc5784
# good: [7e01619507058f90ab603acec482951f3c452aaa] kthread: correct comments before kthread_queue_work()
git bisect good 7e01619507058f90ab603acec482951f3c452aaa
# good: [21b510a64c223707caa6db6176128779f0806a73] nilfs2: correct return value kernel-doc descriptions for ioctl functions
git bisect good 21b510a64c223707caa6db6176128779f0806a73
# good: [6afb87f23458f2d4e4334ee5a4efb8b0d07af68b] nilfs2: handle errors that nilfs_prepare_chunk() may return
git bisect good 6afb87f23458f2d4e4334ee5a4efb8b0d07af68b
# good: [8f6d46fed0bad163e5146fea1fdff150039235b2] minmax.h: reduce the #define expansion of min(), max() and clamp()
git bisect good 8f6d46fed0bad163e5146fea1fdff150039235b2
# bad: [7a70c678548d71e609b95dbddf2d411a02d13b54] minmax.h: move all the clamp() definitions after the min/max() ones
git bisect bad 7a70c678548d71e609b95dbddf2d411a02d13b54
# bad: [37f375aab0c585388b90d1af6968454fc2769cb9] minmax.h: use BUILD_BUG_ON_MSG() for the lo < hi test in clamp()
git bisect bad 37f375aab0c585388b90d1af6968454fc2769cb9
# first bad commit: [37f375aab0c585388b90d1af6968454fc2769cb9] minmax.h: use BUILD_BUG_ON_MSG() for the lo < hi test in clamp()

