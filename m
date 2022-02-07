Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B444AB905
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 11:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297A610F808;
	Mon,  7 Feb 2022 10:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2623C10F807
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 10:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644231118; x=1675767118;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=AKqWdo1pGTnNlbwQ/ob4GU1FZCB9iJf+sRnJM+dNA/Y=;
 b=Udi3sbaeZ42cUYQ8g0Fc25UtjP6fY6fIgYSD1b8f7SMO5sjEAD9RbqcC
 gUrCW89bW7wSStUXyVECpBXBynSOXss8jFG8ZVEoBfSa0KluXg9DIIU79
 +5XRT3rtoS/IiDyCMqwDCdb4emEl+Z5pv3oNi3NV/5QdIy07h6KaY1UHb
 1sYCgjESNNago5eyY7UEIQm4kW/hviq6oSae75jy3pTKElWyXGEWlLx//
 +nZcpIkbNXpNqmha9zSfJA3JAWIO2V6nA0psvnjUdiQljAwtLHk3o4a/h
 VRkIoyAf+1NKiJzKGli3Wi6ii0/irTACARRTBmkI4MqKfnrbFsI9/mHQY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="311989258"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="311989258"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 02:51:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="481546255"
Received: from conroyco-mobl2.ger.corp.intel.com (HELO [10.213.251.21])
 ([10.213.251.21])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 02:51:56 -0800
Message-ID: <7d4c2ea8-5740-b64c-6dad-e554d5863607@linux.intel.com>
Date: Mon, 7 Feb 2022 10:51:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20220202011136.1387951-1-vivek.kasireddy@intel.com>
 <164393912057.12040.4398452822283629082@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <164393912057.12040.4398452822283629082@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/mm=3A_Add_an_iterator_to_opti?=
 =?utf-8?q?mally_walk_over_holes_for_an_allocation_=28rev2=29?=
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


On 04/02/2022 01:45, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/mm: Add an iterator to optimally walk over holes for an allocation (rev2)
> URL   : https://patchwork.freedesktop.org/series/99597/
> State : failure
> 
> == Summary ==
> 
> CALL    scripts/checksyscalls.sh
>    CALL    scripts/atomic/check-atomics.sh
>    DESCEND objtool
>    CHK     include/generated/compile.h
>    CC [M]  drivers/gpu/drm/i915/i915_gem.o
> drivers/gpu/drm/i915/i915_gem.c: In function ‘i915_gem_object_fits_in_aperture’:
> drivers/gpu/drm/i915/i915_gem.c:944:2: error: implicit declaration of function ‘drm_mm_for_each_suitable_hole’; did you mean ‘drm_mm_for_each_best_hole’? [-Werror=implicit-function-declaration]
>    drm_mm_for_each_suitable_hole(hole, &ggtt->vm.mm, 0, ggtt->mappable_end,
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drm_mm_for_each_best_hole
> drivers/gpu/drm/i915/i915_gem.c:945:41: error: expected ‘;’ before ‘{’ token
>             fence_size, DRM_MM_INSERT_LOW) {
>                                           ^~
>                                           ;
> drivers/gpu/drm/i915/i915_gem.c:889:15: error: unused variable ‘count’ [-Werror=unused-variable]
>    unsigned int count = 0;
>                 ^~~~~
> drivers/gpu/drm/i915/i915_gem.c:887:35: error: unused variable ‘end’ [-Werror=unused-variable]
>    u64 hole_start, hole_end, start, end;
>                                     ^~~
> drivers/gpu/drm/i915/i915_gem.c:887:28: error: unused variable ‘start’ [-Werror=unused-variable]
>    u64 hole_start, hole_end, start, end;
>                              ^~~~~
> drivers/gpu/drm/i915/i915_gem.c:887:18: error: unused variable ‘hole_end’ [-Werror=unused-variable]
>    u64 hole_start, hole_end, start, end;
>                    ^~~~~~~~
> drivers/gpu/drm/i915/i915_gem.c:887:6: error: unused variable ‘hole_start’ [-Werror=unused-variable]
>    u64 hole_start, hole_end, start, end;
>        ^~~~~~~~~~
> drivers/gpu/drm/i915/i915_gem.c:964:1: error: control reaches end of non-void function [-Werror=return-type]
>   }
>   ^
> cc1: all warnings being treated as errors
> scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/i915_gem.o' failed
> make[4]: *** [drivers/gpu/drm/i915/i915_gem.o] Error 1
> scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1831: recipe for target 'drivers' failed
> make: *** [drivers] Error 2

Just post both patches to both intel-gfx and dri-devel as a series so 
patchwork picks it up correctly.

It is needed to give context to dri-devel folks anyway.

Regards,

Tvrtko


