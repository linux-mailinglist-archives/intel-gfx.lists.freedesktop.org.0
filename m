Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DiuL8Ff12noNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:13:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D173C7971
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E211610E76B;
	Thu,  9 Apr 2026 08:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YqkVmcrg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A773410E767;
 Thu,  9 Apr 2026 08:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722430; x=1807258430;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Aou7PJiN+m4B4Cq2GcvCEYf2MSYheuUqx83L/uWbnss=;
 b=YqkVmcrguI1BScqB66yJHaSLxal/M5IVmReq0PizPWxloBu7QhGxgkn1
 FXIoX6+ryfe1tUINvI8H0k6sh0lJUtgx6oLBRUW8kaLd7QMyMTJTwbkog
 OoHsnuhhM2XPOY79TV71Lhx1iZqnVNJtuoG9o8TPeHtBqNGWJaWpNfmdT
 o3YlyzZRH0DbkxgewRWbLX66Cjk1YNBFVhibmwW4871fTcHb1lJ8a/R+c
 wU1cyJKXSSpaeOXTTgyPvstsWqt414Hlg+/9UWv8RHeE0HE8ox5l13H0J
 KGoNmjnHPUfTirsqYIpcGZVDt51xTCvC90Jl9080k4diBu2+2Xo2dizaL w==;
X-CSE-ConnectionGUID: E1Uh4Hm1QFeWYW6mA26Uag==
X-CSE-MsgGUID: rFPvjYThSDG1CAawBpccLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75758605"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="75758605"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:13:49 -0700
X-CSE-ConnectionGUID: Cgvt7FEoT4e6PbTjh6RWDw==
X-CSE-MsgGUID: jiWFTei+Q1yv2sDPc35N0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="232749511"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:13:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Simona
 Vetter <simona.vetter@ffwll.ch>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 2/6] drm/i915/reset: Reorganize display reset code
In-Reply-To: <20260408233458.22666-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-3-ville.syrjala@linux.intel.com>
Date: Thu, 09 Apr 2026 11:13:43 +0300
Message-ID: <1faaaf6e482716344c969a1a14582b063ab801be@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 70D173C7971
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop returning the "is there a display?" status from
> intel_display_reset_prepare(). I plan to move the pending_fb_pin
> into the i915 code, so I need to make that determination already
> before intel_display_reset_prepare() is called. Add a new
> intel_display_reset_supported() function for that.
>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_reset.c    | 23 ++++++++-----------
>  .../drm/i915/display/intel_display_reset.h    |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_reset.c         | 13 +++++++----
>  3 files changed, 20 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers=
/gpu/drm/i915/display/intel_display_reset.c
> index d00ef5bdcbda..137a2a33c8b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -16,22 +16,24 @@
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
>=20=20
> +bool intel_display_reset_supported(struct intel_display *display)
> +{
> +	return HAS_DISPLAY(display);
> +}
> +
>  bool intel_display_reset_test(struct intel_display *display)
>  {
> -	return display->params.force_reset_modeset_test;
> +	return HAS_DISPLAY(display) &&
> +		display->params.force_reset_modeset_test;
>  }
>=20=20
> -/* returns true if intel_display_reset_finish() needs to be called */
> -bool intel_display_reset_prepare(struct intel_display *display,
> +void intel_display_reset_prepare(struct intel_display *display,
>  				 modeset_stuck_fn modeset_stuck, void *context)
>  {
>  	struct drm_modeset_acquire_ctx *ctx =3D &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
>  	int ret;
>=20=20
> -	if (!HAS_DISPLAY(display))
> -		return false;
> -
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> @@ -60,7 +62,7 @@ bool intel_display_reset_prepare(struct intel_display *=
display,
>  		ret =3D PTR_ERR(state);
>  		drm_err(display->drm, "Duplicating state failed with %i\n",
>  			ret);
> -		return true;
> +		return;
>  	}
>=20=20
>  	ret =3D drm_atomic_helper_disable_all(display->drm, ctx);
> @@ -68,13 +70,11 @@ bool intel_display_reset_prepare(struct intel_display=
 *display,
>  		drm_err(display->drm, "Suspending crtc's failed with %i\n",
>  			ret);
>  		drm_atomic_state_put(state);
> -		return true;
> +		return;
>  	}
>=20=20
>  	display->restore.modeset_state =3D state;
>  	state->acquire_ctx =3D ctx;
> -
> -	return true;
>  }
>=20=20
>  void intel_display_reset_finish(struct intel_display *display, bool test=
_only)
> @@ -83,9 +83,6 @@ void intel_display_reset_finish(struct intel_display *d=
isplay, bool test_only)
>  	struct drm_atomic_state *state;
>  	int ret;
>=20=20
> -	if (!HAS_DISPLAY(display))
> -		return;
> -
>  	state =3D fetch_and_zero(&display->restore.modeset_state);
>  	if (!state)
>  		goto unlock;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers=
/gpu/drm/i915/display/intel_display_reset.h
> index 8b3bda134454..e0f15e757728 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -12,8 +12,9 @@ struct intel_display;
>=20=20
>  typedef void modeset_stuck_fn(void *context);
>=20=20
> +bool intel_display_reset_supported(struct intel_display *display);
>  bool intel_display_reset_test(struct intel_display *display);
> -bool intel_display_reset_prepare(struct intel_display *display,
> +void intel_display_reset_prepare(struct intel_display *display,
>  				 modeset_stuck_fn modeset_stuck, void *context);
>  void intel_display_reset_finish(struct intel_display *display, bool test=
_only);
>=20=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 37272871b0f2..ffd11767874f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1425,16 +1425,19 @@ static void intel_gt_reset_global(struct intel_gt=
 *gt,
>  		bool need_display_reset;
>  		bool reset_display;
>=20=20
> -		need_display_reset =3D intel_gt_gpu_reset_clobbers_display(gt) &&
> +		need_display_reset =3D
> +			intel_display_reset_supported(display) &&
> +			intel_gt_gpu_reset_clobbers_display(gt) &&
>  			intel_has_gpu_reset(gt);
>=20=20
> -		reset_display =3D intel_display_reset_test(display) ||
> +		reset_display =3D
> +			intel_display_reset_test(display) ||
>  			need_display_reset;
>=20=20
>  		if (reset_display)
> -			reset_display =3D intel_display_reset_prepare(display,
> -								    display_reset_modeset_stuck,
> -								    gt);
> +			intel_display_reset_prepare(display,
> +						    display_reset_modeset_stuck,
> +						    gt);
>=20=20
>  		intel_gt_reset(gt, engine_mask, reason);

--=20
Jani Nikula, Intel
