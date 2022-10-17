Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBA0600F1A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 14:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E5FE10E3E4;
	Mon, 17 Oct 2022 12:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1806A10E3E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 12:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666009231; x=1697545231;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=htwfP4NMIyZrqrJDRNbas7lQS9itIYteAfPMDu1g4zk=;
 b=f8uy0lXQIKgL9PwPg4zd4vctnkJoqf3UcnSW8TuOxIdCJYrVetJ0DXqb
 mzexdhV3Rp4XP4aWM9F/I4iLiVUtZjGrqSgxYKG7g7uCjV2VCiQXFc3MC
 OAdSl+afvTSjG3m4d3fPEZdupHdiHtdvSqIfK6mZhu8wV4mp0Mm2UpJGs
 dwYDB6/Gk8QZzx/G/ZZrEv2Hryq/y70FTMYjA6D9rugu+oPSony40cKfG
 oPNDIuaM4pkh/lzEswOCtIcUAXRharUlCxalDTwTr6H5Mbg8fRxmxyeVi
 IuR895TcUIUL/qjC6IRfwXMZNKlJYKcorFJV0Z/W8DHmJrrjmndKTyXZP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="285508748"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="285508748"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 05:20:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="579353184"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="579353184"
Received: from mikkelan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.11])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 05:20:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221010155427.15735-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221010155427.15735-1-animesh.manna@intel.com>
Date: Mon, 17 Oct 2022 15:20:26 +0300
Message-ID: <8735bmk5f9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pps: Add get_pps_idx() hook as
 part of pps_get_register() cleanup
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

On Mon, 10 Oct 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> Simplified pps_get_register() which use get_pps_idx() hook to derive the
> pps instance and get_pps_idx() will be initialized at pps_init().
>
> v1: Initial version. Got r-b from Jani.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_pps.c          | 15 ++++++++++-----
>  2 files changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e2b853e9e51d..44ab296c1f04 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1694,6 +1694,7 @@ struct intel_dp {
>  	u8 (*preemph_max)(struct intel_dp *intel_dp);
>  	u8 (*voltage_max)(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
> +	int (*get_pps_idx)(struct intel_dp *intel_dp);
>=20=20
>  	/* Displayport compliance testing */
>  	struct intel_dp_compliance compliance;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 21944f5bf3a8..b972fa6ec00d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -364,12 +364,10 @@ static void intel_pps_get_registers(struct intel_dp=
 *intel_dp,
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	int pps_idx =3D 0;
>=20=20
> -	memset(regs, 0, sizeof(*regs));
> +	if (intel_dp->get_pps_idx)
> +		pps_idx =3D intel_dp->get_pps_idx(intel_dp);
>=20=20
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		pps_idx =3D bxt_power_sequencer_idx(intel_dp);
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		pps_idx =3D vlv_power_sequencer_pipe(intel_dp);
> +	memset(regs, 0, sizeof(*regs));

It's benign and I've approved this already, but since I keep having to
look at the patch over and over, it has really started bugging me that
the memset() and ->get_pps_idx() calls change their order for no obvious
reason. When you do refactoring, just don't do accidental functional
changes at the same time.

BR,
Jani.


>=20=20
>  	regs->pp_ctrl =3D PP_CONTROL(pps_idx);
>  	regs->pp_stat =3D PP_STATUS(pps_idx);
> @@ -1432,6 +1430,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing =3D true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>=20=20
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
> +	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +		intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
> +	else
> +		intel_dp->get_pps_idx =3D NULL;
> +
>  	pps_init_timestamps(intel_dp);
>=20=20
>  	with_intel_pps_lock(intel_dp, wakeref) {

--=20
Jani Nikula, Intel Open Source Graphics Center
