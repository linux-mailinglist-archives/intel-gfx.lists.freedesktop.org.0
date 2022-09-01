Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58A35A930C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 11:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1125F10E671;
	Thu,  1 Sep 2022 09:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A29D10E671
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 09:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662024256; x=1693560256;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lRhhJcqCGvTe65CPtOeuIMoqPAcFhzkC3YgoINdChf8=;
 b=XiNTcG55JyVVzQKudTl35PPTEWSSqqHQ03uwkw1YvfHtaXc/b+lVXWEA
 YpWExOeHj+vLGRwzUSaSD7ZJSnB0ODjhH934aQlPh9MdrMVr3LpDrBQcI
 whScY/A5hK08A6myxoj+ONAurWZWMmkHuK2h5Lash52mSP0+Q34dmUULR
 iNE8gQWcVgPwG+jWg2ZE9EFdj8kRsBRVsW7kQQr1vIvCut0KSaUfcaAnT
 Iv0RWlmfMcxs5LsNcqABT+vvEsQR4374vtuOk2crC9h9Uu0T9SJjVGDms
 qhe1KH9Q55v+cigCOGjMTzWaNhq6GyVIpG0mBtGSUuyEEzog6xDV8y2oC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359627091"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="359627091"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 02:24:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673767850"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 01 Sep 2022 02:24:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Sep 2022 12:24:13 +0300
