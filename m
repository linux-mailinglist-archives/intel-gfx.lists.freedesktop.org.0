Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 108BB192221
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E7D6E11C;
	Wed, 25 Mar 2020 08:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9490B6E11C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:10:03 +0000 (UTC)
IronPort-SDR: DHSVv9SMDV6TUlqb5yJH+qjyBNVu2X1N3zH6bAOfoPe7d/GR17uycZTVplweEHu7EK3xRI/V6G
 uI5OdMUScxvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 01:10:02 -0700
IronPort-SDR: tdw4LwBy17Oh+8XMZOcDlRdyaim+EhCXN+SLrjAkJai/4PfB06cvPgb72S+YYm9Jn7qPE4wb43
 LHNjju3EpuOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,303,1580803200"; d="scan'208";a="270729444"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga004.fm.intel.com with ESMTP; 25 Mar 2020 01:09:59 -0700
Date: Wed, 25 Mar 2020 13:30:05 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325080004.GA13323@intel.com>
References: <20200324132530.6204-1-anshuman.gupta@intel.com>
 <20200324132530.6204-3-anshuman.gupta@intel.com>
 <878sjpbvh7.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878sjpbvh7.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Add i915_lpsp_info debugfs
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
Cc: intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-03-24 at 17:53:08 +0200, Jani Nikula wrote:
> On Tue, 24 Mar 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > New i915_pm_lpsp igt solution approach relies on connector specific
> > debugfs attribute i915_lpsp_info, it exposes whether an output is
> > capable of driving lpsp and exposes lpsp enablement info.
> >
> > v2:
> > - CI fixup.
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 104 ++++++++++++++++++
> >  1 file changed, 104 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 424f4e52f783..eb9d88341d48 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -9,6 +9,7 @@
> >  #include "i915_debugfs.h"
> >  #include "intel_csr.h"
> >  #include "intel_display_debugfs.h"
> > +#include "intel_display_power.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_fbc.h"
> > @@ -611,6 +612,95 @@ static void intel_hdcp_info(struct seq_file *m,
> >  	seq_puts(m, "\n");
> >  }
> >  
> > +static bool intel_have_embedded_panel(struct drm_connector *connector)
> > +{
> > +	return connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> > +		connector->connector_type == DRM_MODE_CONNECTOR_eDP;
> 
> I know you don't care for this use case, but the function naming leads
> one to believe this checks for at least LVDS panels too.
> 
> > +}
> > +
> > +static bool intel_have_gen9_lpsp_panel(struct drm_connector *connector)
> > +{
> > +	return intel_have_embedded_panel(connector) ||
> > +		connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort;
> > +}
> > +
> > +static int
> > +intel_lpsp_power_well_enabled(struct drm_i915_private *dev_priv,
> > +			      enum i915_power_well_id power_well_id)
> > +{
> > +	struct i915_power_domains *power_domains = &dev_priv->power_domains;
> > +	struct i915_power_well *power_well = NULL, *pw_itr;
> > +	bool is_enabled;
> > +
> > +	mutex_lock(&power_domains->lock);
> > +
> > +	for_each_power_well(dev_priv, pw_itr)
> > +		if (pw_itr->desc->id == power_well_id) {
> > +			power_well = pw_itr;
> > +			break;
> > +		}
> 
> I don't think this code has any business looking inside the guts of the
> power well code. I see that intel_hdcp.c does this kind of loop too, and
> that *also* shouldn't be doing that.
> 
> See intel_display_power_well_is_enabled(). Does what you want, and does
> it correctly. So really, the whole intel_lpsp_power_well_enabled()
> function shouldn't be added.
Thanks Jani for review comments, actually at v1 version i had used 
used intel_display_power_well_is_enabled,
but i was getting below DMEAG_WARN on a CI run,

"PM wakelock ref not held during HW access"

Apperently it seemed to me intel_display_power_well_is_enabled() is meant for
internal use in intel_display_power.c as it was not declared in header and it
didn't held any PM wakeref.

May be i require below sequence to use intel_display_power_well_is_enabled,

wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
intel_display_power_well_is_enabled()
intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

Please correct me if i am wrong here.
> 
> > +
> > +	if (drm_WARN_ON(&dev_priv->drm, !power_well)) {
> > +		mutex_unlock(&power_domains->lock);
> > +		/* Assume that BIOS has enabled the power well*/
> > +		return true;
> > +	}
> > +
> > +	is_enabled = !!power_well->count;
> > +	mutex_unlock(&power_domains->lock);
> > +
> > +	return is_enabled;
> > +}
> > +
> > +static void
> > +intel_lpsp_capable_info(struct seq_file *m, struct drm_connector *connector)
> > +{
> > +	struct intel_encoder *encoder =
> > +			intel_attached_encoder(to_intel_connector(connector));
> > +	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> > +	bool lpsp_capable = false;
> > +
> > +	if (IS_TIGERLAKE(dev_priv) && encoder->port <= PORT_C) {
> > +		lpsp_capable = true;
> > +	} else if (INTEL_GEN(dev_priv) >= 11 && intel_have_embedded_panel(connector)) {
> > +		lpsp_capable = true;
> > +	} else if (INTEL_GEN(dev_priv) >= 9 && (encoder->port == PORT_A &&
> > +		   intel_have_gen9_lpsp_panel(connector))) {
> > +		lpsp_capable = true;
> > +	} else if ((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
> > +		   connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
> > +		lpsp_capable = true;
> > +	} else {
> > +		seq_puts(m, "LPSP not supported\n");
> > +		return;
> > +	}
> 
> The whole if ladder above looks suspect, and I'm not sure your helpers
> are helping here.
> 
> > +
> > +	lpsp_capable ? seq_puts(m, "LPSP capable\n") : seq_puts(m, "LPSP incapable\n");
> 
> lpsp_capable is always true when you end up here.
> 
> > +}
> > +
> > +static void
> > +intel_lpsp_enable_info(struct seq_file *m, struct drm_connector *connector)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> > +	bool is_lpsp = false;
> > +
> > +	if (INTEL_GEN(dev_priv) >= 11) {
> > +		is_lpsp = !intel_lpsp_power_well_enabled(dev_priv,
> > +							 ICL_DISP_PW_3);
> > +	} else if (INTEL_GEN(dev_priv) >= 9) {
> > +		is_lpsp = !intel_lpsp_power_well_enabled(dev_priv,
> > +							 SKL_DISP_PW_2);
> > +	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> > +		is_lpsp = !intel_lpsp_power_well_enabled(dev_priv,
> > +							 HSW_DISP_PW_GLOBAL);
> 
> The abstraction should probably be to figure out the correct power well
> id based on the platform, and then using the generic power well enabled
> call.
> 
> > +	} else {
> > +		seq_puts(m, "LPSP not supported\n");
> 
> The "LPSP not supported" case differs from lpsp capable. Huh?
My bad while fixing regression on legacy platform i messed it,
i will fix this.
> 
> > +		return;
> > +	}
> > +
> > +	is_lpsp ? seq_puts(m, "LPSP enabled\n") : seq_puts(m, "LPSP disabled\n");
> > +}
> > +
> >  static void intel_dp_info(struct seq_file *m,
> >  			  struct intel_connector *intel_connector)
> >  {
> > @@ -1987,6 +2077,17 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
> >  
> > +static int i915_lpsp_info_show(struct seq_file *m, void *data)
> > +{
> > +	struct drm_connector *connector = m->private;
> > +
> > +	intel_lpsp_capable_info(m, connector);
> > +	intel_lpsp_enable_info(m, connector);
> 
> I'm not sure having these two separate do you any good. Probably would
> help *not* separating these.
> 
> > +
> > +	return 0;
> > +}
> > +DEFINE_SHOW_ATTRIBUTE(i915_lpsp_info);
> > +
> >  static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
> >  {
> >  	struct drm_connector *connector = m->private;
> > @@ -2130,5 +2231,8 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
> >  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> >  				    connector, &i915_dsc_fec_support_fops);
> >  
> > +	debugfs_create_file("i915_lpsp_info", 0444, root,
> > +			    connector, &i915_lpsp_info_fops);
> 
> The question is, why are you creating this for connectors that do not
> and can not support lpsp to begin with? Your igt test should check for
> the existence of the file anyway.
igt checks for file existence and it will assert the subtest but this
will also fail the test as earlier legacy platform were passing non-lpsp
i915_pm_rpm test considering all non-edp paneld are non-lpsp
https://patchwork.freedesktop.org/patch/358652/?series=74647&rev=4
May be igt lib function i915_output_is_lpsp_capable() should return
false for lgeacy platform and legacy connector,
Please correct me if there is any other better way to handle that. 
> 
> BR,
> Jani.
> 
> 
> > +
> >  	return 0;
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
