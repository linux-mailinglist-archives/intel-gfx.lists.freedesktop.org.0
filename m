Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEK/Nmi+GWq0yggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 18:27:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F32605927
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 18:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566A411221C;
	Fri, 29 May 2026 16:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5jWiG6I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD0B11221B;
 Fri, 29 May 2026 16:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780072036; x=1811608036;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eQWUStQJ0Lpx2H6xIa60J7+cPq4YPu7iw4w1Jgh7aZ0=;
 b=X5jWiG6IV2YVLLG7NXh67P25dOB4N5du8qb+dI0lhNg0c+kwRZCUZvZW
 k/I51q2jpf9bp6wa5VDucgjg7I5kkvcJLF8xVP16BeUn1XsCewlmLgGmV
 ioojhwkZ2TFzsk3piqUFy+CQK7eDq74hIAJQKZf43O8tivQf5I1nonHbE
 TUYTSQzRY0yfnLXQclAcV+qE7SXnVnXBarlq+wvpc0m8Do/cdjdh7GxRD
 xfonfofLL0I2VG2bDuSJYq++faVs+iIEQGE/mRiJfdiE3phzq4n2qSsJJ
 TEA0BdqtIQLiZ7B3MaNWrt6waJw+xtiwXzOiDrGpwcZ5LHCl6pQwL0jEV w==;
X-CSE-ConnectionGUID: 3F4km18STMSK8cLaf8b0+Q==
X-CSE-MsgGUID: 3jaGaPJMQOayjGJynE97EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="91500282"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91500282"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 09:27:15 -0700
X-CSE-ConnectionGUID: bsL1IlOlRrGrfHvIGCMDyw==
X-CSE-MsgGUID: AyutOhirRJC9IYP/0t0DUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="273203135"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 09:27:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/de: Remove the 2 usec fast timeout
In-Reply-To: <20260529161147.17573-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260529161147.17573-1-ville.syrjala@linux.intel.com>
Date: Fri, 29 May 2026 19:27:10 +0300
Message-ID: <a531556bda2badc05babd67478a09bf0bde4c350@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 13F32605927
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently any "slow" wait will first try a "fast" wait
> with a 2 usec timeout, and then fall back to whatever
> timeout was specified originally. The "slow" wait will
> anyway start off with a mere 10 usec polling interval,
> so basically we can only save 8 usec with the "fast" wait
> (maybe a bit more given hrtimer setup costs etc.).
>
> I don't think we really do any operations in the display
> code where that kinds of 8 usec saving would be meaningful.
> So just get rid of the whole "fast" wait complication and
> go straight for the "slow" wait.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I think the whole fast/slow thing is just echoes from the old i915 wait
helpers.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.c | 40 ++++++-------------------
>  1 file changed, 9 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i9=
15/display/intel_de.c
> index 6daee9e82503..a7417905192d 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.c
> +++ b/drivers/gpu/drm/i915/display/intel_de.c
> @@ -9,11 +9,11 @@
>=20=20
>  #include "intel_de.h"
>=20=20
> -static int __intel_de_wait_for_register(struct intel_display *display,
> -					intel_reg_t reg, u32 mask, u32 value,
> -					unsigned int timeout_us,
> -					u32 (*read)(struct intel_display *display, intel_reg_t reg),
> -					u32 *out_val, bool is_atomic)
> +static int intel_de_wait_for_register(struct intel_display *display,
> +				      intel_reg_t reg, u32 mask, u32 value,
> +				      unsigned int timeout_us,
> +				      u32 (*read)(struct intel_display *display, intel_reg_t reg),
> +				      u32 *out_val, bool is_atomic)
>  {
>  	const ktime_t end =3D ktime_add_us(ktime_get_raw(), timeout_us);
>  	int wait_max =3D 1000;
> @@ -60,28 +60,6 @@ static int __intel_de_wait_for_register(struct intel_d=
isplay *display,
>  	return ret;
>  }
>=20=20
> -static int intel_de_wait_for_register(struct intel_display *display,
> -				      intel_reg_t reg, u32 mask, u32 value,
> -				      unsigned int fast_timeout_us,
> -				      unsigned int slow_timeout_us,
> -				      u32 (*read)(struct intel_display *display, intel_reg_t reg),
> -				      u32 *out_value, bool is_atomic)
> -{
> -	int ret =3D -EINVAL;
> -
> -	if (fast_timeout_us)
> -		ret =3D __intel_de_wait_for_register(display, reg, mask, value,
> -						   fast_timeout_us, read,
> -						   out_value, is_atomic);
> -
> -	if (ret && slow_timeout_us)
> -		ret =3D __intel_de_wait_for_register(display, reg, mask, value,
> -						   slow_timeout_us, read,
> -						   out_value, is_atomic);
> -
> -	return ret;
> -}
> -
>  int intel_de_wait_us(struct intel_display *display, intel_reg_t reg,
>  		     u32 mask, u32 value, unsigned int timeout_us,
>  		     u32 *out_value)
> @@ -91,7 +69,7 @@ int intel_de_wait_us(struct intel_display *display, int=
el_reg_t reg,
>  	intel_dmc_wl_get(display, reg);
>=20=20
>  	ret =3D intel_de_wait_for_register(display, reg, mask, value,
> -					 timeout_us, 0,
> +					 timeout_us,
>  					 intel_de_read,
>  					 out_value, false);
>=20=20
> @@ -109,7 +87,7 @@ int intel_de_wait_ms(struct intel_display *display, in=
tel_reg_t reg,
>  	intel_dmc_wl_get(display, reg);
>=20=20
>  	ret =3D intel_de_wait_for_register(display, reg, mask, value,
> -					 2, timeout_ms * 1000,
> +					 timeout_ms * 1000,
>  					 intel_de_read,
>  					 out_value, false);
>=20=20
> @@ -123,7 +101,7 @@ int intel_de_wait_fw_ms(struct intel_display *display=
, intel_reg_t reg,
>  			u32 *out_value)
>  {
>  	return intel_de_wait_for_register(display, reg, mask, value,
> -					  2, timeout_ms * 1000,
> +					  timeout_ms * 1000,
>  					  intel_de_read_fw,
>  					  out_value, false);
>  }
> @@ -133,7 +111,7 @@ int intel_de_wait_fw_us_atomic(struct intel_display *=
display, intel_reg_t reg,
>  			       u32 *out_value)
>  {
>  	return intel_de_wait_for_register(display, reg, mask, value,
> -					  timeout_us, 0,
> +					  timeout_us,
>  					  intel_de_read_fw,
>  					  out_value, true);
>  }

--=20
Jani Nikula, Intel
