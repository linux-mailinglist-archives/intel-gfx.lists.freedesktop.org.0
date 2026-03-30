Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EM14GDpFymm/7AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 11:41:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3E3585B8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 11:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3D910E53B;
	Mon, 30 Mar 2026 09:41:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c11PhZqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14D810E530;
 Mon, 30 Mar 2026 09:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774863670; x=1806399670;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YEPyN/mrDDqejI4Sz55lBSrk75Jo76HZL2xkArBiI8o=;
 b=c11PhZqjlzfhhkqZwNyhGeH1hclZZOacgC9fU0RKR4uYAmhUidzj3U9m
 zCOlJOiXOmHBC1HC1hcSq68nTsJNWMsghwiss36a+AT6bS4zgMT+Dav0t
 9CcXnPZEcazKnfirRZRietO2hUj4WlLVPq9KrWKO8uSnoLWjIEnEVGhfg
 Kdma4fDAiYwkDV1KkYMWn+7lCYrYBLTDYmT+QSDjk0EK1fOgA2vWjFsfL
 nE10WTLWXZn6z70hvGCyUAmduUdy3lrnEKYQ0vnNlVhotZXnmOrEoxbq8
 ivZXYZQPtLlRogz5TZx/6lF8UavziiapIKcojEtOwER7UCPqzQpzcurCV w==;
X-CSE-ConnectionGUID: 9xIV0xcYQbCKpLDe8lTOvA==
X-CSE-MsgGUID: EX0TRNV3S9WY6ZoAyI0e4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="87321487"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="87321487"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 02:41:10 -0700
X-CSE-ConnectionGUID: bmOHLgt+ShesTdXTT1fHfw==
X-CSE-MsgGUID: bnWe0wyjSa6EeSBetyON8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="222694328"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 02:41:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Grzelak, Michal"
 <michal.grzelak@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
In-Reply-To: <CH3PR11MB73006943DE437D325A3B4540BA55A@CH3PR11MB7300.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260210111952.4138954-1-michal.grzelak@intel.com>
 <IA0PR11MB73072FD0F4A1F94AA63B5A04BA48A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <dbb4a305-612a-c01f-37e3-e7f86c72cc69@intel.com>
 <CH3PR11MB73006943DE437D325A3B4540BA55A@CH3PR11MB7300.namprd11.prod.outlook.com>
