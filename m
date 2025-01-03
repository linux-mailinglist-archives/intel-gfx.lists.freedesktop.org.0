Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C28C5A00759
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 11:01:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC3D10E858;
	Fri,  3 Jan 2025 10:01:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H0bH4mu9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE1710E853;
 Fri,  3 Jan 2025 10:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735898460; x=1767434460;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NqtMQC+NvjRxQSkU0kUFEFFmvtKNCpbnrL3GMU5c1OM=;
 b=H0bH4mu9jk66NkXD0G+4q3YcE3OSMgxE7vKewXgCE8qWai+RbsTSVR2n
 m7juv6o165pHbaBLSH+J9m9OQ5aisrsv4erK16g8h8bAJeixirf97ktES
 upbMo3IjMjSrdlqC1n6bblgZbPsF4nU305m3TutUj1dJDjKLTMq5Rc/nk
 V2Xl0j8MUXR+sFgd+dXneybiZ7Gbio0Ujm26Q4HCH5lNwEsHDL3+fIAly
 0s2bjvd4gN783A1arWuBHa9LFzp5GDJvWMZKL7vdlvMgl0w7BdtaGCWxd
 YIxiFanNj0/nfuXJoqmRPh5ger8Loc3A/D/0F4s6MA/iMB0ZegButn8ah w==;
X-CSE-ConnectionGUID: W3/B0Uf4T0ib1EOhjgHETg==
X-CSE-MsgGUID: 6MLYzylnQG+JAU+hufzCLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="23746474"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="23746474"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:01:00 -0800
X-CSE-ConnectionGUID: iGGj7tJaQiWam0g5ermyPg==
X-CSE-MsgGUID: wSDUlqx0TF23DW7CaSF54w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101944124"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:00:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v5] drm/i915/dp: Guarantee a minimum HBlank time
In-Reply-To: <SN7PR11MB675052BEE598A539A37D464DE3152@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250103-hblank-v5-1-269a8748cf5b@intel.com>
 <SN7PR11MB675052BEE598A539A37D464DE3152@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 03 Jan 2025 12:00:55 +0200
Message-ID: <87v7uwmd2g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 03 Jan 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun R
>> Murthy
>> Sent: Friday, January 3, 2025 10:43 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>> Subject: [PATCH v5] drm/i915/dp: Guarantee a minimum HBlank time
>> 
>> Mandate a minimum Hblank symbol cycle count between BS and BE in 8b/10b
>> MST and 128b/132b mode.
>> Spec: DP2.1a
>
> The spec is mentioned usually right before the Signed-off-by
> Spec:
> Signed-off-by

They're called commit message trailers [1]. We just don't reference DP
specs like this, there really isn't much point because it's all free
form. Please put it in the commit message prose as proper sentences.

And what good does a "DP2.1a" spec reference bring us? It's 1500+
pages. Please cite a section.

(Bspec references we do use, and use "Bspec:" for them.)


[1] https://git-scm.com/docs/git-interpret-trailers


