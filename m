Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F061D1D6D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 20:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB0A76EA93;
	Wed, 13 May 2020 18:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490BD6EA92;
 Wed, 13 May 2020 18:26:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21191037-1500050 for multiple; Wed, 13 May 2020 19:26:10 +0100
MIME-Version: 1.0
In-Reply-To: <20200513182340.3968668-1-natechancellor@gmail.com>
References: <20200513182340.3968668-1-natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158939436821.29850.17450210375327657946@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 13 May 2020 19:26:08 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove duplicate inline specifier
 on write_pte
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Nathan Chancellor (2020-05-13 19:23:40)
> When building with clang:
> 
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c:392:24: warning: duplicate
>  'inline' declaration specifier [-Wduplicate-decl-specifier]
>  declaration specifier [-Wduplicate-decl-specifier]
>  static __always_inline inline void
>                         ^
>  include/linux/compiler_types.h:138:16: note: expanded from macro
>  'inline'
>  #define inline inline __gnu_inline __inline_maybe_unused notrace
>                 ^
>  1 warning generated.
> 
> __always_inline is defined as 'inline __attribute__((__always_inline))'
> so we do not need to specify it twice.
> 
> Fixes: 84eac0c65940 ("drm/i915/gt: Force pte cacheline to main memory")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1024
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

I forgot to ping Mika about this,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
