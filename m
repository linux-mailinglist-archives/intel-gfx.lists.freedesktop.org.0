Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aM8sFCJv32nqSwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 12:57:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E23403782
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 12:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10D610E6BC;
	Wed, 15 Apr 2026 10:57:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1ufUB6B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB1810E6BC;
 Wed, 15 Apr 2026 10:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776250655; x=1807786655;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QQ5Yufi0ua1iY9PPA2fENHC2gfETVJVjv/BJg2cbwx0=;
 b=c1ufUB6BCpxl7LovwxWh3y8tPINQ2ACOgOqt9eq+yIRQ1P02E7HADD0Z
 AuTkH8YkZgTxOfp/gWvK4Rz6eaxCap8/FK7h1zsSKzAW8OlJR/w/aQ4yC
 kUJwf5EtLEptu6EsdNAYe33jauQ3sERpgryjWaSuixwRqSyV4d3IF5i/u
 MzFU5OqLeBGd7+qu1Qv03AFxEQFdROvye6DrQFlBndvhhEnbOezrtzcrw
 LpzQVvYvPwL/fz+NBPoOiLCJiv07HBqrtN1Oo3FiH8qORDf1fA7nJqQKr
 jsF7znskZVH+MYzWER+HEYcpEoTsjgqmScPYKjq/cJTRDj15bYbChX2IO A==;
X-CSE-ConnectionGUID: Ok/JEYTBRtaj9PxJ2EWd+w==
X-CSE-MsgGUID: bZctDfzWS2KT65b8bzeuoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88303702"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88303702"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 03:57:35 -0700
X-CSE-ConnectionGUID: W61GTcxjSY2XiLBVC8dBNg==
X-CSE-MsgGUID: toVh1dVeTSic4yvwWuLJmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225697052"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.25])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 03:57:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v6] drm/i915/display: change pipe allocation order for
 discrete platforms
In-Reply-To: <ad9aZ9oYYLWLbni1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260413081609.969342-1-jani.nikula@intel.com>
 <ad9aZ9oYYLWLbni1@intel.com>
Date: Wed, 15 Apr 2026 13:57:29 +0300
Message-ID: <c510d0d848ca57637120803f256870d29dee5482@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 96E23403782
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 15 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Apr 13, 2026 at 11:16:09AM +0300, Jani Nikula wrote:
>> When big joiner is enabled, it reserves the adjacent pipe as the
>> secondary pipe. This happens without the user space knowing, and
>> subsequent attempts at using the CRTC with that pipe will fail. If the
>> user space does not have a coping mechanism, i.e. trying another CRTC,
>> this leads to a black screen.
>>=20
>> Try to reduce the impact of the problem on discrete platforms by mapping
>> the CRTCs to pipes in order A, C, B, and D. If the user space reserves
>> CRTCs in order, this should trick it to using pipes that are more likely
>> to be available for and after joining.
>>=20
>> Limit this to discrete platforms, which have four pipes, and no eDP, a
>> combination that should benefit the most with least drawbacks.
>>=20
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Should be fine with the other stuff I posted earlier:
> https://lore.kernel.org/intel-gfx/20260408155744.13326-1-ville.syrjala@li=
nux.intel.com/
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed top topic/pipe-reorder, which already has the commits you
refer to.

BR,
Jani.

>
>>=20
>> ---
>>=20
>> v2: Also remove WARN_ON()
>>=20
>> v3: Limit to discrete
>>=20
>> v4: Revamp
>>=20
>> v5: Don't screw up the loop variable, dummy
>>=20
>> v6: Rebase, drop FIXME comment
>> ---
>>  drivers/gpu/drm/i915/display/intel_crtc.c | 29 ++++++++++++++++++++---
>>  1 file changed, 26 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm=
/i915/display/intel_crtc.c
>> index c88a6810c49f..03de219f7a64 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>> @@ -411,8 +411,6 @@ static int __intel_crtc_init(struct intel_display *d=
isplay, enum pipe pipe)
>>=20=20
>>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE=
);
>>=20=20
>> -	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) !=3D crtc->pipe);
>> -
>>  	if (HAS_CASF(display) && crtc->num_scalers >=3D 2)
>>  		drm_crtc_create_sharpness_strength_property(&crtc->base);
>>=20=20
>> @@ -426,6 +424,31 @@ static int __intel_crtc_init(struct intel_display *=
display, enum pipe pipe)
>>  	return ret;
>>  }
>>=20=20
>> +#define HAS_PIPE(display, pipe) (DISPLAY_RUNTIME_INFO(display)->pipe_ma=
sk & BIT(pipe))
>> +
>> +/*
>> + * Expose the pipes in order A, C, B, D on discrete platforms to trick =
user
>> + * space into using pipes that are more likely to be available for both=
 a) user
>> + * space if pipe B has been reserved for the joiner, and b) the joiner =
if pipe A
>> + * doesn't need the joiner.
>> + *
>> + * Swap pipes B and C only if both are available i.e. not fused off.
>> + */
>> +static enum pipe reorder_pipe(struct intel_display *display, enum pipe =
pipe)
>> +{
>> +	if (!display->platform.dgfx || !HAS_PIPE(display, PIPE_B) || !HAS_PIPE=
(display, PIPE_C))
>> +		return pipe;
>> +
>> +	switch (pipe) {
>> +	case PIPE_B:
>> +		return PIPE_C;
>> +	case PIPE_C:
>> +		return PIPE_B;
>> +	default:
>> +		return pipe;
>> +	}
>> +}
>> +
>>  int intel_crtc_init(struct intel_display *display)
>>  {
>>  	enum pipe pipe;
>> @@ -435,7 +458,7 @@ int intel_crtc_init(struct intel_display *display)
>>  		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
>>=20=20
>>  	for_each_pipe(display, pipe) {
>> -		ret =3D __intel_crtc_init(display, pipe);
>> +		ret =3D __intel_crtc_init(display, reorder_pipe(display, pipe));
>>  		if (ret)
>>  			return ret;
>>  	}
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
