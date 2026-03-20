Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDbLJk4tvWmI7QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 12:19:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8858D2D96DB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 12:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9791610E228;
	Fri, 20 Mar 2026 11:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T21D8vG/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4091A10E228;
 Fri, 20 Mar 2026 11:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774005578; x=1805541578;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=l1dhd2+bxgTr6gHHhaRO4PXaDqK4ddAvdqxlmR7YEIQ=;
 b=T21D8vG/MU6e2TY2xEJm4qv3Rx+jAJqFEq2lZQXYQHFoFPkKzSC3qZDs
 FiAQyyRsPwAcYpjrb0alTw8LGD6cmKtx81BWKE/OYfq8yjro/UjoCt6w9
 ZgLskjXd3ZUIafKMDGsJ6D4hBTFthLfQNKp+xkaPTpTrZNa/iIxOuOUxV
 wF3CwYINWG/lHioMPlkJtz8uDhi4g5m/Y/cmqxHPhIVUx92Ic1Xvb4Ewu
 aFMKmeT4/Iz0Vvcac3e4hMzgSth5INl5O+YmTscFflCFwALfCngn6D3Qp
 RNvH8ye6n6+yszurAAIiZUKKqCJ71mxMKfnuVJYH7ZOkbL3vQLvzUJJMc w==;
X-CSE-ConnectionGUID: F3em2WllQqiOIhsrjmbCIw==
X-CSE-MsgGUID: /oH0qow0TTy1c/1bbmAzbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86450354"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="86450354"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 04:19:38 -0700
X-CSE-ConnectionGUID: Dctu4s2mTD6LuEPH6gmDvQ==
X-CSE-MsgGUID: cs26MOWKS6exzCCUqTNgoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="246284632"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.197])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 04:19:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Imre Deak
 <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Uma
 Shankar <uma.shankar@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
In-Reply-To: <bbaf3e50-4660-877f-579d-82fa406e077e@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260320092900.13210-1-imre.deak@intel.com>
 <bbaf3e50-4660-877f-579d-82fa406e077e@intel.com>
Date: Fri, 20 Mar 2026 13:19:32 +0200
Message-ID: <99351a6c5d3da05614e3132f2dd562a54df5e1c4@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8858D2D96DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 20 Mar 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> On Fri, 20 Mar 2026, Imre Deak wrote:
>> Clearing the DP tunnel stream BW in the atomic state involves getting
>> the tunnel group state, which can fail. Handle the error accordingly.
>>
>> This fixes at least one issue where drm_dp_tunnel_atomic_set_stream_bw()
>> failed to get the tunnel group state returning -EDEADLK, which wasn't
>> handled. This lead to the ctx->contended warn later in modeset_lock()
>> while taking a WW mutex for another object in the same atomic state, and
>> thus within the same already contended WW context.
>>
>> Moving intel_crtc_state_alloc() later would avoid freeing saved_state on
>> the error path; this stable patch leaves that simplification for a
>> follow-up.
>>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.9+
>> Fixes: a4efae87ecb2 ("drm/i915/dp: Compute DP tunnel BW during encoder s=
tate computation")
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++-
>> .../gpu/drm/i915/display/intel_dp_tunnel.c    | 20 +++++++++++++------
>> .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++++++----
>> 3 files changed, 28 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index ee501009a251f..882db77c0bbcd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4640,6 +4640,7 @@ intel_crtc_prepare_cleared_state(struct intel_atom=
ic_state *state,
>> 	struct intel_crtc_state *crtc_state =3D
>> 		intel_atomic_get_new_crtc_state(state, crtc);
>> 	struct intel_crtc_state *saved_state;
>> +	int err;
>>
>> 	saved_state =3D intel_crtc_state_alloc(crtc);
>> 	if (!saved_state)
>> @@ -4648,7 +4649,12 @@ intel_crtc_prepare_cleared_state(struct intel_ato=
mic_state *state,
>> 	/* free the old crtc_state->hw members */
>> 	intel_crtc_free_hw_state(crtc_state);
>>
>> -	intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
>> +	err =3D intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
>> +	if (err) {
>> +		kfree(saved_state);
>> +
>
> I am unsure if the blank line above is neccessary, but I might be also
> missing style guidelines. Otherwise looks good to me.

It's a common convention to have a blank line before return.

BR,
Jani.

>
> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>
> BR,
> Micha=C5=82
>
>> +		return err;
>> +	}
>>
>> 	/* FIXME: before the switch to atomic started, a new pipe_config was
>> 	 * kzalloc'd. Code that depends on any field being zero should be
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gp=
u/drm/i915/display/intel_dp_tunnel.c
>> index 1fd1ac8d556d8..7363c98172971 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
>> @@ -659,19 +659,27 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struc=
t intel_atomic_state *state,
>>  *
>>  * Clear any DP tunnel stream BW requirement set by
>>  * intel_dp_tunnel_atomic_compute_stream_bw().
>> + *
>> + * Returns 0 in case of success, a negative error code otherwise.
>>  */
>> -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *=
state,
>> -					    struct intel_crtc_state *crtc_state)
>> +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *s=
tate,
>> +					   struct intel_crtc_state *crtc_state)
>> {
>> 	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> +	int err;
>>
>> 	if (!crtc_state->dp_tunnel_ref.tunnel)
>> -		return;
>> +		return 0;
>> +
>> +	err =3D drm_dp_tunnel_atomic_set_stream_bw(&state->base,
>> +						 crtc_state->dp_tunnel_ref.tunnel,
>> +						 crtc->pipe, 0);
>> +	if (err)
>> +		return err;
>>
>> -	drm_dp_tunnel_atomic_set_stream_bw(&state->base,
>> -					   crtc_state->dp_tunnel_ref.tunnel,
>> -					   crtc->pipe, 0);
>> 	drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
>> +
>> +	return 0;
>> }
>>
>> /**
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gp=
u/drm/i915/display/intel_dp_tunnel.h
>> index 7f0f720e8dcad..10ab9eebcef69 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
>> @@ -40,8 +40,8 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct in=
tel_atomic_state *state,
>> 					     struct intel_dp *intel_dp,
>> 					     const struct intel_connector *connector,
>> 					     struct intel_crtc_state *crtc_state);
>> -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *=
state,
>> -					    struct intel_crtc_state *crtc_state);
>> +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *s=
tate,
>> +					   struct intel_crtc_state *crtc_state);
>>
>> int intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state =
*state,
>> 					      struct intel_crtc *crtc);
>> @@ -88,9 +88,12 @@ intel_dp_tunnel_atomic_compute_stream_bw(struct intel=
_atomic_state *state,
>> 	return 0;
>> }
>>
>> -static inline void
>> +static inline int
>> intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
>> -				       struct intel_crtc_state *crtc_state) {}
>> +				       struct intel_crtc_state *crtc_state)
>> +{
>> +	return 0;
>> +}
>>
>> static inline int
>> intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *sta=
te,
>> --=20
>> 2.49.1
>>
>>

--=20
Jani Nikula, Intel
