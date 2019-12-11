Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B003B11BF5E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433836EBFB;
	Wed, 11 Dec 2019 21:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230916EBFB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:41:44 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:41:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216065158"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 13:41:43 -0800
Date: Wed, 11 Dec 2019 13:43:03 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191211214302.GD12192@intel.com>
References: <cover.1576081155.git.jani.nikula@intel.com>
 <f00e9d55ce20b256177222588780c660aa587cc3.1576081155.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f00e9d55ce20b256177222588780c660aa587cc3.1576081155.git.jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: clarify DSC support for
 pipe A on ICL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 11, 2019 at 06:23:47PM +0200, Jani Nikula wrote:
> The check for cpu_transcoder != TRANSCODER_A is more magic than
> necessary, and potentially misleading. Before TGL, DSC is supported on
> pipe A if, and only if, it's used with eDP or DSI transcoders. No
> functional changes.
>

Hmm, so we could still use PIPE_A but if its eDP or DSI it would use
TRANSCODER_EDP or TRANSCODER_DSI and that should still work?

So its simpler to say that if it is PIPE_A && transcoder_A then it doesnt
support DSC?
Wouldnt it be simpler to change the condition to :
if (INTEL_GEN(i915) >= 10 && !(pipe_A && transcode_A)
     return true;

Regards
Manasi
 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index e6f60be9ee84..41718f721484 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -337,7 +337,10 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
>  bool intel_dsc_source_support(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
>  
>  	if (!INTEL_INFO(i915)->display.has_dsc)
>  		return false;
> @@ -347,7 +350,10 @@ bool intel_dsc_source_support(struct intel_encoder *encoder,
>  		return true;
>  
>  	if (INTEL_GEN(i915) >= 10 &&
> -	    crtc_state->cpu_transcoder != TRANSCODER_A)
> +	    (pipe != PIPE_A ||
> +	     (cpu_transcoder == TRANSCODER_EDP ||
> +	      cpu_transcoder == TRANSCODER_DSI_0 ||
> +	      cpu_transcoder == TRANSCODER_DSI_1)))
>  		return true;
>  
>  	return false;
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
