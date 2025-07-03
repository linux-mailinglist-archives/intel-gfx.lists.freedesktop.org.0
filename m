Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E6CAF731D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC3610E813;
	Thu,  3 Jul 2025 12:00:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="imuG8cRq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A91F10E813;
 Thu,  3 Jul 2025 12:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751544015; x=1783080015;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cWoqO8dP0CRW2IxKSMAX0+5QNvUesrrlUbCa6SMfYtk=;
 b=imuG8cRqfpZtTXYPt8PRHFYRnInm+Upt4GWUfdRa3wldjGwKaBb31ha/
 dmkoS30lgxsSy+eZPJbo/BnG+yfUQyDkxYIoRWqLRFG1/zkfUcqBPSG8N
 //Q7jtRwZtCL1/B/HuZD2FQLwPIS7rt1W2IIFx8nN5R0OT4jAKn+lpcpc
 V1twpM+e9j9joGTnsJ2o6Ny1ySm8b5dMwDKPwOlL35kSq7gdamu9g0XnH
 dSc4YBp7ktci/VHAVKGqcxng9Z+ZmzBeShAWEI8naOsOjCgrOfANJ3kxv
 mhkMCA3ptYahHqhJvRvVvakpOOlYyRnQ+z3Ym07rcUMFWEgHR8nWP/6O2 w==;
X-CSE-ConnectionGUID: csgpnzQPTXa0JdVAIRySfQ==
X-CSE-MsgGUID: 7P7fVucLTFSod0auP/YCIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="71303814"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="71303814"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:00:15 -0700
X-CSE-ConnectionGUID: 1lHp8tdaToiHdchfMpCdqg==
X-CSE-MsgGUID: 5Ta0bi1TS2i3XTqW3ZI10g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154479910"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:00:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>, Imre Deak
 <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] iopoll: Reorder the timeout handling in
 poll_timeout_us()
In-Reply-To: <20250702223439.19752-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
 <20250702223439.19752-3-ville.syrjala@linux.intel.com>
Date: Thu, 03 Jul 2025 15:00:07 +0300
Message-ID: <00600fbcc113777ef43b47f41e9c5f46aa701a83@intel.com>
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
> Currently poll_timeout_us() evaluates 'op' and 'cond' twice
> within the loop, once at the start, and a second time after
> the timeout check. While it's probably not a big deal to do
> it twice almost back to back, it does make the macro a bit messy.
>
> Simplify the implementation to evaluate the timeout at the
> very start, then follow up with 'op'/'cond', and finally
> check if the timeout did in fact happen or not.
>
> For good measure throw in a compiler barrier between the timeout
> and 'op'/'cond' evaluations to make sure the compiler can't reoder
> the operations (which could cause false positive timeouts).
> The similar i915 __wait_for() macro already has the barrier, though
> there it is between the 'op' and 'cond' evaluations, which seems
> like it could still allow 'op' and the timeout evaluations to get
> reordered incorrectly. I suppose the ktime_get() might itself act
> as a sufficient barrier here, but better safe than sorry I guess.
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  include/linux/iopoll.h | 24 +++++++++++-------------
>  1 file changed, 11 insertions(+), 13 deletions(-)
>
> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> index 69296e6adbf3..0e0940a60fdb 100644
> --- a/include/linux/iopoll.h
> +++ b/include/linux/iopoll.h
> @@ -41,18 +41,17 @@
>  	if ((sleep_before_op) && __sleep_us) \
>  		usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
>  	for (;;) { \
> +		bool __expired =3D __timeout_us && \
> +			ktime_compare(ktime_get(), __timeout) > 0; \
> +		/* guarantee 'op' and 'cond' are evaluated after timeout expired */ \
> +		barrier(); \
>  		op; \
>  		if (cond) { \
>  			___ret =3D 0; \
>  			break; \
>  		} \
> -		if (__timeout_us && \
> -		    ktime_compare(ktime_get(), __timeout) > 0) { \
> -			op; \
> -			if (cond) \
> -				___ret =3D 0; \
> -			else \
> -				___ret =3D -ETIMEDOUT; \
> +		if (__expired) { \
> +			___ret =3D -ETIMEDOUT; \
>  			break; \
>  		} \
>  		if (__sleep_us) \
> @@ -97,17 +96,16 @@
>  			__left_ns -=3D __delay_ns; \
>  	} \
>  	for (;;) { \
> +		bool __expired =3D __timeout_us && __left_ns < 0; \
> +		/* guarantee 'op' and 'cond' are evaluated after timeout expired */ \
> +		barrier(); \
>  		op; \
>  		if (cond) { \
>  			___ret =3D 0; \
>  			break; \
>  		} \
> -		if (__timeout_us && __left_ns < 0) { \
> -			op; \
> -			if (cond) \
> -				___ret =3D 0; \
> -			else \
> -				___ret =3D -ETIMEDOUT; \
> +		if (__expired) { \
> +			___ret =3D -ETIMEDOUT; \
>  			break; \
>  		} \
>  		if (__delay_us) { \

--=20
Jani Nikula, Intel
