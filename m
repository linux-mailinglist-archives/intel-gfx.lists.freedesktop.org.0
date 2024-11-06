Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC19C9BE277
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 10:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DDF10E1C2;
	Wed,  6 Nov 2024 09:26:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IO3cxq2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7455210E1C2;
 Wed,  6 Nov 2024 09:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730885170; x=1762421170;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9+tp1BNp3J0G89PzOJ/UTorRjeNMfwJiR+5Px5j4D7E=;
 b=IO3cxq2wclfwulLbQDTaPSot+akfMMGZyA6GfbrgyHGspjOsOlLaO0Yb
 n5t6Jo/8qAjzzaCcFRiwNSLaPuPj+i4B+iUOd0tapsjxAzLr2VXuCsJUO
 X1LhL5Sh19YiQl8PWZpTdXNUrnZgm7q+Qq9UBC5UMgNRbvZ1e7UILWl13
 CgaipnXm+wHEXTYcqtQzog2Z4tglBvu2j4mIzU+y25VlIk/8hGGgNXHlG
 p1StIkyU7qW2xDYNXmHp9gAkUH41nTi4I4BoeB75HUmWWv7OHNtm24R9k
 Qz9PzjKGclyB8xZZak2ffAaF180dY+hXzTDvTsFWk/64FyBVynsjEhqer w==;
X-CSE-ConnectionGUID: 8vpOH6o+SW+R+JIV+lVleQ==
X-CSE-MsgGUID: tEHt8SyvSIiXXOO2ZKnXQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48135845"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48135845"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:26:10 -0800
X-CSE-ConnectionGUID: eDS79EnXREugpp9H3NI5hw==
X-CSE-MsgGUID: QSj7hg/URjKW3C5eEJYGmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="88956390"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:25:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 11/13] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
In-Reply-To: <173081498652.2525.11002030128754340512@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-12-gustavo.sousa@intel.com>
 <87ttd4v5ow.fsf@intel.com>
 <172959501916.3700.2271511841896515028@gjsousa-mobl2>
 <173081498652.2525.11002030128754340512@intel.com>
Date: Wed, 06 Nov 2024 11:25:52 +0200
Message-ID: <874j4khfxb.fsf@intel.com>
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

On Tue, 05 Nov 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Gustavo Sousa (2024-10-22 08:03:39-03:00)
>>Quoting Jani Nikula (2024-10-22 06:37:51-03:00)
>>>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> In order to be able to use the DMC wakelock, we also need to know that
>>>> the display hardware has support for DMC, which is a runtime info.
>>>> Define HAS_DMC_WAKELOCK(), which checks for both DMC availability and IP
>>>> version, and use it in place of directly checking the display version.
>>>>
>>>> Since we depend on runtime info, also make sure to call
>>>> intel_dmc_wl_init() only after we have probed the hardware for such info
>>>> (i.e. after intel_display_device_info_runtime_init()).
>>>
>>>Non-functional changes combined with functional changes. Please split.
>>
>>Do you mean changing the call site of intel_dmc_wl_init() as being
>>non-functional? Or is it something else?
>
> Jani, I'll send a v2 soon-ish. I'll go ahead and assume the anwser for
> the above is the former. Please stop me if otherwise :-)

Sorry, inbox overflowing. I think I meant that adding HAS_DMC_WAKELOCK()
is a non-functional change.

BR,
Jani.

>
> --
> Gustavo Sousa
>
>>
>>If this is about the former, I would argue that's not really
>>non-functional, because we are changing the order of how things are
>>done... But if making that a standalone patch is preferred, I can do
>>that.
>>
>>--
>>Gustavo Sousa
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>>>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
>>>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
>>>>  3 files changed, 4 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> index 071a36b51f79..5f78fd127fe0 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> @@ -128,6 +128,7 @@ enum intel_display_subplatform {
>>>>  #define HAS_DDI(i915)                        (DISPLAY_INFO(i915)->has_ddi)
>>>>  #define HAS_DISPLAY(i915)                (DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
>>>>  #define HAS_DMC(i915)                        (DISPLAY_RUNTIME_INFO(i915)->has_dmc)
>>>> +#define HAS_DMC_WAKELOCK(i915)                (HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)
>>>>  #define HAS_DOUBLE_BUFFERED_M_N(i915)        (DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
>>>>  #define HAS_DP_MST(i915)                (DISPLAY_INFO(i915)->has_dp_mst)
>>>>  #define HAS_DP20(i915)                        (IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>>> index 673f9b965494..8afaa9cb89d2 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>>> @@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>>>>          intel_dpll_init_clock_hook(i915);
>>>>          intel_init_display_hooks(i915);
>>>>          intel_fdi_init_hook(i915);
>>>> -        intel_dmc_wl_init(&i915->display);
>>>>  }
>>>>  
>>>>  /* part #1: call before irq install */
>>>> @@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>>>>                  return 0;
>>>>  
>>>>          intel_dmc_init(display);
>>>> +        intel_dmc_wl_init(display);
>>>>  
>>>>          i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
>>>>          i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>>> index 8283b607aac4..f6ec79b0e39d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>>> @@ -250,7 +250,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display, u32 address)
>>>>  
>>>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>>>>  {
>>>> -        if (DISPLAY_VER(display) < 20 ||
>>>> +        if (!HAS_DMC_WAKELOCK(display) ||
>>>>              !intel_dmc_has_payload(display) ||
>>>>              !display->params.enable_dmc_wl)
>>>>                  return false;
>>>> @@ -263,7 +263,7 @@ void intel_dmc_wl_init(struct intel_display *display)
>>>>          struct intel_dmc_wl *wl = &display->wl;
>>>>  
>>>>          /* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
>>>> -        if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl)
>>>> +        if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_wl)
>>>>                  return;
>>>>  
>>>>          INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
>>>
>>>-- 
>>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
