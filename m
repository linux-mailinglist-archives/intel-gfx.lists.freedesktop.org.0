Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BCDB2BB94
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 10:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC1310E011;
	Tue, 19 Aug 2025 08:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvSrIMjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2801C10E011
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Aug 2025 08:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755591457; x=1787127457;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OXoZYB9DVMb9aa6rKPyCid7umcUbVYikf23SO4oTYEk=;
 b=HvSrIMjbx84Q0bMBm3PP0i8tmo2Jhr/+yk2vs6/Q3ZEc0+9W5he9/M2n
 jCkhcHdaGkxZ32fAbAlmq9+22nRVZG2TIrJfNKTlXouuRNgkde5oQxxXE
 oZzOC8TiNo1oBMb47JJKFNqJ8F9NCsNtHqElrKADgRpo9MFoj+vuhv9Ap
 Umj6Vad6gQMieX06J335cMmvEYEj105A/vWYpPBhjlQC3qay0+b2MD6Tx
 JfqTtZ+C/F3K/ADozBmQ7StbblRSuaqqpuNiVqsdbnStSNJUJxLcf/Wzl
 YnRVWTzr7BhkG30Usf065K6cGIZZtSOhr84IchyqsGpWlRQunrBMyJRP6 g==;
X-CSE-ConnectionGUID: /dwlCm4IRdWzMUyGsQUgmA==
X-CSE-MsgGUID: cRvniPtXSjKcurKyV+au1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="61660720"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="61660720"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:17:36 -0700
X-CSE-ConnectionGUID: Nf8yJWJ2RC2fs98t5ZZLVA==
X-CSE-MsgGUID: Nzi60xy+TMKTbjp8rL1YuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="167402825"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 01:17:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Cc: kernel test robot <lkp@intel.com>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] drm/i915/switcheroo: check for NULL before dereferencing
In-Reply-To: <175552587452.2359.6170388271062176019@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250818071605.2541523-1-jani.nikula@intel.com>
 <175552222425.2359.8280537352019435466@intel.com>
 <8e309d1064aa09c47049c079b583f0dfb6635434@intel.com>
 <175552587452.2359.6170388271062176019@intel.com>
Date: Tue, 19 Aug 2025 11:17:30 +0300
Message-ID: <11c53332611b4cd7b7c5fc38169ffd051c32e0f0@intel.com>
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

On Mon, 18 Aug 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-08-18 10:30:30-03:00)
>>On Mon, 18 Aug 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> Quoting Jani Nikula (2025-08-18 04:16:05-03:00)
>>>>Both i915_switcheroo_set_state() and i915_switcheroo_can_switch() check
>>>>for i915 == NULL. Commit d2e184f8e16a ("drm/i915/switcheroo: pass
>>>>display to HAS_DISPLAY()") started dereferencing it before the NULL
>>>>check. Fix it.
>>>
>>> Hm... Did it? I think i915->display will only give you an invalid
>>> address when i915 is NULL, but I don't think any dereferencing will
>>> happen, because of the checks on i915.
>>
>>What would be the case for &i915->display, but not i915->display?
>
> Ah, right.
>
> Yeah, I got confused thinking this was the same as the old times when we
> stored display directly in the structure. In that case, we would use
> &i915->display and no dereferencing would happen.
>
> Now we store a pointer to the display in i915 and we need
> dereferencing in order to get the address.
>
> Sorry for the noise!

Good to clarify!

Thanks for the review, pushed to din.

BR,
Jani.



>
> --
> Gustavo Sousa
>
>>
>>>
>>> Anyways, playing it safe here is probably a good idea. I would just
>>> reword the commit message a bit. With that,
>>>
>>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>
>>Thanks.
>>
>>>
>>>>
>>>>Fixes: d2e184f8e16a ("drm/i915/switcheroo: pass display to HAS_DISPLAY()")
>>>>Reported-by: kernel test robot <lkp@intel.com>
>>>>Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>>>>Closes: https://lore.kernel.org/r/202508160035.hmzuKiww-lkp@intel.com/
>>>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
>>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
>>>>index 231d27497706..3a95a55b2e87 100644
>>>>--- a/drivers/gpu/drm/i915/i915_switcheroo.c
>>>>+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
>>>>@@ -15,7 +15,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
>>>>                                       enum vga_switcheroo_state state)
>>>> {
>>>>         struct drm_i915_private *i915 = pdev_to_i915(pdev);
>>>>-        struct intel_display *display = i915->display;
>>>>+        struct intel_display *display = i915 ? i915->display : NULL;
>>>>         pm_message_t pmm = { .event = PM_EVENT_SUSPEND };
>>>> 
>>>>         if (!i915) {
>>>>@@ -45,7 +45,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
>>>> static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
>>>> {
>>>>         struct drm_i915_private *i915 = pdev_to_i915(pdev);
>>>>-        struct intel_display *display = i915->display;
>>>>+        struct intel_display *display = i915 ? i915->display : NULL;
>>>> 
>>>>         /*
>>>>          * FIXME: open_count is protected by drm_global_mutex but that would lead to
>>>>-- 
>>>>2.47.2
>>>>
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
