Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VU+gCGBiKmoqogMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:23:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73466F592
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:23:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VdUSLnbl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E3010ED12;
	Thu, 11 Jun 2026 07:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FEB10ED12;
 Thu, 11 Jun 2026 07:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781162589; x=1812698589;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aOOC6jxz3YWHIrcQ93NdlVgLbP0lok3VYw/wv6N1wUo=;
 b=VdUSLnbljQ9+tgDtciZKYKa7s9n+hrowMl3Wqk7/tF+wNmw2VZMfTLYr
 R6olCAXT9uCll1nTrIPY/4MA7XQPyzfAXp9Un3464e6sDQa2QqXXQFCh4
 GaPUFOtf9PKchbDgWyMLuJY1j2obo7g2LXzEfCP7FIWfGVTzZv0ah/qQq
 hEp0NDjKF7GKb9qC4UqRJiefKpeqUpQTw6Gc8nNLaNg2l1e/WlnCjgITy
 yV0XgmjQmQ5iNlf9hbT0Pq1DzOqqODfyYJJjeX+AVu52UHwkZRYpIi/ru
 8u8w+I4RbRtwMHu7PdQi3NlA85sSGuFbTXla6eEIm68n+yNLaQN4dMxC9 w==;
X-CSE-ConnectionGUID: NgOUuS4rQt+2iqYg5oL7Jw==
X-CSE-MsgGUID: F+6iXOd8QUCQwh81GqAtoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92534419"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="92534419"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:23:08 -0700
X-CSE-ConnectionGUID: kUMg9+/xSG6Y1XuEvgMRvw==
X-CSE-MsgGUID: m97reF5ATfCvvcIeM4K4Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="251497801"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:23:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/14] drm/i915/cdclk: Do the DG2 CDCLK/pipe power well
 notify properly
In-Reply-To: <20260610170652.5320-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-4-ville.syrjala@linux.intel.com>
Date: Thu, 11 Jun 2026 10:23:04 +0300
Message-ID: <6e8c4c167a95ece9c5713285369f686d67813327@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C73466F592

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The pcode post notufy needs to happen after the CDCLK has been

*notify

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> changed, not before. Also move the pre_notify call a bit for the
> sake of symmetry.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 9718062d8d6c..d60b3369b4d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2796,9 +2796,6 @@ intel_set_cdclk_pre_plane_update(struct intel_atomi=
c_state *state)
>  				 &new_cdclk_state->actual))
>  		return;
>=20=20
> -	if (display->platform.dg2)
> -		intel_cdclk_pcode_pre_notify(state);
> -
>  	if (new_cdclk_state->disable_pipes) {
>  		cdclk_config =3D new_cdclk_state->actual;
>  		pipe =3D INVALID_PIPE;
> @@ -2823,6 +2820,9 @@ intel_set_cdclk_pre_plane_update(struct intel_atomi=
c_state *state)
>=20=20
>  	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
>=20=20
> +	if (display->platform.dg2)
> +		intel_cdclk_pcode_pre_notify(state);
> +
>  	intel_set_cdclk(display, &cdclk_config, pipe,
>  			"Pre changing CDCLK to");
>  }
> @@ -2851,9 +2851,6 @@ intel_set_cdclk_post_plane_update(struct intel_atom=
ic_state *state)
>  				 &new_cdclk_state->actual))
>  		return;
>=20=20
> -	if (display->platform.dg2)
> -		intel_cdclk_pcode_post_notify(state);
> -
>  	if (!new_cdclk_state->disable_pipes &&
>  	    new_cdclk_state->actual.cdclk < old_cdclk_state->actual.cdclk)
>  		pipe =3D new_cdclk_state->pipe;
> @@ -2864,6 +2861,9 @@ intel_set_cdclk_post_plane_update(struct intel_atom=
ic_state *state)
>=20=20
>  	intel_set_cdclk(display, &new_cdclk_state->actual, pipe,
>  			"Post changing CDCLK to");
> +
> +	if (display->platform.dg2)
> +		intel_cdclk_pcode_post_notify(state);
>  }
>=20=20
>  /* pixels per CDCLK */

--=20
Jani Nikula, Intel
