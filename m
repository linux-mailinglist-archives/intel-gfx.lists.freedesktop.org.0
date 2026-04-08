Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBCOKGuG1mmwFwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:46:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0329B3BF0C8
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D3710E6BD;
	Wed,  8 Apr 2026 16:46:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8yvxo3I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4328810E6BD;
 Wed,  8 Apr 2026 16:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775666792; x=1807202792;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=F10jfkfEfC/EX7kLXc5hCIWQ2jP5fNv/beu/qh+qfFg=;
 b=B8yvxo3IK9zcJi5sFHIhek80O+RYGFOlu5nHMntK81rzVVzLtvsMiff9
 dsXouG6TmpVd89cZiYahgfvtgAojEqHkVH/M6SnSWTwX9y9PoVkN1rvFw
 QI2NPVraz568HBYHWwl6aBQj/KKazTlD68vzKblJfE3yx3evh83HAENY5
 tUY9fw44tikpW/uZvJKofu/sRxSMb9BTUOyOEW/WAYP8ketW9eHMDfJ6Y
 DQsgw/bIaHd7yVTDJaPnvF9dXIzDZC99WLwoNrh6UYuATKkr2dqOqDYIE
 Vvgnj/iR5Ia1nKP7zdE5TQa3WL+IrRFoyqmk0HuqS/2xtS0eb1xFYd3HK A==;
X-CSE-ConnectionGUID: t149wCzaRcOmgwKECpVA4g==
X-CSE-MsgGUID: rA4J+JZ3Sxq7z5z46EoQwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94239831"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="94239831"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 09:46:31 -0700
X-CSE-ConnectionGUID: 7GOyNpxXSpeWC7eQfRfS9w==
X-CSE-MsgGUID: jrddapkFSMeOPcPdJyP0tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228455533"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 09:46:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/joiner: Make joiner "nomodeset" state copy
 independent of pipe order
In-Reply-To: <20260408155744.13326-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408155744.13326-1-ville.syrjala@linux.intel.com>
 <20260408155744.13326-2-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 19:46:27 +0300
Message-ID: <64fcf34f83f7d3011ec204d7e260de399b265c6a@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0329B3BF0C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 08 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently the joiner primary->secondary hw state copy still happens from
> the main compute_config loop alongside the primary uapi->hw state copy.
> The primary uapi->hw state copy must therefore happen first, or else
> we'll end up copying stale junk into the secondary.
>
> We have a WARN in intel_atomic_check_joiner() to make sure the CRTCs
> will be walked in the correct order. The plan is to reoder the CRTCs,
> which would mess up the order, unless we also adjust the iterators
> to keep the pipe order. The actual plan is to do both, so technically
> we should be able to just remove the WARN and call it a day.
>
> But relying on the iteration order like this is fragile and confusing,
> so let's move the "nomodeset" joiner state copy into the later loop
> where the "modeset" state copy is also done. The first loop having
> completely finished, we are guaranteed to have up to date hw state
> on the primary when we do the copy to the secondary.

I find the number of loops in the forest of intel_atomic_check*
functions confusing too. But this looks like progress.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I'm wondering about merging this, along with the pipe reordering, to a
topic branch that could be merged to drm-next at Dave's discretion,
instead of cherry-picks which might be a bit cumbersome for patches this
size. So please hold off on merging while I figure this out.


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 20 +++++---------------
>  1 file changed, 5 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 58a654ca0d20..674a4ece6d0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5914,17 +5914,6 @@ static int intel_atomic_check_joiner(struct intel_=
atomic_state *state,
>  			return -EINVAL;
>  		}
>=20=20
> -		/*
> -		 * The state copy logic assumes the primary crtc gets processed
> -		 * before the secondary crtc during the main compute_config loop.
> -		 * This works because the crtcs are created in pipe order,
> -		 * and the hardware requires primary pipe < secondary pipe as well.
> -		 * Should that change we need to rethink the logic.
> -		 */
> -		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
> -			    drm_crtc_index(&secondary_crtc->base)))
> -			return -EINVAL;
> -
>  		drm_dbg_kms(display->drm,
>  			    "[CRTC:%d:%s] Used as secondary for joiner primary [CRTC:%d:%s]\n=
",
>  			    secondary_crtc->base.base.id, secondary_crtc->base.name,
> @@ -6302,9 +6291,7 @@ static int intel_atomic_check_config(struct intel_a=
tomic_state *state,
>=20=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		if (!intel_crtc_needs_modeset(new_crtc_state)) {
> -			if (intel_crtc_is_joiner_secondary(new_crtc_state))
> -				copy_joiner_crtc_state_nomodeset(state, crtc);
> -			else
> +			if (!intel_crtc_is_joiner_secondary(new_crtc_state))
>  				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
>  			continue;
>  		}
> @@ -6439,8 +6426,11 @@ int intel_atomic_check(struct drm_device *dev,
>  		goto fail;
>=20=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		if (!intel_crtc_needs_modeset(new_crtc_state))
> +		if (!intel_crtc_needs_modeset(new_crtc_state)) {
> +			if (intel_crtc_is_joiner_secondary(new_crtc_state))
> +				copy_joiner_crtc_state_nomodeset(state, crtc);
>  			continue;
> +		}
>=20=20
>  		if (intel_crtc_is_joiner_secondary(new_crtc_state)) {
>  			drm_WARN_ON(display->drm, new_crtc_state->uapi.enable);

--=20
Jani Nikula, Intel
