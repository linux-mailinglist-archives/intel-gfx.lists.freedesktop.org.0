Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BACC11F8D23
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 06:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C8D89E52;
	Mon, 15 Jun 2020 04:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCBA89E52
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 04:40:11 +0000 (UTC)
IronPort-SDR: ar+AcA7Dtub4CiXWNI6FYTIYMnZ3LuYPUgt/PTchQMoMHSBuA/t+QlnysVPTdEaZPB8DPFKpC6
 as6dkCvwwu4Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2020 21:40:09 -0700
IronPort-SDR: 73rTrG1NHuv/4HBhuugkC0wS7ejWxrTKaSMfhUQZGywcpMRNf+irq6Yfk3T3q4CTBDN3omcQ8B
 mCTUrHhfLeQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,513,1583222400"; d="scan'208";a="420234674"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2020 21:40:06 -0700
Date: Mon, 15 Jun 2020 09:59:27 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <20200615042926.GC14085@intel.com>
References: <20200608100103.19472-1-ankit.k.nautiyal@intel.com>
 <20200608100103.19472-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608100103.19472-2-ankit.k.nautiyal@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add support for
 considering HDCP ver requested via debugfs
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-06-08 at 15:31:02 +0530, Ankit Nautiyal wrote:
> For testing and debugging each HDCP version separately, a debugfs
> entry for requesting a specific version is required. The version
> requested via debugfs needs to be stored in hdcp structure. This can
> then be considered while enabling HDCP, provided the platform and the
> display supports the requested version.
> 
> This patch adds the support for storing the version requested as a 32bit
> flag. It also adds a helper function to check if a version is requested.
> 
> If a specific HDCP version is requested through the debugfs, the driver
> chooses that version, instead of policy of choosing the highest HDCP
> version supported.
> 
> v2: Initialize debugfs_ver_request flag with 0. (Jani Nikula)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_types.h   | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.c        | 16 ++++++++++++++--
>  2 files changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9488449e4b94..cfa641c70717 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -408,6 +408,16 @@ struct intel_hdcp {
>  	 * Hence caching the transcoder here.
>  	 */
>  	enum transcoder cpu_transcoder;
> +
> +	/*
> +	 * HDCP version requested from debugfs i915_hdcp_ver_request.
> +	 * Kernel will read these bits and entertain the request, as per
> +	 * the HDCP capability of the panel and platform.
> +	 */
> +#define HDCP_VERSION_1_4	0x01
> +#define HDCP_VERSION_2_2	0x02
> +#define HDCP_VERSION_MASK	0x03
> +	u32 debugfs_ver_request;
>  };
>  
>  struct intel_connector {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2cbc4619b4ce..a21ea9c2e9a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1977,6 +1977,8 @@ int intel_hdcp_init(struct intel_connector *connector,
>  	if (!shim)
>  		return -EINVAL;
>  
> +	hdcp->debugfs_ver_request = 0;
> +
>  	if (is_hdcp2_supported(dev_priv))
>  		intel_hdcp2_init(connector, shim);
>  
> @@ -1998,6 +2000,14 @@ int intel_hdcp_init(struct intel_connector *connector,
>  	return 0;
>  }
>  
> +static bool hdcp_debugfs_requested(struct intel_hdcp *hdcp, u32 hdcp_version)
> +{
> +	if (!hdcp->debugfs_ver_request)
> +		return true;
> +
> +	return hdcp->debugfs_ver_request & hdcp_version ? true : false;
> +}
> +
>  int intel_hdcp_enable(struct intel_connector *connector,
>  		      enum transcoder cpu_transcoder, u8 content_type)
>  {
> @@ -2023,7 +2033,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>  	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>  	 */
> -	if (intel_hdcp2_capable(connector)) {
> +	if (hdcp_debugfs_requested(hdcp, HDCP_VERSION_2_2) &&
> +	    intel_hdcp2_capable(connector)) {
>  		ret = _intel_hdcp2_enable(connector);
>  		if (!ret)
>  			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
> @@ -2033,7 +2044,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
>  	 * be attempted.
>  	 */
> -	if (ret && intel_hdcp_capable(connector) &&
> +	if (ret && hdcp_debugfs_requested(hdcp, HDCP_VERSION_1_4) &&
IMHO there is no case when both version HDCP 2.2 and HDCP 1.4 version
will be set, i believe for IGT if HDCP 2.2 fails and version is HDCP 2.2
it should have returen from above, no  need to check a ret value and
HDCP 1.4 version. Could we simplify conditions here.
Thanks,
Anshuman Gupta.
> +	    intel_hdcp_capable(connector) &&
>  	    hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
>  		ret = _intel_hdcp_enable(connector);
>  	}
> -- 
> 2.17.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
