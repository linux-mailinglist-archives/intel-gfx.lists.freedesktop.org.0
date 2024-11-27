Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9579DAC3F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C5610EB7A;
	Wed, 27 Nov 2024 17:07:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlPcbJhR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DD810EB7A;
 Wed, 27 Nov 2024 17:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732727224; x=1764263224;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4jIY4G1Tdfb/BGX7uWF03FpOQD4OIuFsUcYNQA70VTM=;
 b=WlPcbJhRRhuICEjjcNU8n8o54UvGZqb4Y+h4QrvUzWvkSuYFhwLaVRA3
 r18wXFaKYHTvYIYqH7ZsatnzV4D/5CLRItepGu+b01zqqTQgrVhUWgaGk
 XqC/eoyXR2vlqXNAUWQUb+65tl/MgvdPS91+Qk6V87yZPAwhCQyM0NtK+
 bDzTBDuH0jbr+jJs1AgDvAQs9lkaOL5z59Cdmivy1jCQEzgXZ5aRl+bzp
 A5vRuRNd0sqDBxC39iZ8xbDy3UqP2uXJs1WAy377AXnDpOogkcTO7W0TI
 mkk4ijRVjMLEnUbyW0qbhtfm6TMiIdORlQKq5Hkb15Buwbj81Pl5xHSEl g==;
X-CSE-ConnectionGUID: OLMoIJ0sS3yMo8ZScnkb/Q==
X-CSE-MsgGUID: Y5v/hKnMRdqEFCNiuBNpAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36729331"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36729331"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:07:03 -0800
X-CSE-ConnectionGUID: bKKANKQJRiWjGrPGB7jlWA==
X-CSE-MsgGUID: XLE/z2U/SEuL3jd2PmWkiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="129503581"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:07:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: use seq buf for printing rates
In-Reply-To: <Z0c8CH-CYD7F8e9m@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241127131838.3268735-1-jani.nikula@intel.com>
 <Z0c8CH-CYD7F8e9m@black.fi.intel.com>
Date: Wed, 27 Nov 2024 19:06:59 +0200
Message-ID: <87plmgwqq4.fsf@intel.com>
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

On Wed, 27 Nov 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> On Wed, Nov 27, 2024 at 03:18:38PM +0200, Jani Nikula wrote:
>> Hand rolling the buffer overflow handling with snprintf() is a bit
>> tedious. The seq_buf interface is made for this. Switch to it.
>> 
>> Use struct intel_display while at it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
>>  1 file changed, 14 insertions(+), 22 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 053a9a4182e7..4471c8fcd478 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -28,6 +28,7 @@
>>  #include <linux/export.h>
>>  #include <linux/i2c.h>
>>  #include <linux/notifier.h>
>> +#include <linux/seq_buf.h>
>>  #include <linux/slab.h>
>>  #include <linux/sort.h>
>>  #include <linux/string_helpers.h>
>> @@ -1506,41 +1507,32 @@ bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
>>  	return DISPLAY_VER(i915) >= 10;
>>  }
>>  
>> -static void snprintf_int_array(char *str, size_t len,
>> -			       const int *array, int nelem)
>> +static void seq_buf_print_array(struct seq_buf *s, const int *array, int nelem)
>
> Perhaps with more users worth introducing as part of core lib?

Maybe later; right now I have neither the time or energy, just dumped
this off my local branch.

BR,
Jani.

>
> Andy and I did something similar with kmemdup.
> https://lore.kernel.org/linux-gpio/20241126172240.6044-1-raag.jadav@intel.com/
>
> Raag

-- 
Jani Nikula, Intel
