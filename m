Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEC86E6392
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 14:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4CCE10E24A;
	Tue, 18 Apr 2023 12:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8F310E24A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 12:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681821707; x=1713357707;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=gqfSZlZN9/jbD+y3//d2YpGEo5iQmZfhiiNAOGZaa0o=;
 b=EJ6JkF7WHdUYwRhsby/5bkUB7IrmmERVH5lygA1JnQl+r+9Ypahjn0vd
 gbzfOrKMqj07p9NVUPMhqmfComZS+gM0TzKzT7IRX6K1CrNX5bGHcRfbY
 yRlUQFzK+YC9PYCbbJEOruF2oHFIrfywlUqTIS9cZb3da0XW7VAiiUwpK
 +CoWMBCoIL1wkk/9huNoCktF985pp7N0mtdOAFQwAYfX9RasqfpdPBfcq
 Te3I1RfbdY7cTdv+EjB269FCdP8AgLOPPAcZlSsIxOmM00q7XpAwmb3CB
 QY4kIUV+ZsLuUMfJE1HIusxlIQXeBmYZmZ5uBQ4ndwGdTS5pkmFfQepDM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="324775505"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; 
 d="scan'208,223";a="324775505"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 05:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="802528063"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; 
 d="scan'208,223";a="802528063"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 05:41:44 -0700
Date: Tue, 18 Apr 2023 15:41:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Message-ID: <ZD6QBTWrAAx7qPYs@ideak-desk.fi.intel.com>
References: <20230418105207.1281084-1-suraj.kandpal@intel.com>
 <20230418105454.1282711-1-suraj.kandpal@intel.com>
 <ZD55A0JHyRd2bozM@ideak-desk.fi.intel.com>
 <MW4PR11MB67616E8133E26D024886E543E39D9@MW4PR11MB6761.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zto/qHG850eZdyP7"
Content-Disposition: inline
In-Reply-To: <MW4PR11MB67616E8133E26D024886E543E39D9@MW4PR11MB6761.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Increase AUX timeout
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--zto/qHG850eZdyP7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 18, 2023 at 02:45:27PM +0300, Kandpal, Suraj wrote:
> [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > index 6645eb1911d8..f0d51a30430a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > @@ -1385,6 +1385,17 @@ static const struct i915_power_well_desc
> > xelpd_power_wells_main[] = {
> > >             ),
> > >             .ops = &icl_aux_power_well_ops,
> > >             .fixed_enable_delay = true,
> > > +   }, {
> > > +           .instances = &I915_PW_INSTANCES(
> > > +                   I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
> > > +                   I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
> > > +                   I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
> > > +                   I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
> > > +           ),
> >
> > Instead of duplicating the above 4 power wells the change should move them
> > to this group, as in the diff I provided.
> 
> You mean add the enable timeout in this instance itself

No, I meant moving the TC AUX power wells to a new group, as in the diff
I provided earlier. Attached is the updated patch.

> 
> {
>                 .instances = &I915_PW_INSTANCES(
>                         I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
>                         I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
>                         I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
>                         I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
>                         I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
>                         I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
>                         I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
>                         I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
>                         I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
>                 ),
>                 .ops = &icl_aux_power_well_ops,
>                 .fixed_enable_delay = true,
>         },
> 
> Regards,
> Suraj Kandpal
> > > +           .ops = &icl_aux_power_well_ops,
> > > +           .fixed_enable_delay = true,
> > > +           /* WA_14017248603: adlp */
> > > +           .enable_timeout = 500,
> > >     }, {
> > >             .instances = &I915_PW_INSTANCES(
> > >                     I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,

--zto/qHG850eZdyP7
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-drm-i915-display-Increase-AUX-timeout-for-Type-C.patch"

From 9408a63e59e513d71acdda81e58609c4c6d543aa Mon Sep 17 00:00:00 2001
From: Suraj Kandpal <suraj.kandpal@intel.com>
Date: Tue, 18 Apr 2023 16:22:07 +0530
Subject: [PATCH] drm/i915/display: Increase AUX timeout for Type-C

Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
Workaround: Increase the timeout.

---v2
-change style on how we mention WA [Ankit]
-fix bat error by creating new func that is only called for aux power
well scenarios so we can avoid null pointer error as it is called
everywhere.

--v3
-Add non-default enable_timeout to power well descriptor which avoids
adding more platform checks [Imre]

--v4
-Remove Bspec link from top to bottom remove WA link from commit put it
on comment [Jani]
-enable_timeout in ms and add .fixed_enable_delay too [Imre]

Bspec: 55480

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c  | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d85..b4070845cd536 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1378,6 +1378,11 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
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
@@ -1385,6 +1390,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 		),
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
+		/* WA_14017248603: adlp */
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
index ba7cb977e7c7f..e494df379e6c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -110,6 +110,8 @@ struct i915_power_well_desc {
 	 * Thunderbolt mode.
 	 */
 	u16 is_tc_tbt:1;
+	/* Enable timeout if greater than the default 1ms */
+	u16 enable_timeout;
 };
 
 struct i915_power_well {
-- 
2.37.2


--zto/qHG850eZdyP7--
