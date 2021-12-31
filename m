Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8522548243E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Dec 2021 14:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4928C89E5A;
	Fri, 31 Dec 2021 13:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A8B89E5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Dec 2021 13:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640958311; x=1672494311;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VdH5hdSqOPcbOF8gPP83AOCQ+V3Ciee3Cybfnywuugs=;
 b=j7eAGTG8GoBHv3Dw8h9jHS5sV6FMGisbBfUhQWxWVjU5NbwkGn1bo8Iw
 i5L7bzEjj/pTMYjkFVrL5FgiUZ8JKl6+Pl7OuVVbeqOsK8O1eA5G1rHkL
 9lV3E3vumNfwyCHoj2z4Jz1YLE8yoYot+/AmsaVFi77f1/fLXmbnSYRIF
 eSqQ7W34n6aq8uP3nHMoJlmVEND1R5pihFfX3xFxXZEBNaf49xKFkmOx/
 e62309/4klMPhSLZJMMypgJJ6wJ6srvsT14cy1FJ3gjA668zReMhtk5zN
 AdTg84BTb79xtGcw7UCIUKiYD22A1eIj6/v66j8nI4o2Ff+ZSS7T8qJp6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="266062087"
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="266062087"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 05:45:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="470950159"
Received: from arudakov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.25.42])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 05:45:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yby8i/5jatjcmnH+@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211216140548.1255782-1-jani.nikula@intel.com>
 <Yby8i/5jatjcmnH+@intel.com>
Date: Fri, 31 Dec 2021 15:45:05 +0200
Message-ID: <87r19sj3by.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: update slot information for
 128b/132b
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
Cc: intel-gfx@lists.freedesktop.org,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Dec 16, 2021 at 04:05:48PM +0200, Jani Nikula wrote:
>> 128b/132b supports using 64 slots starting from 0, while 8b/10b reserves
>> slot 0 for metadata.
>>=20
>> Commit d6c6a76f80a1 ("drm: Update MST First Link Slot Information Based
>> on Encoding Format") added support for updating the topology state
>> accordingly, and commit 41724ea273cd ("drm/amd/display: Add DP 2.0 MST
>> DM Support") started using it in the amd driver.
>>=20
>> This feels more than a little cumbersome, especially updating the
>> information in atomic check. For i915, add the update to MST connector
>> .atomic_check hook rather than iterating over all MST managers and
>> connectors in global mode config .atomic_check. Fingers crossed.
>>=20
>> Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
>> Cc: Lyude Paul <lyude@redhat.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/d=
rm/i915/display/intel_dp_mst.c
>> index b8bc7d397c81..d13c7952a8d6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -302,6 +302,8 @@ intel_dp_mst_atomic_check(struct drm_connector *conn=
ector,
>>  	if (!old_conn_state->crtc)
>>  		return 0;
>>=20=20
>> +	mgr =3D &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->p=
rimary->dp.mst_mgr;
>> +
>>  	/* We only want to free VCPI if this state disables the CRTC on this
>>  	 * connector
>>  	 */
>> @@ -309,6 +311,15 @@ intel_dp_mst_atomic_check(struct drm_connector *con=
nector,
>>  		struct intel_crtc *crtc =3D to_intel_crtc(new_crtc);
>>  		struct intel_crtc_state *crtc_state =3D
>>  			intel_atomic_get_new_crtc_state(state, crtc);
>> +		struct drm_dp_mst_topology_state *topology_state;
>> +		u8 link_coding_cap =3D intel_dp_is_uhbr(crtc_state) ?
>> +			DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
>
> This is too early. We haven't determined the link rate yet.
> So intel_dp_mst_compute_config() is the earliest we can do this.

D'oh!

Thanks, fixed in v2.

>
>> +
>> +		topology_state =3D drm_atomic_get_mst_topology_state(&state->base, mg=
r);
>> +		if (IS_ERR(topology_state))
>> +			return PTR_ERR(topology_state);
>> +
>> +		drm_dp_mst_update_slots(topology_state, link_coding_cap);
>>=20=20
>>  		if (!crtc_state ||
>>  		    !drm_atomic_crtc_needs_modeset(&crtc_state->uapi) ||
>> @@ -316,7 +327,6 @@ intel_dp_mst_atomic_check(struct drm_connector *conn=
ector,
>>  			return 0;
>>  	}
>>=20=20
>> -	mgr =3D &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->p=
rimary->dp.mst_mgr;
>>  	ret =3D drm_dp_atomic_release_vcpi_slots(&state->base, mgr,
>>  					       intel_connector->port);
>>=20=20
>> @@ -357,6 +367,7 @@ static void intel_mst_disable_dp(struct intel_atomic=
_state *state,
>>  	struct intel_connector *connector =3D
>>  		to_intel_connector(old_conn_state->connector);
>>  	struct drm_i915_private *i915 =3D to_i915(connector->base.qdev);
>> +	int start_slot =3D intel_dp_is_uhbr(old_crtc_state) ? 0 : 1;a
>>  	int ret;
>>=20=20
>>  	drm_dbg_kms(&i915->drm, "active links %d\n",
>> @@ -366,7 +377,7 @@ static void intel_mst_disable_dp(struct intel_atomic=
_state *state,
>>=20=20
>>  	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
>>=20=20
>> -	ret =3D drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
>> +	ret =3D drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
>
> I supoose what we should do in these places is grab the new/old
> mst state and dig the slot info out from it. Or I guess even better
> to just pass in the whole mst_state and let the mst code dig out what
> it needs.

For the time being, I just left this one be. I agree it should be done
in the MST code, but IIUC that's in need of an overhaul anyway wrt the
state handling, and I'm not really signing up for that...

BR,
Jani.

>
>>  	if (ret) {
>>  		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
>>  	}
>> @@ -475,6 +486,7 @@ static void intel_mst_pre_enable_dp(struct intel_ato=
mic_state *state,
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	struct intel_connector *connector =3D
>>  		to_intel_connector(conn_state->connector);
>> +	int start_slot =3D intel_dp_is_uhbr(pipe_config) ? 0 : 1;
>>  	int ret;
>>  	bool first_mst_stream;
>>=20=20
>> @@ -509,7 +521,7 @@ static void intel_mst_pre_enable_dp(struct intel_ato=
mic_state *state,
>>=20=20
>>  	intel_dp->active_mst_links++;
>>=20=20
>> -	ret =3D drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
>> +	ret =3D drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
>>=20=20
>>  	/*
>>  	 * Before Gen 12 this is not done as part of
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
