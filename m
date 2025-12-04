Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A45F2CA3723
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 12:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957BA10E925;
	Thu,  4 Dec 2025 11:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUkw8q1x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7726410E943;
 Thu,  4 Dec 2025 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764847834; x=1796383834;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D0l9gtT8mdPrjBEpLLTAq2Mfr4JEZv9nEfbaayguj+s=;
 b=UUkw8q1xTFFAv7hcQU9JLw2FYvwC52XMftfTWKDaTt8yL7xdLdI7bFb5
 Y99Ex88mpzz19z2pnDzKhpCMn8YbyCUAE470z0NpK5919Qns7uirXhdbA
 rMh3fLxvGkDI+gWx8/gghECRkv8saKQgC41VN2l4xp1lwMD98G0RaekyQ
 gbNIvWNUuLvgNPw3pxsmahCxpAuhqbDFycwcNn6IGlXyQX/QeoGbn47AW
 bupFAVi0xdPbAKnbUJjYRTJHl2Ii/ALDvCvVTQ5MEE5WMylM7S7Ok7KI5
 WP3Ts7bCNrB64NET5R8YO97RwWqMP4XQ5eIFv5jSyQ0s8QrqOTWBSaciB g==;
X-CSE-ConnectionGUID: 4uXbV3tSTlmbgZAvQbz6ow==
X-CSE-MsgGUID: LWHXsDpIRTi2JArMvnAjqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66796306"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66796306"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 03:30:33 -0800
X-CSE-ConnectionGUID: JUWMXRFnSyaO0+bJ9zqH2A==
X-CSE-MsgGUID: aFqby5KlQ/G80DxOi72TQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="232295373"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 03:30:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mohammed Thasleem <mohammed.thasleem@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
In-Reply-To: <aTATMrp6oysYUecR@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <aS9ZGmXG_n0IXv-N@ideak-desk> <aS9bj8RRYYc01Rzs@ideak-desk>
 <43c4d7f0d9fe4ba6acac828306b41d612dd4f085@intel.com>
 <aTATMrp6oysYUecR@ideak-desk>
Date: Thu, 04 Dec 2025 13:30:27 +0200
Message-ID: <7bfb6dabe5bf83028f695d4d248597b721ce0e0c@intel.com>
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

On Wed, 03 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Dec 03, 2025 at 10:13:44AM +0200, Jani Nikula wrote:
>> On Tue, 02 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > On Tue, Dec 02, 2025 at 11:24:42PM +0200, Imre Deak wrote:
>> >> On Tue, Dec 02, 2025 at 08:39:50PM +0200, Jani Nikula wrote:
>> >> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
>> >> > initialized, and dmc is thus NULL.
>> >> > 
>> >> > That would be the case when the call path is
>> >> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
>> >> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
>> >> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
>> >> > 
>> >> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
>> >> > conditionally, depending on the current and target DC states. At probe,
>> >> > the target is disabled, but if DC6 is enabled, the function is called,
>> >> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
>> >> > at probe, as we haven't seen this failure mode before.
>> >> > 
>> >> > Add NULL checks and switch the dmc->display references to just display.
>> >> > 
>> >> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
>> >> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> >> > Cc: Imre Deak <imre.deak@intel.com>
>> >> > Cc: <stable@vger.kernel.org> # v6.16+
>> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> > 
>> >> > ---
>> >> > 
>> >> > Rare case, but this may also throw off the rc6 counting in debugfs when
>> >> > it does happen.
>> >> 
>> >> Yes, I missed the case where the driver is being loaded while DC6 is
>> >> enabled, this is what happens for the reporter:
>> >> 
>> >> i915 0000:00:04.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)
>> >> 
>> >> That's odd, as DC6 requires the DMC firmware, which - if it's indeed
>> >> loaded by BIOS for instance - will be overwritten by the driver, not a
>> >> well specified sequence (even though the driver is trying to handle it
>> >> correctly by disabling any active firmware handler).
>> >> 
>> >> But as you pointed out this would also throw off the cooked-up DC6
>> >> counter tracking,
>> >
>> > Actually the patch would keep the counter working, as the counter
>> > wouldn't be updated in the dmc==NULL case. However I still think the
>> > correct fix would be to check the correct DC state, which from the POV
>> > of the counter tracking is the driver's version of the state, not the HW
>> > state.
>> 
>> One thing I failed to mention is that this happens in a KASAN run in
>> QEMU. So I'm kind of not surprised we haven't hit this before. And it
>> impacts the deductions about the DC state.
>
> Ok, it's strange why QEMU decides to initialize the DC_STATE_EN register
> to a non-zero value then. But in any case the driver should handle it.
>
>> I'm not quite sure what exactly you're suggesting, maybe a draft patch
>> would communicate the idea better than plain English? ;)
>
> intel_dmc_get_dc6_allowed_count() still needs to check for dmc==NULL, as
> the debugfs entry can be read at any point. With that, what I meant is:
>
> in gen9_set_dc_state():
> ...
> -       dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> +       dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;

