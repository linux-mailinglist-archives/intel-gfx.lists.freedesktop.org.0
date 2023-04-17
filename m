Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16BC6E4660
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 13:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB8D10E428;
	Mon, 17 Apr 2023 11:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDEB510E428
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 11:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681730856; x=1713266856;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=lXPN1W1eV+yRMgbHSpssz0WXaq4LtqY6jjoPFW/6NfY=;
 b=BN6LE/z0GeV1K/E/MVsgzrRMEgSs4yr1+ioG1qALE0xJ/YD6PZUeoshQ
 m/R4+M8m0QXSPr1WV/sYD6ozoHPZ3xIOmjhBqnpYSjXd821hJw7G2sjBL
 hfHvPk76e3EZMk6q36DjFc0uxBX0QqUhNMzlYL1YXV2V+Nd/hVZdNycBs
 lysDHoO82MOKJgDqzgfwQq0Z9W+Uu1oStF6Xubn2v1kHPLCUhCiway370
 SDmu7Hq7LPCUal16o4W18Bl4QQG6TlskXkZ4HVg5BblsIwxKVMiEAaKng
 gmoLxrKcLC9VjeTizDl2qtNQFaaDFfddvwEUVf9CHuMwwhgmUUip31rhN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="342359231"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="342359231"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 04:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="780039450"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="780039450"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 04:27:33 -0700
Date: Mon, 17 Apr 2023 14:27:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bkjmeq0j.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 17, 2023 at 01:56:12PM +0300, Jani Nikula wrote:
> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, April 17, 2023 4:04 PM
> >> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: RE: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
> >> for Type-C
> >> 
> >> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> >> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> >> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> >> >> > Workaround: Increase the timeout.
> >> >> >
> >> >> > WA_14017248603: adlp
> >> >> > Bspec: 55480
> >> >> >
> >> >> > ---v2
> >> >> > -change style on how we mention WA [Ankit] -fix bat error
> >> >> >
> >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >> > ---
> >> >> >  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
> >> >> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >> >> >
> >> >> > diff --git
> >> >> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > index 62bafcbc7937..52f595929a18 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> >> >> drm_i915_private *i915)
> >> >> >  		    "succeeded");
> >> >> >  }
> >> >> >
> >> >> > +static void
> >> >> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
> >> >> > +				   struct i915_power_well *power_well,
> >> >> > +				   bool timeout_expected)
> >> >> > +{
> >> >> > +	const struct i915_power_well_regs *regs = power_well->desc->ops-
> >> >> >regs;
> >> >> > +	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
> >> >> > +	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> >> >> > +
> >> >> > +	/*
> >> >> > +	 * WA_14017248603: adlp
> >> >> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
> >> >> Enabling.
> >> >> > +	 * Increase timeout to 500ms.
> >> >> > +	 */
> >> >> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> >> >> > +		if (intel_de_wait_for_set(i915, regs->driver,
> >> >> > +
> >> >> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> >> >> > +			drm_dbg_kms(&i915->drm, "%s power well enable
> >> >> timeout\n",
> >> >> > +				    intel_power_well_name(power_well));
> >> >> > +
> >> >> > +			drm_WARN_ON(&i915->drm, !timeout_expected);
> >> >> > +		}
> >> >> > +		return;
> >> >> > +	}
> >> >> > +
> >> >> > +	hsw_wait_for_power_well_enable(i915, power_well,
> >> >> timeout_expected);
> >> >> > +}
> >> >>
> >> >> Please don't duplicate the function and the wait like this.
> >> >>
> >> >> Something like this is sufficient:
> >> >>
> >> >>
> >> >> @@ -252,7 +252,9 @@ static void
> >> hsw_wait_for_power_well_enable(struct
> >> >> drm_i915_private *dev_priv,
> >> >>  					   bool timeout_expected)
> >> >>  {
> >> >>  	const struct i915_power_well_regs *regs = power_well->desc->ops-
> >> >> >regs;
> >> >> +	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
> >> >>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> >> >> +	int timeout = 1;
> >> >>
> >> >>  	/*
> >> >>  	 * For some power wells we're not supposed to watch the status bit
> >> >> for @@ -264,9 +266,13 @@ static void
> >> >> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> >> >>  		return;
> >> >>  	}
> >> >>
> >> >> +	/* WA_14017248603: adlp */
> >> >> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
> >> >
> >> > I did try this but it ends up throwing a kernel null pointer error at
> >> > intel_phy_is_tc which made me float the version of code I did.
> >> 
> >> Please explain what causes it, and how your version avoids it.
> >> 
> >
> > icl_aux_pw_to_phy is called is hsw_wait_for_power_well is called everywhere where its not possible for aux_pw to phy
> > conversion is not possible with this change we only get the phy for adls version.
> > Will address this is next version.
> 
> Cc: Imre for input
> 
> Maybe pass the timeout to hsw_wait_for_power_well_enable() as parameter?
> Other ideas?

Adding a non-default enable_timeout to the power well descriptor would
avoid adding more platform checks:

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d85..8ca1f34be14c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
 			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
 			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
+		),
+		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
 			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
 			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
 			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
 		),
 		.ops = &icl_aux_power_well_ops,
-		.fixed_enable_delay = true,
+		.enable_timeout = 500,
 	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 62bafcbc7937c..930a42c825c36 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -253,6 +253,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
+	int timeout = power_well->desc->enable_timeout ? : 1;

 	/*
 	 * For some power wells we're not supposed to watch the status bit for
@@ -266,7 +267,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,

 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
-				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
+				  HSW_PWR_WELL_CTL_STATE(pw_idx), timeout)) {
 		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
 			    intel_power_well_name(power_well));

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index ba7cb977e7c7f..fd5acf68503e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -110,6 +110,8 @@ struct i915_power_well_desc {
 	 * Thunderbolt mode.
 	 */
 	u16 is_tc_tbt:1;
+	/* Enable timeout if bigger than the default 1ms. */
+	u16 enable_timeout;
 };

 struct i915_power_well {

> BR,
> Jani.
> 
> >
> > Regards,
> > Suraj Kandpal
> >> BR,
> >> Jani.
> >> 
> >> 
> >> >
> >> > Regards,
> >> > Suraj Kandpal
> >> >> +		timeout = 500;
> >> >> +
> >> >>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> >> >>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> >> >> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> >> >> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> >> >> timeout)) {
> >> >>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> >> timeout\n",
> >> >>  			    intel_power_well_name(power_well));
> >> >>
> >> >>
> >> >> > +
> >> >
> >> >> >  static void
> >> >> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >> >> >  				 struct i915_power_well *power_well) @@ -
> >> >> 517,7 +545,7 @@
> >> >> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >> >> >  	if (DISPLAY_VER(dev_priv) == 11 &&
> >> >> intel_tc_cold_requires_aux_pw(dig_port))
> >> >> >  		icl_tc_cold_exit(dev_priv);
> >> >> >
> >> >> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> >> >> timeout_expected);
> >> >> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> >> >> > +timeout_expected);
> >> >>
> >> >> A function prefixed adl_ should indicate it's only needed for adl+.
> >> >> This change is misleading.
> >> >>
> >> >> BR,
> >> >> Jani.
> >> >>
> >> >>
> >> >> >
> >> >> >  	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
> >> >> >  		enum tc_port tc_port;
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel Open Source Graphics Center
> >> 
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
