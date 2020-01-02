Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8D312E4F6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 11:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60578896FA;
	Thu,  2 Jan 2020 10:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DE2896FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 10:30:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 02:30:20 -0800
X-IronPort-AV: E=Sophos;i="5.69,386,1571727600"; d="scan'208";a="221346159"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 02:30:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157677483329.6469.18250205597696895684@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191219155652.2666-1-jani.nikula@intel.com>
 <20191219155652.2666-3-jani.nikula@intel.com>
 <157677483329.6469.18250205597696895684@skylake-alporthouse-com>
Date: Thu, 02 Jan 2020 12:30:17 +0200
Message-ID: <87blrmtakm.fsf@intel.com>
MIME-Version: 1.0
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 19 Dec 2019, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2019-12-19 15:56:52)
>> From: Masahiro Yamada <yamada.masahiro@socionext.com>
>> 
>> I implemented a small build rule in drivers/gpu/drm/i915/Makefile
>> without relying on the special header-test-y syntax that was removed in
>> commit fcbb8461fd23 ("kbuild: remove header compile test").
>> 
>> I excluded some headers from the test coverage. I hope somebody
>> intrested can take a closer look at them.
>> 
>> Dummy subdir Makefiles can be removed altogether as single target build
>> use case is now covered by commit 394053f4a4b3 ("kbuild: make single
>> targets work more correctly").
>> 
>> v2 by Jani:
>> - add selftests/i915_perf_selftests.h to no-header-test
>> - add .gitignore for *.hdrtest
>> 
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Whelp, I guess that explains why CI didn't tell me off for breaking the
> self-contained headers. The pattern matching works, I didn't see any
> residue after a make clean, and git status is not swamped with the
> artifacts. Single object build still works. O=_build still works
> (O=_build -j10 did not, hopefully that is not significant???)

I couldn't reproduce any issues with parallel out-of-tree
builds. Fingers crossed.

> Everything looks (mostly) in order,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks, pushed.

BR,
Jani.


> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
