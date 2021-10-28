Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C954B43DE28
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 11:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0580489D2E;
	Thu, 28 Oct 2021 09:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A46B89D2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 09:52:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="230224717"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="230224717"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 02:52:44 -0700
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="498317840"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 02:52:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <20211027194244.GA23036@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211027135900.6329-1-jani.nikula@intel.com>
 <20211027194244.GA23036@labuser-Z97X-UD5H>
Date: Thu, 28 Oct 2021 12:52:39 +0300
Message-ID: <878rydh3x4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dcs: demote noisy drm_info() to
 drm_kms_dbg()
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

On Wed, 27 Oct 2021, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Wed, Oct 27, 2021 at 04:59:00PM +0300, Jani Nikula wrote:
>> The PPS, RC_RANGE_PARAM, and RC_BUF_THRESH logging are clearly for
>> debugging, and should not be info level messages.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> I think in the patch commit title there is a typo 'dcs' i think you meant drm/i915/dsc:
> Other than that I agree with having these as debug messages rather than info.

Whoops, fixed while pushing. Thanks.

Jani.

>
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
>
> Manasi
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++------------
>>  1 file changed, 16 insertions(+), 16 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index fa84be609d5d..bf8d3c7ca2d9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -598,7 +598,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  		pps_val |= DSC_422_ENABLE;
>>  	if (vdsc_cfg->vbr_enable)
>>  		pps_val |= DSC_VBR_ENABLE;
>> -	drm_info(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
>>  			       pps_val);
>> @@ -622,7 +622,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	/* Populate PICTURE_PARAMETER_SET_1 registers */
>>  	pps_val = 0;
>>  	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>> -	drm_info(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
>>  			       pps_val);
>> @@ -647,7 +647,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>> -	drm_info(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
>>  			       pps_val);
>> @@ -672,7 +672,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>> -	drm_info(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
>>  			       pps_val);
>> @@ -697,7 +697,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>> -	drm_info(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
>>  			       pps_val);
>> @@ -722,7 +722,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>> -	drm_info(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
>>  			       pps_val);
>> @@ -749,7 +749,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset) |
>>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>>  		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>> -	drm_info(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
>>  			       pps_val);
>> @@ -774,7 +774,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>> -	drm_info(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
>>  			       pps_val);
>> @@ -799,7 +799,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>> -	drm_info(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
>>  			       pps_val);
>> @@ -824,7 +824,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  	pps_val = 0;
>>  	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>> -	drm_info(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
>>  			       pps_val);
>> @@ -851,7 +851,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1) |
>>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>>  		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>> -	drm_info(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
>>  			       pps_val);
>> @@ -879,7 +879,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  				   vdsc_cfg->slice_width) |
>>  		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>>  					vdsc_cfg->slice_height);
>> -	drm_info(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
>> +	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
>>  			       pps_val);
>> @@ -906,8 +906,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  		rc_buf_thresh_dword[i / 4] |=
>>  			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
>>  			      BITS_PER_BYTE * (i % 4));
>> -		drm_info(&dev_priv->drm, " RC_BUF_THRESH%d = 0x%08x\n", i,
>> -			 rc_buf_thresh_dword[i / 4]);
>> +		drm_dbg_kms(&dev_priv->drm, "RC_BUF_THRESH_%d = 0x%08x\n", i,
>> +			    rc_buf_thresh_dword[i / 4]);
>>  	}
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
>> @@ -963,8 +963,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>  				RC_MAX_QP_SHIFT) |
>>  			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
>>  				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
>> -		drm_info(&dev_priv->drm, " RC_RANGE_PARAM_%d = 0x%08x\n", i,
>> -			 rc_range_params_dword[i / 2]);
>> +		drm_dbg_kms(&dev_priv->drm, "RC_RANGE_PARAM_%d = 0x%08x\n", i,
>> +			    rc_range_params_dword[i / 2]);
>>  	}
>>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>  		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
>> -- 
>> 2.30.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
