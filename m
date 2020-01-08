Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 419E5135B06
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 15:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1101E6E439;
	Thu,  9 Jan 2020 14:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3244A6E2D7;
 Wed,  8 Jan 2020 13:59:30 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CDE15511EA4AE1C5E960;
 Wed,  8 Jan 2020 21:59:23 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 8 Jan 2020
 21:59:19 +0800
To: Jani Nikula <jani.nikula@linux.intel.com>, <airlied@linux.ie>,
 <chris@chris-wilson.co.uk>
References: <20200108133610.92714-1-chenzhou10@huawei.com>
 <877e22qczw.fsf@intel.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <6081a507-c11a-749e-df6a-c59649ee5d65@huawei.com>
Date: Wed, 8 Jan 2020 21:59:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <877e22qczw.fsf@intel.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 09 Jan 2020 14:06:27 +0000
Subject: Re: [Intel-gfx] [PATCH next] drm/i915/gtt: add missing include file
 asm/smp.h
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020/1/8 21:44, Jani Nikula wrote:
> On Wed, 08 Jan 2020, Chen Zhou <chenzhou10@huawei.com> wrote:
>> Fix build error:
>> lib/crypto/chacha.c: In function chacha_permute:
>> lib/crypto/chacha.c:65:1: warning: the frame size of 3384 bytes is larger than 2048 bytes [-Wframe-larger-than=]
>>  }
>>   ^
> 
> IMO this needs a better explanation of why not having the include leads
> to the above failure.
> 
> BR,
> Jani.
> 

Sorry, i made a mistake. The error is as follows:

drivers/gpu/drm/i915/gt/intel_ggtt.c: In function ggtt_restore_mappings:
drivers/gpu/drm/i915/gt/intel_ggtt.c:1239:3: error: implicit declaration of function wbinvd_on_all_cpus; did you mean wrmsr_on_cpus? [-Werror=implicit-function-declaration]
   wbinvd_on_all_cpus();
   ^~~~~~~~~~~~~~~~~~
   wrmsr_on_cpus


Thanks,
Chen Zhou

>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 1a2b5dc..9ef8ed8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -6,6 +6,7 @@
>>  #include <linux/stop_machine.h>
>>  
>>  #include <asm/set_memory.h>
>> +#include <asm/smp.h>
>>  
>>  #include "intel_gt.h"
>>  #include "i915_drv.h"
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
