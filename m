Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DE92699F4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 01:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C9A89DED;
	Mon, 14 Sep 2020 23:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C74D89DED
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 23:56:09 +0000 (UTC)
IronPort-SDR: ymlHscQsDoXRxVqS+lclFBTgc/ArRe6mD5rNrbbiQsWRzcaxPYaBvLcrpXUcei5pxiZ83Qzmq3
 oLPdAD+s9Tdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158461382"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="158461382"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:56:08 -0700
IronPort-SDR: sQn3scowZfkpLxdElIw9dmnpPKMEQIyqFowT/mMGWrGTY5IAJmjd5363mFlNPdDywz0HfQ7GvB
 QfG+noBILW5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="409009812"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 14 Sep 2020 16:56:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 16:56:08 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Mon, 14 Sep 2020 16:56:08 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl, rkl: Make
 Wa_1606700617/22010271021 permanent
Thread-Index: AQHWiIpf5oXdXsQK+E63zLY2tjt1palkp0IAgAAvm4CABDJFgIAAQFuA
Date: Mon, 14 Sep 2020 23:56:08 +0000
Message-ID: <8A87916E-7121-4815-99B5-A5BEA491911D@intel.com>
References: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
 <20200912011026.GA265632@intel.com>
 <ab65ffc77785459588e22ea0f76d6e28@intel.com>
 <5FA1A35B-80D5-452C-AA52-2D371CC78A83@intel.com>
In-Reply-To: <5FA1A35B-80D5-452C-AA52-2D371CC78A83@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <67F67126D866D84B8C1442541E42CC01@intel.com>
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



> On Sep 14, 2020, at 1:05 PM, Vivi, Rodrigo <rodrigo.vivi@intel.com> wrote:
> 
> 
> 
>> On Sep 11, 2020, at 9:00 PM, Dhanavanthri, Swathi <swathi.dhanavanthri@intel.com> wrote:
>> 
>> It is in the if statement: if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> 
> duh! sorry...
> 
> more below:
> 
>> 
>> -----Original Message-----
>> From: Rodrigo Vivi <rodrigo.vivi@intel.com> 
>> Sent: Friday, September 11, 2020 6:10 PM
>> To: Dhanavanthri, Swathi <swathi.dhanavanthri@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl, rkl: Make Wa_1606700617/22010271021 permanent
>> 
>> On Fri, Sep 11, 2020 at 03:11:58PM -0700, Swathi Dhanavanthri wrote:
>>> This workaround applies to all TGL and RKL steppings.
>>> 
>>> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++---
>>> 1 file changed, 4 insertions(+), 3 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index 39817c5a7058..6c580d0d9ea8 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -1729,10 +1729,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>> 			     GEN6_RC_SLEEP_PSMI_CONTROL,
>>> 			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>>> 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>>> -	}
> 
> now I noticed this ^ :)
> 
>>> 
>>> -	if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
>> 
>> please notice this function is called for other gens.
>> In case you need to extend this to other platforms, please add them to the if instead of removing the if.
>> 
>>> -		/* Wa_1606700617:tgl */
>>> +		/*
>>> +		 * Wa_1606700617:tgl
>>> +		 * Wa_22010271021:tgl,rkl
> 
> 1. This HSD only mentions TGL-U. No mention to RKL.
> 2. No mention to anything related to this clock gate.
> 3. Actually no W/a description at all and no sw_impact at all. But It links to another entry 22010288313,
> which describes the w/a as a 3dstate ff one...
> 
> What am I missing here?

missing that old bspec page of course. Thanks for pointing it out...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Thanks,
> Rodrigo.
> 
>>> +		 */
>>> 		wa_masked_en(wal,
>>> 			     GEN9_CS_DEBUG_MODE1,
>>> 			     FF_DOP_CLOCK_GATE_DISABLE);
>>> --
>>> 2.20.1
>>> 
>>> _______________________________________________
>>> Intel-gfx mailing list
>>> Intel-gfx@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
