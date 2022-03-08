Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1C14D1706
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 13:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8DF10E381;
	Tue,  8 Mar 2022 12:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4C310E27C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 12:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646741689; x=1678277689;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6kFodBgiENJaUSl6PL/QUXtLcJHClppkzFg3pzYcJfM=;
 b=il+ZWYqbXaLGycM+n6hPcxK5Zj87+/8Nb7cBzrsi5nMYNzoytNcVJAcS
 zWpRBtB2XTM1PM1zUiL2qRL5PPO/Kt3O2wQ1HQEm+yFDL4xMD9IJwxJ/P
 LKyr4+01Mhw0/nCI8Zbatx+Tvc2p4DszCK/yfbeE6smNSguQAYwwfIMTj
 SAeQRcRkl0Wj+Nz/CJRd1ekmKCVBBfTAnnGrwWs6G2WbHqLw1moptahIP
 gGgHK1AAzZxjSYyyzBjVNRWAFJEfnEjTwmVsJ4Gnl2e9ztsQtWkLi8nTY
 gInC5FiLme2CnrAnWlr/GUsb+bpAl2QrIdgs3F6zN65J4Z5XOM2AooaH4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="317898544"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="317898544"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:14:49 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="643638288"
Received: from acushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.29.47])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:14:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YiZvu30c4WXRS7gK@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307193657.2468022-1-jani.nikula@intel.com>
 <YiZvu30c4WXRS7gK@intel.com>
