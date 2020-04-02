Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0B819C183
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 14:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC0A6EA82;
	Thu,  2 Apr 2020 12:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2836EA82
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 12:55:29 +0000 (UTC)
IronPort-SDR: dsshNRawL0GpP4iQD0Sb7XN2xm3Rzf4xDQwkhwFr6yEY6yOskIpQKfomX7QPNVoj9VOi6tJLz/
 pgcCtPosspPQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 05:55:29 -0700
IronPort-SDR: 3FzCKZLjdTx8ne7mc3oqmEz6iH3ZE/9EcXwutdIEskdNnIquTecKY3EuEs5XxmLhOqySMC9Nk1
 1HxM3E81uWOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="242513535"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2020 05:55:27 -0700
Date: Thu, 2 Apr 2020 18:15:26 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <20200402124525.GB5533@intel.com>
References: <20200331113735.5452-1-anshuman.gupta@intel.com>
 <20200331113735.5452-3-anshuman.gupta@intel.com>
 <ee1ef6ff-9e1f-b1c1-5ce8-a1a2a1dac2c4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee1ef6ff-9e1f-b1c1-5ce8-a1a2a1dac2c4@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915: Add i915_lpsp_info debugfs
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

On 2020-04-01 at 21:23:28 +0530, Manna, Animesh wrote:
thanks animesh for review!
> 
> On 31-03-2020 17:07, Anshuman Gupta wrote:
> >New i915_pm_lpsp igt solution approach relies on connector specific
> >debugfs attribute i915_lpsp_info, it exposes whether an output is
> >capable of driving lpsp and exposes lpsp enablement info.
> >
> >v2:
> >- CI fixup.
> >v3:
> >- register i915_lpsp_info only for supported connector. [Jani]
> >- use intel_display_power_well_is_enabled() instead of looking
> >   inside power_well count. [Jani]
> >- fixes the lpsp capable conditional logic. [Jani]
> >- combined the lpsp capable and enable info. [Jani]
> >
> >Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> >---
> >  .../drm/i915/display/intel_display_debugfs.c  | 124 ++++++++++++++++++
> >  .../drm/i915/display/intel_display_power.h    |   2 +
> >  2 files changed, 126 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >index 424f4e52f783..b185c4617468 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >@@ -9,6 +9,7 @@
> >  #include "i915_debugfs.h"
> >  #include "intel_csr.h"
> >  #include "intel_display_debugfs.h"
> >+#include "intel_display_power.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_fbc.h"
> >@@ -611,6 +612,98 @@ static void intel_hdcp_info(struct seq_file *m,
> >  	seq_puts(m, "\n");
> >  }
> >+#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP capable\n") : seq_puts(m, "LPSP incapable\n"))
> >+#define LPSP_ENABLE(COND) (COND ? seq_puts(m, "LPSP enabled\n") : seq_puts(m, "LPSP disabled\n"))
> >+
> >+/* LVDS also an embedded panel but we are not interested in it */
> >+static bool intel_have_embedded_panel(struct drm_connector *connector)
> >+{
> >+	return connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_eDP;
> >+}
> >+
> >+static bool intel_have_gen9_lpsp_panel(struct drm_connector *connector)
> >+{
> >+	return intel_have_embedded_panel(connector) ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort;
> >+}
> >+
> >+static bool intel_have_lpsp_supported_panel(struct drm_connector *connector)
> >+{
> >+	return intel_have_gen9_lpsp_panel(connector) ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> >+		connector->connector_type == DRM_MODE_CONNECTOR_HDMIB;
> >+}
> 
> This function will pass for every platform for almost all (EDP/MIPI/DP/HDMI) connector type even if not supported ...rt?
Above function will only used to add i915_lpsp_info for DP/MIPI/DP/HDMI connecotr,
It can nuke it with condition below condition.
 return connector->connector_type == DRM_MODE_CONNECTOR_DSI || connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
 		connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort || connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
		connector->connector_type == DRM_MODE_CONNECTOR_HDMIB;
