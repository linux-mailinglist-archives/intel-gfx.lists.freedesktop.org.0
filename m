Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F5612F7A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 05:38:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC2C88867;
	Mon, 31 Oct 2022 04:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D7010E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 04:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667191104; x=1698727104;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fhhoQTTUVZdTj6VMyvGx3wovouB28pr4yvro0Ltru7Y=;
 b=AcPsfaVELouXZ56M81Hy+RPnodMKfAqA6ZjpnBxYCtFvtM2wPr6zHJFH
 2+wCttHHl2VZoZTVquzLdePauLjNAt3y+sV0uyBaH0fYdt+TUxxjYi4HJ
 MsvSELW22qr0psHFOOcp3J/sigDZNtyKZ6V2kAgw+uiqQ0Coc71hKjysl
 Fm1xXSmwsvDAvbrSawMu7sImyAiq0Vc+Zm+G2L9+sB+M7HyPwMmoOGnhM
 eGDCXmxNizsbKYIrxrG2iOKqCE7LjEi/7ecX++1qctU8FHydYYSMaTkCa
 edyRGNneLRR8VUgU3fHiT6mayz58j3I3nbVgxbNI9kmEHniaAGM1KzLU+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="308813571"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="308813571"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 21:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="808423427"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="808423427"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 30 Oct 2022 21:38:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 30 Oct 2022 21:38:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 30 Oct 2022 21:38:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 30 Oct 2022 21:38:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 30 Oct 2022 21:38:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KCdj/TGwyZMX9sYtMvpljysVyle6jyXep9Rc/LqmN2lf65hiouFVKFBrVhPOw1xfzfp+na4FaqXQF/MxJ26zoom/cnBj/iEzcGCSu7wjaFJU0AgA6Hpold09RJHkqycT/MqMsYNwGalq0kYWY26SRml/lVtjuzzxHcrUEj8UK4pWLEfF1ERSWlNjlyKakdtO0+Y99/AP/gL9F3MkwNu+e6vtdof+URwNFnaKWsTMKpB0wDO1RZNtciS+H0HchUNYwwjTaOe7Gxym7YWKH+xy/QbVNjSkD99jnN9gYq5jE8lOzzFbBqwXdcApN3FNJVHqhUcFrB9u0yGpw4G5UarYFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EFQTwfokZNcXcXP99Hl2K3dDZw5J2JRDoOU18p1+9RY=;
 b=hq7swbSkaJ0zBtqL7uzbR5RPH6DSZ+jnIDgaGADJ0+I/ELnBioUy7sF0p+Bvvkp4FCF/4RM45R7MM8+K2hKuSOS/tBM8KRkejAj2etr1S/eKDSpofxDy8Yxg+Sn8En0cC5Xr27Qcg+DSxFgkzFBf3cBeaIXfD9lmlI89s1LPxZWarR/+yS6HCTzDrIKftCAeswy49G+lIwNtieKGo23AmqkEQ7VcUOIhlvWPI4Uq6TKP3Pj/8JY2B4l+uNY94K3jAK6IfdBQa3HuCPxzzwNy55HB4SMZ6nJ5C39rV3OHlLoKF9GStTILTTn96ixWPbtBetCDjaJt7u6Hb67BtpgcXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4689.namprd11.prod.outlook.com (2603:10b6:5:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 04:38:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::7e24:c43f:81ac:6556]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::7e24:c43f:81ac:6556%4]) with mapi id 15.20.5769.016; Mon, 31 Oct 2022
 04:38:21 +0000
Message-ID: <095b74f3-0e7b-4916-d241-29cf59891ed9@intel.com>
Date: Mon, 31 Oct 2022 10:08:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
References: <20221028095058.3624647-1-riana.tauro@intel.com>
 <20221028095058.3624647-2-riana.tauro@intel.com>
 <423a37c6-459e-a7b9-1030-960369b18f9b@linux.intel.com>
