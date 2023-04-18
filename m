Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 082436E5990
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 08:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7954910E692;
	Tue, 18 Apr 2023 06:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825BC10E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 06:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681800259; x=1713336259;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GrsJioR6Sk94YoVNsMiQNuu6YtLeCcQqvEAT5Q7GWYw=;
 b=TH1vtZHPcOwExMV9Oy8qu0wIMDmEEYPgqaF78rXLUyI0ENEGiUa9OPpL
 TsQR/dVcTiBKmeZMLIJi6MeYcHOdDGAH04RCc4Jzi2xxatNl+3QaCcPd3
 i8bnRyGGo0gevOW52SUpy0pX3sNNskuGkz0YQv3+ROeqN6D1jxe0GpnqG
 cY+sfGvyA2TAc/+1hCxYd+aMPYdcP77golNfJ3CZASwHWZr2te3Bsl6XI
 phsDnitPyyycWeJ4KNzsgpXqZ75DJk2NC4bJC3L1T3Pn0Y3Y5DtmPHVpL
 2jL9aNPJmncKOsoWiwIZhUh2SxPHSSaWL4W79rNUUOHluGg9rfLgg1Ezg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="346937849"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="346937849"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="760247536"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="760247536"
Received: from rmenchon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.143])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:44:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
In-Reply-To: <SN7PR11MB6750921E2B37F7AFC67180FBE39D9@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com> <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
 <SN7PR11MB6750A7954E47CF19AA16DDD9E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZD0zN66ryN2HqqYV@ideak-desk.fi.intel.com>
 <SN7PR11MB6750DBE164843AAD7A037ABEE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZD07mPhMi5cL6SZ/@ideak-desk.fi.intel.com>
 <SN7PR11MB6750921E2B37F7AFC67180FBE39D9@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Tue, 18 Apr 2023 09:44:14 +0300
Message-ID: <87354xelkx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> On Mon, Apr 17, 2023 at 03:25:34PM +0300, Kandpal, Suraj wrote:
>> > >
>> > > On Mon, Apr 17, 2023 at 02:43:25PM +0300, Kandpal, Suraj wrote:
>> > > > > [...]
>> > > > > Adding a non-default enable_timeout to the power well descriptor
>> > > > > would avoid adding more platform checks:
>> > > > >
>> > > > > diff --git
>> > > > > a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> > > > > b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> > > > > index 6645eb1911d85..8ca1f34be14c2 100644
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> > > > > @@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc
>> xelpd_power_wells_main[] = {
>> > > > >                       I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx =
>> ICL_PW_CTL_IDX_AUX_C),
>> > > > >                       I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx =
>> XELPD_PW_CTL_IDX_AUX_D),
>> > > > >                       I915_PW("AUX_E", &icl_pwdoms_aux_e,
>> > > > > .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
>> > > > > +             ),
>> > > > > +             .ops = &icl_aux_power_well_ops,
>> > > > > +             .fixed_enable_delay = true,
>> > > > > +     }, {
>> > > > > +             .instances = &I915_PW_INSTANCES(
>> > > > >                       I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1,
>> .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
>> > > > >                       I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2,
>> .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
>> > > > >                       I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3,
>> .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
>> > > > >                       I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4,
>> .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
>> > > > >               ),
>> > > > >               .ops = &icl_aux_power_well_ops,
>> > > > > -             .fixed_enable_delay = true,
>> > > > > +             .enable_timeout = 500,
>> > > > >       }, {
>> > > > >               .instances = &I915_PW_INSTANCES(
>> > > > >                       I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
>> > > > > .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1), diff --git
>> > > > > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > > > > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > > > > index 62bafcbc7937c..930a42c825c36 100644
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > > > > @@ -253,6 +253,7 @@ static void
>> > > > > hsw_wait_for_power_well_enable(struct
>> > > > > drm_i915_private *dev_priv,  {
>> > > > >       const struct i915_power_well_regs *regs = power_well->desc-
>> >ops->regs;
>> > > > >       int pw_idx =
>> > > > > i915_power_well_instance(power_well)->hsw.idx;
>> > > > > +     int timeout = power_well->desc->enable_timeout ? : 1;
>> > > > >
>> > > > >       /*
>> > > > >        * For some power wells we're not supposed to watch the
>> > > > > status bit for @@ -266,7 +267,7 @@ static void
>> > > > > hsw_wait_for_power_well_enable(struct drm_i915_private
>> > > > > *dev_priv,
>> > > > >
>> > > > >       /* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>> > > > >       if (intel_de_wait_for_set(dev_priv, regs->driver,
>> > > > > -                               HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
>> > > > > +                               HSW_PWR_WELL_CTL_STATE(pw_idx),
>> > > > > + timeout)) {
>> > > > >               drm_dbg_kms(&dev_priv->drm, "%s power well enable
>> timeout\n",
>> > > > >                           intel_power_well_name(power_well));
>> > > > >
>> > > > > diff --git
>> > > > > a/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> > > > > b/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> > > > > index ba7cb977e7c7f..fd5acf68503e1 100644
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> > > > > @@ -110,6 +110,8 @@ struct i915_power_well_desc {
>> > > > >        * Thunderbolt mode.
>> > > > >        */
>> > > > >       u16 is_tc_tbt:1;
>> > > > > +     /* Enable timeout if bigger than the default 1ms. */
>> > > > > +     u16 enable_timeout;
>> > > > >  };
>> > > > >
>> > > >
>> > > > How would we make sure that this timeout only applies to ADLS in
>> > > > that case as that's whom the workaround is for?
>> > >
>> > > The HSD is for display 13 ADL, that is ADL-P/M/N. The ADL-S power
>> > > wells are described separately in adls_power_wells.
>> >
>> > Right sorry meant ADLP so how do we make sure this is enabled only for
>> > the required Display version
>> 
>> It is enabled only for those. xelpd_power_wells_main is used by display 13
>> platforms.
>> 
>
> Ohkay got it I can float this version of fix if Jani is okay with this.

Yeah go with what Imre says.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>
>> > Regards,
>> > Suraj Kandpal
>> > >
>> > > --Imre

-- 
Jani Nikula, Intel Open Source Graphics Center
