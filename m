Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32857BE1F7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690B110E109;
	Mon,  9 Oct 2023 13:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54CE310E109
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696859917; x=1728395917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ti49qhTQQj4VUfMkdtjphzYmoeqQEDbf6xh6G/wZL6U=;
 b=Ayw4RubIU0ABx941hbJcXmmb55a5PubDLaS4SdEbalwVuNeLd9YjhI5+
 Dro/jRt0Ri50a/5UQe3kRwfBNFn3Qerr0vGmze/3Q8xE7rCz/+c/6vULd
 pFn14GaUpz/adXotycDn65zTqXGB69NW5P6WzjEujg+GszVmzDwLBHjI6
 XJjCQzmOhASzIM4CJ3kO6FXnzS6jZs330seynI+zxbQJUQDRfxvsWMsPF
 4XZyaUdZUvWnycpMqcV4ldI85bFpD/FssIvEQXX2ezLdvUkRe8jBrhNk+
 BV2WeDtirBiFKTy5O+r+dm9tL2H6Fj6qqeGcmS45yMhi3hinh8egCiyXf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="5691734"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
   d="scan'208";a="5691734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="702924019"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="702924019"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:58:35 -0700
Date: Mon, 9 Oct 2023 16:58:32 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSQHCL8PlJmv3+1w@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-5-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915/dp: Use i915/intel connector
 local variables in i915_dsc_fec_support_show()
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

On Fri, Oct 06, 2023 at 04:37:12PM +0300, Imre Deak wrote:
> Cahce the i915 specific device and connector pointers in
> i915_dsc_fec_support_show().

Typo cahce/cache. Would say more like "store", but doesn't matter.


Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fbe75d47a1654..834a8e50ea4fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1191,8 +1191,8 @@ DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
>  
>  static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  {
> -	struct drm_connector *connector = m->private;
> -	struct drm_device *dev = connector->dev;
> +	struct intel_connector *connector = to_intel_connector(m->private);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct drm_crtc *crtc;
>  	struct intel_dp *intel_dp;
>  	struct drm_modeset_acquire_ctx ctx;
> @@ -1204,7 +1204,7 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  
>  	do {
>  		try_again = false;
> -		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
> +		ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex,
>  				       &ctx);
>  		if (ret) {
>  			if (ret == -EDEADLK && !drm_modeset_backoff(&ctx)) {
> @@ -1213,8 +1213,8 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  			}
>  			break;
>  		}
> -		crtc = connector->state->crtc;
> -		if (connector->status != connector_status_connected || !crtc) {
> +		crtc = connector->base.state->crtc;
> +		if (connector->base.status != connector_status_connected || !crtc) {
>  			ret = -ENODEV;
>  			break;
>  		}
> @@ -1229,7 +1229,7 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  		} else if (ret) {
>  			break;
>  		}
> -		intel_dp = intel_attached_dp(to_intel_connector(connector));
> +		intel_dp = intel_attached_dp(connector);
>  		crtc_state = to_intel_crtc_state(crtc->state);
>  		seq_printf(m, "DSC_Enabled: %s\n",
>  			   str_yes_no(crtc_state->dsc.compression_enable));
> -- 
> 2.39.2
> 
