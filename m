Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97EE3B7A67
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 00:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E9289F47;
	Tue, 29 Jun 2021 22:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406DD89F47
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 22:25:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="188629975"
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="188629975"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 15:25:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; d="scan'208";a="455065803"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 29 Jun 2021 15:25:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 29 Jun 2021 15:25:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 29 Jun 2021 15:25:47 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Tue, 29 Jun 2021 15:25:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
Thread-Index: AQHXbHijiLYcH6VPBk2lw6i8L0tgSqssCO2A
Date: Tue, 29 Jun 2021 22:25:47 +0000
Message-ID: <f87ced2d9d378eeaba2be633dd9c5dd770ac9e63.camel@intel.com>
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <740ABB657BEA6444901AF96F7F925C78@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-06-28 at 16:50 -0700, Madhumitha Tolakanahalli Pradeep wrote:
> PCH display HPD IRQ is not detected with default filter value.
> So, PP_CONTROL is manually reprogrammed.
> 
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16 ++++++++++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 285380079aab..e44323cc76f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -6385,8 +6385,16 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
>  
>  void intel_display_power_suspend_late(struct drm_i915_private *i915)
>  {
> +    struct drm_i915_private *dev_priv = i915;
> +    u32 val;
>  	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
>  	    IS_BROXTON(i915)) {
> +		val = intel_de_read(dev_priv, PP_CONTROL(0));
> +		/* Wa_14013120569:tgl */
> +		if (IS_TIGERLAKE(i915)) {
> +			val &= ~PANEL_POWER_ON;
> +			intel_de_write(dev_priv, PP_CONTROL(0), val);
> +	}

Code style is all wrong, please fix it and run "dim checkpatch" to validate it before sending patches.
Also PP_CONTROL(0) don't point to the same register that the workaround is talking about, between generations register address change that might be
the case for this one.

This satisfy the "before going into sleep to allow CS entry" but it do not restore the workaround after waking up from suspend.
Also you could improve the code, you are reading the register even for platforms that don't need the wa, also check intel_de_rmw() it is better suited
to this case.

>  		bxt_enable_dc9(i915);
>  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
>  		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 47c85ac97c87..8e3f84100daf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -26,6 +26,7 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_hotplug.h"
> +#include "intel_de.h"
>  
>  /**
>   * DOC: Hotplug
> @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>  		      struct intel_connector *connector)
>  {
>  	struct drm_device *dev = connector->base.dev;
> +	struct drm_i915_private *dev_priv = to_i915(dev);
>  	enum drm_connector_status old_status;
> +	u32 val;
>  	u64 old_epoch_counter;
>  	bool ret = false;
>  
> @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>  			      drm_get_connector_status_name(connector->base.status),
>  			      old_epoch_counter,
>  			      connector->base.epoch_counter);
> +
> +		/* Wa_14013120569:tgl */
> +		if (IS_TIGERLAKE(dev_priv)) {
> +			val = intel_de_read(dev_priv, PP_CONTROL(0));
> +			if (connector->base.status == connector_status_connected) {
> +				val |= PANEL_POWER_ON;
> +				intel_de_write(dev_priv, PP_CONTROL(0), val);
> +			}
> +			else if (connector->base.status == connector_status_disconnected) {
> +				val &= ~PANEL_POWER_ON;
> +				intel_de_write(dev_priv, PP_CONTROL(0), val);
> +			}
> +		}

Not sure if this is the best place but anyways it is missing handle the case were tigerlake boots with the external display connected.
No hotplug will happen and workaround will never be enabled.

>  		return INTEL_HOTPLUG_CHANGED;
>  	}
>  	return INTEL_HOTPLUG_UNCHANGED;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
