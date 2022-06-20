Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D855513AB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 11:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B56510F255;
	Mon, 20 Jun 2022 09:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2254310F265
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 09:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655715946; x=1687251946;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/Qx5AakFxH0G5hsjiYsgZ/USb237ECkJ8Dgct9xidt4=;
 b=RTC8BfMc1jkv055Z3qh8hPM/Xq9f8KPM95zkpE4MIZWNZ5R7V3aVpvW4
 OQI43vXRG3T1YU3gXTuK8PquDTcVwghV+A9LVEQx3MT/LxkgoTdZuvxTy
 kVNoTMAWYSkPWoveq61paUsnkO0IdkEmCZHNHvnj2CeTSV8PiwVLCRqd1
 68N8GgB8EJ/eVK9b38F+/qpTK1ZHZdtp0Dn+g+okQTZCtsHIRgRMYIFub
 t8VOOwKqVHp9MXNWV/LsIrm+5ms1Xe2uhmnzex9f96lvpa298T4B7sv0j
 jvkArllTejwgeBu0H3EDthQj4yCm7Ycfjot94t2D3G8tm23DqjR/XmWoU A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="277393539"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="277393539"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 02:05:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643023811"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 02:05:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220617160510.2082-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
 <20220617160510.2082-4-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jun 2022 12:05:42 +0300
Message-ID: <87h74fu2l5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 03/16] drm/i915: Extract
 has_double_buffered_m_n()
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

On Fri, 17 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have a couple of places that want to make distinction between
> double buffered M/N registers vs. the split M1/N1+M2/N2 registers.
> Add a helper for that.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Mhh. So why a function in intel_display.c instead of a macro in
i915_drv.h? Both are kind of cluttered, but at least in i915_drv.h it
would be among others.

I do think we should have a separate file for display feature check
macros, and move most if not all of the display related HAS_*() stuff
there from i915_drv.h.

So technically this does what it says on the box, and in that sense,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

but I don't much like the example and precedence this function sets.


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_display.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
>  3 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b24784c4522d..5559688047b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2798,6 +2798,11 @@ static int intel_crtc_compute_config(struct intel_=
atomic_state *state,
>  	return 0;
>  }
>=20=20
> +bool has_double_buffered_m_n(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) >=3D 9 || IS_BROADWELL(i915);
> +}
> +
>  static void
>  intel_reduce_m_n_ratio(u32 *num, u32 *den)
>  {
> @@ -5900,7 +5905,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_I(lane_count);
>  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv)) {
> +	if (has_double_buffered_m_n(dev_priv)) {
>  		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
>  	} else {
>  		PIPE_CONF_CHECK_M_N(dp_m_n);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 2feb8ae5d5d4..44c88aadfc30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -543,6 +543,7 @@ int intel_atomic_add_affected_planes(struct intel_ato=
mic_state *state,
>  				     struct intel_crtc *crtc);
>  u8 intel_calc_active_pipes(struct intel_atomic_state *state,
>  			   u8 active_pipes);
> +bool has_double_buffered_m_n(struct drm_i915_private *i915);
>  void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    int pixel_clock, int link_clock,
>  			    struct intel_link_m_n *m_n,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2fac76bcf06d..75645508080a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1842,8 +1842,7 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct =
intel_dp *intel_dp,
>  static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
>  				    enum transcoder cpu_transcoder)
>  {
> -	/* M1/N1 is double buffered */
> -	if (DISPLAY_VER(i915) >=3D 9 || IS_BROADWELL(i915))
> +	if (has_double_buffered_m_n(i915))
>  		return true;
>=20=20
>  	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);

--=20
Jani Nikula, Intel Open Source Graphics Center
