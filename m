Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1F1C805DA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 13:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD5710E22C;
	Mon, 24 Nov 2025 12:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INOuCK8Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBF810E22C;
 Mon, 24 Nov 2025 12:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763986167; x=1795522167;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eW51BGH/AAzZfnpYBzFCb1eLGhx5wg0FzKsON8f0ryA=;
 b=INOuCK8ZmFUIa2koRRuyrC0ELu+K6HtyI1yoKmgUMZfm9OsHuTtnQXe/
 E6rLuiYHUxZeVHOs/Av5MwhbjlrWyE3ENMwZo/IjKaNix1yUAhVEMrq1l
 ZeVsf6y4INde19U4/FbtDUyW3alqpUXvdtll5G0+EqWCW0TL6id28JBXC
 CF34nXWV58LbgO7FsS3MpKA+w8iY7r+iCKsZV6qXk6ZSyfURyVF7QZOP7
 9SdqKhzvbhGwSaxuUR3RYQBJV28qyawInYushQBaQVitYAg3cFjaarGbv
 qaa6xkZpP48Z25txipih29RYHIIKRNZTdNbSES4PKZfTZkBg/HwXYCRb2 Q==;
X-CSE-ConnectionGUID: it7IaLI/RWiaUaH2ekz/yw==
X-CSE-MsgGUID: Dv0ULXJsS8SchR4+pW6e+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="66143433"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="66143433"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 04:09:26 -0800
X-CSE-ConnectionGUID: rq7x2TtrSAK3zcoRxJiUsw==
X-CSE-MsgGUID: Q6SMdDqiR3Seklumn0DLaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="215658896"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 04:09:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to
 polling read"
In-Reply-To: <20251119185310.10428-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
 <20251119185310.10428-3-ville.syrjala@linux.intel.com>
Date: Mon, 24 Nov 2025 14:09:22 +0200
Message-ID: <e690c30b58fa1343c7847716a01e9f0c57f58f72@intel.com>
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

On Wed, 19 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This reverts commit 5a9b0c7418448ed3766f61ba0a71d08f259c3181.
>
> The switch from AUX interrupts to pollign was very hand-wavy.
> Yes, there have been some situations in CI on a few platforms
> where the AUX hardware seemingly forgets to signal the timeout,
> but those have been happening after we switched to polling as
> well. So I don't think we have any conclusive evidence that
> polling actually helps here.
>
> Someone really should root cause the actual problem, and see
> if there is a proper workaround we could implemnt (eg. disabling
> clock gating/etc.). In the meantime just go back to using the
> interrupt for AUX completion.
>
> If the hardware fails to signal the timeout we will just hit
> the wait_event_timeout() software timeout instead. I suppose
> we could try to tune the software timeout to more closely
> match the expected hardware timeout. Might need to use
> wait_event_hrtimeout() or something to avoid jiffies
> granularity issues...
>
> The AUX polling is also a hinderance towards using poll_timeout_us()
> because we have a very long timeout, but would need a fairly short
> polling interval to keep AUX transfer reasonably fast. Someone would
> need to come up with good numbers in a somewhat scientific way.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 809799f63e32..d1a93e4a59b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_print.h>
>=20=20
>  #include "intel_de.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_dp.h"
> @@ -60,16 +61,17 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms =3D 10;
>  	u32 status;
> -	int ret;
> +	bool done;
>=20=20
> -	ret =3D intel_de_wait_ms(display, ch_ctl,
> -			       DP_AUX_CH_CTL_SEND_BUSY, 0,
> -			       timeout_ms, &status);
> +#define C (((status =3D intel_de_read_notrace(display, ch_ctl)) & DP_AUX=
_CH_CTL_SEND_BUSY) =3D=3D 0)
> +	done =3D wait_event_timeout(display->gmbus.wait_queue, C,
> +				  msecs_to_jiffies_timeout(timeout_ms));
>=20=20
> -	if (ret =3D=3D -ETIMEDOUT)
> +	if (!done)
>  		drm_err(display->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status);
> +#undef C
>=20=20
>  	return status;
>  }

--=20
Jani Nikula, Intel
