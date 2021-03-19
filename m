Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC60342708
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 21:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A1E86EAAD;
	Fri, 19 Mar 2021 20:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22A16EAAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 20:38:16 +0000 (UTC)
IronPort-SDR: SR8C81YSOqWp0Uwx8UMya6mlmSpk3yJWLNuU/z5Xctx+ee4D2qcmiIBEsspUXV7PIThMMFbson
 wBtPoqRIFwlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="169899563"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="169899563"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 13:38:16 -0700
IronPort-SDR: ZtW1sZ2GZPxnsYeWWy1Bb8hEipWx5hzJC4WehDcyQhpjX+Yja/3+kaOq/cuCHR+cJJzwZtEa5/
 daiwoSGyomMA==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="450994903"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 13:38:16 -0700
Date: Fri, 19 Mar 2021 13:44:27 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210319204421.GA6043@labuser-Z97X-UD5H>
References: <20210319115333.8330-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319115333.8330-1-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: fix DSS CTL register usage
 for ICL DSI transcoders
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 19, 2021 at 01:53:33PM +0200, Jani Nikula wrote:
> Use the correct DSS CTL registers for ICL DSI transcoders.
> 
> As a side effect, this also brings back the sanity check for trying to
> use pipe DSC registers on pipe A on ICL.
> 
> Fixes: 8a029c113b17 ("drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave")
> References: http://lore.kernel.org/r/87eegxq2lq.fsf@intel.com

Thanks Jani for the detailed review comments here and explanation on what
broke the DSI DSC on < Gen 12 platforms.

> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: <stable@vger.kernel.org> # v5.11+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Untested, I don't have the platform.
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index f58cc5700784..a86c57d117f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1014,20 +1014,14 @@ static i915_reg_t dss_ctl1_reg(const struct intel_crtc_state *crtc_state)
>  {
>  	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>  
> -	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> -		return DSS_CTL1;
> -
> -	return ICL_PIPE_DSS_CTL1(pipe);
> +	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL1(pipe) : DSS_CTL1;

Yes using is_pipe_dsc() makes sense here in order to select proper DSS_CTL regs
for DSI.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

>  }
>  
>  static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
>  {
>  	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>  
> -	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
> -		return DSS_CTL2;
> -
> -	return ICL_PIPE_DSS_CTL2(pipe);
> +	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;
>  }
>  
>  void intel_dsc_enable(struct intel_encoder *encoder,
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
