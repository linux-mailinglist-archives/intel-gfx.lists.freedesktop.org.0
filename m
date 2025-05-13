Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6C7AB549F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7205410E58A;
	Tue, 13 May 2025 12:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SgwJx/0c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A4810E58A;
 Tue, 13 May 2025 12:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138998; x=1778674998;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=htlM28/u2CtNijctzK5wS8oMkr6YvXcYrRHfAkimwUQ=;
 b=SgwJx/0cpaDfrg3E0KcKZWmUQXlrBwbmBH3hc1TILkgwLfPQet9MS++u
 8hbhKK/alHFocl2X22gv0lAJ/CFXoISdeChaudpFAB2Hfx2hlu2HIA75y
 t/PxQpEcCzM7KSyaE2xJ1wRHut/gAyHzU85YXagj8AR7x+1pg9pqYoMJr
 1F2a6/FIl4qXMbsCvnnx6ufH0jPPPEHPuiC9lvGE+WvJ7fg/8Tb8QVNg9
 3gJr/zRnNMdL6hiWHJr+PxGhE4+dZPTO2h3s7uwswqaaqLVLNqRVDwFEU
 2wkdgPy14cQluvYxlj5V4gz+GL6QD3HCSNNmsSUICflG3jGjKMbbnZRiQ w==;
X-CSE-ConnectionGUID: ftqiw/pTTQC8qiv+bnhP8w==
X-CSE-MsgGUID: csk6utHhRd6MGE39312z5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60380242"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="60380242"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:23:17 -0700
X-CSE-ConnectionGUID: bJZCFss/QRq0sv2EnnXg+g==
X-CSE-MsgGUID: FV/5W0wsSzmLf4YoDErA8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="142630453"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:23:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH v1 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
In-Reply-To: <20250513113526.2758433-2-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250513113526.2758433-1-michal.grzelak@intel.com>
 <20250513113526.2758433-2-michal.grzelak@intel.com>
Date: Tue, 13 May 2025 15:23:13 +0300
Message-ID: <87jz6kitse.fsf@intel.com>
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

On Tue, 13 May 2025, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> There is no reason in debugfs why PSR has been disabled. Add
> no_psr_reason field into struct intel_psr. Write the reason,
> e.g. PSR setup timing not met, into proper PSR debugfs file.
>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c          | 15 ++++++++-------
>  2 files changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 7415564d058a..7d598357a702 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1653,6 +1653,8 @@ struct intel_psr {
>  	bool link_ok;
>=20=20
>  	u8 active_non_psr_pipes;
> +
> +	const char *no_psr_reason;
>  };
>=20=20
>  struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index ccd66bbc72f7..f0fdff236fef 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1577,6 +1577,7 @@ static bool _psr_compute_config(struct intel_dp *in=
tel_dp,
>  	if (entry_setup_frames >=3D 0) {
>  		intel_dp->psr.entry_setup_frames =3D entry_setup_frames;
>  	} else {
> +		intel_dp->psr.no_psr_reason =3D "PSR setup timing not met";

What about other reasons?

Where is intel_dp->psr.no_psr_reason cleared? Now this remains set until
the end of time...

>  		drm_dbg_kms(display->drm,
>  			    "PSR condition failed: PSR setup timing not met\n");
>  		return false;
> @@ -3918,12 +3919,7 @@ static void intel_psr_print_mode(struct intel_dp *=
intel_dp,
>  				 struct seq_file *m)
>  {
>  	struct intel_psr *psr =3D &intel_dp->psr;
> -	const char *status, *mode, *region_et;
> -
> -	if (psr->enabled)
> -		status =3D " enabled";
> -	else
> -		status =3D "disabled";
> +	const char *mode, *region_et;
>=20=20
>  	if (psr->panel_replay_enabled && psr->sel_update_enabled)
>  		mode =3D "Panel Replay Selective Update";
> @@ -3941,7 +3937,12 @@ static void intel_psr_print_mode(struct intel_dp *=
intel_dp,
>  	else
>  		region_et =3D "";
>=20=20
> -	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
> +	if (psr->enabled) {
> +		seq_puts(m, "PSR enabled\n");
> +		seq_printf(m, "PSR mode: %s%s\n", mode, region_et);
> +	} else {
> +		seq_printf(m, "PSR disabled: %s\n", psr->no_psr_reason);

Since psr->no_psr_reason isn't set for all reasons, this may be NULL. It
won't oops, but it'll likely look like "PSR disabled: (null)".

BR,
Jani.

> +	}
>  }
>=20=20
>  static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_d=
p)

--=20
Jani Nikula, Intel
