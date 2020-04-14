Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6331A83AA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 17:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD786E21E;
	Tue, 14 Apr 2020 15:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4706E21E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 15:46:06 +0000 (UTC)
IronPort-SDR: 4M/eCmV1NRLrcYRSAFODBD+UsXQVshi2CrzYiuW1yPa3J1M4ijHzrd8bY9s3Iwcqo+zHIZw1wo
 UBxHx8f3DfMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 08:46:06 -0700
IronPort-SDR: FnJH19N+RIIo+nES0O07WiIasxmS1O2JC6sJO8f9XaMw59NRF6evLRhGSdA/vY3hems9AQK3cn
 0mHM3x68pCsA==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="427102002"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.215.132.4])
 ([10.215.132.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 08:46:04 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200409060646.30817-1-anshuman.gupta@intel.com>
 <20200409060646.30817-3-anshuman.gupta@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <0380812e-a54f-64c3-391c-0175ff81f621@intel.com>
Date: Tue, 14 Apr 2020 21:16:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200409060646.30817-3-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/i915: Add i915_lpsp_capability
 debugfs
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09-04-2020 11:36, Anshuman Gupta wrote:
> New i915_pm_lpsp igt solution approach relies on connector specific
> debugfs attribute i915_lpsp_capability, it exposes whether an output is
> capable of driving lpsp.
>
> v2:
> - CI fixup.
> v3:
> - register i915_lpsp_info only for supported connector. [Jani]
> - use intel_display_power_well_is_enabled() instead of looking
>    inside power_well count. [Jani]
> - fixes the lpsp capable conditional logic. [Jani]
> - combined the lpsp capable and enable info. [Jani]
> v4:
> - Separate out connector based debugfs i915_lpsp_capability
>    lpsp enable status would be exposes by different entry. [Animesh]
>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  | 63 +++++++++++++++++++
>   1 file changed, 63 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index bdeea2e02642..402b89daff62 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -611,6 +611,28 @@ static void intel_hdcp_info(struct seq_file *m,
>   	seq_puts(m, "\n");
>   }
>   
> +#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
> +				seq_puts(m, "LPSP: incapable\n"))
> +
> +static bool intel_have_edp_dsi_panel(struct drm_connector *connector)
> +{
> +	return connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> +		connector->connector_type == DRM_MODE_CONNECTOR_eDP;
> +}
> +
> +static bool intel_have_dp_edp_dsi_panel(struct drm_connector *connector)
> +{
> +	return intel_have_edp_dsi_panel(connector) ||
> +		connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort;
> +}
> +
> +static bool intel_have_hdmi_dp_edp_dsi_panel(struct drm_connector *connector)
> +{
> +	return intel_have_dp_edp_dsi_panel(connector) ||
> +		connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> +		connector->connector_type == DRM_MODE_CONNECTOR_HDMIB;
> +}
> +
>   static void intel_dp_info(struct seq_file *m,
>   			  struct intel_connector *intel_connector)
>   {
> @@ -1991,6 +2013,42 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>   }
>   DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
>   
> +static int i915_lpsp_capability_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector = m->private;
> +	struct intel_encoder *encoder =
> +			intel_attached_encoder(to_intel_connector(connector));
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
> +
> +	if (connector->status != connector_status_connected)
> +		return -ENODEV;
> +
> +	switch (INTEL_GEN(i915)) {
> +	case 12:
> +		/*
> +		 * Actually TGL can drive LPSP on port till DDI_C
> +		 * but there is no physical connected DDI_C on TGL sku's,
> +		 * even driver is not initilizing DDI_C port for gen12.
> +		 */
> +		LPSP_CAPABLE(encoder->port <= PORT_B);
> +		break;
> +	case 11:
> +		LPSP_CAPABLE(intel_have_edp_dsi_panel(connector));
> +		break;
> +	case 10:
> +	case 9:
> +		LPSP_CAPABLE(encoder->port == PORT_A &&
> +			     intel_have_dp_edp_dsi_panel(connector));
> +		break;
> +	default:
> +		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +			LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
> +	}
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
> +
>   static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>   {
>   	struct drm_connector *connector = m->private;
> @@ -2134,5 +2192,10 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>   		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
>   				    connector, &i915_dsc_fec_support_fops);
>   
> +	/* Legacy panels doesn't lpsp on any platform */
> +	if (intel_have_hdmi_dp_edp_dsi_panel(connector))
> +		debugfs_create_file("i915_lpsp_capability", 0444, root,
> +				    connector, &i915_lpsp_capability_fops);

Need a condition check of INTEL_GEN(dev_priv), for older platform the entry will get created and later in i915_lpsp_capability_show() will not print anything.
With the above fix, Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Nitpick: imo adding function for different combination of connector type check maybe overdoing. In i915_lpsp_capability_show(), can have <gen>_lpsp_cap_check() for different generation.

Regards,
Animesh

> +
>   	return 0;
>   }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