>
>> 
>> v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
>> v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
>> v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
>>     (Jani)
>>     Limit hblank to 511 and accommodate BS/BE in calculated value
>>     (Srikanth)
>> v5: Some spelling corrections (Suraj)
>> 
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  1 +
>>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 35
>> ++++++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_reg.h                    |  4 +++
>>  4 files changed, 41 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index
>> 1faef60be4728cd80a0a6b0151797ceda5c443ce..0e7e0b7803d9865177d6f
>> 68e8afdef94a91d9697 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -248,6 +248,7 @@ void intel_crtc_state_dump(const struct
>> intel_crtc_state *pipe_config,
>>  			   str_enabled_disabled(pipe_config-
>> >has_sel_update),
>>  			   str_enabled_disabled(pipe_config-
>> >has_panel_replay),
>>  			   str_enabled_disabled(pipe_config-
>> >enable_psr2_sel_fetch));
>> +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config-
>> >min_hblank);
>>  	}
>> 
>>  	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n", diff -
>> -git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index
>> eb9dd1125a4a09511936b81219e7f38fae106dfd..7d3a7700c44ef200d811
>> d9e90ea465c06104287e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1095,6 +1095,7 @@ struct intel_crtc_state {
>> 
>>  	int max_link_bpp_x16;	/* in 1/16 bpp units */
>>  	int pipe_bpp;		/* in 1 bpp units */
>> +	int min_hblank;		/* min HBlank for DP2.1 */
>
> I think this comment should state min HBlank for MST and not DP2.1 since we use it
> For non uhbr cases too
> With the above fixed
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>>  	struct intel_link_m_n dp_m_n;
>> 
>>  	/* m2_n2 for eDP downclock */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index
>> fffd199999e02eb66ea478ff872f72b277bd3970..bd561c08d945fcafa65af92
>> 54a71cd66f17923d2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -211,6 +211,35 @@ static int intel_dp_mst_dsc_get_slice_count(const
>> struct intel_connector *connec
>>  					    num_joined_pipes);
>>  }
>> 
>> +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state
>> *crtc_state,
>> +					    struct intel_connector *connector,
>> +					    int bpp_x16)
>> +{
>> +	struct intel_encoder *encoder = connector->encoder;
>> +	struct intel_display *display = to_intel_display(encoder);
>> +	const struct drm_display_mode *adjusted_mode =
>> +					&crtc_state->hw.adjusted_mode;
>> +	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
>> +	int hblank;
>> +
>> +	if (DISPLAY_VER(display) < 20)
>> +		return;
>> +
>> +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b
>> MST & 128b/132b */
>> +	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal -
>> +adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
>> +
>> +	/* bit 8:0 minimum hblank symbol cylce count, i.e maximum value
>> would be 511 */
>> +	hblank = min(511, hblank);
>> +
>> +	/* Software needs to adjust the BS/BE framing control from the
>> calculated value */
>> +	hblank = hblank - 2;

Please reconsider your comments above. How does "Software needs to" in
driver code help? But then "BS/BE" goes unexplained. Please try to
actually help the reader instead of copy-pasting from bspec.

Also, spell check.

>> +
>> +	if (intel_dp_is_uhbr(crtc_state))
>> +		crtc_state->min_hblank = max(hblank, 5);
>> +	else
>> +		crtc_state->min_hblank = max(hblank, 3);

I'm not a huge fan of storing direct register values in crtc state.

The member name is "min_hblank", the comment and logging for it say "min
hblank", but there's zero indication what the value actually is. I think
it's surprising it's some direct register value instead of the logical
value.


}
>> +
>>  static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>>  					      struct intel_crtc_state *crtc_state,
>>  					      int max_bpp, int min_bpp,
>> @@ -284,6 +313,8 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct
>> intel_dp *intel_dp,
>>  		remote_bw_overhead =
>> intel_dp_mst_bw_overhead(crtc_state, connector,
>>  							      true,
>> dsc_slice_count, link_bpp_x16);
>> 
>> +		intel_dp_mst_compute_min_hblank(crtc_state, connector,
>> link_bpp_x16);
>> +
>>  		intel_dp_mst_compute_m_n(crtc_state, connector,
>>  					 local_bw_overhead,
>>  					 link_bpp_x16,
>> @@ -1267,6 +1298,10 @@ static void mst_stream_enable(struct
>> intel_atomic_state *state,
>>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz
>> & 0xffffff));
>>  	}
>> 
>> +	if (DISPLAY_VER(display) >= 20)
>> +		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
>> +			       pipe_config->min_hblank);
>> +
>>  	enable_bs_jitter_was(pipe_config);
>> 
>>  	intel_ddi_enable_transcoder_func(encoder, pipe_config); diff --git
>> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index
>> 765e6c0528fb0b5a894395b77a5edbf0b0c80009..7bd783931199e2e5c7e1
>> 5358bb4d2c904f28176a 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3197,6 +3197,10 @@
>>  #define _TRANS_DP2_VFREQLOW_D			0x630a8
>>  #define TRANS_DP2_VFREQLOW(trans)
>> 	_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A,
>> _TRANS_DP2_VFREQLOW_B)
>> 
>> +#define _DP_MIN_HBLANK_CTL_A			0x600ac
>> +#define _DP_MIN_HBLANK_CTL_B			0x610ac
>> +#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans,
>> _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)
>> +
>>  /* SNB eDP training params */
>>  /* SNB A-stepping */
>>  #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
>> 
>> ---
>> base-commit: 048d83e7f9dae81c058d31c371634c1c317b3013
>> change-id: 20250103-hblank-cd7e78cbe178
>> 
>> Best regards,
>> --
>> Arun R Murthy <arun.r.murthy@intel.com>
>

-- 
Jani Nikula, Intel
