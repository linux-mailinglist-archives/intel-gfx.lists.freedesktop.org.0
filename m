Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE44C4E92EB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 12:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3997310E0B4;
	Mon, 28 Mar 2022 10:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFE710E0B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 10:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465165; x=1680001165;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=RXhkR8s4rM/3BMX9iDSUrSnmRFjiMtOcBiDk4zc5N/A=;
 b=QVX8X3A54eyXIympL0lL3OPbtnL7veUCTjwYCwXMOAY8w3SZlNWpqHjV
 WTeJorja/XGkdkD9RvuGWmH8HndQ8CMeHanen0/396KAyt23X6V6nTiJZ
 TtymBQLApggT60ZUcYk5JJl3EkIPFrcRCVkso+GxlyC3IdEMI4PU23mPZ
 cUU4rzrfyL4pqGI2m2nYlcQS4LoVFvcvJeqoByUUGXNChG1Zu3TtbPJ0U
 ce5LtZRJ/lvrLmBZFWZTp0OooY2rZ0s+AsGxE0VdjlCpSQCnnOtooTr26
 5LXev1uI/zZVVoV9wkYkRdfPEMMcX0S9xZ1igyoH81kRVUTT+wRtR5IMY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258939564"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258939564"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:59:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="520963999"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:59:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-4-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 13:59:14 +0300
Message-ID: <87v8vyfim5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915: Remove pointless dpll_funcs
 checks
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

On Fri, 25 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> All platforms have dpll_funcs. Remove the pointless NULL checks.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 986e2e67ef91..57d9b065622f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7053,14 +7053,10 @@ intel_crtc_update_active_timings(const struct int=
el_crtc_state *crtc_state)
>=20=20
>  static void intel_modeset_clear_plls(struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int i;
>=20=20
> -	if (!dev_priv->dpll_funcs)
> -		return;
> -
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		if (!intel_crtc_needs_modeset(new_crtc_state))
>  			continue;

--=20
Jani Nikula, Intel Open Source Graphics Center
