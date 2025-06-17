Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6C2ADC763
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 12:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B871610E5B6;
	Tue, 17 Jun 2025 10:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZExNJEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717BF10E5AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750154522; x=1781690522;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2DWfqY0rfk3Gj+P7TFYVTmOpw6ZKSwurmM8Mz3ScwUo=;
 b=PZExNJEEk8JcR7ne4/5fwznpmkhriSLrI/z4wjDa/sNbn/JqIjwAaXMZ
 n0zaCWpfMR5UTA+yFPXBuBgPZ6pBl1niZV6zz9ufS2lvubggOPOnOguyt
 x6OvwgLrOtGcvbjFYmqZ9HuTBsDgGy/UQZeLn5N/1UauSAY936he3j3aX
 dGhBNpBFo6JVNibWiOWCYovS8OPf5dByQ5TcJ8hiqF6NzHSwS2x6rWqfp
 IjgTCds1o+QfHLfFt2PM3IN/kPLzgwS8TDixA2oFuzVSrmmnHhLEvfsRR
 gWKYyxS6LAJhrQds5EyzgKljZKlYIRFJIdtacNmVDUfXr50zHayHOiuwR Q==;
X-CSE-ConnectionGUID: jpnMXZ/eTDOXe3qPFUZtEQ==
X-CSE-MsgGUID: 2xbapAP0QjyV+OrA8L6hcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="56001886"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="56001886"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 03:02:00 -0700
X-CSE-ConnectionGUID: iRO1DnLoSN2QEC0rVaWT6Q==
X-CSE-MsgGUID: DEONhvpKQG2fQEH0pF/P0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="148718980"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 03:01:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com, andi.shyti@linux.intel.com,
 krzysztof.niemiec@intel.com, krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915: Add sanity check for relocation entry pointer
 in execbuffer
In-Reply-To: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
Date: Tue, 17 Jun 2025 13:01:54 +0300
Message-ID: <e95014e59bf175fec6d3b2b53422dcf4a5a5fdd9@intel.com>
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

On Mon, 16 Jun 2025, Sebastian Brzezinka <sebastian.brzezinka@intel.com> wrote:
> This patch adds a defensive check in `eb_relocate_entry()` to validate
> the relocation entry pointer before dereferencing it. It ensures the
> pointer is non-NULL and accessible from userspace using `access_ok()`.
>
> This prevents potential kernel crashes caused by invalid or non-canonical
> pointers passed from userspace.
>
> If the pointer is invalid, an error is logged and the
> function returns -EFAULT.
>
> The failure was observed on a Tiger Lake system while running the IGT
> test `igt@gem_exec_big@single`. An appropriate patch has also been
> submitted to fix the issue on the IGT side.

I don't know if the patch at hand is the right thing to do (I mean I
don't know that it *isn't* either), but some comments nonetheless.

>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>

Superfluous newline. Please keep the trailer lines together.

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index ca7e9216934a..8056dea0e656 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1427,6 +1427,12 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>  	struct eb_vma *target;
>  	int err;
>  
> +	/* Sanity check for non-canonical or NULL pointer */

Is this comment helpful to the reader?

> +	if (!reloc || !access_ok(reloc, sizeof(*reloc))) {
> +		DRM_ERROR("Invalid relocation entry pointer: %p\n", reloc);

drm_err() please.

> +		return -EFAULT;
> +	}
> +
>  	/* we've already hold a reference to all valid objects */
>  	target = eb_get_vma(eb, reloc->target_handle);
>  	if (unlikely(!target))

-- 
Jani Nikula, Intel
