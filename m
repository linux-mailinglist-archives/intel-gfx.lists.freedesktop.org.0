Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MaO4M0hkKmqfogMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:31:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1C766F659
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:31:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=E+ijWLne;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC47710ED39;
	Thu, 11 Jun 2026 07:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467BA10ED44;
 Thu, 11 Jun 2026 07:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781163077; x=1812699077;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4NWAuzzNKDxar22TDAFGod8yzOr6C7LgdHcPhpwV7cw=;
 b=E+ijWLnewF56E8gmM0HIXl9EK8Ox+Qmp51iaEX7s0QFnJr0mWWi1bK4K
 RJrd9BC5aDXGd9XN0ShL7NhGpkIOatGBkmj29kdIM0LbO+nLxtD8jDmvB
 WYIyF0sWPkmXaw6SfIS5DfuYiVpP/DY6NqrfYlrmpH2kxvIqbhmJjhwE3
 I+J9gnsnOPjC0LyqjO7nSoAkE9PqHRvBIzMSUN54aRoYBr0yfmNu903d0
 tE6/HWE/PeYiR6OruXxt95H+wLLDAONEOSNPfZDCr6yQch1fJyAn5OsYm
 5JQMWtJEBMOt8SNglSF1tjZfjtB7+rKjmsFrvt5h6NH8MVsT5Gj3oP7cM g==;
X-CSE-ConnectionGUID: y1cxrff3SpuxU+I53dhDHQ==
X-CSE-MsgGUID: /z/x9yHkQ/mnnm6DIwgPDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85598090"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="85598090"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:31:17 -0700
X-CSE-ConnectionGUID: /VWgOp+7Q6OIU64uMxxhlw==
X-CSE-MsgGUID: v6TGclp/RwyobhVoIKOZgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="250685164"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:31:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/14] drm/i915/cdclk: Notify DG2 pcode about pipe power
 wells regardless of CDCLK
In-Reply-To: <20260610170652.5320-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-5-ville.syrjala@linux.intel.com>
Date: Thu, 11 Jun 2026 10:31:12 +0300
Message-ID: <b17d1e14e4439c5695faef2e1eaebba5d72c0221@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C1C766F659

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We're currently skipping the pcode notifies on DG2 if the CDCLK isn't
> changing while the power well counts would still need updating.
> Do the pcode notifications also for pure pipe power well changes.

This kind of does more than just change the pcode stuff, since the
conditions are higher up. Might mention something about that here.

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index d60b3369b4d2..7259048361a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2793,7 +2793,9 @@ intel_set_cdclk_pre_plane_update(struct intel_atomi=
c_state *state)
>  		return;
>=20=20
>  	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> -				 &new_cdclk_state->actual))
> +				 &new_cdclk_state->actual) &&
> +	    dg2_power_well_count(display, old_cdclk_state) =3D=3D
> +	    dg2_power_well_count(display, new_cdclk_state))
>  		return;
>=20=20
>  	if (new_cdclk_state->disable_pipes) {
> @@ -2848,7 +2850,9 @@ intel_set_cdclk_post_plane_update(struct intel_atom=
ic_state *state)
>  		return;
>=20=20
>  	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> -				 &new_cdclk_state->actual))
> +				 &new_cdclk_state->actual) &&
> +	    dg2_power_well_count(display, old_cdclk_state) =3D=3D
> +	    dg2_power_well_count(display, new_cdclk_state))
>  		return;
>=20=20
>  	if (!new_cdclk_state->disable_pipes &&

--=20
Jani Nikula, Intel
