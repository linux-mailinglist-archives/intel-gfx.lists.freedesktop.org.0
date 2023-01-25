Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB3767B5A8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 16:13:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C5110E0F5;
	Wed, 25 Jan 2023 15:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989D210E033
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674659602; x=1706195602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HLqubVwxFBSEPciInwUyq/SW4GKhVTmGLu9yx6ysUs8=;
 b=kxqMEQpwy87hHGOaQ0JbLnoSfsfiocTdhjCaJwwYyMGg2e6bGvCEdXse
 QSGDVssUM7sVNAA7roMsYVAjIx/bmGymJBSDPhCyzMuTHUMIdY8HoB0zQ
 GnE9EPrOh2ZJ9H322U449Y1JnCwueJ5eYNesTEQOz2VN4dJb//3tkr2r7
 do95mqZYXQKpD2u53ZM9dNSREVYy3OabWABJrEbgNw2x3pCl5DfMd87pR
 0Ocyu80IJEckwTbaT5+wdJanM/dxhHxy+jmJo+glP/NZvJCl7Y0ntzBah
 28zUypFMIwDP7Aq3f8rK7935zgoy7opQO4srONRGdDihdnXxD0wkptvHS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="412808374"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412808374"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 07:13:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="612448461"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="612448461"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 25 Jan 2023 07:13:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 07:13:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 07:13:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 07:13:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DkOj4HvN+VYKf6zTc9pHmY6UYmuEYZzKt738IK4Cq6Kz4OJBZ781NfxQ/2OhER4ecZGJ2F7jGKtulP9x5Zi962zdPA3CRbeICqxepoTF+HhDaHvXbXWkduauRt1M4XwXThzBnOOqn85DrJG2JaYR1Z17A+xChqxroR7iY0YDEVZr3tSXITpXgLR9BXMUe+9ATzVcn9VC4GKBKOXNDirBKf3WU53cndhhDQKb3jMMMHE8MXqsSnfJvL05RTuHTkW23ML3qM7GIbbJGtU5MtfcrMvsIifmzysZfpqJtcBHIKzH8nswiNk3jNw7545K9O0iLTKqGdjQrRJPTgvY3TBbDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/g5OEQKfBA4HqPXDy078dcHaBWtk1dOQItJbvbjCdqo=;
 b=YRbWcnFJdPSVRjp9PWB8+1qQ1C9mdR03DvhQqeEVN/4rK1hnagXqobsF0LoruYZY8K98orEEMdbMs/n/quXv11cjUIkx94HUxBco5i0cZK8yL3pOFyJp7EzgNQ9SmVwUpSkcAoP9wJ6yvYeayhbfpwMpZEnermxReoYiRJUJI1GcPKHAB2lSpe/ActZHuZFWjdBeXeG9J3fjB504OPhCxBhi29wzq/rG2k8FjdeFKGj72xi0rBhu/LMN9oyxbDfYR/5kSVcnQR5F0KqyY9UBmHkONgMsInpcjircaKY5NFq+5o2z2xOzSmcdQ9katnBbE79kW/wCe0bO4jICPSZyFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH0PR11MB5877.namprd11.prod.outlook.com (2603:10b6:510:141::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 15:13:01 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f%6]) with mapi id 15.20.6043.017; Wed, 25 Jan 2023
 15:13:01 +0000
Message-ID: <c5551823-54e7-6a28-5c9d-5eaeab18894f@intel.com>
Date: Wed, 25 Jan 2023 16:12:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230125100003.18243-1-nirmoy.das@intel.com>
 <Y9E+bqC2uSuXetNK@ashyti-mobl2.lan>
 <62049532-41b2-5225-a62f-41a654f731d3@intel.com>
 <Y9FGePinKwoYO1Q6@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <Y9FGePinKwoYO1Q6@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0055.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::15) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|PH0PR11MB5877:EE_
