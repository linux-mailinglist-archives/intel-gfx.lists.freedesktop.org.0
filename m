Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2951CC9E29E
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 09:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2B110E72E;
	Wed,  3 Dec 2025 08:13:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8OGuvh4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD0910E72E;
 Wed,  3 Dec 2025 08:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764749630; x=1796285630;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=EbSYU953RKjHW7wA5plT5zQZwU7gj4GUV/v9MPqxLeI=;
 b=H8OGuvh4kZwEQYecG1ulr5dETrZ1mOIh6+D1jai39eM7ZDheF8OYGbFJ
 FCDXsqqhpb26XOZmLzP3n3WOK6Lcl+bg9VpZIYCuE7CtpgzgwDfy572/q
 UBI6f98VP3N27Wcc1l/+J67jZJN4MDu0K/IadAO1IUfFFXSru6umSaFPg
 LwMf64/9acaH0zXVaTj9lgpYGKGATRxndzMxTL21xCiNb9duCZjsw1mF9
 tnUTXyV/Poy30lbk96XJWpq+MqlgEBflnHV7KLr/4JCctWG/hpjaH5Rgr
 qAwBzVtYRLQSrzYNX0nalnrV9LVCyFcrgDRHdttoOf/ANyB7xsunP3Q0m Q==;
X-CSE-ConnectionGUID: ehivIV8UTVebhTGwkjUBEg==
X-CSE-MsgGUID: XmO4+W4qQNqdb5GXKGpFbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77416103"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="77416103"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 00:13:49 -0800
X-CSE-ConnectionGUID: ixh40zUTSZS5MeE6+3KAsg==
X-CSE-MsgGUID: WLU3ByICTXmrrhIGNiK7WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="193891482"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 00:13:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
In-Reply-To: <aS9bj8RRYYc01Rzs@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <aS9ZGmXG_n0IXv-N@ideak-desk> <aS9bj8RRYYc01Rzs@ideak-desk>
Date: Wed, 03 Dec 2025 10:13:44 +0200
Message-ID: <43c4d7f0d9fe4ba6acac828306b41d612dd4f085@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 02 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Dec 02, 2025 at 11:24:42PM +0200, Imre Deak wrote:
>> On Tue, Dec 02, 2025 at 08:39:50PM +0200, Jani Nikula wrote:
>> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
>> > initialized, and dmc is thus NULL.
>> > 
>> > That would be the case when the call path is
>> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
>> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
>> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
>> > 
>> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
>> > conditionally, depending on the current and target DC states. At probe,
>> > the target is disabled, but if DC6 is enabled, the function is called,
>> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
>> > at probe, as we haven't seen this failure mode before.
>> > 
>> > Add NULL checks and switch the dmc->display references to just display.
>> > 
>> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
>> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> > Cc: Imre Deak <imre.deak@intel.com>
>> > Cc: <stable@vger.kernel.org> # v6.16+
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > 
>> > ---
>> > 
>> > Rare case, but this may also throw off the rc6 counting in debugfs when
>> > it does happen.
>> 
>> Yes, I missed the case where the driver is being loaded while DC6 is
>> enabled, this is what happens for the reporter:
>> 
>> i915 0000:00:04.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)
>> 
>> That's odd, as DC6 requires the DMC firmware, which - if it's indeed
>> loaded by BIOS for instance - will be overwritten by the driver, not a
>> well specified sequence (even though the driver is trying to handle it
>> correctly by disabling any active firmware handler).
>> 
>> But as you pointed out this would also throw off the cooked-up DC6
>> counter tracking,
>
> Actually the patch would keep the counter working, as the counter
> wouldn't be updated in the dmc==NULL case. However I still think the
> correct fix would be to check the correct DC state, which from the POV
> of the counter tracking is the driver's version of the state, not the HW
> state.

One thing I failed to mention is that this happens in a KASAN run in
QEMU. So I'm kind of not surprised we haven't hit this before. And it
impacts the deductions about the DC state.

I'm not quite sure what exactly you're suggesting, maybe a draft patch
would communicate the idea better than plain English? ;)

Anyway, I think "not oopsing" is a lot better than "inaccurate DC
counters in debugfs".

BR,
Jani.


>
>> so could instead the counter update depend on the
>> driver's DC state instead of the HW state? I.e. set
>> gen9_set_dc_state()/dc6_was_enabled,
>> intel_dmc_get_dc6_allowed_count()/dc6_enable if power_domains->dc_state
>> says that DC6 was indeed enabled by the driver (instead of checking the
>> HW state).
>> 
>> That would fix the reporter's oops when calling
>> intel_dmc_update_dc6_allowed_count(start_tracking=false), by not calling
>> it if the driver hasn't actually enabled DC6 and it would also keep the
>> DC6 counter tracking correct.
>> 
>> intel_dmc_update_dc6_allowed_count(start_tracking=true) would be also
>> guaranteed to be called only once the firmware is loaded, as until that
>> point enabling DC6 is blocked (by holding a reference on the DC_off
>> power well).
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
>> >  1 file changed, 3 insertions(+), 3 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > index 2fb6fec6dc99..169bbbc91f6d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > @@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>> >  	struct intel_dmc *dmc = display_to_dmc(display);
>> >  	u32 dc5_cur_count;
>> >  
>> > -	if (DISPLAY_VER(dmc->display) < 14)
>> > +	if (!dmc || DISPLAY_VER(display) < 14)
>> >  		return;
>> >  
>> > -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
>> > +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
>> >  
>> >  	if (!start_tracking)
>> >  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
>> > @@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
>> >  	struct intel_dmc *dmc = display_to_dmc(display);
>> >  	bool dc6_enabled;
>> >  
>> > -	if (DISPLAY_VER(display) < 14)
>> > +	if (!dmc || DISPLAY_VER(display) < 14)
>> >  		return false;
>> >  
>> >  	mutex_lock(&power_domains->lock);
>> > -- 
>> > 2.47.3
>> > 

-- 
Jani Nikula, Intel
