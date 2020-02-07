Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 048171558F7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 15:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5215F6FCB6;
	Fri,  7 Feb 2020 14:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7578A6FCB6
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 14:03:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 06:03:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="226486937"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2020 06:03:36 -0800
Date: Fri, 7 Feb 2020 19:33:48 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200207140348.GD11460@intel.com>
References: <20200128135425.14596-3-anshuman.gupta@intel.com>
 <20200129132619.4727-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129132619.4727-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: HDCP support on above
 PORT_E
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-29 at 18:56:19 +0530, Anshuman Gupta wrote:
> As Gen12 onwards there are HDCP instances for each transcoder
> instead of port, remove the (port < PORT_E) hdcp support
> limitation for platform >= Gen12.
> 
> v2:
>  - Nuke the comment and cosmetic changes. [Jani]
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index be083136eee2..231b9c12c0b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -921,8 +921,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
>  
>  bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
>  {
> -	/* PORT E doesn't have HDCP, and PORT F is disabled */
> -	return INTEL_INFO(dev_priv)->display.has_hdcp && port < PORT_E;
> +	return INTEL_INFO(dev_priv)->display.has_hdcp &&
> +			(INTEL_GEN(dev_priv) >= 12 || port < PORT_E);
As we discussed offline, this <PORT_E check for even <gen12 doesn't make
sense as per Bspec. I would suggest we test HDCP1.4 and 2.2 on existing
setup of <gen12 too.

Or as we could remove this limitation and address the failure cases(not
expected any as per HW spec).

For >=gen12 transcoder based hdcp instances, this check dont make any sense.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>  }
>  
>  static int
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
