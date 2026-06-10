Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HeRjIDygKWp9awMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:34:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D614C66BFB2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:34:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GMjrG234;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686D910E6BB;
	Wed, 10 Jun 2026 17:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D81410E6BB;
 Wed, 10 Jun 2026 17:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781112889; x=1812648889;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=auhw9EI7oQ6rZPhyf1GfeejMBPwGwywnR/8nYEmpe4s=;
 b=GMjrG234MeGE3ZTxdXqQPiwUESIjKKVsCtcH2kvlAeIQ3S3g88f1J5vQ
 kSkGo//f+kXOiWj3io0m+2qMCUiloXvvz9TFgXKwNMAd4vS4lODIGEdTc
 naiselEqVk7ofKL2Wd6cB4SVlWyZjyIhedhV0stHvZKoChMr1iYfRY24I
 1hAPYNi/dLNgZVdDNU3W+5FU/2DY3Z/7T5lVL1P9+KMQ9oO7olBIyFMAj
 wqXFFy89YKKIwOANI3Yn8uI7aRJus2txJ/KcE8fY8P/J/iiX7TfEzoHM2
 6dkwA+5tuJz9bzXPTbgYFxMNkH9BFjYsmkwsog/ykzjBaMw5szy4RO6O3 A==;
X-CSE-ConnectionGUID: rapsEzoFSO+pPzyDpls6zw==
X-CSE-MsgGUID: d6F0TZT3TCSy9yW/oa/POQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81958883"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81958883"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:34:49 -0700
X-CSE-ConnectionGUID: 3kDIXqIQSiedJfOZSLOaxg==
X-CSE-MsgGUID: tRNwtB40T4KQWt5hIb0k/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="276424493"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:34:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/14] drm/i915/dg2: s/intel_/dg2_/ for DG2 specific stuff
In-Reply-To: <20260610170652.5320-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-8-ville.syrjala@linux.intel.com>
Date: Wed, 10 Jun 2026 20:34:44 +0300
Message-ID: <28164f6d514abe35703c361ad953ad061d039b2f@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D614C66BFB2

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_pcode_*notify() are all DG2 specific code. Rename them
> to have a dg2_ namespace.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 31 ++++++++++------------
>  1 file changed, 14 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index bbf3603f889b..659c1c0e3432 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2575,19 +2575,16 @@ void intel_cdclk_dump_config(struct intel_display=
 *display,
>  		    cdclk_config->voltage_level);
>  }
>=20=20
> -static void intel_pcode_notify(struct intel_display *display,
> -			       u8 voltage_level,
> -			       u8 active_pipe_count,
> -			       u16 cdclk,
> -			       bool cdclk_update_valid,
> -			       bool pipe_count_update_valid)
> +static void dg2_cdclk_pcode_notify(struct intel_display *display,
> +				   u8 voltage_level,
> +				   u8 active_pipe_count,
> +				   u16 cdclk,
> +				   bool cdclk_update_valid,
> +				   bool pipe_count_update_valid)
>  {
>  	int ret;
>  	u32 update_mask =3D 0;
>=20=20
> -	if (!display->platform.dg2)
> -		return;
> -
>  	update_mask =3D DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, active_pipe_count, =
voltage_level);
>=20=20
>  	if (cdclk_update_valid)
> @@ -2672,7 +2669,7 @@ static bool dg2_power_well_count(struct intel_displ=
ay *display,
>  	return display->platform.dg2 ? hweight8(cdclk_state->active_pipes) : 0;
>  }
>=20=20
> -static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *stat=
e)
> +static void dg2_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_cdclk_state *old_cdclk_state =3D
> @@ -2715,11 +2712,11 @@ static void intel_cdclk_pcode_pre_notify(struct i=
ntel_atomic_state *state)
>  	if (update_pipe_count)
>  		num_active_pipes =3D dg2_power_well_count(display, new_cdclk_state);
>=20=20
> -	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
> -			   change_cdclk, update_pipe_count);
> +	dg2_cdclk_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
> +			       change_cdclk, update_pipe_count);
>  }
>=20=20
> -static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *sta=
te)
> +static void dg2_cdclk_pcode_post_notify(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_cdclk_state *new_cdclk_state =3D
> @@ -2754,8 +2751,8 @@ static void intel_cdclk_pcode_post_notify(struct in=
tel_atomic_state *state)
>  	if (update_pipe_count)
>  		num_active_pipes =3D dg2_power_well_count(display, new_cdclk_state);
>=20=20
> -	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
> -			   update_cdclk, update_pipe_count);
> +	dg2_cdclk_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
> +			       update_cdclk, update_pipe_count);
>  }
>=20=20
>  bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state)
> @@ -2821,7 +2818,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomi=
c_state *state)
>  	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
>=20=20
>  	if (display->platform.dg2)
> -		intel_cdclk_pcode_pre_notify(state);
> +		dg2_cdclk_pcode_pre_notify(state);
>=20=20
>  	intel_set_cdclk(display, &cdclk_config, pipe,
>  			"Pre changing CDCLK to");
> @@ -2865,7 +2862,7 @@ intel_set_cdclk_post_plane_update(struct intel_atom=
ic_state *state)
>  			"Post changing CDCLK to");
>=20=20
>  	if (display->platform.dg2)
> -		intel_cdclk_pcode_post_notify(state);
> +		dg2_cdclk_pcode_post_notify(state);
>  }
>=20=20
>  /* pixels per CDCLK */

--=20
Jani Nikula, Intel
