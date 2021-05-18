Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF08387467
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4338F6EAD9;
	Tue, 18 May 2021 08:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351976EAD9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 08:50:54 +0000 (UTC)
IronPort-SDR: 2dhAv0UxzKdw9vLlu9SzMw/3mzh598dGT79RYfLketxfmOeL4PeHZAk4cTkPUvYGXsnWvLnnmt
 tUd5nwsemJLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200714635"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="200714635"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:50:53 -0700
IronPort-SDR: FvTpoEPbww0GOkNwGRU7zxWKbwdezs1TC3WDT3Yq9ysTHb5i11DBg3zD7kroBqDTIGfk8Vs0Dz
 lx9ddfll1Djg==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="472855535"
Received: from lmrad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.52.115])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:50:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Surendrakumar Upadhyay\,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandey\,
 Hariom" <hariom.pandey@intel.com>
In-Reply-To: <SN6PR11MB3421B41BA6F3225EC4C9FF92DF2C9@SN6PR11MB3421.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210513122352.176643-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87tun1fny2.fsf@intel.com>
 <SN6PR11MB3421B41BA6F3225EC4C9FF92DF2C9@SN6PR11MB3421.namprd11.prod.outlook.com>
Date: Tue, 18 May 2021 11:50:48 +0300
Message-ID: <87h7j0fms7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 May 2021, "Surendrakumar Upadhyay, TejaskumarX"	<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> Thanks for review. Responses inline.
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: 17 May 2021 19:43
>> To: Surendrakumar Upadhyay, TejaskumarX
>> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
>> gfx@lists.freedesktop.org; Pandey, Hariom <hariom.pandey@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
>> 
>> On Thu, 13 May 2021, Tejas Upadhyay
>> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>> > When pipe A is disabled and MIPI DSI is enabled on pipe B, the AMT
>> > KVMR feature will incorrectly see pipe A as enabled.
>> > Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave it set
>> > while DSI is enabled on pipe B. No impact to setting it all the time.
>> >
>> > Changes since V1:
>> > 	- ./dim checkpatch errors addressed
>> >
>> > Signed-off-by: Tejas Upadhyay
>> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 38
>> ++++++++++++++++++++++++++
>> >  drivers/gpu/drm/i915/i915_reg.h        |  1 +
>> >  2 files changed, 39 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > index ce544e20f35c..e5a6660861e8 100644
>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > @@ -40,6 +40,8 @@
>> >  #include "skl_scaler.h"
>> >  #include "skl_universal_plane.h"
>> >
>> > +static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
>> > +				   enum pipe *pipe);
>> >  static int header_credits_available(struct drm_i915_private *dev_priv,
>> >  				    enum transcoder dsi_trans)
>> >  {
>> > @@ -1036,9 +1038,26 @@ static void gen11_dsi_enable_transcoder(struct
>> intel_encoder *encoder)
>> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> >  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> >  	enum port port;
>> > +	enum pipe pipe;
>> >  	enum transcoder dsi_trans;
>> >  	u32 tmp;
>> >
>> > +	/*
>> > +	 * WA 1409054076:JSL
>> > +	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
>> > +	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
>> > +	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
>> > +	 * it set while DSI is enabled on pipe B
>> > +	 */
>> > +	gen11_dsi_get_hw_state(encoder, &pipe);
>> 
>> That function is only for reading the state for taking over hardware state at
>> probe and hardware/software state verification after modeset.
>> 
>> It reads the state that is being set later in this function, so it's never going to
>> be correct here! Also, we try not to do stuff based on the hardware state, but
>> rather the software state.
>
> Okay I will correct that.
>
>> 
>> > +	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
>> > +	    pipe == PIPE_B &&
>> > +	    dev_priv->active_pipes != BIT(PIPE_A) &&
>> > +	    !(intel_de_read(dev_priv, CHICKEN_PAR1_1) &
>> > +			    IGNORE_KVMR_PIPE_A)) {
>> > +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
>> > +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) |
>> IGNORE_KVMR_PIPE_A);
>> > +	}
>> 
>> As far as I understand the explanation, we can set this regardless of whether
>> pipe A is disabled or not, and we can just set it based on where DSI is
>> enabled.
>> 
>> It should probably also be IS_JSL_EHL().
>
> Will it not affect if pipe A is enabled and we set intel_de_rmw(dev_priv, CHICKEN_PAR1_1, 0, IGNORE_KVMR_PIPE_A);. What I could understand is we only set this bit when pipe A is disable and we have MIPI DSI enable on pipe B. Correct me again If I am getting it wrong.

