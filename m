Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2145715590D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 15:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E716FCBA;
	Fri,  7 Feb 2020 14:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616AD6FCBD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 14:13:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 06:13:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="232387822"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 07 Feb 2020 06:13:26 -0800
Date: Fri, 7 Feb 2020 19:43:37 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200207141337.GE11460@intel.com>
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
 <20200128135425.14596-4-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128135425.14596-4-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: debugfs info print "HDCP shim
 isn't available"
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

On 2020-01-28 at 19:24:24 +0530, Anshuman Gupta wrote:
> If HDCP shim is not initialized, i915_display_info
> connector info returns EINVAL without providing any debug
> information. Adding a print for that will be useful for debugging.
> 
> CC: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 0ac98e39eb75..6d913a71cbdb 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -2405,7 +2405,8 @@ static void intel_dp_info(struct seq_file *m,
>  	if (intel_connector->hdcp.shim) {
>  		seq_puts(m, "\tHDCP version: ");
>  		intel_hdcp_info(m, intel_connector);
> -	}
> +	} else if (!intel_dp_is_edp(intel_dp))
> +		seq_puts(m, "\tHDCP shim isn't available\n");
I would prefer "HDCP shim is not initialized" for this purpose.

But when this can happen on DP/HDCP connector? Either has_hdcp is false
or when port is >= E. Those info might help better for debugging.

Infact as we discussed in other patch, we need to check whether we need\
port limitation for <gen12.

-Ram
>  }
>  
>  static void intel_dp_mst_info(struct seq_file *m,
> @@ -2432,6 +2433,8 @@ static void intel_hdmi_info(struct seq_file *m,
>  	if (intel_connector->hdcp.shim) {
>  		seq_puts(m, "\tHDCP version: ");
>  		intel_hdcp_info(m, intel_connector);
> +	} else {
> +		seq_puts(m, "\tHDCP shim isn't available\n");
>  	}
>  }
>  
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
