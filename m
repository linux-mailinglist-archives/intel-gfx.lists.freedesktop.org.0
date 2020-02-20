Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180D716642D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 18:18:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712106EE02;
	Thu, 20 Feb 2020 17:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A796EE02
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 17:18:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 09:18:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="315794554"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 20 Feb 2020 09:18:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Feb 2020 19:18:44 +0200
Date: Thu, 20 Feb 2020 19:18:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200220171844.GH13686@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
 <20200211172532.14287-8-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211172532.14287-8-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: Fix broken num_entries in
 skl_ddb_allocation_overlaps
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 10:55:32PM +0530, Anshuman Gupta wrote:
> skl_ddb_allocation_overlaps() num_entries hass been passed as
> INTEL_NUM_PIPES, it should be I915_MAX_PIPES.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6fdaeb019fef..dd77324206bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15475,7 +15475,6 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> -	const u8 num_pipes =3D INTEL_NUM_PIPES(dev_priv);
>  	u8 update_pipes =3D 0, modeset_pipes =3D 0;
>  	int i;
>  =

> @@ -15512,7 +15511,7 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  				continue;
>  =

>  			if (skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> -							entries, num_pipes, pipe))
> +							entries, I915_MAX_PIPES, pipe))
>  				continue;
>  =

>  			entries[pipe] =3D new_crtc_state->wm.skl.ddb;
> @@ -15550,7 +15549,7 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  			continue;
>  =

>  		WARN_ON(skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> -						    entries, num_pipes, pipe));
> +						    entries, I915_MAX_PIPES, pipe));
>  =

>  		entries[pipe] =3D new_crtc_state->wm.skl.ddb;
>  		modeset_pipes &=3D ~BIT(pipe);
> @@ -15585,7 +15584,7 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  			continue;
>  =

>  		WARN_ON(skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> -						    entries, num_pipes, pipe));
> +						    entries, I915_MAX_PIPES, pipe));
>  =

>  		entries[pipe] =3D new_crtc_state->wm.skl.ddb;
>  		modeset_pipes &=3D ~BIT(pipe);
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
