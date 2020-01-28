Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCB114C247
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 22:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C62F6E132;
	Tue, 28 Jan 2020 21:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845F16E132
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 21:38:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 13:38:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="217754201"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 28 Jan 2020 13:37:59 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
 <20200128204318.4182039-4-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e52b348d-e9fb-9a6b-8b20-dd45e567fad1@intel.com>
Date: Tue, 28 Jan 2020 13:37:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200128204318.4182039-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Rename lrc.c to
 execlists_submission.c
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/28/20 12:43 PM, Chris Wilson wrote:
> We want to separate the utility functions for controlling the logical
> ring context from the execlists submission mechanism (which is an
> overgrown scheduler).
> 
> This is similar to Daniele's work to split up the files, but being
> selfish I wanted to base it after my own changes to intel_lrc.c petered
> out.
> 

Considering patch 5 as well, IMO we need gt/intel_execlists_submission.h 
as well, with the aim of not including that from any of the GuC files 
once we're done with adding the GuC version of the functions
I think it'd be easier to rename lrc.h to execlists_submission.h in this 
patch (grep says it's only included in 3 places), then split it in the 
next patch and use the appropriate one when you move the include from 
drv.h to the specific files.

Daniele

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                                   | 2 +-
>   .../drm/i915/gt/{intel_lrc.c => intel_execlists_submission.c}   | 2 +-
>   .../gpu/drm/i915/gt/{selftest_lrc.c => selftest_execlists.c}    | 0
>   3 files changed, 2 insertions(+), 2 deletions(-)
>   rename drivers/gpu/drm/i915/gt/{intel_lrc.c => intel_execlists_submission.c} (99%)
>   rename drivers/gpu/drm/i915/gt/{selftest_lrc.c => selftest_execlists.c} (100%)
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 3c88d7d8c764..58b0e86c71f7 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -86,6 +86,7 @@ gt-y += \
>   	gt/intel_engine_pm.o \
>   	gt/intel_engine_pool.o \
>   	gt/intel_engine_user.o \
> +	gt/intel_execlists_submission.o \
>   	gt/intel_ggtt.o \
>   	gt/intel_gt.o \
>   	gt/intel_gt_irq.o \
> @@ -94,7 +95,6 @@ gt-y += \
>   	gt/intel_gt_requests.o \
>   	gt/intel_gtt.o \
>   	gt/intel_llc.o \
> -	gt/intel_lrc.o \
>   	gt/intel_mocs.o \
>   	gt/intel_ppgtt.o \
>   	gt/intel_rc6.o \
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> similarity index 99%
> rename from drivers/gpu/drm/i915/gt/intel_lrc.c
> rename to drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 5b14f5bae68a..aa67561fee53 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -5290,5 +5290,5 @@ intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
>   }
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> -#include "selftest_lrc.c"
> +#include "selftest_execlists.c"
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> similarity index 100%
> rename from drivers/gpu/drm/i915/gt/selftest_lrc.c
> rename to drivers/gpu/drm/i915/gt/selftest_execlists.c
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
