Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F4A43CCD3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 16:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D956E8AB;
	Wed, 27 Oct 2021 14:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903A86E8AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 14:55:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="210957492"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="210957492"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 07:55:21 -0700
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="497900188"
Received: from smaharan-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.214.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 07:55:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Tolakanahalli Pradeep\,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Cc: "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Tolakanahalli Pradeep\,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>, "Navare\,
 Manasi D" <manasi.d.navare@intel.com>
In-Reply-To: <54fada5eea99c1b5d7af300bcd6697711c3c5705.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <54fada5eea99c1b5d7af300bcd6697711c3c5705.camel@intel.com>
Date: Wed, 27 Oct 2021 17:55:15 +0300
Message-ID: <87h7d2h60c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 27 Oct 2021, "Tolakanahalli Pradeep, Madhumitha"	<madhumitha.tolakanahalli.pradeep@intel.com> wrote:
> On Mon, 2021-07-05 at 13:28 +0300, Jani Nikula wrote:
>> On Tue, 29 Jun 2021, "Souza, Jose" <jose.souza at intel.com> wrote:
>> > On Mon, 2021-06-28 at 16:50 -0700, Madhumitha Tolakanahalli Pradeep
>> > wrote:
>> > > PCH display HPD IRQ is not detected with default filter value.
>> > > So, PP_CONTROL is manually reprogrammed.
>> > >
>> > > Signed-off-by: Madhumitha Tolakanahalli Pradeep <
>> > > madhumitha.tolakanahalli.pradeep at intel.com>
>> > > ---
>> > >  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
>> > >  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16
>> > > ++++++++++++++++
>> > >  2 files changed, 24 insertions(+)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> > > b/drivers/gpu/drm/i915/display/intel_display_power.c
>> > > index 285380079aab..e44323cc76f5 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> > > @@ -6385,8 +6385,16 @@ static void
>> > > intel_power_domains_verify_state(struct drm_i915_private *i915)
>> > >
>> > >  void intel_display_power_suspend_late(struct drm_i915_private
>> > > *i915)
>> > >  {
>> > > +    struct drm_i915_private *dev_priv = i915;
>> > > +    u32 val;
>> > >   if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
>> > >       IS_BROXTON(i915)) {
>> > > +         val = intel_de_read(dev_priv, PP_CONTROL(0));
>> > > +         /* Wa_14013120569:tgl */
>> > > +         if (IS_TIGERLAKE(i915)) {
>> > > +                 val &= ~PANEL_POWER_ON;
>> > > +                 intel_de_write(dev_priv, PP_CONTROL(0), val);
>> > > + }
>> >
>> > Code style is all wrong, please fix it and run "dim checkpatch" to
>> > validate it before sending patches.
>> > Also PP_CONTROL(0) don't point to the same register that the
>> > workaround is talking about, between generations register address
>> > change that might be
>> > the case for this one.
>>
>> In general, I've put a bunch of effort into moving most PPS stuff and
>> PP_CONTROL reg access into intel_pps.c, not least because you must
>> hold
>> appropriate locks and power domain references to poke at this. You
>> can't
>> just mess with it nilly willy. I don't want these abstractions
>> bypassed.
>>
>> BR,
>> Jani.
>
> I see that intel_pps_get_registers(),  populates the regs-
> >pp_ctrl  correctly. That is what I would want to access and set the
> bits for this W/A. However as is I cannot call pps_get_registers() in
> intel_dp or intel_display.c for the external connector  at
> connect/disconnect time. Do you recommend making this function non
> static and calling it for this W/A or is there a way I can access the
> populated i915_reg_t pp_ctrl  to set the W/A?
>
> Or are you wanting to  define another helper for enable/disable of this
> W/A in intel_pps.c that would then call pps_init_registers or similar
> function ?

Basically don't access any of the PPS registers outside of
intel_pps.c. Any access like that is probably going to get the locking
and timeout rules wrong, as well as make the software and hardware
states go out of sync. Things like these need to be abstracted
better. Bottom line, you can't just go poke at the registers in random
places, no matter what the W/A says, and expect it to work out fine.

The commit message also doesn't properly explain what is going on, and
*why* this change is needed. Especially when you're adding special
cases, you need to take extra care to explain the rationale. People are
going to look at git log and git blame literally years from now, and
wonder what this is about.

BR,
Jani.



PS. Please try to ensure your mail client handles thread replies
properly. This should have been in reply to:
https://lore.kernel.org/r/54fada5eea99c1b5d7af300bcd6697711c3c5705.camel@intel.com


>
> - Madhumitha
>
>>
>> > This satisfy the "before going into sleep to allow CS entry" but it
>> > do not restore the workaround after waking up from suspend.
>> > Also you could improve the code, you are reading the register even
>> > for platforms that don't need the wa, also check intel_de_rmw() it
>> > is better suited
>> > to this case.
>> >
>> > >           bxt_enable_dc9(i915);
>> > >           /* Tweaked Wa_14010685332:icp,jsp,mcc */
>> > >           if (INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>> > > INTEL_PCH_TYPE(i915) <= PCH_MCC)
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> > > b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> > > index 47c85ac97c87..8e3f84100daf 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> > > @@ -26,6 +26,7 @@
>> > >  #include "i915_drv.h"
>> > >  #include "intel_display_types.h"
>> > >  #include "intel_hotplug.h"
>> > > +#include "intel_de.h"
>> > >
>> > >  /**
>> > >   * DOC: Hotplug
>> > > @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder
>> > > *encoder,
>> > >                 struct intel_connector *connector)
>> > >  {
>> > >   struct drm_device *dev = connector->base.dev;
>> > > + struct drm_i915_private *dev_priv = to_i915(dev);
>> > >   enum drm_connector_status old_status;
>> > > + u32 val;
>> > >   u64 old_epoch_counter;
>> > >   bool ret = false;
>> > >
>> > > @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder
>> > > *encoder,
>> > >                         drm_get_connector_status_name(connector-
>> > > >base.status),
>> > >                         old_epoch_counter,
>> > >                         connector->base.epoch_counter);
>> > > +
>> > > +         /* Wa_14013120569:tgl */
>> > > +         if (IS_TIGERLAKE(dev_priv)) {
>> > > +                 val = intel_de_read(dev_priv, PP_CONTROL(0));
>> > > +                 if (connector->base.status ==
>> > > connector_status_connected) {
>> > > +                         val |= PANEL_POWER_ON;
>> > > +                         intel_de_write(dev_priv, PP_CONTROL(0),
>> > > val);
>> > > +                 }
>> > > +                 else if (connector->base.status ==
>> > > connector_status_disconnected) {
>> > > +                         val &= ~PANEL_POWER_ON;
>> > > +                         intel_de_write(dev_priv, PP_CONTROL(0),
>> > > val);
>> > > +                 }
>> > > +         }
>> >
>> > Not sure if this is the best place but anyways it is missing handle
>> > the case were tigerlake boots with the external display connected.
>> > No hotplug will happen and workaround will never be enabled.
>> >
>> > >           return INTEL_HOTPLUG_CHANGED;
>> > >   }
>> > >   return INTEL_HOTPLUG_UNCHANGED;
>> >
>> > _______________________________________________
>> > Intel-gfx mailing list
>> > Intel-gfx at lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