X-MS-Office365-Filtering-Correlation-Id: 438e3905-2a8e-432c-3b7d-08dafee6a653
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XKihrHh3WQt/j7IVd2dKKQCmrBv/ryT0h/v2h4cZ/ZhHjmlQDCEm6QJytoSdSdZFxho3Jwh2jvRJE+NlAIKFNM0lT6o5pA85Stm9bG00HHdo45MKKCeY8RCoa9bTM/GYMz2LgNuCk+nECh5OgM9o3UDsxeya3uueRutX32uTDohy7+Bj7VXjOTiGjWakBMiiNZX/oS4Bxd9aCjLjsuGS9rfRo+R22fXzuJP4PWsfYZ5neb2Ocqzr6lXqZGsd8xvV72/Hshs2ECZn4WgKrhtQT39CjraxR4wTS5jKoCW1yo9Wgf9OA1kI+bzeetLNMad3V98FJf2ZLuxbw+k3ypekYY7zDzf2Oy2QVHjsF3UcfPDTqUxKsPotARhltop5Yz6XJ47huMvTkHnAEVUnkK0KocX7wPQg1yRyuwPaoAHI7KAMXMrQEP9ExKp3qoB9j1cciZmC/90uSYWeg2UlefgEkPln3IwujfzD9yLUD28ifX8E8TdLqPuCV0yZWO4Mr4gI8ewByAMUbm7KFxvsqrlbEjrajrujPmfPatikv/8eULDSnrBe/f+zYAZi6p//3AtGN7JsoLZro3gIYSIWGuR3oymYXAgvAb1eg+8joizjR6KI72dHrN/3T/QB4pbWWSCi2sTztwxywN4fd8XnoT6NcemzNUIgYYUHAbAZw+vSwfFLygLLwkqjLUTDX2zpeb7MOAK1R9ge0OsY0i8eSRyW/iCaxsxlOG4DhRMioNTCm3w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199018)(83380400001)(38100700002)(53546011)(66556008)(2616005)(6916009)(54906003)(478600001)(8676002)(186003)(66476007)(31686004)(36756003)(31696002)(6486002)(66946007)(2906002)(86362001)(41300700001)(82960400001)(26005)(5660300002)(316002)(6506007)(6666004)(6512007)(8936002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUlFL1gyZVAzRTUydzV0U1I2aS9zVWVuM2VPbnV2cTB5YjAzZ3U5WWo4Tk00?=
 =?utf-8?B?TGtrMGpDdHdXNzBObFByMm1vNE0wMTFzVUgxZXN6SlNQQzZmSXpxT0Z1K25Y?=
 =?utf-8?B?ekl0d21KRGl5aHZ2Q3pvNkNqNnFQV3YzWXNWdHphT2hzT2RoN09mMzBicFlX?=
 =?utf-8?B?VUNzcmxNc2pTaGhHMUFsRExaZW1UZlVJSlVraHBjSjEwbXdlUnAwRFpxcXNQ?=
 =?utf-8?B?aGJXVGI3bGV3djJWTTdtaHNGZEtOMC9aa1V6RUlvL3hCckhIRk10VTlMMjRu?=
 =?utf-8?B?OWYrNXhMNmppR3N5UmVKOGQvNThtS2Q1RGtYVjR0aTMzQkhjNFVwYTBVWjVI?=
 =?utf-8?B?dWFMdHkxVzlHMjBuL1lERE1oUFBZUGI3ZTltY01mQzFzdVpuTVRremgwWFJm?=
 =?utf-8?B?TEt0eXgvREtPYmVuZWtyZUd2RE42TFhIcmk2TXRYdlRuODd1Q3RsTkZGdHJh?=
 =?utf-8?B?TVpWUTBNdlFrVERjWkNjWEtLcXFhejcyajl4QUFiTlRYUnBSa29Fdlp5S2Zl?=
 =?utf-8?B?Rkp4N3J6bWZqUThERmp0TjVqcWRQeU1zc1FlNzkzZWhzdk1KR3JoVU04ekNE?=
 =?utf-8?B?RnRxT3F4T2dnRXhaTzhDM0I3RkVmbFk2WURoeGg1aTh0UFBnc2E3UElHVDJj?=
 =?utf-8?B?UXY2bFhoeGt6bUp6YnJwa3hkT1YxaHBRdzRDeFhKcXpqYU93ektzK2N6Nkxl?=
 =?utf-8?B?RzVoRUgwRjBjWWwwTmNlMTNuYTFiSjlsVVdJY21UNEZ6endWajVaRHdpb04x?=
 =?utf-8?B?NGo2M00veGhyRERZMEg0LzVGTzNyWS82YjkzUmtHUG9VQStWYzJVcUNFVEVP?=
 =?utf-8?B?NlhZOXEwekQxdTNXSFdUWU5rS0pqRXBaOEVtdW1kMi9QMVA5V3EvRkd5RHlm?=
 =?utf-8?B?UjhwUnZaQTNKbjdmTEhISlN4NEFRem5MRG5wTkFEMFl5K0Z2N0J5RlFVd0lo?=
 =?utf-8?B?OEJJL0pwQytlY0ordW01RjJyZXl5TS9PU3gyeWdDS3lDd0Z6dklVenp5Ym9u?=
 =?utf-8?B?V3hsZVB6VGtvTGtOQlc0ZFZnRTg5MGZKYU56eElVV0duTmE4T0xRME5VTTdG?=
 =?utf-8?B?dGJVL2JZaUJXZXRaWTN2SkVML3IreXBjZFZVVXhPM3ZUclVEejd4NWZsR0d0?=
 =?utf-8?B?M2Z3ZllUQzQ0cW0zeTNYajUwTUZ1T1JqREkzSHBvSWV3RUNxeDQ3d0srdTRT?=
 =?utf-8?B?TFR6Z0NBa25VRTBQTXJCVlgzYnc2bkhkcTEvbG9RVENudndtNFVKd2JtOXQy?=
 =?utf-8?B?bG85bi9FN09CeFlBNW9ERXZVV0FkWXh6TURJUDE0clBWbnNMUVpKR0lhZlQ1?=
 =?utf-8?B?akVWTnlXSlpWZ0pYcTJZUWJqV0paR3d3Z3R3dlpLbGZVaUE3TmI4aHcrSGhF?=
 =?utf-8?B?VnRjVDNkbmszMDZlVmRHWmdGSk1EV1BlQ3JIWmRiZ3JNS25nbVM4UnljVVF5?=
 =?utf-8?B?RVA3bzcxNWxPZXEyUSsxUk56Q0RZajRaaVJzaE84Zmt4U2I3SnkvVUhGaHdX?=
 =?utf-8?B?dURuUlphejJ4dlhUdTd4Y2ZTbS8yT1k1dmdEb0Ftd2RiZjJMY0R0QnBadkF0?=
 =?utf-8?B?Ly84b2JTd3ZQbVJBbFhmVHhNZnBFa0lBZnJ1aVVjSStzMDhJcHhoNmN0dGN3?=
 =?utf-8?B?SFFrUHVzYmpEbDE4QU9XazZYeUF0YjI5c21ENHFnZ2ZuMHljYURadVl3S3JP?=
 =?utf-8?B?ZVFPV29Oa3ZyUnJOSkIvTEx5U0htZzhpTDkyNDNjQXEyc2tLVHgxdExyKzdB?=
 =?utf-8?B?T1Ird2x5dXNGWHdSVlRHRE8zN0xmTWh1U09OKzYra3ljei9jV0dLQTVpaUNE?=
 =?utf-8?B?cmZybXFCL2YrQnlPQmRlbmhuaFhHbElsek54dTBwMmt0NXFQR2pmbmpkQ0pk?=
 =?utf-8?B?S1FkR0thWFZ2K0VybWg1c0l0R2tMNnRiSTg2bnpoTGdOUllWc1R3MjdoeGZW?=
 =?utf-8?B?S3JqYnNDUWwyV1dOdEZXSThxSUw2Z3NodDk4OUpTanpSN1NVYjhsWDZ4TmNj?=
 =?utf-8?B?a00wazBucjFVeHorMEZxVU1CZHZuU25ONmREeUtGU3pQMGdnZzdqZ0VITXFV?=
 =?utf-8?B?K2Z6aVdlTGNCdXRsWGhNVi9aODRDK1ppaXd4YjdmdzJCYzhIallHT2R1WmFZ?=
 =?utf-8?Q?m8epKXzymQ2pv3IwD26uScvy4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 438e3905-2a8e-432c-3b7d-08dafee6a653
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2023 15:13:01.4470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wd8JOxhjPI55euN8d23rVVPZZw0QiC7OUA/MMEvNPd1W5ZYe1wauWVeZdsrlDe0NbbjkyPPjMFH2Hwz2/cCG0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5877
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl/selftests: Flush all tiles on
 test exit
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