Content-Language: en-US
From: "Tauro, Riana" <riana.tauro@intel.com>
In-Reply-To: <423a37c6-459e-a7b9-1030-960369b18f9b@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4689:EE_
X-MS-Office365-Filtering-Correlation-Id: 3686e876-efa3-4678-fcd5-08dabaf9bd07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aYof/vBYiN4hrMj7jTr5qdQrZY+SfnXMEVRgTAxsd5QGOxGO/tdJg0C0Xkc7sC6pj2K1aTwvEwFnx6UH7EWe0oi+bsfh0ZjRxiWghzNgEIKhqfLiZUGiatpn/XotjRDVl1eadLzNszt7LS/Lwm5EkwMmG1kRFmRMrPcNw5gKJoXkeOGyeF7hmaEDlWw4kUJz0b880+AvQBknCT6ePQxgg65fr4RlbC1TVI6egCey2Tmt6YKYHsiwnPSK7wcC9V/Rb6b3l6nBWahbVUT08sU4fCuq+Dayu2nF/Iyjb6CKUp3wUmyP2h2DPJAtpbLbsIWyV+Fo2sAtHlc5i3/0WpvVtfueIdddDBbmsdGC0UqHLUHVSdzHeSDqNt7FKRN8ta5+EAo6wR+gscLdRvDK8ZigmLc9/Hr81llF6TDMgrdPEBd+4EDpNP3lgaR/C8WOehN5G7qNMMpvqcxu1urDJ2QL1/5WKEsm6PJfdmiJB/KsXvnZPZ+qRKh3tabBwyPXQjjzSzYz2pFcJVWANLRMWtOIOjBfewXVRk+GvgftSP1CoSQAEpv7qjA/LyMRm1m49buttU14LjpI/6RtILkipffQH5xPh1oopaScrWazy/Gi7Ec/lNacuRU7RzpXOHg1dmON3GEWX4a/IqfLlAJeGnA3amYe5/YjfCEuOfAP5IC0q7MKZU+y0lqD8bvSfSDQRDE4ZKtZ1WV6/rkggQZ97s+jZ5oYrum1DNXCORz/Vw776VVe01FipIZjn1u2LLehMkIZ249MG/R79fsqrREY7Ivg9PEXBw0R4Nh5BZGm0svXVF8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(39860400002)(366004)(346002)(451199015)(36756003)(31696002)(86362001)(2906002)(186003)(83380400001)(66476007)(66556008)(8936002)(41300700001)(5660300002)(110136005)(8676002)(31686004)(316002)(4326008)(6636002)(54906003)(53546011)(66946007)(478600001)(2616005)(6506007)(82960400001)(38100700002)(6666004)(26005)(6512007)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHNudkRIdjFoVFF0dENaamM1czF1UTZTK1VUNVhUQmRCRVpGM3l1MmVObFJr?=
 =?utf-8?B?ZEJkWjhyRnRDVUFvbk9KUHFuQnJxN1ZTWDgzdTgxNlpNYXJGcm53NlQ5WWE3?=
 =?utf-8?B?Z2R1Z2ZEcGk4aThiQm5qcXNpSGVUbC9IL1crZzkxbHpoWnB6OEZGT1JZdnZ0?=
 =?utf-8?B?amorVlk4eHdkczlxRlh4SzIzYmxDKzh3WDY2YVhCQzFwWEJWRGNpRnlXdmhz?=
 =?utf-8?B?bFpBNEQrdmo3d0JEQVNaV05HTGhjbjhraGsvNDc3MWxBYzdqckdDYStlSE9x?=
 =?utf-8?B?NVdxUTVCQVBiNWR1K3MwN0lDTmYvMnVlRVdYSmZKRjRqUlJGcE80MTJHRU9q?=
 =?utf-8?B?WEwweThaTEUzMGJiN2s5VDhQQ3pQTldhbTE3UDhCcEg0M3lFSFUxNkZuWGNs?=
 =?utf-8?B?aldQK2VrOGU4MTlHNHE0WmdVMVJuS1QwbFBVWHBEZDNHbUxjWDh6cVdwNEh1?=
 =?utf-8?B?ayszT1lJUWRwSWgyZTZudm4wQUQxZWRzM2ZKUy8rdDAxSDE5bjVMT1VHeDB4?=
 =?utf-8?B?VG1DUkdKMW02VjlVQ2tZMllxaW9JbzhrTkpPT21DWTFXMWVQamFTOUJ6YmJu?=
 =?utf-8?B?MmE0MHB0bzRRZmEvM0FhSVQ2Q1UwajRNeVY4MXJDb0dRTlpGNXpla1liblZl?=
 =?utf-8?B?RlBmSHpFZHdlekNUYVI4cWNubkNxc1ZFMzd5VFJGcXRtZHZGZFdNU3BFckNl?=
 =?utf-8?B?TWUvTFhSRFhUQm9waDBubEFTNytvR2k0dk94SWZoMlRjRy96c1cxenhOWmg4?=
 =?utf-8?B?MkVsSmlpYTZqczNOUkV1VHhqeHF5MUVtenFmYXhyWVZKcWY4dnRLbDdFVTV1?=
 =?utf-8?B?bHp3T3oyYmp3MGZuUzlWeWhhZGhEa2JKZ0d3THpWUXBVUUhEQ2VUNDZjd1R1?=
 =?utf-8?B?RlZERG12YmFYcjVQZHl2VzZQUlBXYmV3TllWamZrRGZSV0Z2WVlCU0FVd1do?=
 =?utf-8?B?RERrdERDek54dTc4UGZKbHlMaWpwVnlody81dEhNR2FVMWpxM2VMaU5aUFZa?=
 =?utf-8?B?UnJGNnAvMU9rVlE5ZUZ0YnFRWjQycjVaeHU0RlNEVmhyY2lEVk4rcUtiZjlF?=
 =?utf-8?B?UmViTklXekhpUTNDekJTay9vZ0lnQVNmemdycDY4WEJqcDhtQm5xUFBKL1lG?=
 =?utf-8?B?VVEwY2crZ3ZNUnZNUGt1SzZOUHBvZFNZdmZsYitmajE3VGh0ZjZEZENqSFZW?=
 =?utf-8?B?WXpBU283MDlxM3IydnRvcFNYTkR6d3RiVHcvVExxK1g4SGRoTGlBcUpCVmhI?=
 =?utf-8?B?NXBobVdKZmdNV05tM1N1c2ZYTHdPSWd2TXhuWk0zbzNqbmlZS296a2ZzcVVK?=
 =?utf-8?B?aklGTllVMHVSOWo1MUN0S2MzWCtlK3VEcXFGUUliSkdlZjNsVmRCMUVhcWV4?=
 =?utf-8?B?UDlBWXhxR0RkUWdPN2JBREZMZTJ3TWEvWmlrU3hTNnNsWml4V0lXdFE5c2Jm?=
 =?utf-8?B?d3JURy9hWlJZMi9ZMlJSc0tHdVhGamd1WmVIdmlIYXZHVC9adkJJTTlVbkwv?=
 =?utf-8?B?c2NUMlRoY0xjdkc0Qk5EeWU3U0U3dlFuYVZmbThVOXNaVkNYeUhPTFRab25u?=
 =?utf-8?B?akMxcE1pb0hocU5Ld1RzZjA5MFVxczNhckxvT01BSURDazd4bVUyVVNva05J?=
 =?utf-8?B?U0RQZXlVaStuM0hGYTJRekIyMUV6SmdBbmE1L0oxNmYyS0RRbnNHWDgya0NJ?=
 =?utf-8?B?M0ExcE1mcHRxZXFGVXBvc3FBTTRGUDZFQmhrcDhaYjIwQkw3WDFXRzZVWW1C?=
 =?utf-8?B?TUhydGhkT2ZUL2N3RzFZT1NmcHZPOWtTa0JXVFMwUC9Nbk9RY3hOYVNpVUhG?=
 =?utf-8?B?UjhpZldrYWpNR09hSkh1OWYrN3JYZy95MFU5ZWRuTWJZU1huSmN0Zms1K3BW?=
 =?utf-8?B?S2lHK055d3RzdFRYOHFJako2Uk5LVCtwWEE0TEQ0Tkl6bGhqRG9mb0VjSTRN?=
 =?utf-8?B?d1psYmlybnVNWXJ5NEFOM3BMdVZkVlJjMHhFdzdLVnFFRkZOMXlHdlFabjJ4?=
 =?utf-8?B?NjNOZzVYZlF0SnVobGxTKytOMlNEUW96SVhvZlp5L0d0MTdZak5ENjB2Nis1?=
 =?utf-8?B?RDNrVldVMkNERDZyMHd3aXJ0aDUrU05lQXFVUTBvY0lpZUozeHJ4L3pCK08r?=
 =?utf-8?Q?diB5xT/qzdKDuQ763I29TINwe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3686e876-efa3-4678-fcd5-08dabaf9bd07
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 04:38:21.1136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DVFLMBVj6WsbyQhp2k9ni3eK5pewaSdiHHQbxx2YYO6Zk16KNdXqFlS5/Mq7ARP6JLPHhTzoe381Vd/bOE9ImA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc/slpc: Add selftest for
 slpc tile-tile interaction
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



