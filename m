Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8679DFDED
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC6DD10E696;
	Mon,  2 Dec 2024 09:59:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="akYnkj0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802B010E69B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 09:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733133582; x=1764669582;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5szl3vYv8zLSVDNMN1tlvXdXNobn35nbzmTtcD9DZ44=;
 b=akYnkj0FVsnAZoc9xfSS8pBINmq0jlUJ1PXJLkt2/BHYo4qzPTSJ51Rt
 uFN9BxRTT0WewmoQVX8NrVElrhSfOyjXrHcDEwqhMXBdC0gxiJNzxMJhP
 tq+uWn+7CpmwlANjJHVpJ2qSpmA25da3T0gm+5VYN4Xw9/W4eOL9KHu8d
 9bizGwBrq2lCTSY8IfOPVsQSo9yz7vOp+biYKA1YsJ9J+Y1W70UnJSrua
 fzksqD4AFJ9anZQEjMUamkCYpZTMiMm9Ndr1EaMI6pBupqEMVZ7xDzhKC
 E0QkrP18l+Mk3l5naZC74zpGjlm/H/maq13fRnekwDEmHBoVqWBxMRr/a w==;
X-CSE-ConnectionGUID: dw76wS/9SL6Pw/A+J/vObA==
X-CSE-MsgGUID: n/khRGiBTEugntZwTY8HYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33425927"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="33425927"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:59:42 -0800
X-CSE-ConnectionGUID: noGgesLJTTimrQgwhNe9dw==
X-CSE-MsgGUID: kMXDGg+jSBu0+s36i33SZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="98172753"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.77])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:59:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Jocelyn Falempe
 <jfalempe@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BUILD: failure for drm/i915: Add
 drm_panic support
In-Reply-To: <173289848796.343649.11337293273413208343@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241129162232.7594-1-jfalempe@redhat.com>
 <173289848796.343649.11337293273413208343@b555e5b46a47>
Date: Mon, 02 Dec 2024 11:59:27 +0200
Message-ID: <87y10y5rsw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 29 Nov 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: Add drm_panic support
> URL   : https://patchwork.freedesktop.org/series/141935/
> State : failure
>
> == Summary ==
>
> Error: make failed
>   CALL    scripts/checksyscalls.sh
>   DESCEND objtool
>   INSTALL libsubcmd_headers
>   CC [M]  drivers/gpu/drm/xe/i915-display/intel_atomic_plane.o
> drivers/gpu/drm/i915/display/intel_atomic_plane.c:46:10: fatal error: gem/i915_gem_object.h: No such file or directory
>    46 | #include "gem/i915_gem_object.h"
>       |          ^~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.

The i915 display code is reused in xe with some Makefile magic. You'll
need to enable both i915 and xe configs when making changes.

You can't use gem/i915_gem_object.h from code that gets built for
xe. See intel_bo.[ch] in both i915 and xe for abstraction.

BR,
Jani.



> make[6]: *** [drivers/gpu/drm/xe/Makefile:165: drivers/gpu/drm/xe/i915-display/intel_atomic_plane.o] Error 1
> make[5]: *** [scripts/Makefile.build:478: drivers/gpu/drm/xe] Error 2
> make[4]: *** [scripts/Makefile.build:478: drivers/gpu/drm] Error 2
> make[3]: *** [scripts/Makefile.build:478: drivers/gpu] Error 2
> make[2]: *** [scripts/Makefile.build:478: drivers] Error 2
> make[1]: *** [/home/kbuild2/kernel/Makefile:1936: .] Error 2
> make: *** [Makefile:224: __sub-make] Error 2
> Build failed, no error log produced
>
>

-- 
Jani Nikula, Intel
