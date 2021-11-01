Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1631C441AFD
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 13:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7E3389C25;
	Mon,  1 Nov 2021 12:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF60589C25
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 12:06:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="294457408"
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="294457408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 05:06:58 -0700
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="500016194"
Received: from mvtammin-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 05:06:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <fddde7f0495645f79730c2f48bdbf468@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-5-vandita.kulkarni@intel.com>
 <87zgqtfk8j.fsf@intel.com> <122a37fb754049608841b35115f6f594@intel.com>
 <87mtmtfc90.fsf@intel.com> <fddde7f0495645f79730c2f48bdbf468@intel.com>
Date: Mon, 01 Nov 2021 14:06:53 +0200
Message-ID: <87fssgdqqq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [V2 4/4] drm/i915/dsi: Ungate clock before enabling
 the phy
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

On Thu, 28 Oct 2021, "Kulkarni, Vandita" <vandita.kulkarni@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, October 28, 2021 8:06 PM
>> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com
>> Subject: RE: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the phy
>> 
>> On Thu, 28 Oct 2021, "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
>> wrote:
>> >> -----Original Message-----
>> >> From: Nikula, Jani <jani.nikula@intel.com>
>> >> Sent: Thursday, October 28, 2021 5:13 PM
>> >> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
>> >> gfx@lists.freedesktop.org
>> >> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
>> >> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com; Kulkarni,
>> >> Vandita <vandita.kulkarni@intel.com>
>> >> Subject: Re: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the
>> >> phy
>> >>
>> >> On Tue, 19 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com>
>> wrote:
>> >> > For the PHY enable/disable signalling to propagate between Dispaly
>> >> > and PHY, DDI clocks need to be running when enabling the PHY.
>> >> >
>> >> > Bspec: 49188 says gate the clocks after enabling the
>> >> >        DDI Buffer.
>> >> >        We also have a commit 991d9557b0c4 ("drm/i915/tgl/dsi: Gate the
>> ddi
>> >> >        clocks after pll mapping") which gates the clocks much before,
>> >> >        as per the older spec. This commit nullifies its effect and makes
>> >> >        sure that the clocks are not gated while we enable the DDI
>> >> >        buffer.
>> >> > v2: Bspec ref, add a comment wrt earlier clock gating sequence
>> >> > (Jani)
>> >> >
>> >> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
>> >> >  1 file changed, 3 insertions(+), 5 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> >> > b/drivers/gpu/drm/i915/display/icl_dsi.c
>> >> > index 63dd75c6448a..e5ef5c4a32d7 100644
>> >> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> >> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> >> > @@ -1135,8 +1135,6 @@ static void
>> >> >  gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>> >> >  			      const struct intel_crtc_state *crtc_state)  {
>> >> > -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> >> > -
>> >> >  	/* step 4a: power up all lanes of the DDI used by DSI */
>> >> >  	gen11_dsi_power_up_lanes(encoder);
>> >> >
>> >> > @@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct
>> >> intel_encoder *encoder,
>> >> >  	/* step 4c: configure voltage swing and skew */
>> >> >  	gen11_dsi_voltage_swing_program_seq(encoder);
>> >> >
>> >> > +	gen11_dsi_ungate_clocks(encoder);
>> >> > +
>> >>
>> >> What about the changes to gen11_dsi_map_pll() in commit 991d9557b0c4
>> >> ("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")? It
>> >> starts off with clocks gated for gen12+, ungated otherwise.
>> >
>> > Now the same spec is updated with the gate step after ddi buffer enable.
>> > And the one before is marked with remove tag.
>> > That makes all gen12+ align with gen 11.
>> > You suggested to update the same in the commit message on v1.
>> > Should I still consider just reverting that commit?
>> 
>> I'm just royally confused about the sequence myself, so I'm asking you. ;)
>> 
>> It doesn't help that the code has step references to gen 11 mode set that are
>> completely different from the steps in gen 12 sequence.
>
> Right, they have lot of different steps coming in.
> As per gen11 sequence, we were gating pll after enabling ddi buffer.
>
> Initially when there was only gen12 in the bspec, it stated to gate the pll after mapping.
> Hence we had that commit  991d9557b0c4.
> Then Gen12's mipi dsi sequence was carried fwd for all later platforms as well.
>  with the modification saying that
> Do not gate the pll until we enable the ddi buffer. 
> And this applies to gen 12 as well because they have marked the earlier mentioned step of gating pll
> after pll mapping as removed on all gen12 and later platforms.
>
> This patch now is keeping the older step as is, but making sure that clocks are ungated while enabling ddi buffer.

Where does it say for gen12+ that clocks should be ungated at any point?

My reading of the spec:

Gen11, bspec 20845 and 20597:
- start with clocks ungated at mapping
- gate after port/phy enabling (step 4m in gen11 mode set sequence)

Gen12, bspec 49204, 49188 and 55316:
- start with clocks gated at mapping
- gate *if* not already gated (steps 4c and 4i in gen12 mode set sequence)

It may be that your patch is correct, but IMO it does not match bspec.


BR,
Jani.



>
> Thanks
> Vandita
>> 
>> BR,
>> Jani.
>> 
>> 
>> 
>> >
>> > Thanks,
>> > Vandita
>> >
>> >>
>> >> BR,
>> >> Jani.
>> >>
>> >>
>> >> >  	/* enable DDI buffer */
>> >> >  	gen11_dsi_enable_ddi_buffer(encoder);
>> >> >
>> >> > @@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct
>> >> intel_encoder *encoder,
>> >> >  	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
>> >> >  	gen11_dsi_configure_transcoder(encoder, crtc_state);
>> >> >
>> >> > -	/* Step 4l: Gate DDI clocks */
>> >> > -	if (DISPLAY_VER(dev_priv) == 11)
>> >> > -		gen11_dsi_gate_clocks(encoder);
>> >> > +	gen11_dsi_gate_clocks(encoder);
>> >> >  }
>> >> >
>> >> >  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
>> >>
>> >> --
>> >> Jani Nikula, Intel Open Source Graphics Center
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
