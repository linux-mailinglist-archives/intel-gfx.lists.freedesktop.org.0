Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF7B1A85BA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7674789C85;
	Tue, 14 Apr 2020 16:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705F689C85
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:52:07 +0000 (UTC)
IronPort-SDR: HqL+kuwiiZ4nN4BNL9+dvBywKe7mSirP3XknoKbPG35x58sQjI2gIdx+FT2fLtXDzZA/Kh52Rn
 h9XnxZvCPbbw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 09:52:02 -0700
IronPort-SDR: 3pmwib+XXI7IAdq7CfDySCRvNMcooQ4L6c2Dn0g35OXsp2t7Wkc4pYxq7V21gZb0zipEQRREh6
 kNQxvdxSvyOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="242048043"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 14 Apr 2020 09:52:00 -0700
Date: Tue, 14 Apr 2020 22:12:15 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <20200414164215.GJ5533@intel.com>
References: <20200409060646.30817-1-anshuman.gupta@intel.com>
 <20200409060646.30817-3-anshuman.gupta@intel.com>
 <0380812e-a54f-64c3-391c-0175ff81f621@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0380812e-a54f-64c3-391c-0175ff81f621@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-04-14 at 21:16:00 +0530, Manna, Animesh wrote:
> 
> On 09-04-2020 11:36, Anshuman Gupta wrote:
> >New i915_pm_lpsp igt solution approach relies on connector specific
> >debugfs attribute i915_lpsp_capability, it exposes whether an output is
> >capable of driving lpsp.
> >
> >v2:
> >- CI fixup.
> >v3:
> >- register i915_lpsp_info only for supported connector. [Jani]
> >- use intel_display_power_well_is_enabled() instead of looking
> >   inside power_well count. [Jani]
> >- fixes the lpsp capable conditional logic. [Jani]
> >- combined the lpsp capable and enable info. [Jani]
> >v4:
> >- Separate out connector based debugfs i915_lpsp_capability
> >   lpsp enable status would be exposes by different entry. [Animesh]
> >
> >Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> >---
> >  .../drm/i915/display/intel_display_debugfs.c  | 63 +++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >index bdeea2e02642..402b89daff62 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >@@ -611,6 +611,28 @@ static void intel_hdcp_info(struct seq_file *m,
> >  	seq_puts(m, "\n");
> >  }
> >+#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
> >+				seq_puts(m, "LPSP: incapable\n"))
> >+
> >+static bool intel_have_edp_dsi_panel(struct drm_connector *connector)
> >+{
> >+	return connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_eDP;
> >+}
> >+
> >+static bool intel_have_dp_edp_dsi_panel(struct drm_connector *connector)
> >+{
> >+	return intel_have_edp_dsi_panel(connector) ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort;
> >+}
> >+
> >+static bool intel_have_hdmi_dp_edp_dsi_panel(struct drm_connector *connector)
> >+{
> >+	return intel_have_dp_edp_dsi_panel(connector) ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_HDMIB;
> >+}
> >+
> >  static void intel_dp_info(struct seq_file *m,
> >  			  struct intel_connector *intel_connector)
> >  {
> >@@ -1991,6 +2013,42 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
> >+static int i915_lpsp_capability_show(struct seq_file *m, void *data)
> >+{
> >+	struct drm_connector *connector = m->private;
> >+	struct intel_encoder *encoder =
> >+			intel_attached_encoder(to_intel_connector(connector));
> >+	struct drm_i915_private *i915 = to_i915(connector->dev);
> >+
> >+	if (connector->status != connector_status_connected)
> >+		return -ENODEV;
> >+
> >+	switch (INTEL_GEN(i915)) {
> >+	case 12:
> >+		/*
> >+		 * Actually TGL can drive LPSP on port till DDI_C
> >+		 * but there is no physical connected DDI_C on TGL sku's,
> >+		 * even driver is not initilizing DDI_C port for gen12.
> >+		 */
> >+		LPSP_CAPABLE(encoder->port <= PORT_B);
> >+		break;
> >+	case 11:
> >+		LPSP_CAPABLE(intel_have_edp_dsi_panel(connector));
> >+		break;
> >+	case 10:
> >+	case 9:
> >+		LPSP_CAPABLE(encoder->port == PORT_A &&
> >+			     intel_have_dp_edp_dsi_panel(connector));
> >+		break;
> >+	default:
> >+		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> >+			LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
> >+	}
> >+
> >+	return 0;
> >+}
> >+DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
> >+
> >  static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
> >  {
> >  	struct drm_connector *connector = m->private;
> >@@ -2134,5 +2192,10 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
> >  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> >  				    connector, &i915_dsc_fec_support_fops);
> >+	/* Legacy panels doesn't lpsp on any platform */
> >+	if (intel_have_hdmi_dp_edp_dsi_panel(connector))
> >+		debugfs_create_file("i915_lpsp_capability", 0444, root,
> >+				    connector, &i915_lpsp_capability_fops);
> 
> Need a condition check of INTEL_GEN(dev_priv), for older platform the entry will get created and later in i915_lpsp_capability_show() will not print anything.
Thanks for review and catching this animesh, i overlooked it with thought that, older gen before HASWELL/BROADWELL won't support eDP/DSI/DP/HDMI connector.
May be a condition INTEL_GEN(dev_priv) > 9 || HASWELL(dev_priv)  || BROADWELL(dev_priv) will do the job.
becuase i am not really sure about the legacy gen number.
> With the above fix, Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> Nitpick: imo adding function for different combination of connector type check maybe overdoing. In i915_lpsp_capability_show(), can have <gen>_lpsp_cap_check() for different generation.
I want to fix this but may be i am not able to understand it, <gen>_lpsp_cap_check will also need to check for connector with respect to gen, like ex on Gen11 only eDP and DSI can drive lpsp, so we would require to check connector  connector->connector_type == eDP || connector->connector_type == DSI.

Thanks,
Anshuman.
> 
> Regards,
> Animesh
> 
> >+
> >  	return 0;
> >  }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