So in order to avoid such big condition i had prefred the above function, please suggest a better readable way.
use condition as such, function name change or using a macro. 
> Apart from that I did not understand the purpose of above functions.
My thought process was to break longer conditional if chunk in static function,
please suggest if u are in favour of nuke these functions, or if u want to suggest
a better name.
> Can we have a single function to check the connector is supported lpsp or not.
> 
> static bool is_lpsp_supported(struct drm_connector *connector)
> 
> In function definition we can check for platform first, then check connector_type and return true/false.
i915_lpsp_info_show is first checking the gen and then platform, after checking
platform it needs to check DDI port and connector based upon platform lpsp block diagram
in order to evaluate lpsp capablity, followed by power well check to evlauate lpsp
enabled.
if i understand you are suggesting to break above two parts,
is_lpsp_supported()
is_lpsp_capable()
but by breaking above we would require to check gen and platfrom twice
which can be avoided by combining above.
please correct me if i am wrong.
Thanks ,
Anshuman Gupta.  
> 
> >+
> >+static bool
> >+intel_lpsp_power_well_enabled(struct drm_i915_private *dev_priv,
> >+			      enum i915_power_well_id power_well_id)
> >+{
> >+	intel_wakeref_t wakeref;
> >+	bool is_enabled;
> >+
> >+	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> >+	is_enabled = intel_display_power_well_is_enabled(dev_priv,
> >+							 power_well_id);
> >+	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> >+
> >+	return is_enabled;
> >+}
> >+
> >+static void
> >+intel_lpsp_gen12_helper(struct seq_file *m, struct drm_connector *connector)
> >+{
> >+	struct intel_encoder *encoder =
> >+			intel_attached_encoder(to_intel_connector(connector));
> >+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> >+	bool lpsp_capable = false;
> >+
> >+	if (IS_TIGERLAKE(dev_priv))
> >+		lpsp_capable = encoder->port <= PORT_C;
> >+
> >+	LPSP_CAPABLE(lpsp_capable);
> 
> is_supported and capable looks similar to me, what is the difference?
is_supported is just to differentiate from legacy connector, we don't want to
add debugfs for legacy conector.
> 
> >+	LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, ICL_DISP_PW_3));
> >+}
> >+
> >+static void
> >+intel_lpsp_gen11_helper(struct seq_file *m, struct drm_connector *connector)
> >+{
> >+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> >+
> >+	LPSP_CAPABLE(intel_have_embedded_panel(connector));
> >+	LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, ICL_DISP_PW_3));
> >+}
> >+
> >+static void
> >+intel_lpsp_gen9_helper(struct seq_file *m, struct drm_connector *connector)
> >+{
> >+	struct intel_encoder *encoder =
> >+			intel_attached_encoder(to_intel_connector(connector));
> >+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> >+
> >+	LPSP_CAPABLE(encoder->port == PORT_A &&
> >+		     intel_have_gen9_lpsp_panel(connector));
> >+	LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, SKL_DISP_PW_2));
> >+}
> >+
> >+static void
> >+intel_lpsp_legacy_gen_helper(struct seq_file *m,
> >+			     struct drm_connector *connector)
> >+{
> >+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> >+
> >+	/*
> >+	 * Apart from HASWELL/BROADWELL other legacy platform doesn't
> >+	 * support lpsp.
> >+	 */
> >+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> >+		LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
> >+		LPSP_ENABLE(!intel_lpsp_power_well_enabled(dev_priv, HSW_DISP_PW_GLOBAL));
> >+	} else {
> >+		seq_puts(m, "LPSP not supported\n");
> >+	}
> >+}
> >+
> >  static void intel_dp_info(struct seq_file *m,
> >  			  struct intel_connector *intel_connector)
> >  {
> >@@ -1987,6 +2080,33 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
> >+static int i915_lpsp_info_show(struct seq_file *m, void *data)
> >+{
> >+	struct drm_connector *connector = m->private;
> >+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> >+
> >+	if (connector->status != connector_status_connected)
> >+		return -ENODEV;
> >+
> >+	switch (INTEL_GEN(dev_priv)) {
> >+	case 12:
> >+		intel_lpsp_gen12_helper(m, connector);
> >+		break;
> >+	case 11:
> >+		intel_lpsp_gen11_helper(m, connector);
> >+		break;
> >+	case 10:
> >+	case 9:
> >+		intel_lpsp_gen9_helper(m, connector);
> >+		break;
> >+	default:
> >+		intel_lpsp_legacy_gen_helper(m, connector);
> >+	}
> >+
> >+	return 0;
> >+}
> >+DEFINE_SHOW_ATTRIBUTE(i915_lpsp_info);
> >+
> >  static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
> >  {
> >  	struct drm_connector *connector = m->private;
> >@@ -2130,5 +2250,9 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
> >  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> >  				    connector, &i915_dsc_fec_support_fops);
> >+	if (intel_have_lpsp_supported_panel(connector))
> >+		debugfs_create_file("i915_lpsp_info", 0444, root,
> >+				    connector, &i915_lpsp_info_fops);
> >+
> >  	return 0;
> >  }
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> >index 56cbae6327b7..14c5ad20287f 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_power.h
> >+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> >@@ -266,6 +266,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
> >  bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> >  				    enum intel_display_power_domain domain);
> >+bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
> >+					 enum i915_power_well_id power_well_id);
> >  bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> >  				      enum intel_display_power_domain domain);
> >  intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
