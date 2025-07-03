Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 418F1AF7364
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C5810E818;
	Thu,  3 Jul 2025 12:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fqB83EZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E8C10E046;
 Thu,  3 Jul 2025 12:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751544766; x=1783080766;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lK9/zIpcgyID7Oxf5HcNgeUdGwrFaIUNt/Dd6pBk1cA=;
 b=fqB83EZMC4fI2xhdbhfLFRrVL28RWgWMQVX3sGEf1Nu9IngrmZVqroSa
 NlqoyGJG4rbOvC+H0e6yEYSKXm07HdnwR/Pc2k9RQmUygWLvLVGsBYmxy
 gKRpLTTlU0voTQBVkWlEfp0/+xVgk+VFrBgcf5tqeP/VQMx7tkVFOf5JC
 fH1iNLIWqpU1L/zG8LsAboVag0l20LYBkWS3fTRHKvWNfRO9LWyoL8L/I
 UKPJ4EzpmzjPnk8RvNpTA9rxiyygiwltq/FR/kSgI+nHYUWQJXSbeLi99
 g1ZWOkr6reQOIB/DfX9QFCEGhwel9x9AcZkFAuqXfMYEUP5namXk+7eL1 g==;
X-CSE-ConnectionGUID: 2AFMjS1sRKWd7g+kL1ZVSA==
X-CSE-MsgGUID: GifMJ2YNRAmG0NsEWDPTgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53586820"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53586820"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:12:46 -0700
X-CSE-ConnectionGUID: zeqOJXspRR+2UdS7yHvWyA==
X-CSE-MsgGUID: GExY0AUjSSi5MGt6U7oBUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="160049879"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:12:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>, Imre Deak
 <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 4/4] DO-NOT-MERGE: drm/i915: Use poll_timeout_us()
In-Reply-To: <20250702223439.19752-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
 <20250702223439.19752-4-ville.syrjala@linux.intel.com>
Date: Thu, 03 Jul 2025 15:12:39 +0300
Message-ID: <9bca3e31879af4ba4abd9cb3c5bd89e80ec013f1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 03 Jul 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make sure poll_timeout_us() works by using it in i915
> instead of the custom __wait_for().
>
> Remaining difference between two:
>                | poll_timeout_us() | __wait_for()
> ---------------------------------------------------
> backoff        | fixed interval    | exponential
> usleep_range() | N/4+1 to N        | N to N*2
> clock          | MONOTONIC         | MONOTONIC_RAW
>
> Just a test hack for now, proper conversion probably
> needs actual thought.

Agreed.

I feel pretty strongly about converting everything to use
poll_timeout_us() and poll_timeout_us_atomic() directly. I think the
plethora of wait_for variants in i915_utils.h is more confusing than
helpful (even if some of them are supposed to be "simpler"
alternatives). I also think the separate atomic variant is better than
magically deciding that based on delay length.

I'm also not all that convinced about the exponential wait. Not all of
the wait_for versions use it, and then it needs to have a max wait
anyway (we have an issue with xe not having that [1]). I believe callers
can decide on a sleep length that is appropriate for the timeout, case
by case, and gut feeling says it's probably fine. ;)

BR,
Jani.


[1] https://lore.kernel.org/r/fe44d12c701c3d410de6e0ebc1f08bae2eec10a1@inte=
l.com


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.co=
m>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: David Laight <david.laight.linux@gmail.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Matt Wagantall <mattw@codeaurora.org>
> Cc: Dejin Zheng <zhengdejin5@gmail.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_utils.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i91=
5_utils.h
> index f7fb40cfdb70..8509d1de1901 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -32,6 +32,7 @@
>  #include <linux/types.h>
>  #include <linux/workqueue.h>
>  #include <linux/sched/clock.h>
> +#include <linux/iopoll.h>
>=20=20
>  #ifdef CONFIG_X86
>  #include <asm/hypervisor.h>
> @@ -238,7 +239,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestam=
p_jiffies, int to_wait_ms)
>   * timeout could be due to preemption or similar and we've never had a c=
hance to
>   * check the condition before the timeout.
>   */
> -#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
> +#define __wait_for_old(OP, COND, US, Wmin, Wmax) ({ \
>  	const ktime_t end__ =3D ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
>  	long wait__ =3D (Wmin); /* recommended min for usleep is 10 us */	\
>  	int ret__;							\
> @@ -263,6 +264,8 @@ wait_remaining_ms_from_jiffies(unsigned long timestam=
p_jiffies, int to_wait_ms)
>  	ret__;								\
>  })
>=20=20
> +#define __wait_for(OP, COND, US, Wmin, Wmax)				\
> +	poll_timeout_us(OP, COND, (Wmin), (US), false)
>  #define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin=
), \
>  						   (Wmax))
>  #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)

--=20
Jani Nikula, Intel
