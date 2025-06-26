Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715FDAEA63A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02BC10E8F9;
	Thu, 26 Jun 2025 19:16:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KuJV7JC0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E9710E8F9;
 Thu, 26 Jun 2025 19:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750965390; x=1782501390;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=haE0qvnG99mhnFUNOUdYdZY0XeE7dZ7XKgywU6Ksi4k=;
 b=KuJV7JC0GL4cjSzbzH/MScMB2nWghlFabf8esG5UQCzAZWZ+u5AjyDM8
 U6hdpG4ihhXUuMjj5W7UpQ21t90QI5fbi3fLZpo0zmwfNOXQuiA5laAXN
 9j2MlGa9vk2+PHYFooMQercBYjF3BO9nfjIuZ2+2lRaAkzOQe2QWb+3fF
 MiRydr/NBZzdpC10219rQBGoMMYJLNF+HYMFyb3ZsFjHi0wRdN4P8WhgW
 vqSRlLn0dbsdRMW0/GuVgDLpRPPKLRe7kB3j66V/VCu4foHsMOqrX1yqm
 60v6ugOoG2UG6lncxhSGDiW3mHnDQmtwJSfrTJqDy9+CSzP0MmcS4wAps w==;
X-CSE-ConnectionGUID: x/AMKXI+SH6N5owlO3CgaA==
X-CSE-MsgGUID: SgtoZ0otSZ+j20DDRy0WPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53421849"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53421849"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:10:58 -0700
X-CSE-ConnectionGUID: EVQGAaobR9eGnAsx/TruSw==
X-CSE-MsgGUID: XIyeqTylQGCOzHaYKdlZPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="158343423"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:10:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Subject: Re: [CI 3/6] drm/xe/pcode: add struct drm_device based interface
In-Reply-To: <gbisrh7ep2gn2fxv7xz4g4sy75qjpmcr5yqdx5atlab2oxevlx@j3zwx3k4o4x4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1750678991.git.jani.nikula@intel.com>
 <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
 <gbisrh7ep2gn2fxv7xz4g4sy75qjpmcr5yqdx5atlab2oxevlx@j3zwx3k4o4x4>
Date: Thu, 26 Jun 2025 22:10:52 +0300
Message-ID: <aeb594ace143a2ff8f53f389479c2b051f7b8b3a@intel.com>
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

On Thu, 26 Jun 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Jun 23, 2025 at 02:43:46PM +0300, Jani Nikula wrote:
>>In preparation for dropping the dependency on struct intel_uncore or
>>struct xe_tile from display code, add a struct drm_device based
>>interface to pcode.
>>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>
>
> So now we define intel_pcode_read() in both xe.ko and i915.ko.
>
> And intel_pcode is only called from display or
> drivers/gpu/drm/i915/soc/intel_dram.c (which afair xe is concerned is
> built under XE_DISPLAY only).
>
> We used to allow both i915 and xe as built-in as long as XE_DISPLAY is
> not set, but with this patch this is now broken.
>
> I think we have a few possible ways to handle it.
>
> 1) Revert. See https://lore.kernel.org/intel-xe/3667a992-a24b-4e49-aab2-5ca73f2c0a56@infradead.org/
>     
> 2) Move the common symbols to a separate module. We can name the module
> xe-i915-common or intel-display or something else. Then we keep moving
> symbols there until we can move the entire display. From the module
> point of view it's just another dependency that will get loaded.
> However, looking at the implementation, they are actually helpers that
> depend on the driver backing that device so it's not very
> straightforward at this point.
>
> 3) Forbid DRM_XE=y && DRM_I915=y (rather than based on DRM_XE_DISPLAY)
>
> 4) ifdef the helpers based on XE_DISPLAY... because if XE_DISPLAY is
> set, then XE can't be built-in.
>
> I have (3) ready based on an earlier patch and (4) is pretty easy. But
> I'd prefer (2) to move things forward. Or maybe you already have
> something else? Thoughts?

I was thinking of (4) for now. Or prefix them differently and have a
#define in a header. I saw the report, but didn't get around to it yet.

I really don't want an ad hoc separate module. I think it's a
distraction to the display module goal.

BR,
Jani.


-- 
Jani Nikula, Intel
