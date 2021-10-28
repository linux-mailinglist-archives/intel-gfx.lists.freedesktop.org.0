Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0E943E3DD
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 16:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B366E986;
	Thu, 28 Oct 2021 14:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209F46E991
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 14:35:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="227874719"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="227874719"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 07:35:46 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="498427157"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 07:35:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Deak\, Imre" <imre.deak@intel.com>, "Roper\,
 Matthew D" <matthew.d.roper@intel.com>,
 "ville.syrjala\@linux.intel.com" <ville.syrjala@linux.intel.com>
In-Reply-To: <122a37fb754049608841b35115f6f594@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-5-vandita.kulkarni@intel.com>
 <87zgqtfk8j.fsf@intel.com> <122a37fb754049608841b35115f6f594@intel.com>
Date: Thu, 28 Oct 2021 17:35:39 +0300
Message-ID: <87mtmtfc90.fsf@intel.com>
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
>> Sent: Thursday, October 28, 2021 5:13 PM
>> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com; Kulkarni,
>> Vandita <vandita.kulkarni@intel.com>
>> Subject: Re: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the phy
>> 
>> On Tue, 19 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
>> > For the PHY enable/disable signalling to propagate between Dispaly and
>> > PHY, DDI clocks need to be running when enabling the PHY.
>> >
>> > Bspec: 49188 says gate the clocks after enabling the
>> >        DDI Buffer.
>> >        We also have a commit 991d9557b0c4 ("drm/i915/tgl/dsi: Gate the ddi
>> >        clocks after pll mapping") which gates the clocks much before,
>> >        as per the older spec. This commit nullifies its effect and makes
>> >        sure that the clocks are not gated while we enable the DDI
>> >        buffer.
>> > v2: Bspec ref, add a comment wrt earlier clock gating sequence (Jani)
>> >
>> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
>> >  1 file changed, 3 insertions(+), 5 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > index 63dd75c6448a..e5ef5c4a32d7 100644
>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > @@ -1135,8 +1135,6 @@ static void
>> >  gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>> >  			      const struct intel_crtc_state *crtc_state)  {
>> > -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> > -
>> >  	/* step 4a: power up all lanes of the DDI used by DSI */
>> >  	gen11_dsi_power_up_lanes(encoder);
>> >
>> > @@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct
>> intel_encoder *encoder,
>> >  	/* step 4c: configure voltage swing and skew */
>> >  	gen11_dsi_voltage_swing_program_seq(encoder);
>> >
>> > +	gen11_dsi_ungate_clocks(encoder);
>> > +
>> 
>> What about the changes to gen11_dsi_map_pll() in commit 991d9557b0c4
>> ("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")? It starts off with
>> clocks gated for gen12+, ungated otherwise.
>
> Now the same spec is updated with the gate step after ddi buffer enable.
> And the one before is marked with remove tag.
> That makes all gen12+ align with gen 11.
> You suggested to update the same in the commit message on v1.
> Should I still consider just reverting that commit?

I'm just royally confused about the sequence myself, so I'm asking
you. ;)

It doesn't help that the code has step references to gen 11 mode set
that are completely different from the steps in gen 12 sequence.

BR,
Jani.



>
> Thanks,
> Vandita
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> >  	/* enable DDI buffer */
>> >  	gen11_dsi_enable_ddi_buffer(encoder);
>> >
>> > @@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct
>> intel_encoder *encoder,
>> >  	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
>> >  	gen11_dsi_configure_transcoder(encoder, crtc_state);
>> >
>> > -	/* Step 4l: Gate DDI clocks */
>> > -	if (DISPLAY_VER(dev_priv) == 11)
>> > -		gen11_dsi_gate_clocks(encoder);
>> > +	gen11_dsi_gate_clocks(encoder);
>> >  }
>> >
>> >  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
