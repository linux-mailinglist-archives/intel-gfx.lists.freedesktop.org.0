Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE7E12B17B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 06:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F9B89CC4;
	Fri, 27 Dec 2019 05:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795CF89CC4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 05:34:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 21:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,361,1571727600"; d="scan'208";a="215113814"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.66.106.191])
 ([10.66.106.191])
 by fmsmga008.fm.intel.com with ESMTP; 26 Dec 2019 21:34:25 -0800
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
References: <20191225175514.21271-1-swati2.sharma@intel.com>
 <CAKi4VAJOsg5pashSkEjTd4LrrbZ3ZXwK8ivw1PEfQbBrW5gWKA@mail.gmail.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <32934a52-c653-ca66-4d3e-346623e224b9@intel.com>
Date: Fri, 27 Dec 2019 11:04:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAKi4VAJOsg5pashSkEjTd4LrrbZ3ZXwK8ivw1PEfQbBrW5gWKA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Increase log level if DSB
 engine gets busy
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27-Dec-19 2:39 AM, Lucas De Marchi wrote:
> On Wed, Dec 25, 2019 at 10:07 AM Swati Sharma <swati2.sharma@intel.com> wrote:
>>
>> Increase the log level if DSB engine gets busy. If dsb engine
>> is busy, it should be an error condition to indicate there might be
>> some difficulty with the hardware.
>>
>> If DSB engine gets busy, load luts will fail and as per current
>> driver design if one instance of DSB engine gets busy, we are not
>> allocating the other instance. So, increase the log level to indicate there
>> could be an issue with driver/hardware.
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index ada006a690df..6f67b5dfa128 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -52,7 +52,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
>>
>>          dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
>>          if (DSB_STATUS & dsb_ctrl) {
>> -               DRM_DEBUG_KMS("DSB engine is busy.\n");
>> +               DRM_ERROR("DSB engine is busy.\n");
> 
> are we seeing this? Isn't it a dbg message because in this case we
> would fallback to direct mmio?
We are seeing this issue and is already under debug.
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@kms_available_modes_crc@available_mode_test_crc.html

<7> [303.727858] [drm:intel_dsb_commit [i915]] DSB engine is busy.
<7> [303.727975] [drm:icl_load_luts [i915]] DSB engine is busy.
> 
> Lucas De Marchi
> 
>>                  return false;
>>          }
>>
>> @@ -72,7 +72,7 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
>>
>>          dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
>>          if (DSB_STATUS & dsb_ctrl) {
>> -               DRM_DEBUG_KMS("DSB engine is busy.\n");
>> +               DRM_ERROR("DSB engine is busy.\n");
>>                  return false;
>>          }
>>
>> --
>> 2.24.1
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> 
> 


-- 
~Swati Sharma
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
