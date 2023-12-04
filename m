Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CEF803AC4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 17:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CA610E365;
	Mon,  4 Dec 2023 16:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED80810E383
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 16:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701708506; x=1733244506;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PnqmEU9XP9R0RNdxVPWa739cwc8NIVqDx1qAJfag9d4=;
 b=IDH94C/18fQSyliY4H7PSjh0xrM5CBaRSrRYNbkMNseyARB4OLe9GkfM
 kdQ6uqSPRxMciakSth0vk23ZQfNR5pnwyml6J/twmlR1Z/zb5W3/idgEw
 dxeYzhti4WmQFKwHlMTEs+ObtXRxTAU5fjw7fePpNZHD8TzARJA0W/t3k
 5UKNbPFPf8aUuzHbFRPWANcqGsgEoFFeRBT+qQ6aG4Q2NbKwHHG8aNNc/
 QpPLu4tgbNYVp3Jj/ycew5Dke8JxMjY94R5wyG+UV/VZJTarDApZ5509p
 JDpxjKocPer5yJqf4yYyZFoQaVH+dKJQeqR2C7FAQsL1KavPsPNyD+EpR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="12476908"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="12476908"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 08:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="836642294"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="836642294"
Received: from shahmoha-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.180])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 08:48:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
 <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
Date: Mon, 04 Dec 2023 18:48:06 +0200
Message-ID: <87a5qp3oe1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 04 Dec 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of J=
ani
>> Nikula
>> Sent: Monday, December 4, 2023 3:28 PM
>> To: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW=
_SET
>> when using rate select
>>
>> On Fri, 01 Dec 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Fri, Dec 01, 2023 at 03:41:41PM +0200, Jani Nikula wrote:
>> >> The eDP 1.5 spec adds a clarification for eDP 1.4x:
>> >>
>> >> > For eDP v1.4x, if the Source device chooses the Main-Link rate by
>> >> > way of DPCD 00100h, the Sink device shall ignore DPCD 00115h[2:0].
>> >>
>> >> We write 0 to DP_LINK_BW_SET (DPCD 100h) even when using
>> >> DP_LINK_RATE_SET (DPCD 114h). Stop doing that, as it can cause the
>> >> panel to ignore the rate set method.
>> >
>> > What a terrible way to specify this :( This means the device must hav
>> > some internal state to keep track of whethe BW_SET was ever written.
>>
>> Indeed.
>>
>> Additionally, eDP 1.5 specifies LINK_CONFIGURATION_STATUS (DPCD 0020Ch)
>> which exposes the internal state as link rate set status, and whether th=
at status is
>> valid or not.
>>
>> Overall the spec looks like that's just for status, but the register is =
annotated
>> Write/Read so who knows.
>>
>> >
>> >>
>> >> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
>> >> Tested-by: Animesh Manna <animesh.manna@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  .../drm/i915/display/intel_dp_link_training.c | 23
>> >> +++++++++++--------
>> >>  1 file changed, 13 insertions(+), 10 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> index dbc1b66c8ee4..6336a39030a4 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> >> @@ -650,19 +650,22 @@ intel_dp_update_link_bw_set(struct intel_dp
>> *intel_dp,
>> >>                        const struct intel_crtc_state *crtc_state,
>> >>                        u8 link_bw, u8 rate_select)
>> >>  {
>> >> -  u8 link_config[2];
>> >> +  u8 lane_count =3D crtc_state->lane_count;
>> >>
>> >> -  /* Write the link configuration data */
>> >> -  link_config[0] =3D link_bw;
>> >> -  link_config[1] =3D crtc_state->lane_count;
>> >>    if (crtc_state->enhanced_framing)
>> >> -          link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> >> -  drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
>> >> +          lane_count |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
>> >> +
>> >> +  if (link_bw) {
>> >> +          /* eDP 1.3 and earlier link bw set method. */
>> >> +          u8 link_config[] =3D { link_bw, lane_count };
>> >>
>> >> -  /* eDP 1.4 rate select method. */
>> >> -  if (!link_bw)
>> >> -          drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>> >> -                            &rate_select, 1);
>> >> +          drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET,
>> link_config,
>> >> +                            ARRAY_SIZE(link_config));
>> >> +  } else {
>> >> +          /* eDP 1.4 rate select method. */
>> >> +          drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET,
>> lane_count);
>> >> +          drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET,
>> rate_select);
>> >
>> > Doesn't look there's anything in the spec that specifies when the
>> > device is supposed to reset its internal state to stop ignoring
>> DP_LINK_RATE_SET.
>> > Do we know when this panel does it? When VDD is removed?
>>
>> No idea. Animesh?
>>
>> I think it's just crazy writing 0 to explicitly disable DP_LINK_BW_SET r=
enders
>> DP_LINK_RATE_SET unusable. Pretty sure we've seen panels where this work=
s as
>> you'd expect.
>>
>> And the above depends on pre-os using the same logic as us for choosing
>> DP_LINK_RATE_SET. GOP seems to do that. But if it or some other pre-os u=
sed
>> DP_LINK_BW_SET, we'd fail. With some other panels, writing the 0 might r=
ecover
>> from that.
>
> The spec does leave it a bit open on this one:
>
> 115h: LINK_RATE_SET and TX_GTC_CAPABILITY
> =E2=80=A2 DPCD 00001h =3D 00h/DPCD 02201h =3D 00h =E2=80=93 Source device=
 shall use this field to choose
> the link rate, and the Sink device shall ignore DPCD 00100h
> =E2=80=A2 DPCD 00001h/DPCD 02201h =3D Valid link rate =E2=80=93 Source de=
vice may optionally choose
> a link rate associated with HBR3, HBR2,HBR, =E2=80=93or=E2=80=93 RBR by w=
riting to DPCD 00100h
>
> So the 2nd point here does mentions that sinks can optionally use value o=
f 00100h
> if 2201h is not 00. So programming a value to this DPCD is not right unle=
ss we program
> the right value (not 0).
>
> I feel safe way would be be to go with LINK_BW_SET for DP1.3 and for DP1.=
4+ always use
> LINK_RATE_SET and have it mutually exclusive.
>
> Some TCONs would have ignored and we got lucky but we can't leave it ambi=
guous, we will be compliant
> to spec if we don't write 0x100. So let's go with this change.

Moreover, there are only four documented valid values for this register,
0x06, 0xa, 0x14, and 0x1e, all other values are reserved. In that sense
it's also wrong to write 0x00.

BR,
Jani.




>
> Regards,
> Uma Shankar
>
>> No r-b, so do you have any better ideas?
>>
>>
>> BR,
>> Jani.
>>
>>
>> >
>> >> +  }
>> >>  }
>> >>
>> >>  /*
>> >> --
>> >> 2.39.2
>>
>> --
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
