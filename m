Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AA6423E62
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 15:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0436E508;
	Wed,  6 Oct 2021 13:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9C96E508
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 13:05:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="226298582"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="226298582"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 06:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="478110017"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 06 Oct 2021 06:05:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 16:05:43 +0300
Date: Wed, 6 Oct 2021 16:05:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YV2fJzuK/eQNPBrF@intel.com>
References: <20211006101618.22066-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211006101618.22066-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: abstract
 intel_dp_mst_source_support()
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

On Wed, Oct 06, 2021 at 01:16:18PM +0300, Jani Nikula wrote:
> Add a function for checking source MST support. Drop intel_dp->can_mst
> and use intel_dp->mst_mgr.cbs to indicate the same. It's the single
> point of truth without additional state variables. In code, "source
> support" is also self-documenting as opposed to the vague "can mst".
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c  |  5 +++--
>  .../gpu/drm/i915/display/intel_display_types.h    |  1 -
>  drivers/gpu/drm/i915/display/intel_dp.c           | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c       | 15 +++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp_mst.h       |  4 +++-
>  5 files changed, 22 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 309d74fd86ce..bc5113589f0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -7,12 +7,13 @@
>  #include <drm/drm_fourcc.h>
>  
>  #include "i915_debugfs.h"
> +#include "intel_de.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
> -#include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> +#include "intel_dp_mst.h"
>  #include "intel_drrs.h"
>  #include "intel_fbc.h"
>  #include "intel_hdcp.h"
> @@ -1379,7 +1380,7 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
>  			continue;
>  
>  		dig_port = enc_to_dig_port(intel_encoder);
> -		if (!dig_port->dp.can_mst)
> +		if (!intel_dp_mst_source_support(&dig_port->dp))
>  			continue;
>  
>  		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 21ce8bccc645..39e11eaec1a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1580,7 +1580,6 @@ struct intel_dp {
>  
>  	struct intel_pps pps;
>  
> -	bool can_mst; /* this port supports mst */
>  	bool is_mst;
>  	int active_mst_links;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 74a657ae131a..ee733fb24a76 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2649,7 +2649,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	return i915->params.enable_dp_mst &&
> -		intel_dp->can_mst &&
> +		intel_dp_mst_source_support(intel_dp) &&
>  		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
>  }
>  
> @@ -2664,10 +2664,10 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  	drm_dbg_kms(&i915->drm,
>  		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
>  		    encoder->base.base.id, encoder->base.name,
> -		    yesno(intel_dp->can_mst), yesno(sink_can_mst),
> +		    yesno(intel_dp_mst_source_support(intel_dp)), yesno(sink_can_mst),
>  		    yesno(i915->params.enable_dp_mst));
>  
> -	if (!intel_dp->can_mst)
> +	if (!intel_dp_mst_source_support(intel_dp))
>  		return;
>  
>  	intel_dp->is_mst = sink_can_mst &&
> @@ -5067,7 +5067,7 @@ void intel_dp_mst_suspend(struct drm_i915_private *dev_priv)
>  
>  		intel_dp = enc_to_intel_dp(encoder);
>  
> -		if (!intel_dp->can_mst)
> +		if (!intel_dp_mst_source_support(intel_dp))
>  			continue;
>  
>  		if (intel_dp->is_mst)
> @@ -5091,7 +5091,7 @@ void intel_dp_mst_resume(struct drm_i915_private *dev_priv)
>  
>  		intel_dp = enc_to_intel_dp(encoder);
>  
> -		if (!intel_dp->can_mst)
> +		if (!intel_dp_mst_source_support(intel_dp))
>  			continue;
>  
>  		ret = drm_dp_mst_topology_mgr_resume(&intel_dp->mst_mgr,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fd0a31bc3dcd..0de0b4ff4d73 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -977,24 +977,31 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
>  					   dig_port->max_lanes,
>  					   max_source_rate,
>  					   conn_base_id);
> -	if (ret)
> +	if (ret) {
> +		intel_dp->mst_mgr.cbs = NULL;

This is a bit ugly, but apart from that the idea seems good.
It *looks* like drm_dp_mst_topology_mgr_init() doesn't yet
invoke any of the callbacks so we could do the assignment after.
But that is a bit sketchy as well. Cleanest approach might be
to pass the callbacks to drm_dp_mst_topology_mgr_init() and let
it make sure things are mostly clear on failure. Also not
entirely sure we want to rely on that when the topology mgr
code has been historically following this "mutate, then do
stuff, and mutate back on failure" pattern. It might just
forget the last part.

But not really important so
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		return ret;
> -
> -	intel_dp->can_mst = true;
> +	}
>  
>  	return 0;
>  }
>  
> +bool intel_dp_mst_source_support(struct intel_dp *intel_dp)
> +{
> +	return intel_dp->mst_mgr.cbs;
> +}
> +
>  void
>  intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port)
>  {
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  
> -	if (!intel_dp->can_mst)
> +	if (!intel_dp_mst_source_support(intel_dp))
>  		return;
>  
>  	drm_dp_mst_topology_mgr_destroy(&intel_dp->mst_mgr);
>  	/* encoders will get killed by normal cleanup */
> +
> +	intel_dp->mst_mgr.cbs = NULL;
>  }
>  
>  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index 6afda4e86b3c..f7301de6cdfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -8,13 +8,15 @@
>  
>  #include <linux/types.h>
>  
> -struct intel_digital_port;
>  struct intel_crtc_state;
> +struct intel_digital_port;
> +struct intel_dp;
>  
>  int intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_id);
>  void intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port);
>  int intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port);
>  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state);
>  bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
> +bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
>  
>  #endif /* __INTEL_DP_MST_H__ */
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