Date: Mon, 30 Mar 2026 12:41:03 +0300
Message-ID: <434c6bcb63f96b6d656a169275d5033d753d7857@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: A7E3E3585B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 29 Mar 2026, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Grzelak, Michal <michal.grzelak@intel.com>
>> Sent: Saturday, March 28, 2026 9:22 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>
>> Cc: Grzelak, Michal <michal.grzelak@intel.com>; intel-xe@lists.freedeskt=
op.org;
>> intel-gfx@lists.freedesktop.org; Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@=
linux.intel.com>
>> Subject: RE: [PATCH v1] drm/i915/aux: use polling when irqs are unavaila=
ble
>>=20
>> On Tue, 24 Mar 2026, Murthy, Arun R wrote:
>> >
>> >> -----Original Message-----
>> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> >> Of Micha=C5=82 Grzelak
>> >> Sent: Tuesday, February 10, 2026 4:50 PM
>> >> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> >> Cc: Grzelak, Michal <michal.grzelak@intel.com>; Ville Syrj=C3=A4l=C3=
=A4
>> >> <ville.syrjala@linux.intel.com>
>> >> Subject: [PATCH v1] drm/i915/aux: use polling when irqs are
>> >> unavailable
>> >>
>> >> PTL with physically disconnected display was observed to have 40s
>> >> longer execution time when testing
>> xe_fault_injection@xe_guc_mmio_send_recv.
>> >> The issue has not been seen when reverting commit 40a9f77a28fa
>> >> ("Revert
>> >> "drm/i915/dp: change aux_ctl reg read to polling read"").
>> >>
>> >> Apparently the configuration suffers from not having AUX enabled when
>> >> using interrupts. One probable cause can be xe enabling interrupts
>> >> too
>> >> late: interrupts need memory allocations which currently can't be
>> >> done before the display FB takeover is done.
>> >>
>> >> As for now, use polling for AUX in case interrupts are unavailable.
>> >>
>> >> Fixes: 40a9f77a28fa ("Revert "drm/i915/dp: change aux_ctl reg read to
>> >> polling
>> >> read"")
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 20
>> >> ++++++++++++++++----
>> >>  1 file changed, 16 insertions(+), 4 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> >> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> >> index b20ec3e589fad..9c9b6410366d5 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> >> @@ -12,6 +12,7 @@
>> >>  #include "intel_dp.h"
>> >>  #include "intel_dp_aux.h"
>> >>  #include "intel_dp_aux_regs.h"
>> >> +#include "intel_parent.h"
>> >>  #include "intel_pps.h"
>> >>  #include "intel_quirks.h"
>> >>  #include "intel_tc.h"
>> >> @@ -60,18 +61,29 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>> >>  	struct intel_display *display =3D to_intel_display(intel_dp);
>> >>  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
>> >>  	const unsigned int timeout_ms =3D 10;
>> >> +	bool done =3D true;
>> >>  	u32 status;
>> >> -	bool done;
>> >> +	int ret;
>> >>
>> >> +	if (intel_parent_irq_enabled(display)) {
>> >>  #define C (((status =3D intel_de_read_notrace(display, ch_ctl)) &
>> >> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
>> >> -	done =3D wait_event_timeout(display->gmbus.wait_queue, C,
>> >> -				  msecs_to_jiffies_timeout(timeout_ms));
>> >> +		done =3D wait_event_timeout(display->gmbus.wait_queue, C,
>> >> +
>> > Wonder if this is a corner/error case, as to how interrupts are disabl=
ed.
>> > Rather I feel should find out why interrupts are being disabled, if th=
is would
>> be a valid scenario then in most of the places where wait_event_timeout(=
) is
>> used in drm we should check if parent_irq is enabled! In that case, can =
this be a
>> workaround ?
>>=20
>> I'm not sure I get what you mean. Can you elaborate more on what you wou=
ld
>> like to see?
>>=20
> Having interrupts disabled for such a long time is an issue and will have=
 to identify that.
> This work around would definitely help in those scenarios and a good to h=
ave in driver.
>
>> My suspicion is that you are asking to
>> s/wait_event_timeout()/<this patch> in the whole drm directory. If that'=
s the
>> case, I don't know if it is really neccessary since it is AUX-only relat=
ed issue.
> Why is it only AUX related. For AUX Tx we are relaying on interrupts and =
getting this interrupt is the issue over here due to parent interrupt being=
 disabled.
> Similarly in other places where waitqueues are used in i915, can have thi=
s WA to make the driver more robust.

Please analyze and root cause before even suggesting changes like that.

BR,
Jani.


>
> Thanks and Regards,
> Arun R Murthy
> --------------------=20
>
>> Could you put some rationale behind it?
>>=20
>> BR,
>> Micha=C5=82
>>=20
>> >
>> > Thanks and Regards,
>> > Arun R Murthy
>> > --------------------
>> >> msecs_to_jiffies_timeout(timeout_ms));
>> >> +
>> >> +#undef C
>> >> +	} else {
>> >> +		ret =3D intel_de_wait_ms(display, ch_ctl,
>> >> +				       DP_AUX_CH_CTL_SEND_BUSY, 0,
>> >> +				       timeout_ms, &status);
>> >> +
>> >> +		if (ret =3D=3D -ETIMEDOUT)
>> >> +			done =3D false;
>> >> +	}
>> >>
>> >>  	if (!done)
>> >>  		drm_err(display->drm,
>> >>  			"%s: did not complete or timeout within %ums (status
>> 0x%08x)\n",
>> >>  			intel_dp->aux.name, timeout_ms, status); -#undef C
>> >>
>> >>  	return status;
>> >>  }
>> >> --
>> >> 2.45.2
>> >
>> >

--=20
Jani Nikula, Intel
