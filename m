Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A18514A16B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 11:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E10A6EAB7;
	Mon, 27 Jan 2020 10:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11F86EAB7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 10:05:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 02:05:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="221689873"
Received: from jpanina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 02:04:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200124230656.687503-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200124230656.687503-1-chris@chris-wilson.co.uk>
Date: Mon, 27 Jan 2020 12:05:00 +0200
Message-ID: <87sgk1b4fn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove 'prefault_disable' modparam
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 24 Jan 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> The 'prefault_disable' modparam was used by IGT to prevent a few
> prefaulting operations to make fault handling under struct_mutex more
> prominent. With the removal of struct_mutex, this is not as important
> any more and we have almost completely stopped using the parameter. The
> remaining use in execbuf is now immaterial and can be dropped without
> affecting coverage.

I'll eagerly ack the removal of almost any module parameter!

Acked-by: Jani Nikula <jani.nikula@intel.com>

> We must re-address the idea of fault injection though.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Antonio Argenziano <antonio.argenziano@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ---
>  drivers/gpu/drm/i915/i915_params.c             | 4 ----
>  drivers/gpu/drm/i915/i915_params.h             | 1 -
>  3 files changed, 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 60c984e10c4a..358141e1593c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1643,9 +1643,6 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
>  	const unsigned int count = eb->buffer_count;
>  	unsigned int i;
>  
> -	if (unlikely(i915_modparams.prefault_disable))
> -		return 0;
> -
>  	for (i = 0; i < count; i++) {
>  		int err;
>  
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 9c8257cf88d0..add00ec1f787 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -103,10 +103,6 @@ i915_param_named(fastboot, int, 0600,
>  	"(0=disabled, 1=enabled) "
>  	"Default: -1 (use per-chip default)");
>  
> -i915_param_named_unsafe(prefault_disable, bool, 0600,
> -	"Disable page prefaulting for pread/pwrite/reloc (default:false). "
> -	"For developers only.");
> -
>  i915_param_named_unsafe(load_detect_test, bool, 0600,
>  	"Force-enable the VGA load detect code for testing (default:false). "
>  	"For developers only.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index ef4069645cb8..cb16410c2ada 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -71,7 +71,6 @@ struct drm_printer;
>  	param(unsigned long, fake_lmem_start, 0, 0400) \
>  	/* leave bools at the end to not create holes */ \
>  	param(bool, enable_hangcheck, true, 0600) \
> -	param(bool, prefault_disable, false, 0600) \
>  	param(bool, load_detect_test, false, 0600) \
>  	param(bool, force_reset_modeset_test, false, 0600) \
>  	param(bool, error_capture, true, 0600) \

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