Date: Thu, 1 Sep 2022 12:24:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YxB6PIcwX67upkzm@intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-2-ville.syrjala@linux.intel.com>
 <YtaGkGOx4BZF3Cdm@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YtaGkGOx4BZF3Cdm@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Unify VBT version number
 comments
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 19, 2022 at 06:25:20AM -0400, Rodrigo Vivi wrote:
> On Fri, Jul 15, 2022 at 11:20:33PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Use a more standard form for the VT version number comments.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 206 ++++++++++--------
> >  1 file changed, 110 insertions(+), 96 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 509b0a419c20..ba328d130991 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -75,6 +75,20 @@ struct bdb_header {
> >  	u16 bdb_size;
> >  } __packed;
> >  
> > +/*
> > + * BDB version number dependencies are documented as:
> > + *
> > + * <start>+
> > + *    indicates the field was introduced in version <start>
> > + *    and is still valid
> > + *
> > + * <start>-<end>
> > + *    indicates the field was introduced in version <start>
> > + *    and obsoleted in version <end>+1.
> > + *
> > + * ??? indicates the specific version number is unknown
> > + */
> > +
> >  /*
> >   * There are several types of BIOS data blocks (BDBs), each block has
> >   * an ID and size in the first 3 bytes (ID in first, size in next 2).
> > @@ -144,12 +158,12 @@ struct bdb_general_features {
> >          /* bits 3 */
> >  	u8 disable_smooth_vision:1;
> >  	u8 single_dvi:1;
> > -	u8 rotate_180:1;					/* 181 */
> > +	u8 rotate_180:1;					/* 181+ */
> >  	u8 fdi_rx_polarity_inverted:1;
> > -	u8 vbios_extended_mode:1;				/* 160 */
> > -	u8 copy_ilfp_dtd_to_sdvo_lvds_dtd:1;			/* 160 */
> > -	u8 panel_best_fit_timing:1;				/* 160 */
> > -	u8 ignore_strap_state:1;				/* 160 */
> > +	u8 vbios_extended_mode:1;				/* 160+ */
> > +	u8 copy_ilfp_dtd_to_sdvo_lvds_dtd:1;			/* 160+ */
> > +	u8 panel_best_fit_timing:1;				/* 160+ */
> > +	u8 ignore_strap_state:1;				/* 160+ */
> >  
> >          /* bits 4 */
> >  	u8 legacy_monitor_detect;
> > @@ -164,11 +178,11 @@ struct bdb_general_features {
> >  	u8 rsvd11:2; /* finish byte */
> >  
> >  	/* bits 6 */
> > -	u8 tc_hpd_retry_timeout:7; /* 242 */
> > +	u8 tc_hpd_retry_timeout:7;				/* 242+ */
> >  	u8 rsvd12:1;
> >  
> >  	/* bits 7 */
> > -	u8 afc_startup_config:2;/* 249 */
> > +	u8 afc_startup_config:2;				/* 249+ */
> >  	u8 rsvd13:6;
> >  } __packed;
> >  
> > @@ -275,27 +289,27 @@ struct bdb_general_features {
> >  #define DVO_PORT_DPC		8
> >  #define DVO_PORT_DPD		9
> >  #define DVO_PORT_DPA		10
> > -#define DVO_PORT_DPE		11				/* 193 */
> > -#define DVO_PORT_HDMIE		12				/* 193 */
> > +#define DVO_PORT_DPE		11				/* 193+ */
> > +#define DVO_PORT_HDMIE		12				/* 193+ */
> >  #define DVO_PORT_DPF		13				/* N/A */
> >  #define DVO_PORT_HDMIF		14				/* N/A */
> > -#define DVO_PORT_DPG		15				/* 217 */
> > -#define DVO_PORT_HDMIG		16				/* 217 */
> > -#define DVO_PORT_DPH		17				/* 217 */
> > -#define DVO_PORT_HDMIH		18				/* 217 */
> > -#define DVO_PORT_DPI		19				/* 217 */
> > -#define DVO_PORT_HDMII		20				/* 217 */
> > -#define DVO_PORT_MIPIA		21				/* 171 */
> > -#define DVO_PORT_MIPIB		22				/* 171 */
> > -#define DVO_PORT_MIPIC		23				/* 171 */
> > -#define DVO_PORT_MIPID		24				/* 171 */
> > +#define DVO_PORT_DPG		15				/* 217+ */
> > +#define DVO_PORT_HDMIG		16				/* 217+ */
> > +#define DVO_PORT_DPH		17				/* 217+ */
> > +#define DVO_PORT_HDMIH		18				/* 217+ */
> > +#define DVO_PORT_DPI		19				/* 217+ */
> > +#define DVO_PORT_HDMII		20				/* 217+ */
> > +#define DVO_PORT_MIPIA		21				/* 171+ */
> > +#define DVO_PORT_MIPIB		22				/* 171+ */
> > +#define DVO_PORT_MIPIC		23				/* 171+ */
> > +#define DVO_PORT_MIPID		24				/* 171+ */
> >  
> > -#define HDMI_MAX_DATA_RATE_PLATFORM	0			/* 204 */
> > -#define HDMI_MAX_DATA_RATE_297		1			/* 204 */
> > -#define HDMI_MAX_DATA_RATE_165		2			/* 204 */
> > -#define HDMI_MAX_DATA_RATE_594		3			/* 249 */
> > -#define HDMI_MAX_DATA_RATE_340		4			/* 249 */
> > -#define HDMI_MAX_DATA_RATE_300		5			/* 249 */
> > +#define HDMI_MAX_DATA_RATE_PLATFORM	0			/* 204+ */
> > +#define HDMI_MAX_DATA_RATE_297		1			/* 204+ */
> > +#define HDMI_MAX_DATA_RATE_165		2			/* 204+ */
> > +#define HDMI_MAX_DATA_RATE_594		3			/* 249+ */
> > +#define HDMI_MAX_DATA_RATE_340		4			/* 249+ */
> > +#define HDMI_MAX_DATA_RATE_300		5			/* 249+ */
> >  
> >  #define LEGACY_CHILD_DEVICE_CONFIG_SIZE		33
> >  
> > @@ -379,19 +393,19 @@ struct child_device_config {
> >  		u8  device_id[10]; /* ascii string */
> >  		struct {
> >  			u8 i2c_speed;
> > -			u8 dp_onboard_redriver;			/* 158 */
> > -			u8 dp_ondock_redriver;			/* 158 */
> > -			u8 hdmi_level_shifter_value:5;		/* 169 */
> > -			u8 hdmi_max_data_rate:3;		/* 204 */
> > -			u16 dtd_buf_ptr;			/* 161 */
> > -			u8 edidless_efp:1;			/* 161 */
> > -			u8 compression_enable:1;		/* 198 */
> > -			u8 compression_method_cps:1;		/* 198 */
> > -			u8 ganged_edp:1;			/* 202 */
> > +			u8 dp_onboard_redriver;			/* 158+ */
> > +			u8 dp_ondock_redriver;			/* 158+ */
> > +			u8 hdmi_level_shifter_value:5;		/* 158+ */
> > +			u8 hdmi_max_data_rate:3;		/* 204+ */
> > +			u16 dtd_buf_ptr;			/* 161+ */
> > +			u8 edidless_efp:1;			/* 161+ */
> > +			u8 compression_enable:1;		/* 198+ */
> > +			u8 compression_method_cps:1;		/* 198+ */
> > +			u8 ganged_edp:1;			/* 202+ */
> >  			u8 reserved0:4;
> > -			u8 compression_structure_index:4;	/* 198 */
> > +			u8 compression_structure_index:4;	/* 198+ */
> >  			u8 reserved1:4;
> > -			u8 slave_port;				/* 202 */
> > +			u8 slave_port;				/* 202+ */
> >  			u8 reserved2;
> >  		} __packed;
> >  	} __packed;
> > @@ -412,16 +426,16 @@ struct child_device_config {
> >  			u8 ddc2_pin;
> >  		} __packed;
> >  		struct {
> > -			u8 efp_routed:1;			/* 158 */
> > -			u8 lane_reversal:1;			/* 184 */
> > -			u8 lspcon:1;				/* 192 */
> > -			u8 iboost:1;				/* 196 */
> > -			u8 hpd_invert:1;			/* 196 */
> > -			u8 use_vbt_vswing:1;			/* 218 */
> > +			u8 efp_routed:1;			/* 158+ */
> > +			u8 lane_reversal:1;			/* 184+ */
> > +			u8 lspcon:1;				/* 192+ */
> > +			u8 iboost:1;				/* 196+ */
> > +			u8 hpd_invert:1;			/* 196+ */
> > +			u8 use_vbt_vswing:1;			/* 218+ */
> >  			u8 flag_reserved:2;
> > -			u8 hdmi_support:1;			/* 158 */
> > -			u8 dp_support:1;			/* 158 */
> > -			u8 tmds_support:1;			/* 158 */
> > +			u8 hdmi_support:1;			/* 158+ */
> > +			u8 dp_support:1;			/* 158+ */
> > +			u8 tmds_support:1;			/* 158+ */
> >  			u8 support_reserved:5;
> >  			u8 aux_channel;
> >  			u8 dongle_detect;
> > @@ -429,7 +443,7 @@ struct child_device_config {
> >  	} __packed;
> >  
> >  	u8 pipe_cap:2;
> > -	u8 sdvo_stall:1;					/* 158 */
> > +	u8 sdvo_stall:1;					/* 158+ */
> >  	u8 hpd_status:2;
> >  	u8 integrated_encoder:1;
> >  	u8 capabilities_reserved:2;
> > @@ -437,21 +451,21 @@ struct child_device_config {
> >  
> >  	union {
> >  		u8 dvo2_wiring;
> > -		u8 mipi_bridge_type;				/* 171 */
> > +		u8 mipi_bridge_type;				/* 171+ */
> >  	} __packed;
> >  
> >  	u16 extended_type;
> >  	u8 dvo_function;
> > -	u8 dp_usb_type_c:1;					/* 195 */
> > -	u8 tbt:1;						/* 209 */
> > -	u8 flags2_reserved:2;					/* 195 */
> > -	u8 dp_port_trace_length:4;				/* 209 */
> > -	u8 dp_gpio_index;					/* 195 */
> > -	u16 dp_gpio_pin_num;					/* 195 */
> > -	u8 dp_iboost_level:4;					/* 196 */
> > -	u8 hdmi_iboost_level:4;					/* 196 */
> > -	u8 dp_max_link_rate:3;					/* 216/230 GLK+ */
> > -	u8 dp_max_link_rate_reserved:5;				/* 216/230 */
> 
> any idea about this 230 and the GLK mention?

Had to do some digging for this one.

So the story is that the field was introduced in 216 but
then they totally changed the meaning of the bits in 230.
See parse_bdb_216_dp_max_link_rate() vs.
parse_bdb_230_dp_max_link_rate(). But naturally the current
version of the spec totally fails to mention this. Sigh.

The GLK comment originally said CNL (it got changed during mass
rename when CNL stuff was dropped), and that was just based on
a note in the spec at the time that said the field is valid for
CNL+. Whether that actually included GLK or not is not at all
clear.

Also currently we parse this for everything so it's not super
obvious if we're accidentlaly parsing it on platforms where
it should not be used. But that should actually be fine since
the value should then be 0 which either means 8.1Gbps or
"no limit" which should not therefore impose any accidental
limit on anything.

I should probably put some of that into the commit message
for posterity...

> but anyway the 216+ includes the 230, so it looks okay.
> 
> for everything else I just relied on what was already in the code
> and didn't check the VBT itself, but feel free to use:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks.

> 
> 
> 
> > +	u8 dp_usb_type_c:1;					/* 195+ */
> > +	u8 tbt:1;						/* 209+ */
> > +	u8 flags2_reserved:2;					/* 195+ */
> > +	u8 dp_port_trace_length:4;				/* 209+ */
> > +	u8 dp_gpio_index;					/* 195+ */
> > +	u16 dp_gpio_pin_num;					/* 195+ */
> > +	u8 dp_iboost_level:4;					/* 196+ */
> > +	u8 hdmi_iboost_level:4;					/* 196+ */
> > +	u8 dp_max_link_rate:3;					/* 216+ */
> > +	u8 dp_max_link_rate_reserved:5;				/* 216+ */
> >  } __packed;
> >  
> >  struct bdb_general_definitions {
> > @@ -690,18 +704,18 @@ struct bdb_edp {
> >  	u32 sdrrs_msa_timing_delay;
> >  
> >  	/* ith bit indicates enabled/disabled for (i+1)th panel */
> > -	u16 edp_s3d_feature;					/* 162 */
> > -	u16 edp_t3_optimization;				/* 165 */
> > -	u64 edp_vswing_preemph;					/* 173 */
> > -	u16 fast_link_training;					/* 182 */
> > -	u16 dpcd_600h_write_required;				/* 185 */
> > -	struct edp_pwm_delays pwm_delays[16];			/* 186 */
> > -	u16 full_link_params_provided;				/* 199 */
> > -	struct edp_full_link_params full_link_params[16];	/* 199 */
> > -	u16 apical_enable;					/* 203 */
> > -	struct edp_apical_params apical_params[16];		/* 203 */
> > -	u16 edp_fast_link_training_rate[16];			/* 224 */
> > -	u16 edp_max_port_link_rate[16];				/* 244 */
> > +	u16 edp_s3d_feature;					/* 162+ */
> > +	u16 edp_t3_optimization;				/* 165+ */
> > +	u64 edp_vswing_preemph;					/* 173+ */
> > +	u16 fast_link_training;					/* 182+ */
> > +	u16 dpcd_600h_write_required;				/* 185+ */
> > +	struct edp_pwm_delays pwm_delays[16];			/* 186+ */
> > +	u16 full_link_params_provided;				/* 199+ */
> > +	struct edp_full_link_params full_link_params[16];	/* 199+ */
> > +	u16 apical_enable;					/* 203+ */
> > +	struct edp_apical_params apical_params[16];		/* 203+ */
> > +	u16 edp_fast_link_training_rate[16];			/* 224+ */
> > +	u16 edp_max_port_link_rate[16];				/* 244+ */
> >  } __packed;
> >  
> >  /*
> > @@ -710,7 +724,7 @@ struct bdb_edp {
> >  
> >  struct bdb_lvds_options {
> >  	u8 panel_type;
> > -	u8 panel_type2;						/* 212 */
> > +	u8 panel_type2;						/* 212+ */
> >  	/* LVDS capabilities, stored in a dword */
> >  	u8 pfit_mode:2;
> >  	u8 pfit_text_mode_enhanced:1;
> > @@ -733,9 +747,9 @@ struct bdb_lvds_options {
> >  	/* LVDS backlight control type bits stored here */
> >  	u32 blt_control_type_bits;
> >  
> > -	u16 lcdvcc_s0_enable;					/* 200 */
> > -	u32 rotation;						/* 228 */
> > -	u32 position;						/* 240 */
> > +	u16 lcdvcc_s0_enable;					/* 200+ */
> > +	u32 rotation;						/* 228+ */
> > +	u32 position;						/* 240+ */
> >  } __packed;
> >  
> >  /*
> > @@ -756,7 +770,7 @@ struct lvds_lfp_data_ptr {
> >  struct bdb_lvds_lfp_data_ptrs {
> >  	u8 lvds_entries;
> >  	struct lvds_lfp_data_ptr ptr[16];
> > -	struct lvds_lfp_data_ptr_table panel_name; /* 156-163? */
> > +	struct lvds_lfp_data_ptr_table panel_name;		/* (156-163?)+ */
> >  } __packed;
> >  
> >  /*
> > @@ -808,20 +822,20 @@ struct lvds_lfp_panel_name {
> >  } __packed;
> >  
> >  struct lvds_lfp_black_border {
> > -	u8 top; /* 227 */
> > -	u8 bottom; /* 227 */
> > -	u8 left; /* 238 */
> > -	u8 right; /* 238 */
> > +	u8 top;		/* 227+ */
> > +	u8 bottom;	/* 227+ */
> > +	u8 left;	/* 238+ */
> > +	u8 right;	/* 238+ */
> >  } __packed;
> >  
> >  struct bdb_lvds_lfp_data_tail {
> > -	struct lvds_lfp_panel_name panel_name[16]; /* 156-163? */
> > -	u16 scaling_enable; /* 187 */
> > -	u8 seamless_drrs_min_refresh_rate[16]; /* 188 */
> > -	u8 pixel_overlap_count[16]; /* 208 */
> > -	struct lvds_lfp_black_border black_border[16]; /* 227 */
> > -	u16 dual_lfp_port_sync_enable; /* 231 */
> > -	u16 gpu_dithering_for_banding_artifacts; /* 245 */
> > +	struct lvds_lfp_panel_name panel_name[16];		/* (156-163?)+ */
> > +	u16 scaling_enable;					/* 187+ */
> > +	u8 seamless_drrs_min_refresh_rate[16];			/* 188+ */
> > +	u8 pixel_overlap_count[16];				/* 208+ */
> > +	struct lvds_lfp_black_border black_border[16];		/* 227+ */
> > +	u16 dual_lfp_port_sync_enable;				/* 231+ */
> > +	u16 gpu_dithering_for_banding_artifacts;		/* 245+ */
> >  } __packed;
> >  
> >  /*
> > @@ -836,7 +850,7 @@ struct lfp_backlight_data_entry {
> >  	u8 active_low_pwm:1;
> >  	u8 obsolete1:5;
> >  	u16 pwm_freq_hz;
> > -	u8 min_brightness; /* Obsolete from 234+ */
> > +	u8 min_brightness;					/* ???-233 */
> >  	u8 obsolete2;
> >  	u8 obsolete3;
> >  } __packed;
> > @@ -859,7 +873,7 @@ struct lfp_brightness_level {
> >  struct bdb_lfp_backlight_data {
> >  	u8 entry_size;
> >  	struct lfp_backlight_data_entry data[16];
> > -	u8 level[16]; /* Obsolete from 234+ */
> > +	u8 level[16];							/* ???-233 */
> >  	struct lfp_backlight_control_method backlight_control[16];
> >  	struct lfp_brightness_level brightness_level[16];		/* 234+ */
> >  	struct lfp_brightness_level brightness_min_level[16];		/* 234+ */
> > @@ -908,11 +922,11 @@ struct bdb_lfp_power {
> >  	u16 adb;
> >  	u16 lace_enabled_status;
> >  	struct aggressiveness_profile_entry aggressiveness[16];
> > -	u16 hobl; /* 232+ */
> > -	u16 vrr_feature_enabled; /* 233+ */
> > -	u16 elp; /* 247+ */
> > -	u16 opst; /* 247+ */
> > -	struct aggressiveness_profile2_entry aggressiveness2[16]; /* 247+ */
> > +	u16 hobl;							/* 232+ */
> > +	u16 vrr_feature_enabled;					/* 233+ */
> > +	u16 elp;							/* 247+ */
> > +	u16 opst;							/* 247+ */
> > +	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247+ */
> >  } __packed;
> >  
> >  /*
> > @@ -922,10 +936,10 @@ struct bdb_lfp_power {
> >  #define MAX_MIPI_CONFIGURATIONS	6
> >  
> >  struct bdb_mipi_config {
> > -	struct mipi_config config[MAX_MIPI_CONFIGURATIONS]; /* 175 */
> > -	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS]; /* 177 */
> > -	struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS]; /* 186 */
> > -	u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS]; /* 190 */
> > +	struct mipi_config config[MAX_MIPI_CONFIGURATIONS];		/* 175+ */
> > +	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS];		/* 177+ */
> > +	struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS];	/* 186+ */
> > +	u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS];		/* 190+ */
> >  } __packed;
> >  
> >  /*
> > -- 
> > 2.35.1
> > 

-- 
Ville Syrjälä
Intel
