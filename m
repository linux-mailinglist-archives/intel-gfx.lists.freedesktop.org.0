Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9156A1E459D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 16:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4E06E2F9;
	Wed, 27 May 2020 14:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5038D89395
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 14:18:21 +0000 (UTC)
IronPort-SDR: MjtDM7A44++QNd1i17QQv9UBVQoAc96QkdAeQAqETGxE0MmmEEysXw+F3+XEOaYw/TpI6oD7yV
 LsIPwjqBBdnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 07:18:20 -0700
IronPort-SDR: 3iLI0f67LIC/tUwjac0JL9nGsQbyeQ92LFTLXF0RaCfXsnKtdtgIL8LrPjVNNmXnJApg4tYIdM
 ikA63Jpnaz3Q==
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="442538401"
Received: from rweigelx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.42.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 07:18:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200527110132.16679-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
 <20200527110132.16679-2-ankit.k.nautiyal@intel.com>
Date: Wed, 27 May 2020 17:18:14 +0300
Message-ID: <87pnap1mxl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add support for considering
 HDCP ver requested via debugfs
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 27 May 2020, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> For testing and debugging each HDCP version separately, a debugfs
> entry for requesting a specific version is required. The vesion
> requested via debugfs needs to be stored in hdcp structure. This can
> then be considered while enabling HDCP, provided the platform and the
> display supports the requested version.
>
> This patch adds the support for storing the version requested as a 32bit
> flag. The default value is set to signify that any of the HDCP version
> can be used.
>
> If a specific HDCP version is requested through the debugfs, the driver
> chooses that version, instead of policy of choosing the highest HDCP
> version supported.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.c          |  8 ++++++--
>  2 files changed, 16 insertions(+), 2 deletions(-)
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
> index 2cbc4619b4ce..951401046804 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1977,6 +1977,8 @@ int intel_hdcp_init(struct intel_connector *connector,
>  	if (!shim)
>  		return -EINVAL;
>  
> +	hdcp->debugfs_ver_request = HDCP_VERSION_MASK;

It's almost always better to keep 0 as the default or initial value. If
the member is non-zero, you do as requested.

> +
>  	if (is_hdcp2_supported(dev_priv))
>  		intel_hdcp2_init(connector, shim);
>  
> @@ -2023,7 +2025,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>  	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>  	 */
> -	if (intel_hdcp2_capable(connector)) {
> +	if ((hdcp->debugfs_ver_request & HDCP_VERSION_2_2) &&
> +	    intel_hdcp2_capable(connector)) {
>  		ret = _intel_hdcp2_enable(connector);
>  		if (!ret)
>  			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
> @@ -2033,7 +2036,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>  	 * When HDCP2.2 fails and Content Type is not Type1, HDCP1.4 will
>  	 * be attempted.
>  	 */
> -	if (ret && intel_hdcp_capable(connector) &&
> +	if (ret && (hdcp->debugfs_ver_request & HDCP_VERSION_1_4) &&
> +	    intel_hdcp_capable(connector) &&
>  	    hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
>  		ret = _intel_hdcp_enable(connector);
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
