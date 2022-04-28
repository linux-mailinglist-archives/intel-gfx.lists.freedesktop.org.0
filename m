Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BD2513D07
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 23:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4DCC10E13A;
	Thu, 28 Apr 2022 21:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6392D10E13A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 21:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651180111; x=1682716111;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MH/JTUBGxc5WLyxxr711hc9te5Lcs4pY9xunpm+21lo=;
 b=mDmZ+jlfvcnNgtXgxS0UGsDbwIJIB64LIRIGQsuk4em84P8xcfHfdGz8
 0Rio26BuWiAZGyICUH1K2kGwqYE3Bbe+rPzGizl7ZW6zP8yj5YixOnk1F
 hKcPp4/ib0ooZ5HfA2a0KZNQDS3LnLmeEtAL/RCB3tfXHQ2yRhItGlotZ
 G6jdRQyiR9C4D/+rP2w2AFQwY15CZspY91SU2xVGzYTeJ7R6SgMmXU8J4
 01nsJ8NyBnSNzJXbjEqEbky7tZpYvoaAAHUDyQ8x+NHBFVT0WmjKEJfwZ
 ggBfAB1BJ6dS11tT3XRYGERK/IgsexEoSTr2l34XOMNX5yvt+TMqxYT6A Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329367058"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="329367058"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="581643288"
Received: from jlcarlis-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.181.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:08:29 -0700
Date: Thu, 28 Apr 2022 14:08:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220428210829.oqy53lrlfw7zqgjz@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220428204011.3365653-1-lucas.demarchi@intel.com>
 <165117934888.29091.6332905304078261957@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <165117934888.29091.6332905304078261957@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciAg?=
 =?utf-8?q?series_starting_with_=5B1/2=5D_drm/i915/gvt=3A_Fix_missing_stat?=
 =?utf-8?q?ic?=
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 28, 2022 at 08:55:48PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [1/2] drm/i915/gvt: Fix missing static
>URL   : https://patchwork.freedesktop.org/series/103293/
>State : failure
>
>== Summary ==
>
>Error: make failed
>  CALL    scripts/checksyscalls.sh
>  CALL    scripts/atomic/check-atomics.sh
>  DESCEND objtool
>  CHK     include/generated/compile.h
>  CC [M]  drivers/gpu/drm/i915/gvt/handlers.o
>drivers/gpu/drm/i915/gvt/handlers.c:75:13: error: static declaration of ‘intel_gvt_match_device’ follows non-static declaration
> static bool intel_gvt_match_device(struct intel_gvt *gvt,
>             ^~~~~~~~~~~~~~~~~~~~~~
>In file included from drivers/gpu/drm/i915/gvt/gvt.h:42,
>                 from drivers/gpu/drm/i915/gvt/handlers.c:41:
>drivers/gpu/drm/i915/gvt/mmio.h:75:6: note: previous declaration of ‘intel_gvt_match_device’ was here
> bool intel_gvt_match_device(struct intel_gvt *gvt, unsigned long device);
>      ^~~~~~~~~~~~~~~~~~~~~~

it looks like CI tried to apply this to the wrong rev. It's probably
trying to apply it to the last one that it knows is buildable... which
means it never validates if something fixes the build?

I think it would be better to try applying to the latest drm-tip, and
fallback to latest known-buildable iff it fails.

Lucas De Marchi

>scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gvt/handlers.o' failed
>make[4]: *** [drivers/gpu/drm/i915/gvt/handlers.o] Error 1
>scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
>make[3]: *** [drivers/gpu/drm/i915] Error 2
>scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
>make[2]: *** [drivers/gpu/drm] Error 2
>scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
>make[1]: *** [drivers/gpu] Error 2
>Makefile:1834: recipe for target 'drivers' failed
>make: *** [drivers] Error 2
>
>
