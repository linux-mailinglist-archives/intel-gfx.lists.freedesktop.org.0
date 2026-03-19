Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEJjKV/8u2mzqwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 14:38:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066362CC16A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 14:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1735B10EA14;
	Thu, 19 Mar 2026 13:38:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OtQEJFjt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D4C10EA13;
 Thu, 19 Mar 2026 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773927515; x=1805463515;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=70LncrGH7G2Yiy4iPDFewBhsLsVCRWlJiTNQLUbzGLM=;
 b=OtQEJFjt92YeWWwP7F5zzypC19Zq47pdGnVmvhCLmwftUtXYfUtTZwCL
 CTsoAPGRMHzHEgbc7pjMIBYm9IzhS9fkyE4iO7u2Ot46njAnS0cnibN6Q
 AMqo2GPp8MsISLbzSCRop7/ds0CjZmH2C1ShaUWZ9L5K3pUtbm6GziBgl
 EyIaJ+JXHCHr5m4lXy/UXw13D1pgtcz3mzq+j6VZWj8zXln8eq011I0gA
 Op6WZli3Jgrtbqs6jBYj5WKuzFh4w2IW4qeLh0/YQxhW6+6pkn0ylg4PS
 VGFN6DJi2hX/rAVo+A9VJdRdPS0tbClhYlhPpHUX7ZAeEp2fA8JI3C6+0 w==;
X-CSE-ConnectionGUID: MB3ZhZl9Tlihp6fSAC7Tkw==
X-CSE-MsgGUID: GZ5LaID6RPm4z47PKmN41w==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74970302"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="74970302"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 06:38:34 -0700
X-CSE-ConnectionGUID: pjR4ysKOS6qVgTKQ2VvCbg==
X-CSE-MsgGUID: yncU4FQsQ/q06MdzB2T9BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227650969"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 06:38:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/wm: Extract skl_print_plane_ddb_changes()
In-Reply-To: <20260319114034.7093-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
 <20260319114034.7093-8-ville.syrjala@linux.intel.com>
Date: Thu, 19 Mar 2026 15:38:27 +0200
Message-ID: <7e500a333fe944f96cdea4e7a5847788f59b8704@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 066362CC16A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have skl_print_plane_wm_changes() but the DDB counterpart is
> just inline in the main loop. Extract it into a function. We'll
> ave a second use for this soon.

*have

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> The "ddb" part is already parametrized in anticipation of the
> second user.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 6c8dab847ae2..8687026935e9 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2601,6 +2601,21 @@ static char enast(bool enable)
>  	return enable ? '*' : ' ';
>  }
>=20=20
> +static void
> +skl_print_plane_ddb_changes(struct intel_plane *plane,
> +			    const struct skl_ddb_entry *old,
> +			    const struct skl_ddb_entry *new,
> +			    const char *ddb_name)
> +{
> +	struct intel_display *display =3D to_intel_display(plane);
> +
> +	drm_dbg_kms(display->drm,
> +		    "[PLANE:%d:%s] %s (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n",
> +		    plane->base.base.id, plane->base.name, ddb_name,
> +		    old->start, old->end, new->start, new->end,
> +		    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
> +}
> +
>  static noinline_for_stack void
>  skl_print_plane_wm_changes(struct intel_plane *plane,
>  			   const struct skl_plane_wm *old_wm,
> @@ -2722,11 +2737,8 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>=20=20
>  			if (skl_ddb_entry_equal(old, new))
>  				continue;
> -			drm_dbg_kms(display->drm,
> -				    "[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n=
",
> -				    plane->base.base.id, plane->base.name,
> -				    old->start, old->end, new->start, new->end,
> -				    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
> +
> +			skl_print_plane_ddb_changes(plane, old, new, "ddb");
>  		}
>=20=20
>  		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {

--=20
Jani Nikula, Intel
