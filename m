Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C74F12678B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 18:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9958C6E393;
	Thu, 19 Dec 2019 17:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808DD6E393
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 17:00:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19636197-1500050 for multiple; Thu, 19 Dec 2019 17:00:35 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191219155652.2666-3-jani.nikula@intel.com>
References: <20191219155652.2666-1-jani.nikula@intel.com>
 <20191219155652.2666-3-jani.nikula@intel.com>
Message-ID: <157677483329.6469.18250205597696895684@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Dec 2019 17:00:33 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: reimplement header test
 feature
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2019-12-19 15:56:52)
> From: Masahiro Yamada <yamada.masahiro@socionext.com>
> 
> I implemented a small build rule in drivers/gpu/drm/i915/Makefile
> without relying on the special header-test-y syntax that was removed in
> commit fcbb8461fd23 ("kbuild: remove header compile test").
> 
> I excluded some headers from the test coverage. I hope somebody
> intrested can take a closer look at them.
> 
> Dummy subdir Makefiles can be removed altogether as single target build
> use case is now covered by commit 394053f4a4b3 ("kbuild: make single
> targets work more correctly").
> 
> v2 by Jani:
> - add selftests/i915_perf_selftests.h to no-header-test
> - add .gitignore for *.hdrtest
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Whelp, I guess that explains why CI didn't tell me off for breaking the
self-contained headers. The pattern matching works, I didn't see any
residue after a make clean, and git status is not swamped with the
artifacts. Single object build still works. O=_build still works
(O=_build -j10 did not, hopefully that is not significant???)

Everything looks (mostly) in order,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