On 10/28/2022 3:53 PM, Tvrtko Ursulin wrote:
> 
> Hi,
> 
> I peeked inside from curiosity and was pleasantly surprise to see 
> kthread_work is used! Some comments below.
> 
> On 28/10/2022 10:50, Riana Tauro wrote:
>> Run a workload on tiles simultaneously by requesting for RP0 frequency.
>> Pcode can however limit the frequency being granted due to throttling
>> reasons. This test fails if there is any throttling
>>
>> v2: Fix build error
>>
>> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 63 +++++++++++++++++++++++++
>>   1 file changed, 63 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c 
>> b/drivers/gpu/drm/i915/gt/selftest_slpc.c
>> index 82ec95a299f6..d19486772f5a 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
>> @@ -13,6 +13,14 @@ enum test_type {
>>       VARY_MAX,
>>       MAX_GRANTED,
>>       SLPC_POWER,
>> +    TILE_INTERACTION,
>> +};
>> +
>> +struct slpc_thread {
>> +    struct kthread_worker *worker;
>> +    struct kthread_work work;
>> +    struct intel_gt *gt;
>> +    int result;
>>   };
>>   static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
>> @@ -310,6 +318,7 @@ static int run_test(struct intel_gt *gt, int 
>> test_type)
>>               break;
>>           case MAX_GRANTED:
>> +        case TILE_INTERACTION:
>>               /* Media engines have a different RP0 */
>>               if (engine->class == VIDEO_DECODE_CLASS ||
>>                   engine->class == VIDEO_ENHANCEMENT_CLASS) {
>> @@ -325,6 +334,7 @@ static int run_test(struct intel_gt *gt, int 
>> test_type)
>>           case SLPC_POWER:
>>               err = slpc_power(gt, engine);
>>               break;
>> +
> 
> Noise.
> 
>>           }
>>           if (test_type != SLPC_POWER) {
>> @@ -426,6 +436,58 @@ static int live_slpc_power(void *arg)
>>       return ret;
>>   }
>> +static void slpc_spinner_thread(struct kthread_work *work)
>> +{
>> +    struct slpc_thread *thread = container_of(work, typeof(*thread), 
>> work);
>> +
>> +    thread->result = run_test(thread->gt, TILE_INTERACTION);
>> +}
>> +
>> +static int live_slpc_tile_interaction(void *arg)
>> +{
>> +    struct drm_i915_private *i915 = arg;
>> +    struct intel_gt *gt;
>> +    struct slpc_thread *threads;
>> +    int i = 0, ret = 0;
>> +
>> +    threads = kcalloc(I915_MAX_GT, sizeof(*threads), GFP_KERNEL);
>> +    if (!threads)
>> +        return -ENOMEM;
>> +
>> +    for_each_gt(gt, i915, i) {
>> +        pr_info("Running on GT: %d\n", gt->info.id);
> 
> Not sure logging these makes sense since test runs on all tiles in 
> parallel anyway.
> 
>> +        threads[i].worker = kthread_create_worker(0, 
>> "igt/slpc_parallel:%d", gt->info.id);
>> +
>> +        if (IS_ERR(threads[i].worker)) {
>> +            ret = PTR_ERR(threads[i].worker);
>> +            break;
>> +        }
>> +
>> +        threads[i].gt = gt;
>> +        threads[i].result = 0;
> 
> No need to zero result due kcalloc and runs do not repeat.
> 
>> +        kthread_init_work(&threads[i].work, slpc_spinner_thread);
>> +        kthread_queue_work(threads[i].worker, &threads[i].work);
>> +    }
>> +
>> +    for_each_gt(gt, i915, i) {
>> +        int status;
>> +
>> +        if (!threads[i].worker)
>> +            continue;
> 
> Could be ERR_PTR by the look of it so it would crash below. Either gate 
> on threads[i].gt or use IS_ERR_OR_NULL.
> 
> Regards,
> 
> Tvrtko

Thank you Tvrtko for the review comments.
Will fix these.

Thanks
Riana

> 
>> +
>> +        kthread_flush_work(&threads[i].work);
>> +        status = READ_ONCE(threads[i].result);
>> +        if (status && !ret) {
>> +            pr_err("%s GT %d failed ", __func__, gt->info.id);
>> +            ret = status;
>> +        }
>> +        kthread_destroy_worker(threads[i].worker);
>> +    }
>> +
>> +    kfree(threads);
>> +    return ret;
>> +}
>> +
>>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
>>   {
>>       static const struct i915_subtest tests[] = {
>> @@ -433,6 +495,7 @@ int intel_slpc_live_selftests(struct 
>> drm_i915_private *i915)
>>           SUBTEST(live_slpc_vary_min),
>>           SUBTEST(live_slpc_max_granted),
>>           SUBTEST(live_slpc_power),
>> +        SUBTEST(live_slpc_tile_interaction),
>>       };
>>       struct intel_gt *gt;
