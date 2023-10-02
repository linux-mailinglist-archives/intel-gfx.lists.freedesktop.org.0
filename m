Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF647B4D4B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 10:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0E810E22F;
	Mon,  2 Oct 2023 08:31:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB4510E22F;
 Mon,  2 Oct 2023 08:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696235490; x=1727771490;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2vvwX1JJ5JEtRG1CpsA3GNnWMbXF5Wdmg57XanyY+Do=;
 b=P6QulbvTPm5Hnun2uwebfH4k2BI66Gi0vKSNO5nrXNgv587DKMT0+Ut1
 ABbNrAKsU645Ct4Tqg2XrQSiZg49xeX8OBXMup6fUx465TciybBCh58QZ
 L+BpcwqNgfmbXmBDSp6Xf0wZlHFDe6+c4htimVTWdurdMSQX4HXnvuy/n
 gZx14iOX5lUUm0r/398AbUYb6NsfRQ1XfTr10uEwtQutlHd3tAR7YHq4A
 51Kr/4G2BZdonkz0fBCAQe9SeGEesO2H8VhdkxmGzoXqNA5KYxxfuZ9St
 VCDgsDnDOBwsFh8rhkHGet2oruRWXUkk+erZOCrdN7H8Gtba4GGwsmvOt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="468881901"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="468881901"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:31:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="700274242"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="700274242"
Received: from bfarrel1-mobl1.ger.corp.intel.com (HELO [10.213.209.6])
 ([10.213.209.6])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:31:27 -0700
Message-ID: <a7f63810-d8c0-7a5e-58ca-8b91100c2741@linux.intel.com>
Date: Mon, 2 Oct 2023 09:31:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230929110949.342325-1-tvrtko.ursulin@linux.intel.com>
 <ZRbv2jgIi1xN298e@unerlige-ril>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZRbv2jgIi1xN298e@unerlige-ril>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tools/intel_gpu_top: Restore user
 friendly error message
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 29/09/2023 16:40, Umesh Nerlige Ramappa wrote:
> On Fri, Sep 29, 2023 at 12:09:49PM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We have a nice error message displayed when an user with insufficient
>> permissions tries to run the tool, but that got lost while Meteorlake
>> support was added. Bring it back in.
>>
>> v2:
>> * Propagate unexpected errno on multi-tile systems too. (Umesh)
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>> tools/intel_gpu_top.c | 8 +++++---
>> 1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 87e9681e53b4..10601e66b18e 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -554,9 +554,9 @@ static int get_num_gts(uint64_t type)
>>
>>         close(fd);
>>     }
>> -    assert(!errno || errno == ENOENT);
>> -    assert(cnt > 0);
>> -    errno = 0;
>> +
>> +    if (!cnt || (errno && errno != ENOENT))
>> +        cnt = -errno;
> 
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Pushed, thanks!

Regards,

Tvrtko