The spec description is lacking, really. But, how are we supposed to
interpret "No impact to setting it all the time."?

Only setting the bit when pipe A is disabled is going to be
harder. That's another thing that was wrong with using
gen11_dsi_get_hw_state(); it'll only take DSI into account, not *other*
things that might be using pipe A.

Do you actually have a real world bug where you can see this?

> Also Bspec says clearly workaround is for JSL only. Should I consider
> EHL also in this?

Yes, they're practically the same, and we don't even have
IS_JASPERLAKE() or IS_ELKHARTLAKE() for that precise reason. There are a
couple of rare cases where we need to make the distinction.

>
>> 
>> With pipe from new_crtc_state:
>> 
>> 	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
>>         	intel_de_rmw(dev_priv, CHICKEN_PAR1_1, 0,
>> IGNORE_KVMR_PIPE_A);
>> 
>> To disable, with pipe from old_crtc_state:
>> 
>> 	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
>>         	intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_KVMR_PIPE_A,
>> 0);
>> 
>> At the right locations.
>
> Ok I will take this into consideration.
>
>> 
>> >  	for_each_dsi_port(port, intel_dsi->ports) {
>> >  		dsi_trans = dsi_port_to_transcoder(port);
>> >  		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans)); @@ -
>> 1245,6
>> > +1264,7 @@ static void gen11_dsi_enable(struct intel_atomic_state
>> > *state,
>> >
>> >  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
>> >
>> > +
>> >  	/* step6d: enable dsi transcoder */
>> >  	gen11_dsi_enable_transcoder(encoder);
>> >
>> > @@ -1260,9 +1280,27 @@ static void gen11_dsi_disable_transcoder(struct
>> intel_encoder *encoder)
>> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> >  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> >  	enum port port;
>> > +	enum pipe pipe;
>> >  	enum transcoder dsi_trans;
>> >  	u32 tmp;
>> >
>> > +	/*
>> > +	 * WA 1409054076:JSL
>> > +	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
>> > +	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
>> > +	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
>> > +	 * it set while DSI is enabled on pipe B
>> > +	 */
>> > +	gen11_dsi_get_hw_state(encoder, &pipe);
>> > +	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
>> > +	    pipe == PIPE_B &&
>> > +	    dev_priv->active_pipes != BIT(PIPE_A) &&
>> > +	    (intel_de_read(dev_priv, CHICKEN_PAR1_1) &
>> > +			   IGNORE_KVMR_PIPE_A)) {
>> > +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
>> > +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) &
>> > +						!IGNORE_KVMR_PIPE_A);
>> > +	}
>> >  	for_each_dsi_port(port, intel_dsi->ports) {
>> >  		dsi_trans = dsi_port_to_transcoder(port);
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> > b/drivers/gpu/drm/i915/i915_reg.h index 871d839dfcb8..8b67cd14ff7e
>> > 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -8039,6 +8039,7 @@ enum {
>> >  # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
>> >
>> >  #define CHICKEN_PAR1_1			_MMIO(0x42080)
>> > +#define  IGNORE_KVMR_PIPE_A		BIT(23)
>> 
>> REG_BIT(), not BIT(). Please read the big comment near the top of the file.
>> Please observe the REG_BIT() on the very next line.
>
> Sorry to say but there is no uniformity in term of which macro to use. Some places I have got review earlier to add BIT() and I can see at some places not BIT() used nor REG_BIT(). I will correct for this matter 
> to use REG_BIT().

In i915_reg.h *always* use REG_BIT(). I just sent a patch to fix
accidental uses of BIT() that have crept in.


BR,
Jani.

>
> Thanks,
> Tejas
>> 
>> >  #define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
>> >  #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
>> >  #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