On 1/25/2023 4:10 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
>>> On Wed, Jan 25, 2023 at 11:00:03AM +0100, Nirmoy Das wrote:
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> We want to idle all tiles when exiting selftests.
>>>>
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> except from the tag list and the title I guess this is the same
>>> patch as the previous one, right? Can you please add some
>>> versioning next time?
>>
>> I wasn't sure if I should add v2 for the title change.
>>
>>> If it's the same this patch then it's good to be pushed. Just a
>>> little failure that is independent from this change.
>>>
>>> BTW, why is there a "mtl" prfix in the title while in the
>>> previous version it was "xehpsdv"? I can understand the latter
>>> because originally xehpsdv was a synonymous with multi-gt. But
>>> it's not the case anymore. If you don't mind I would remove it
>>> before pushing.
>>
>> This confusion is because I didn't do the versioning properly :/ Sorry about
>> that.
>>
>> Matt clarified in the v1 that we haven't enabled multi-tile for xehp, only
>> for MTL we have multi-tile
>>
>> enabled. I actually tested this on MTL.
>>
>>
>> Do you want me to resend with a added  "v2: fix the title as we only support
>> multi-tile for MTL now(Matt)" ?
> no need, I'll remove the mtl part. I think the title identifies
> only the file path.

Fine with me. Thanks Andi!


