Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F206269602
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF19B6E57A;
	Mon, 14 Sep 2020 20:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88C96E578
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:05:48 +0000 (UTC)
IronPort-SDR: GjXFRJb9kHaTakPSkrQXH/aIT8OII4MAWL1OeW8lAGI43Ma9Q8Wo0bn0NEUujXCSHYf/NUG7W6
 ibHtaGEfB4yw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156547395"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="156547395"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:05:48 -0700
IronPort-SDR: 8q3YK/OnnPQ0KxDTYSOej6dUKXRGVxNhPiQc8g7AjJ96uQhWi2FJHb6GJBm8pfdAQaop/JqVR6
 LvZYYTocpqSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="330879694"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 14 Sep 2020 13:05:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 13:05:48 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Mon, 14 Sep 2020 13:05:47 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl, rkl: Make
 Wa_1606700617/22010271021 permanent
Thread-Index: AQHWiIpf5oXdXsQK+E63zLY2tjt1palkp0IAgAAvm4CABDJFgA==
Date: Mon, 14 Sep 2020 20:05:47 +0000
Message-ID: <5FA1A35B-80D5-452C-AA52-2D371CC78A83@intel.com>
References: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
 <20200912011026.GA265632@intel.com>
 <ab65ffc77785459588e22ea0f76d6e28@intel.com>
In-Reply-To: <ab65ffc77785459588e22ea0f76d6e28@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <602EA85DF9E6184096AD302B8BA551B2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl,
 rkl: Make Wa_1606700617/22010271021 permanent
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> On Sep 11, 2020, at 9:00 PM, Dhanavanthri, Swathi <swathi.dhanavanthri@intel.com> wrote:
> 
> It is in the if statement: if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {

duh! sorry...

more below:

> 
> -----Original Message-----
> From: Rodrigo Vivi <rodrigo.vivi@intel.com> 
> Sent: Friday, September 11, 2020 6:10 PM
> To: Dhanavanthri, Swathi <swathi.dhanavanthri@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl, rkl: Make Wa_1606700617/22010271021 permanent
> 
> On Fri, Sep 11, 2020 at 03:11:58PM -0700, Swathi Dhanavanthri wrote:
>> This workaround applies to all TGL and RKL steppings.
>> 
>> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
>> ---
>> drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++---
>> 1 file changed, 4 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 39817c5a7058..6c580d0d9ea8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1729,10 +1729,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>> 			     GEN6_RC_SLEEP_PSMI_CONTROL,
>> 			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>> 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>> -	}

now I noticed this ^ :)

>> 
>> -	if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
> 
> please notice this function is called for other gens.
> In case you need to extend this to other platforms, please add them to the if instead of removing the if.
> 
>> -		/* Wa_1606700617:tgl */
>> +		/*
>> +		 * Wa_1606700617:tgl
>> +		 * Wa_22010271021:tgl,rkl

1. This HSD only mentions TGL-U. No mention to RKL.
2. No mention to anything related to this clock gate.
3. Actually no W/a description at all and no sw_impact at all. But It links to another entry 22010288313,
which describes the w/a as a 3dstate ff one...

What am I missing here?

Thanks,
Rodrigo.

>> +		 */
>> 		wa_masked_en(wal,
>> 			     GEN9_CS_DEBUG_MODE1,
>> 			     FF_DOP_CLOCK_GATE_DISABLE);
>> --
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
