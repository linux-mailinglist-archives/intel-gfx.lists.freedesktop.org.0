Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622FE971370
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 11:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D3510E351;
	Mon,  9 Sep 2024 09:27:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="df+srGlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29EA010E351
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 09:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725874057; x=1757410057;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZX8JeUzZtwC9DY0sa3lCUCCrglgEUya5de/tbILFcLw=;
 b=df+srGlxskTWAiqMGEJ1GNVpHRclU/YTNxm66MfmYEWzp1JnW2JSf+mI
 t0M6k+KJ5UhvrjU8TJUPXnPjc9XWwe1Ff60KBzaNBPKEBhXDFL6obRuMx
 9Ntvcj6qGGJ031rw9KOVwaj/dxDbtwyccDVCnTL2MA7ZTmFFh6SwYkSD0
 j+Xie+u/VCshbZf+TpTRRPXLqaPg6sVvQiGNdSC64GaDtDHUjZjMsKe5U
 ZJSYVZBCSowsGpVLcWf3pnWzaVJI10fNQABhXepgHx5s6WxgIGpITJNgl
 07s4liXmR2B1lgzGnA+Ysb12if3NesIQgFVK4/FWvD6SWZto0DSWzwW50 w==;
X-CSE-ConnectionGUID: JMQjaLZfSpypaI9gWFI/Yw==
X-CSE-MsgGUID: Yw2DoR3mSAOtXyitfkJIow==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24672233"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24672233"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 02:27:36 -0700
X-CSE-ConnectionGUID: i93HDXq4RfWuhIxqFVF5mQ==
X-CSE-MsgGUID: uAE50xKtRsSnmt9bf9KgeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="89888267"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 02:27:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/bios: fix printk format width
In-Reply-To: <SJ0PR11MB6789D9701C99A53699E65D438D9D2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240905112519.4186408-1-jani.nikula@intel.com>
 <SJ0PR11MB6789D9701C99A53699E65D438D9D2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Date: Mon, 09 Sep 2024 12:27:26 +0300
Message-ID: <878qw1mb29.fsf@intel.com>
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

On Thu, 05 Sep 2024, "Kulkarni, Vandita" <vandita.kulkarni@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, September 5, 2024 4:55 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; stable@vger.kernel.org
>> Subject: [PATCH] drm/i915/bios: fix printk format width
>>
>> s/0x04%x/0x%04x/ to use 0 prefixed width 4 instead of printing 04 verbatim.
>>
>> Fixes: 51f5748179d4 ("drm/i915/bios: create fake child devices on missing
>> VBT")
>> Cc: <stable@vger.kernel.org> # v5.13+
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> LGTM.
> Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Pushed to din, thanks for the review.

BR,
Jani.


>
> Thanks.
>>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index cd32c9cd38a9..daa4b9535123 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2949,7 +2949,7 @@ init_vbt_missing_defaults(struct intel_display
>> *display)
>>               list_add_tail(&devdata->node, &display-
>> >vbt.display_devices);
>>
>>               drm_dbg_kms(display->drm,
>> -                         "Generating default VBT child device with type
>> 0x04%x on port %c\n",
>> +                         "Generating default VBT child device with type
>> 0x%04x on port
>> +%c\n",
>>                           child->device_type, port_name(port));
>>       }
>>
>> --
>> 2.39.2
>

-- 
Jani Nikula, Intel