Nirmoy

>
> As we are at it, I have some patches for adding multitile to
> xehpdv, but I'm not sure we want them. Any opinion? Matt? Tvrtko?
>
> Andi
>
>> Regards,
>>
>> Nirmoy
>>
>>> Andi
>>>
>>>> ---
>>>>    .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
>>>>    1 file changed, 17 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>>>> index b484e12df417..29110abb4fe0 100644
>>>> --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>>>> +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>>>> @@ -14,21 +14,27 @@
>>>>    int igt_flush_test(struct drm_i915_private *i915)
>>>>    {
>>>> -	struct intel_gt *gt = to_gt(i915);
>>>> -	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
>>>> +	struct intel_gt *gt;
>>>> +	unsigned int i;
>>>> +	int ret = 0;
>>>> -	cond_resched();
>>>> +	for_each_gt(gt, i915, i) {
>>>> +		if (intel_gt_is_wedged(gt))
>>>> +			ret = -EIO;
>>>> -	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
>>>> -		pr_err("%pS timed out, cancelling all further testing.\n",
>>>> -		       __builtin_return_address(0));
>>>> +		cond_resched();
>>>> -		GEM_TRACE("%pS timed out.\n",
>>>> -			  __builtin_return_address(0));
>>>> -		GEM_TRACE_DUMP();
>>>> +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
>>>> +			pr_err("%pS timed out, cancelling all further testing.\n",
>>>> +			       __builtin_return_address(0));
>>>> -		intel_gt_set_wedged(gt);
>>>> -		ret = -EIO;
>>>> +			GEM_TRACE("%pS timed out.\n",
>>>> +				  __builtin_return_address(0));
>>>> +			GEM_TRACE_DUMP();
>>>> +
>>>> +			intel_gt_set_wedged(gt);
>>>> +			ret = -EIO;
>>>> +		}
>>>>    	}
>>>>    	return ret;
>>>> -- 
>>>> 2.39.0