Date: Tue, 08 Mar 2022 14:14:43 +0200
Message-ID: <87lexk1w0c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: re-enable link training
 failure fallback for DP MST
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
Cc: intel-gfx@lists.freedesktop.org, Nikola Cornij <nikola.cornij@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 07 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Mar 07, 2022 at 09:36:57PM +0200, Jani Nikula wrote:
>> Commit 80a8cecf62a5 ("drm/i915/dp_mst: Disable link training fallback on
>> MST links") disabled link training failure fallback for DP MST due to
>> the MST manager using the DPCD directly, and generally being ignorant
>> about the possibility of downgrading link parameters. See the commit for
>> further details.
>>=20
>> Since then, the max_lane_count and max_link_rate members have been added
>> to struct drm_dp_mst_topology_mgr in commit 98025a62cb00 ("drm/dp_mst:
>> Use Extended Base Receiver Capability DPCD space") and refined in
>> follow-up work.
>>=20
>> The members perhaps aren't intended for changing the parameters during
>> the lifetime of the manager, as they're supposed to be passed to
>> drm_dp_mst_topology_mgr_init(). However, the members are only ever used
>> in drm_dp_mst_topology_mgr_set_mst(), and there seems to be nothing to
>> prevent us from adjusting them *before* enabling MST. The wouldn't have
>> an effect if modified while MST is enabled. This is not necessarily
>> pretty, though.
>>=20
>> Cc: Nikola Cornij <nikola.cornij@amd.com>
>> Cc: Lyude Paul <lyude@redhat.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> This is *untested*. I don't see why it wouldn't work, though...
>
> I don't think we have the required stuff to force a modeset on all
> the streams when the link params change.

Hmm, but this is done when the link training fails on the first stream.

> And the bad link status property + uevent stuff is only hooked up to
> the SST connector AFAICS.

Need to double check.

> The other major thing missing is a way to reduce the bpp/etc. of
> all the streams to make more room on the link if we have
> insufficient bandwidth. And the more we start to reduce the bw
> the more we're going to hit that and fail the modesets. We already
> ran into regressions due to this when I tried to enable deep color
> for MST.

The point here is to have a way to reduce the link to not have a black
screen when the link training fails, not so much to gracefully handle
insufficient bandwidth.

BR,
Jani.

>
>> this
>> should allow us to downgrade the link to from 128b/132b to 8b/10b if the
>> former fails.
>>=20
>> Thoughts? In particular, any objections for messing with the topology
>> manager members directly? Any chance it'll make refactoring the MST code
>> more difficult?
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c     | 42 ++++++++++-----------
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 ++-
>>  2 files changed, 23 insertions(+), 24 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 619546441eae..2fad3104b40e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -600,15 +600,6 @@ int intel_dp_get_link_train_fallback_values(struct =
intel_dp *intel_dp,
>>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>>  	int index;
>>=20=20
>> -	/*
>> -	 * TODO: Enable fallback on MST links once MST link compute can handle
>> -	 * the fallback params.
>> -	 */
>> -	if (intel_dp->is_mst) {
>> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>> -		return -1;
>> -	}
>> -
>>  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
>>  		drm_dbg_kms(&i915->drm,
>>  			    "Retrying Link training for eDP with max parameters\n");
>> @@ -2785,6 +2776,8 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>>  	struct intel_encoder *encoder =3D
>>  		&dp_to_dig_port(intel_dp)->base;
>> +	struct drm_dp_mst_topology_mgr *mgr =3D &intel_dp->mst_mgr;
>> +
>>  	bool sink_can_mst =3D drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dp=
cd);
>>=20=20
>>  	drm_dbg_kms(&i915->drm,
>> @@ -2800,8 +2793,17 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>>  	intel_dp->is_mst =3D sink_can_mst &&
>>  		i915->params.enable_dp_mst;
>>=20=20
>> -	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>> -					intel_dp->is_mst);
>> +	/*
>> +	 * Set the source max lane count and link rate using the possibly
>> +	 * limited values due to failed link training.
>> +	 *
>> +	 * This is a bit hackish, as the values are supposed to be passed to
>> +	 * drm_dp_mst_topology_mgr_init().
>> +	 */
>> +	mgr->max_lane_count =3D intel_dp->max_link_lane_count;
>> +	mgr->max_link_rate =3D intel_dp->max_link_rate;
>> +
>> +	drm_dp_mst_topology_mgr_set_mst(mgr, intel_dp->is_mst);
>>  }
>>=20=20
>>  static bool
>> @@ -4472,23 +4474,19 @@ intel_dp_detect(struct drm_connector *connector,
>>  		goto out;
>>  	}
>>=20=20
>> -	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
>> -	if (DISPLAY_VER(dev_priv) >=3D 11)
>> -		intel_dp_get_dsc_sink_cap(intel_dp);
>> -
>> -	intel_dp_configure_mst(intel_dp);
>> -
>> -	/*
>> -	 * TODO: Reset link params when switching to MST mode, until MST
>> -	 * supports link training fallback params.
>> -	 */
>> -	if (intel_dp->reset_link_params || intel_dp->is_mst) {
>> +	if (intel_dp->reset_link_params) {
>>  		intel_dp_reset_max_link_params(intel_dp);
>>  		intel_dp->reset_link_params =3D false;
>>  	}
>>=20=20
>>  	intel_dp_print_rates(intel_dp);
>>=20=20
>> +	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
>> +	if (DISPLAY_VER(dev_priv) >=3D 11)
>> +		intel_dp_get_dsc_sink_cap(intel_dp);
>> +
>> +	intel_dp_configure_mst(intel_dp);
>> +
>>  	if (intel_dp->is_mst) {
>>  		/*
>>  		 * If we are in MST mode then this connector
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/d=
rm/i915/display/intel_dp_mst.c
>> index e30e698aa684..442dbd0ed201 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -151,8 +151,9 @@ static int intel_dp_mst_compute_config(struct intel_=
encoder *encoder,
>>  			intel_conn_state->force_audio =3D=3D HDMI_AUDIO_ON;
>>=20=20
>>  	/*
>> -	 * for MST we always configure max link bw - the spec doesn't
>> -	 * seem to suggest we should do otherwise.
>> +	 * For MST we always configure max link bw - the spec doesn't seem to
>> +	 * suggest we should do otherwise. The values may be reduced due to li=
nk
>> +	 * training failures, however.
>>  	 */
>>  	limits.min_rate =3D
>>  	limits.max_rate =3D intel_dp_max_link_rate(intel_dp);
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
