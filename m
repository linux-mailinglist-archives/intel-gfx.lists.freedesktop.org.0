Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFB06E47B3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 14:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D18710E23C;
	Mon, 17 Apr 2023 12:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA11610E23C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 12:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681734557; x=1713270557;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=i0WcAFvZX+2K1OzlUumXpB1pe3loudDSkrBOYHrRInE=;
 b=JEKy69ZM2YjQNODnkd3K/by08Q/85deCLAT6RPLKrQ8dYqVVHBAHT/em
 /K9PD7iBfo0CVYkr4G/nkEPUYVSqmymjZQIkTzbqNiXUjPB6RpTtKMayu
 uIe46ESp1t4t5dfmVBZbMxW0RDeBP4CGyW2Z7GZuCfpCW30RnnOJHdTM5
 zJOA7wi0vHPeouiGbBEdBmar+DBgV4t8/WrTd8PJOpMRkP2Ysqw4pXbPo
 0PN+fukqpHKfpqPIF9M+tbFTFF06lnRt3kebu/EJ8P786pjXRGgJRMzY6
 +GoPVKvdC01VKyXOQwSpaodqvaNNT+cVfNYyyan5AB96LL0dMii2U4KNJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="324500993"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="324500993"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 05:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="759933796"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="759933796"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 05:29:15 -0700
Date: Mon, 17 Apr 2023 15:29:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Message-ID: <ZD07mPhMi5cL6SZ/@ideak-desk.fi.intel.com>
References: <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com>
 <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
 <SN7PR11MB6750A7954E47CF19AA16DDD9E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZD0zN66ryN2HqqYV@ideak-desk.fi.intel.com>
 <SN7PR11MB6750DBE164843AAD7A037ABEE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750DBE164843AAD7A037ABEE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Mon, Apr 17, 2023 at 03:25:34PM +0300, Kandpal, Suraj wrote:
> >
> > On Mon, Apr 17, 2023 at 02:43:25PM +0300, Kandpal, Suraj wrote:
> > > > [...]
> > > > Adding a non-default enable_timeout to the power well descriptor
> > > > would avoid adding more platform checks:
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > index 6645eb1911d85..8ca1f34be14c2 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > @@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
> > > >                       I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
> > > >                       I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
> > > >                       I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
> > > > +             ),
> > > > +             .ops = &icl_aux_power_well_ops,
> > > > +             .fixed_enable_delay = true,
> > > > +     }, {
> > > > +             .instances = &I915_PW_INSTANCES(
> > > >                       I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
> > > >                       I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
> > > >                       I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
> > > >                       I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
> > > >               ),
> > > >               .ops = &icl_aux_power_well_ops,
> > > > -             .fixed_enable_delay = true,
> > > > +             .enable_timeout = 500,
> > > >       }, {
> > > >               .instances = &I915_PW_INSTANCES(
> > > >                       I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
> > > > .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1), diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > index 62bafcbc7937c..930a42c825c36 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > @@ -253,6 +253,7 @@ static void
> > > > hsw_wait_for_power_well_enable(struct
> > > > drm_i915_private *dev_priv,  {
> > > >       const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
> > > >       int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> > > > +     int timeout = power_well->desc->enable_timeout ? : 1;
> > > >
> > > >       /*
> > > >        * For some power wells we're not supposed to watch the status
> > > > bit for @@ -266,7 +267,7 @@ static void
> > > > hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> > > >
> > > >       /* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> > > >       if (intel_de_wait_for_set(dev_priv, regs->driver,
> > > > -                               HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > > > +                               HSW_PWR_WELL_CTL_STATE(pw_idx), timeout)) {
> > > >               drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
> > > >                           intel_power_well_name(power_well));
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > index ba7cb977e7c7f..fd5acf68503e1 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > @@ -110,6 +110,8 @@ struct i915_power_well_desc {
> > > >        * Thunderbolt mode.
> > > >        */
> > > >       u16 is_tc_tbt:1;
> > > > +     /* Enable timeout if bigger than the default 1ms. */
> > > > +     u16 enable_timeout;
> > > >  };
> > > >
> > >
> > > How would we make sure that this timeout only applies to ADLS in that
> > > case as that's whom the workaround is for?
> >
> > The HSD is for display 13 ADL, that is ADL-P/M/N. The ADL-S power wells are
> > described separately in adls_power_wells.
> 
> Right sorry meant ADLP so how do we make sure this is enabled only for the required
> Display version

It is enabled only for those. xelpd_power_wells_main is used by display 13 platforms.

> Regards,
> Suraj Kandpal
> >
> > --Imre
