Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899E99C00FD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:20:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEF610E7C6;
	Thu,  7 Nov 2024 09:20:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SpTJx74s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF09310E7C6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971199; x=1762507199;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zbgm8K/g8QADSRo1pKK2g7fCF0MlIBpZ8Z4cTuF9gSI=;
 b=SpTJx74sQfV3JKS5XxhqOjjOzf1tPupyKhzjEtMLKFsNF9iJRYzQ4nkO
 bl57ZoFEU6GdiSZdhWXsj5MkAsr/noJ9tfBkPfAcUx1wo3kmIdh9BIoFg
 VGzQ43l+chIdIZ5sbU2FrFJa07RIoJ8qD3hFQhO/GvntEu+vdd8k6ByqJ
 is5CGTlNrp0jK7xUiWsNgJIZdikeeRm+sIk+vOMd2qj3YI20DPDyXpd4a
 08p3Zd6Dl4xlCATVshSkqN/75K2svZAyyKNavIy+xfGQwWAy7UG2EQZFO
 8Q602Emgac5FJTalIIeQUbl4WPoAtQ9gZKe8aKS1VajXXBqcPpWzarXoO Q==;
X-CSE-ConnectionGUID: PSugMb/2RKChENJppqn5Ug==
X-CSE-MsgGUID: SrUZDOLqTtGoRArYrGCi0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42182343"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="42182343"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:19:59 -0800
X-CSE-ConnectionGUID: VK1Nx9I0RbanotA1cvIiGQ==
X-CSE-MsgGUID: cDmAY4zSTK2jmtY9PRFeaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85344956"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:19:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/8] drm/i915/pps: Spell out the eDP spec power
 sequencing delays a bit more clearly
In-Reply-To: <20241106215859.25446-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-6-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:19:54 +0200
Message-ID: <878qtvflj9.fsf@intel.com>
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We determine the "spec" eDP power sequencing delays
> by refercing some max values from the eDP spec. Write

*referencing

> out each number from the spec explicitly instead
> of precomputing the final number (that's the job of
> the computer). Makes it a bit easier to see what the
> supposed spec defined numbers actually are.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index ed52f84d4cf3..6946ba0004eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1512,11 +1512,11 @@ static void pps_init_delays_spec(struct intel_dp =
*intel_dp,
>=20=20
>  	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
>  	 * our hw here, which are all in 100usec. */
> -	spec->power_up =3D 210 * 10; /* T1+T3 */
> +	spec->power_up =3D (10 + 200) * 10; /* T1+T3 */
>  	spec->backlight_on =3D 50 * 10; /* no limit for T8, use T7 instead */
>  	spec->backlight_off =3D 50 * 10; /* no limit for T9, make it symmetric =
with T8 */
>  	spec->power_down =3D 500 * 10; /* T10 */
> -	spec->power_cycle =3D 510 * 10; /* T11+T12 */
> +	spec->power_cycle =3D (10 + 500) * 10; /* T11+T12 */
>=20=20
>  	intel_pps_dump_state(intel_dp, "spec", spec);
>  }

--=20
Jani Nikula, Intel
