Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF96747531
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 17:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F1F10E16B;
	Tue,  4 Jul 2023 15:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B9610E16B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 15:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688484077; x=1720020077;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tVQM+gCCDLDrq2UHwm3yXMX3s0kYzL5xySaQrOO3XkM=;
 b=hVhv+l/6jC64OtT/BakNSOYwk7hpOiNsG9ijfePEe7a+MyaL9n+qXrC3
 I2MpHkNI5wp5XL7dgv8vhVugDXaKXWnRSXYKJVW5luod8h9jdkrPt7Odr
 UJOUFZ6DH80hCUEUOoL+uxsppBtUiPyzozN8g5pCfmyQdbyqhSNU/osJu
 Vpy/6ICc/l1S+C8rGwuCuRJCnUAG96ZQymJK+o9L0XBUkWujtX06SgsRj
 aKndpr+5zAa8Gq+U/YBr2Zt/D04OhxWuj+cMZDd202/1E6hTaQaoWK8EF
 lpgSx7nGrmUcZmYPwfVx3CQEygmTgsKetYBrfjWddvTDIyGueCAkM5hnF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429182915"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="429182915"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="1049428057"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="1049428057"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:21:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <iwdi2hxv55vbojf7pcmyzjfm7y4skzjgseh3mkiblpgn6tzl56@5bfqk27hrui2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230627105849.274263-1-jani.nikula@intel.com>
 <iwdi2hxv55vbojf7pcmyzjfm7y4skzjgseh3mkiblpgn6tzl56@5bfqk27hrui2>
Date: Tue, 04 Jul 2023 18:21:12 +0300
Message-ID: <87zg4bzorb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dram: replace
 __raw_uncore_read32() with intel_uncore_read_fw()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 04 Jul 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Jun 27, 2023 at 01:58:49PM +0300, Jani Nikula wrote:
>>The __raw_uncore_* interface is supposed to be intel_uncore.[ch]
>>internal only. Replace the remaining outside user with
>>intel_uncore_read_fw(), which is essentially the same thing.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed to din.

> as a follow up, could we perhaps move the private-to-uncore functions to
> the end of the header is a note that they shouldn't be used directly?
> AFAICS the defines would still work fine.

That's what the double underscore is supposed to mean, but people like
to abuse that. :p

BR,
Jani.


>
> Lucas De Marchi
>
>>---
>> drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>>index 9f0651d48d41..15492b69f698 100644
>>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>>@@ -704,7 +704,7 @@ void intel_dram_edram_detect(struct drm_i915_private *i915)
>> 	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || GRAPHICS_VER(i915) >= 9))
>> 		return;
>>
>>-	edram_cap = __raw_uncore_read32(&i915->uncore, HSW_EDRAM_CAP);
>>+	edram_cap = intel_uncore_read_fw(&i915->uncore, HSW_EDRAM_CAP);
>>
>> 	/* NB: We can't write IDICR yet because we don't have gt funcs set up */
>>
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
