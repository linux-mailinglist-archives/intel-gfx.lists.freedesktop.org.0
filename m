Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E603FB2A528
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 15:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF2310E446;
	Mon, 18 Aug 2025 13:30:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SKgM43W+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC1210E446
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Aug 2025 13:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755523845; x=1787059845;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NcmZ4KlRq9UWVXXiaJoh23iwe+uOZdhtebIZ1R027j8=;
 b=SKgM43W+9LRrR8zjaKDfLs6u4HNsmY7FNFjzAM5YYhCkOKTRts0/rXCe
 l2RNf8YuRkDMKDrQ4y6QB5L3+pupQ5FcV9p1FJnx14urNg0SmxgOf6Xa6
 X5Ra/R7KDB7iYtxMPCcFHpqmGGgBYZYbbBJMoNBrNDPLqI2tYvqSOnvZ8
 1CdN/IxCbeCdgx6O709netSZ7oFPW79lASGxti+4dgPPmV10OJLByH6Dw
 ORAsyunbpMcWxUHUFXcpCzbYwrAwtMkdYDUXxlWJeSp66iGNo2LcSSiFv
 nBWmaRp1kqn9ymYabOWO8HiJ/HwczDDtTL5zoXDxYOB9bnBnpXLiUFDma w==;
X-CSE-ConnectionGUID: kqQLwYNcRUaCXORzaxgDIA==
X-CSE-MsgGUID: BuyeY4g4TFOsiCpXLlxbKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="80327899"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="80327899"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 06:30:44 -0700
X-CSE-ConnectionGUID: jKPl7jQ6SOubl+MgQz6D1w==
X-CSE-MsgGUID: ShVkTvjgQv2b7ZERI102vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="172782437"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 06:30:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Cc: kernel test robot <lkp@intel.com>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] drm/i915/switcheroo: check for NULL before dereferencing
In-Reply-To: <175552222425.2359.8280537352019435466@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250818071605.2541523-1-jani.nikula@intel.com>
 <175552222425.2359.8280537352019435466@intel.com>
Date: Mon, 18 Aug 2025 16:30:30 +0300
Message-ID: <8e309d1064aa09c47049c079b583f0dfb6635434@intel.com>
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
> Quoting Jani Nikula (2025-08-18 04:16:05-03:00)
>>Both i915_switcheroo_set_state() and i915_switcheroo_can_switch() check
>>for i915 == NULL. Commit d2e184f8e16a ("drm/i915/switcheroo: pass
>>display to HAS_DISPLAY()") started dereferencing it before the NULL
>>check. Fix it.
>
> Hm... Did it? I think i915->display will only give you an invalid
> address when i915 is NULL, but I don't think any dereferencing will
> happen, because of the checks on i915.

What would be the case for &i915->display, but not i915->display?

>
> Anyways, playing it safe here is probably a good idea. I would just
> reword the commit message a bit. With that,
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks.

>
>>
>>Fixes: d2e184f8e16a ("drm/i915/switcheroo: pass display to HAS_DISPLAY()")
>>Reported-by: kernel test robot <lkp@intel.com>
>>Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>>Closes: https://lore.kernel.org/r/202508160035.hmzuKiww-lkp@intel.com/
>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
>>index 231d27497706..3a95a55b2e87 100644
>>--- a/drivers/gpu/drm/i915/i915_switcheroo.c
>>+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
>>@@ -15,7 +15,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
>>                                       enum vga_switcheroo_state state)
>> {
>>         struct drm_i915_private *i915 = pdev_to_i915(pdev);
>>-        struct intel_display *display = i915->display;
>>+        struct intel_display *display = i915 ? i915->display : NULL;
>>         pm_message_t pmm = { .event = PM_EVENT_SUSPEND };
>> 
>>         if (!i915) {
>>@@ -45,7 +45,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
>> static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
>> {
>>         struct drm_i915_private *i915 = pdev_to_i915(pdev);
>>-        struct intel_display *display = i915->display;
>>+        struct intel_display *display = i915 ? i915->display : NULL;
>> 
>>         /*
>>          * FIXME: open_count is protected by drm_global_mutex but that would lead to
>>-- 
>>2.47.2
>>

-- 
Jani Nikula, Intel
