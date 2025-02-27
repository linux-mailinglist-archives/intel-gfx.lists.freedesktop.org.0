Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF97EA4881B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 19:48:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD2A10E052;
	Thu, 27 Feb 2025 18:47:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUXrLKyR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC4310E00B;
 Thu, 27 Feb 2025 18:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740682079; x=1772218079;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=U7p7HzyxxOtBTHSHy10PWby0XlC4/djbOb7y1AS6qS0=;
 b=MUXrLKyRCZj4e7o1cbCQ2p8o/cpxdzk69DdhPPB/FG9KstRKtXLkHHjW
 LaokeAvhtiUqWhw/+EoK34Oj/bdO3i9aZQziWUJ6AQWdlKLu0+tK97GRg
 Suw1VVzCub9mvRBSnUOJInP/XAYUSSMK+CqjnzuyBqSjs5SSw1x5HuCKp
 0tlGruotkGnHS7Zk74kPepN9/G69kaMkjodzRQs0db51E8vHNddybJb5T
 P+WJK/fgtRoRIARSF61H90gxsQFF+JODqO647qAvP5wxWZghOTiEf3spm
 sgRmLK4b+lj4fPzzN0FRT+ot1MKcw77YqOoWCVRG1a+G6nsAWCGZbvS7j g==;
X-CSE-ConnectionGUID: LLNL9j0tSxmm1oNegj3amA==
X-CSE-MsgGUID: 4dZQ5Uv5Rx+DHUAm/U2eZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="53001282"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="53001282"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 10:47:58 -0800
X-CSE-ConnectionGUID: br9T8xMfRs6npboZvIJevw==
X-CSE-MsgGUID: Dd2fNQKOQMGG1/w0uoAsPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="122055788"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.236])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 10:47:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/vdsc: intel_display conversions
In-Reply-To: <SN7PR11MB6750ADE79EE5378C1745D6FBE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250227112240.278827-1-suraj.kandpal@intel.com>
 <87o6yn37lk.fsf@intel.com>
 <SN7PR11MB6750ADE79EE5378C1745D6FBE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 27 Feb 2025 20:47:51 +0200
Message-ID: <87ikov2pig.fsf@intel.com>
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

On Thu, 27 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, February 27, 2025 5:47 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Subject: Re: [PATCH] drm/i915/vdsc: intel_display conversions
>>
>> On Thu, 27 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > intel_display conversions for vdsc in an effort to move away from
>> > drm_i915_private.
>> > While at it use display->platform.xx.
>>
>> Please update with
>>
>> -#include "i915_drv.h"
>> +#include "i915_utils.h"
>>
>> and you get
>>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> Thanks for the reviews pushed to drm-intel-next with the above
> mentioned changes

I didn't really mean you should make the changes while applying.

BR,
Jani.