I still don't understand why we can trust our own value rather than
what's in the hardware in this case.

For resume, we even call gen9_sanitize_dc_state(), but not for probe.

> ...
>
> in intel_dmc_get_dc6_allowed_count():
> ...
>         if (DISPLAY_VER(display) < 14)
>                 return false;
>  
> +       if (!dmc) {
> +               *count = 0;
> +               return true;
> +       }
> +

This seems neat but is overkill. dmc is never NULL here, but I added the
check for completeness.

It's the intel_dmc_update_dc6_allowed_count() that's more fragile, and I
want that to have the !dmc check, instead of relying on the subtle
dependency on power_domains->dc_state.

>         mutex_lock(&power_domains->lock);
> -       dc6_enabled = intel_de_read(display, DC_STATE_EN) &
> -                     DC_STATE_EN_UPTO_DC6;
> +       dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> ...
>
>> Anyway, I think "not oopsing" is a lot better than "inaccurate DC
>> counters in debugfs".
>
> Agreed, the above would ensure both.
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> >
>> >> so could instead the counter update depend on the
>> >> driver's DC state instead of the HW state? I.e. set
>> >> gen9_set_dc_state()/dc6_was_enabled,
>> >> intel_dmc_get_dc6_allowed_count()/dc6_enable if power_domains->dc_state
>> >> says that DC6 was indeed enabled by the driver (instead of checking the
>> >> HW state).
>> >> 
>> >> That would fix the reporter's oops when calling
>> >> intel_dmc_update_dc6_allowed_count(start_tracking=false), by not calling
>> >> it if the driver hasn't actually enabled DC6 and it would also keep the
>> >> DC6 counter tracking correct.
>> >> 
>> >> intel_dmc_update_dc6_allowed_count(start_tracking=true) would be also
>> >> guaranteed to be called only once the firmware is loaded, as until that
>> >> point enabling DC6 is blocked (by holding a reference on the DC_off
>> >> power well).
>> >> 
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
>> >> >  1 file changed, 3 insertions(+), 3 deletions(-)
>> >> > 
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> > index 2fb6fec6dc99..169bbbc91f6d 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> > @@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>> >> >  	struct intel_dmc *dmc = display_to_dmc(display);
>> >> >  	u32 dc5_cur_count;
>> >> >  
>> >> > -	if (DISPLAY_VER(dmc->display) < 14)
>> >> > +	if (!dmc || DISPLAY_VER(display) < 14)
>> >> >  		return;
>> >> >  
>> >> > -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
>> >> > +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
>> >> >  
>> >> >  	if (!start_tracking)
>> >> >  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
>> >> > @@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
>> >> >  	struct intel_dmc *dmc = display_to_dmc(display);
>> >> >  	bool dc6_enabled;
>> >> >  
>> >> > -	if (DISPLAY_VER(display) < 14)
>> >> > +	if (!dmc || DISPLAY_VER(display) < 14)
>> >> >  		return false;
>> >> >  
>> >> >  	mutex_lock(&power_domains->lock);
>> >> > -- 
>> >> > 2.47.3
>> >> > 
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