>
> Regards,
> Suraj Kandpal
>
>>
>>
>> BR,
>> Jani.
>>
>>
>>
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 180
>> > +++++++++++-----------
>> >  1 file changed, 87 insertions(+), 93 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > index 6e7151346382..35d558ca98db 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > @@ -22,14 +22,13 @@
>> >
>> >  bool intel_dsc_source_support(const struct intel_crtc_state
>> > *crtc_state)  {
>> > -   const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> >
>> > -   if (!HAS_DSC(i915))
>> > +   if (!HAS_DSC(display))
>> >             return false;
>> >
>> > -   if (DISPLAY_VER(i915) == 11 && cpu_transcoder == TRANSCODER_A)
>> > +   if (DISPLAY_VER(display) == 11 && cpu_transcoder == TRANSCODER_A)
>> >             return false;
>> >
>> >     return true;
>> > @@ -37,9 +36,9 @@ bool intel_dsc_source_support(const struct
>> > intel_crtc_state *crtc_state)
>> >
>> >  static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder
>> > cpu_transcoder)  {
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(crtc);
>> >
>> > -   if (DISPLAY_VER(i915) >= 12)
>> > +   if (DISPLAY_VER(display) >= 12)
>> >             return true;
>> >
>> >     if (cpu_transcoder == TRANSCODER_EDP || @@ -48,7 +47,7 @@ static
>> > bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>> >             return false;
>> >
>> >     /* There's no pipe A DSC engine on ICL */
>> > -   drm_WARN_ON(&i915->drm, crtc->pipe == PIPE_A);
>> > +   drm_WARN_ON(display->drm, crtc->pipe == PIPE_A);
>> >
>> >     return true;
>> >  }
>> > @@ -262,8 +261,7 @@ static int intel_dsc_slice_dimensions_valid(struct
>> > intel_crtc_state *pipe_config
>> >
>> >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  {
>> > -   struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>> > -   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(pipe_config);
>> >     struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
>> >     u16 compressed_bpp = fxp_q4_to_int(pipe_config-
>> >dsc.compressed_bpp_x16);
>> >     int err;
>> > @@ -276,7 +274,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
>> *pipe_config)
>> >     err = intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
>> >
>> >     if (err) {
>> > -           drm_dbg_kms(&dev_priv->drm, "Slice dimension
>> requirements not met\n");
>> > +           drm_dbg_kms(display->drm, "Slice dimension requirements
>> not
>> > +met\n");
>> >             return err;
>> >     }
>> >
>> > @@ -287,7 +285,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
>> *pipe_config)
>> >     vdsc_cfg->convert_rgb = pipe_config->output_format !=
>> INTEL_OUTPUT_FORMAT_YCBCR420 &&
>> >                             pipe_config->output_format !=
>> INTEL_OUTPUT_FORMAT_YCBCR444;
>> >
>> > -   if (DISPLAY_VER(dev_priv) >= 14 &&
>> > +   if (DISPLAY_VER(display) >= 14 &&
>> >         pipe_config->output_format ==
>> INTEL_OUTPUT_FORMAT_YCBCR420)
>> >             vdsc_cfg->native_420 = true;
>> >     /* We do not support YcBCr422 as of now */ @@ -308,7 +306,7 @@ int
>> > intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>> >     vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
>> >
>> >     if (vdsc_cfg->bits_per_component < 8) {
>> > -           drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
>> met bpc: %d\n",
>> > +           drm_dbg_kms(display->drm, "DSC bpc requirements not met
>> bpc: %d\n",
>> >                         vdsc_cfg->bits_per_component);
>> >             return -EINVAL;
>> >     }
>> > @@ -320,7 +318,7 @@ int intel_dsc_compute_params(struct intel_crtc_state
>> *pipe_config)
>> >      * upto uncompressed bpp-1, hence add calculations for all the rc
>> >      * parameters
>> >      */
>> > -   if (DISPLAY_VER(dev_priv) >= 13) {
>> > +   if (DISPLAY_VER(display) >= 13) {
>> >             calculate_rc_params(vdsc_cfg);
>> >     } else {
>> >             if ((compressed_bpp == 8 ||
>> > @@ -356,7 +354,7 @@ int intel_dsc_compute_params(struct
>> > intel_crtc_state *pipe_config)  enum intel_display_power_domain
>> > intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder
>> > cpu_transcoder)  {
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(crtc);
>> >     enum pipe pipe = crtc->pipe;
>> >
>> >     /*
>> > @@ -370,7 +368,8 @@ intel_dsc_power_domain(struct intel_crtc *crtc,
>> enum transcoder cpu_transcoder)
>> >      * the pipe in use. Hence another reference on the pipe power domain
>> >      * will suffice. (Except no VDSC/joining on ICL pipe A.)
>> >      */
>> > -   if (DISPLAY_VER(i915) == 12 && !IS_ROCKETLAKE(i915) && pipe ==
>> PIPE_A)
>> > +   if (DISPLAY_VER(display) == 12 && !display->platform.rocketlake &&
>> > +       pipe == PIPE_A)
>> >             return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>> >     else if (is_pipe_dsc(crtc, cpu_transcoder))
>> >             return POWER_DOMAIN_PIPE(pipe);
>> > @@ -416,26 +415,25 @@ static void intel_dsc_get_pps_reg(const struct
>> > intel_crtc_state *crtc_state, int  static void intel_dsc_pps_write(const struct
>> intel_crtc_state *crtc_state,
>> >                             int pps, u32 pps_val)
>> >  {
>> > -   struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     i915_reg_t dsc_reg[3];
>> >     int i, vdsc_per_pipe, dsc_reg_num;
>> >
>> >     vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>> >     dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
>> >
>> > -   drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
>> > +   drm_WARN_ON_ONCE(display->drm, dsc_reg_num < vdsc_per_pipe);
>> >
>> >     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
>> >
>> >     for (i = 0; i < dsc_reg_num; i++)
>> > -           intel_de_write(i915, dsc_reg[i], pps_val);
>> > +           intel_de_write(display, dsc_reg[i], pps_val);
>> >  }
>> >
>> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
>> > *crtc_state)  {
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> >     const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>> >     enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> >     enum pipe pipe = crtc->pipe;
>> > @@ -529,7 +527,7 @@ static void intel_dsc_pps_configure(const struct
>> intel_crtc_state *crtc_state)
>> >                                           vdsc_cfg->slice_height);
>> >     intel_dsc_pps_write(crtc_state, 16, pps_val);
>> >
>> > -   if (DISPLAY_VER(dev_priv) >= 14) {
>> > +   if (DISPLAY_VER(display) >= 14) {
>> >             /* PPS 17 */
>> >             pps_val = DSC_PPS17_SL_BPG_OFFSET(vdsc_cfg-
>> >second_line_bpg_offset);
>> >             intel_dsc_pps_write(crtc_state, 17, pps_val); @@ -547,44
>> +545,44 @@
>> > static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>> >                     (u32)(vdsc_cfg->rc_buf_thresh[i] <<
>> >                           BITS_PER_BYTE * (i % 4));
>> >     if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
>> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_0,
>> >                            rc_buf_thresh_dword[0]);
>> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
>> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_0_UDW,
>> >                            rc_buf_thresh_dword[1]);
>> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1,
>> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_1,
>> >                            rc_buf_thresh_dword[2]);
>> > -           intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
>> > +           intel_de_write(display, DSCA_RC_BUF_THRESH_1_UDW,
>> >                            rc_buf_thresh_dword[3]);
>> >             if (vdsc_instances_per_pipe > 1) {
>> > -                   intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
>> > +                   intel_de_write(display, DSCC_RC_BUF_THRESH_0,
>> >                                    rc_buf_thresh_dword[0]);
>> > -                   intel_de_write(dev_priv,
>> DSCC_RC_BUF_THRESH_0_UDW,
>> > +                   intel_de_write(display,
>> DSCC_RC_BUF_THRESH_0_UDW,
>> >                                    rc_buf_thresh_dword[1]);
>> > -                   intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_1,
>> > +                   intel_de_write(display, DSCC_RC_BUF_THRESH_1,
>> >                                    rc_buf_thresh_dword[2]);
>> > -                   intel_de_write(dev_priv,
>> DSCC_RC_BUF_THRESH_1_UDW,
>> > +                   intel_de_write(display,
>> DSCC_RC_BUF_THRESH_1_UDW,
>> >                                    rc_buf_thresh_dword[3]);
>> >             }
>> >     } else {
>> > -           intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_0(pipe),
>> > +           intel_de_write(display, ICL_DSC0_RC_BUF_THRESH_0(pipe),
>> >                            rc_buf_thresh_dword[0]);
>> > -           intel_de_write(dev_priv,
>> ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
>> > +           intel_de_write(display,
>> ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
>> >                            rc_buf_thresh_dword[1]);
>> > -           intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1(pipe),
>> > +           intel_de_write(display, ICL_DSC0_RC_BUF_THRESH_1(pipe),
>> >                            rc_buf_thresh_dword[2]);
>> > -           intel_de_write(dev_priv,
>> ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
>> > +           intel_de_write(display,
>> ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
>> >                            rc_buf_thresh_dword[3]);
>> >             if (vdsc_instances_per_pipe > 1) {
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    ICL_DSC1_RC_BUF_THRESH_0(pipe),
>> >                                    rc_buf_thresh_dword[0]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe),
>> >                                    rc_buf_thresh_dword[1]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    ICL_DSC1_RC_BUF_THRESH_1(pipe),
>> >                                    rc_buf_thresh_dword[2]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe),
>> >                                    rc_buf_thresh_dword[3]);
>> >             }
>> > @@ -601,88 +599,88 @@ static void intel_dsc_pps_configure(const struct
>> intel_crtc_state *crtc_state)
>> >                            (vdsc_cfg->rc_range_params[i].range_min_qp <<
>> >                             RC_MIN_QP_SHIFT)) << 16 * (i % 2));
>> >     if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
>> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_0,
>> >                            rc_range_params_dword[0]);
>> > -           intel_de_write(dev_priv,
>> DSCA_RC_RANGE_PARAMETERS_0_UDW,
>> > +           intel_de_write(display,
>> DSCA_RC_RANGE_PARAMETERS_0_UDW,
>> >                            rc_range_params_dword[1]);
>> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_1,
>> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_1,
>> >                            rc_range_params_dword[2]);
>> > -           intel_de_write(dev_priv,
>> DSCA_RC_RANGE_PARAMETERS_1_UDW,
>> > +           intel_de_write(display,
>> DSCA_RC_RANGE_PARAMETERS_1_UDW,
>> >                            rc_range_params_dword[3]);
>> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_2,
>> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_2,
>> >                            rc_range_params_dword[4]);
>> > -           intel_de_write(dev_priv,
>> DSCA_RC_RANGE_PARAMETERS_2_UDW,
>> > +           intel_de_write(display,
>> DSCA_RC_RANGE_PARAMETERS_2_UDW,
>> >                            rc_range_params_dword[5]);
>> > -           intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3,
>> > +           intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_3,
>> >                            rc_range_params_dword[6]);
>> > -           intel_de_write(dev_priv,
>> DSCA_RC_RANGE_PARAMETERS_3_UDW,
>> > +           intel_de_write(display,
>> DSCA_RC_RANGE_PARAMETERS_3_UDW,
>> >                            rc_range_params_dword[7]);
>> >             if (vdsc_instances_per_pipe > 1) {
>> > -                   intel_de_write(dev_priv,
>> DSCC_RC_RANGE_PARAMETERS_0,
>> > +                   intel_de_write(display,
>> DSCC_RC_RANGE_PARAMETERS_0,
>> >                                    rc_range_params_dword[0]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    DSCC_RC_RANGE_PARAMETERS_0_UDW,
>> >                                    rc_range_params_dword[1]);
>> > -                   intel_de_write(dev_priv,
>> DSCC_RC_RANGE_PARAMETERS_1,
>> > +                   intel_de_write(display,
>> DSCC_RC_RANGE_PARAMETERS_1,
>> >                                    rc_range_params_dword[2]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    DSCC_RC_RANGE_PARAMETERS_1_UDW,
>> >                                    rc_range_params_dword[3]);
>> > -                   intel_de_write(dev_priv,
>> DSCC_RC_RANGE_PARAMETERS_2,
>> > +                   intel_de_write(display,
>> DSCC_RC_RANGE_PARAMETERS_2,
>> >                                    rc_range_params_dword[4]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    DSCC_RC_RANGE_PARAMETERS_2_UDW,
>> >                                    rc_range_params_dword[5]);
>> > -                   intel_de_write(dev_priv,
>> DSCC_RC_RANGE_PARAMETERS_3,
>> > +                   intel_de_write(display,
>> DSCC_RC_RANGE_PARAMETERS_3,
>> >                                    rc_range_params_dword[6]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >                                    DSCC_RC_RANGE_PARAMETERS_3_UDW,
>> >                                    rc_range_params_dword[7]);
>> >             }
>> >     } else {
>> > -           intel_de_write(dev_priv,
>> ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
>> > +           intel_de_write(display,
>> ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
>> >                            rc_range_params_dword[0]);
>> > -           intel_de_write(dev_priv,
>> > +           intel_de_write(display,
>> >
>> ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe),
>> >                            rc_range_params_dword[1]);
>> > -           intel_de_write(dev_priv,
>> ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
>> > +           intel_de_write(display,
>> ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
>> >                            rc_range_params_dword[2]);
>> > -           intel_de_write(dev_priv,
>> > +           intel_de_write(display,
>> >
>> ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe),
>> >                            rc_range_params_dword[3]);
>> > -           intel_de_write(dev_priv,
>> ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
>> > +           intel_de_write(display,
>> ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
>> >                            rc_range_params_dword[4]);
>> > -           intel_de_write(dev_priv,
>> > +           intel_de_write(display,
>> >
>> ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe),
>> >                            rc_range_params_dword[5]);
>> > -           intel_de_write(dev_priv,
>> ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
>> > +           intel_de_write(display,
>> ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
>> >                            rc_range_params_dword[6]);
>> > -           intel_de_write(dev_priv,
>> > +           intel_de_write(display,
>> >
>> ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
>> >                            rc_range_params_dword[7]);
>> >             if (vdsc_instances_per_pipe > 1) {
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
>> >                                    rc_range_params_dword[0]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe),
>> >                                    rc_range_params_dword[1]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe),
>> >                                    rc_range_params_dword[2]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe),
>> >                                    rc_range_params_dword[3]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe),
>> >                                    rc_range_params_dword[4]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe),
>> >                                    rc_range_params_dword[5]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe),
>> >                                    rc_range_params_dword[6]);
>> > -                   intel_de_write(dev_priv,
>> > +                   intel_de_write(display,
>> >
>> ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe),
>> >                                    rc_range_params_dword[7]);
>> >             }
>> > @@ -746,8 +744,8 @@ static i915_reg_t dss_ctl2_reg(struct intel_crtc
>> > *crtc, enum transcoder cpu_tran
>> >
>> >  void intel_uncompressed_joiner_enable(const struct intel_crtc_state
>> > *crtc_state)  {
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> >     u32 dss_ctl1_val = 0;
>> >
>> >     if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable)
>> > { @@ -756,14 +754,15 @@ void intel_uncompressed_joiner_enable(const
>> struct intel_crtc_state *crtc_state)
>> >             else
>> >                     dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
>> >
>> > -           intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
>> >cpu_transcoder), dss_ctl1_val);
>> > +           intel_de_write(display, dss_ctl1_reg(crtc, crtc_state-
>> >cpu_transcoder),
>> > +                          dss_ctl1_val);
>> >     }
>> >  }
>> >
>> >  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)  {
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> >     u32 dss_ctl1_val = 0;
>> >     u32 dss_ctl2_val = 0;
>> >     int vdsc_instances_per_pipe =
>> > intel_dsc_get_vdsc_per_pipe(crtc_state);
>> > @@ -796,28 +795,27 @@ void intel_dsc_enable(const struct intel_crtc_state
>> *crtc_state)
>> >             if (intel_crtc_is_bigjoiner_primary(crtc_state))
>> >                     dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>> >     }
>> > -   intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
>> >cpu_transcoder), dss_ctl1_val);
>> > -   intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state-
>> >cpu_transcoder), dss_ctl2_val);
>> > +   intel_de_write(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
>> dss_ctl1_val);
>> > +   intel_de_write(display, dss_ctl2_reg(crtc,
>> > +crtc_state->cpu_transcoder), dss_ctl2_val);
>> >  }
>> >
>> >  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>> > {
>> > +   struct intel_display *display = to_intel_display(old_crtc_state);
>> >     struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> >
>> >     /* Disable only if either of them is enabled */
>> >     if (old_crtc_state->dsc.compression_enable ||
>> >         old_crtc_state->joiner_pipes) {
>> > -           intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state-
>> >cpu_transcoder), 0);
>> > -           intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state-
>> >cpu_transcoder), 0);
>> > +           intel_de_write(display, dss_ctl1_reg(crtc, old_crtc_state-
>> >cpu_transcoder), 0);
>> > +           intel_de_write(display, dss_ctl2_reg(crtc,
>> > +old_crtc_state->cpu_transcoder), 0);
>> >     }
>> >  }
>> >
>> >  static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
>> >                           bool *all_equal)
>> >  {
>> > -   struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     i915_reg_t dsc_reg[3];
>> >     int i, vdsc_per_pipe, dsc_reg_num;
>> >     u32 val;
>> > @@ -825,16 +823,16 @@ static u32 intel_dsc_pps_read(struct
>> intel_crtc_state *crtc_state, int pps,
>> >     vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>> >     dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
>> >
>> > -   drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
>> > +   drm_WARN_ON_ONCE(display->drm, dsc_reg_num < vdsc_per_pipe);
>> >
>> >     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
>> >
>> >     *all_equal = true;
>> >
>> > -   val = intel_de_read(i915, dsc_reg[0]);
>> > +   val = intel_de_read(display, dsc_reg[0]);
>> >
>> >     for (i = 1; i < dsc_reg_num; i++) {
>> > -           if (intel_de_read(i915, dsc_reg[i]) != val) {
>> > +           if (intel_de_read(display, dsc_reg[i]) != val) {
>> >                     *all_equal = false;
>> >                     break;
>> >             }
>> > @@ -845,22 +843,20 @@ static u32 intel_dsc_pps_read(struct
>> > intel_crtc_state *crtc_state, int pps,
>> >
>> >  static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state
>> > *crtc_state, int pps)  {
>> > -   struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     u32 val;
>> >     bool all_equal;
>> >
>> >     val = intel_dsc_pps_read(crtc_state, pps, &all_equal);
>> > -   drm_WARN_ON(&i915->drm, !all_equal);
>> > +   drm_WARN_ON(display->drm, !all_equal);
>> >
>> >     return val;
>> >  }
>> >
>> >  static void intel_dsc_get_pps_config(struct intel_crtc_state
>> > *crtc_state)  {
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>> > -   struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> >     int num_vdsc_instances =
>> intel_dsc_get_num_vdsc_instances(crtc_state);
>> >     u32 pps_temp;
>> >
>> > @@ -946,7 +942,7 @@ static void intel_dsc_get_pps_config(struct
>> > intel_crtc_state *crtc_state)
>> >
>> >     vdsc_cfg->slice_chunk_size =
>> > REG_FIELD_GET(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, pps_temp);
>> >
>> > -   if (DISPLAY_VER(i915) >= 14) {
>> > +   if (DISPLAY_VER(display) >= 14) {
>> >             /* PPS 17 */
>> >             pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 17);
>> >
>> > @@ -964,7 +960,6 @@ void intel_dsc_get_config(struct intel_crtc_state
>> > *crtc_state)  {
>> >     struct intel_display *display = to_intel_display(crtc_state);
>> >     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> >     enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> >     enum intel_display_power_domain power_domain;
>> >     intel_wakeref_t wakeref;
>> > @@ -979,8 +974,8 @@ void intel_dsc_get_config(struct intel_crtc_state
>> *crtc_state)
>> >     if (!wakeref)
>> >             return;
>> >
>> > -   dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
>> > -   dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
>> > +   dss_ctl1 = intel_de_read(display, dss_ctl1_reg(crtc, cpu_transcoder));
>> > +   dss_ctl2 = intel_de_read(display, dss_ctl2_reg(crtc,
>> > +cpu_transcoder));
>> >
>> >     crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
>> >     if (!crtc_state->dsc.compression_enable)
>> > @@ -1020,8 +1015,7 @@ void intel_vdsc_state_dump(struct drm_printer
>> > *p, int indent,
>> >
>> >  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>> > {
>> > -   struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > -   struct intel_display *display = to_intel_display(crtc);
>> > +   struct intel_display *display = to_intel_display(crtc_state);
>> >     int num_vdsc_instances =
>> intel_dsc_get_num_vdsc_instances(crtc_state);
>> >     int min_cdclk;
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
