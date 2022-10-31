Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15166613066
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 07:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1424A10E124;
	Mon, 31 Oct 2022 06:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBF310E124
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 06:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667198330; x=1698734330;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qLg9xxLOlzw+12XV4QJxszaSxofYSgUBfCDdCCIyDxM=;
 b=MDK+XYhGx1ju16kIBfsJeFUExblJu1HQdIGkWW2or8My5TYFtkCsItqa
 +GtL+88uO+cELW7Na2rD7GWVOND3JFFjuJ7cgZlkwweSP3NCt6/qx35gT
 6pv04vElAlyuTTFLeeItfKdjeVMLcU/GnsloCDx/ktcMLAd9NQn8Z7XTB
 CEI073Xsbv9CKid2JH0AV4hhXweSoFlBhMhcz1tbUZW6msGY4cHCBvxEJ
 i9co0I4T+/gLl6A7l1D58nBxqifII4kGuASbxrdWJFInCui+sqO3E4GDy
 plhkA7hr8IzVN9lNW7Ib+ALQjjs+AGXSj+BlozXOjcQyOD/6l1wVKjhn9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="373038472"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="373038472"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 23:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="702407203"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="702407203"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 30 Oct 2022 23:38:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 30 Oct 2022 23:38:48 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 30 Oct 2022 23:38:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 30 Oct 2022 23:38:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 30 Oct 2022 23:38:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eEZ8SLpwVObAKL1A+4Lfsl2313jo+WprfbAjJq+y7qW/NZ74rDM8ZSNssaZ1B6mU5zTvbb5XB/gGxnkGuWUahESQaUqEXomL4SFoQ300C/AGL4VO5fuyvn+HkJ/x9QGIDkXsn6ahjqOlCSDN1rrYC06xPCks2AHJl1qKCk3DQEczDcZaUrWznYmR4fvJ3n1hqh4lx2qt1LMpkCmenL8zOuYFKpqTudwyTzFuZRjXKNWN5rc3LMYMNAdSE8uCAgPgN8Z5RBHVA/atRgNKGIC/8UgnCfxHpRixDWaHexyrddoVHAX7v2wWDtOCffk0dJthjmjsVYBQGnQcYo0S8Iv3SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FzChHXmcL+e/nvERcqrT2E8k2kkulJ/3fbO8Ao1rhlQ=;
 b=MIDazemXdhe+hjW0NLnw2e1dUoNPCV6QjRpRhXvDTQYMOEhMSbf0B1g9U54we9If+zBv0OQnFCFpWoPSN1zMh2lOFE0Ni7QSIzUx/P4lJa/OWkL5JqKymyvMRuJ3DdkDKcVZe1hsRLqPlO7Vppok9JBgice583egsFmSs8dCpguvBqAtaKc13xpouhnqN67m1rSlB/WYBGT2KVo654PFiDHuvyVcAV1E/cqCJm+uvUcadfAuYHqJvY/Hz2P1BFoi2ltgTqRrovTYOwAHkmqb+3ZnymbQ2Q4ZvJJlfPiJ/KDUV34eI21NQfcNusjaK5AEHyKCb67Y9hplXOaEVV9zqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by SA3PR11MB7525.namprd11.prod.outlook.com (2603:10b6:806:31a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Mon, 31 Oct
 2022 06:38:46 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::4ec5:eced:e4:7706]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::4ec5:eced:e4:7706%6]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 06:38:46 +0000
Message-ID: <49a3db03-a62c-374d-76cd-8557c761f18b@intel.com>
Date: Mon, 31 Oct 2022 08:37:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <20221029044230.32128-1-gwan-gyeong.mun@intel.com>
 <878rkwefji.wl-ashutosh.dixit@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <878rkwefji.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0502.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1ab::21) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|SA3PR11MB7525:EE_
X-MS-Office365-Filtering-Correlation-Id: 818794e6-ed5e-4f16-6b1b-08dabb0a8f87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aj89ahME1JGL3U4HDpSJiqVTbTsnrHg7cG3AFjbxOamcSNjDjrNxYK6P8D7kMbuMmIoC5anOy4xpZ82QytMfM+6DCulPOLmBTFEnhzahR7HVwJJi+WiZcXmTA/jkGBxv6yvR0oEvfuOra/GWIkmNiscrg5SyI7d4QViASbMazwpLXyWIB+W3eTI6Uea9RKhhk3xt4IOG6LPGJYVEkMI0pvt/wsJ2NnzjSRT1MUNJwhzHHtP8/PuuRNxsF1U3mE7J4WvtxTUWu9j75Lxh+S1fcd06mXKKy+ohdLH0MulVcvpXTB5HRXpEFz61KVg+sbLspb+D3lzthS+ubSvbkhqhwGqYIlNgz7UeeJIfr/ji++FRUH9CE/3kk6fb/xxuPehnD5Hts8mO72hEtYODyNXismCeAfT/c0K9jnt3Rj9YDokv3Md0gtrvPyOKcWMVQ24lbjg4H1FaQuZpby8/S8oIxxRSqgMchdijKg0I5u4T33ALC7CWILXVbD+BuslZw2crTnkDefZSO+O6JrSsX07eWNF5nzV0OsbADl2gsc+8kW2GDavyK62RoSrQtsBXq/O2+1LfUR57CfDUMqBVPIsU/XrKeT2apcsVwMYeBTNETytFFBYLZzE4JUQdIbFJOekRH6h8aVKfWteVPu3/a1l78YgmEKr8skf2qz512jQNJLyvTQstaBPUEY62oXkfpZYRtp2T4dFTHMvqG2JeFkLNBzSBqN/LQmJU751fb+bvw4AZogQs+c+QijT14MQKI5ip8c5n8B6m+GrXFC9pbP958VPT+F1bWpW7Q38dqen5yMRZoWUzAKy3wje4/5q6sJGb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199015)(66556008)(31686004)(5660300002)(8936002)(41300700001)(2906002)(36756003)(6862004)(8676002)(6636002)(4326008)(316002)(37006003)(6506007)(478600001)(6486002)(31696002)(966005)(86362001)(6666004)(53546011)(6512007)(38100700002)(83380400001)(2616005)(186003)(26005)(66946007)(82960400001)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OE1TbWxEN1d2ZHB3MFRqODB0OVpIUnNXVDJDZ2kzVWppRHdKcjVLNXY3N0l0?=
 =?utf-8?B?TG9nY1ZFaHlDeUtIc0ExNjdPRmZVMVd1SVFuQzdLaFhJVDVzK1FuNExNYW5v?=
 =?utf-8?B?SGRweTJZdnc4L0dZN3BDeHN1bGdUU3F5eHZTbjBVM0VYYjRXZGZTTklVZ1NK?=
 =?utf-8?B?WWRpZG9UN2VMUmc0eElhY0dWWmtmVE1uaDZNMEQ2ZzhhVGxvWVZGSy9XanZH?=
 =?utf-8?B?dXYvRitTUjNodmc4V0dyd0tIN0Y2Z3A3MFh4Zk94NDhXTUxsbGlMc0RDc2pM?=
 =?utf-8?B?STd2MGhMa2F4bG92NnhSRCtYd29IeTJGdU1XTWp0NGptTVlVYW5LWjJBUENK?=
 =?utf-8?B?RzZYVGZ1UFNDNnlOYzlFRFZSR2ZBQWVzcFlsVUdOaHpiQUF0RnY0UE9ONm5z?=
 =?utf-8?B?RUx6Q3ZpeU9PUkh5WlJDTlJEV2tlcGxnRUJYZ1k2UTU2QnFabTFZRFJZdTl2?=
 =?utf-8?B?YUJqbS8rWUZCWXQ4aE12YVlOTXkzMnlpVWhGZDhBZlFFRXZ6MzEzdE9DblR0?=
 =?utf-8?B?RjJCK0kyVlE2WTJXMGlQbUhmNkRJNVMxdE9Wb05QNzZEUnhhZk1PelJUL2ow?=
 =?utf-8?B?TEtPVjVaYTNsVkVHQ1lreXcvVHp6TGRubVA3K2xDY0liQ3diU1lMV05yVkZl?=
 =?utf-8?B?dEtKZWtDR0NySDcxQ1dOdzNXeUFjRzNpZXNlR1FoVU8ySG1URG5vVzFTTW9o?=
 =?utf-8?B?Vk8vTTJSSzBINS94QXJLZWduK3BuUXhiWHZmeWZVRDZYZTZDaDFoM2QxN3Fx?=
 =?utf-8?B?SHJ5V3dwN1VxOVYzTkV1WjVrdG9lN2Y2Zm84YWZFOTlZZmE0SWUzTU4rclpN?=
 =?utf-8?B?OUUrNzlhaUxLckdMencrb2tQL0RhMDlLUmhOZjltcHdab09yUFBwb2tkYktt?=
 =?utf-8?B?b25DUDArZWJNU3hXUklTcGVpcFJ1dWo0U3ZwUW50cW1odzJEUjZDM1pWbHR5?=
 =?utf-8?B?VUNyWkRUZEV0VlJvcFFKYUdpenR6TkhpckgweHZpQ3lsalNvN0UzeGowNUVM?=
 =?utf-8?B?UVE3SzV1UCt3VmVjbGFxUUdRU2k0TlA3dVQvNmRVNXdrU1BHakVEbmtyaEsy?=
 =?utf-8?B?R3o3ODFEWWU5anBsNzZCNzVjUXVRUTlEcTF4NnFMcSsxYjZnQ3lkZmxlWEsx?=
 =?utf-8?B?L2VBZVA0bERRNWs4YVo5Y3FuSTR5YWJvUHNJMG5LbUdJYkFpMUNrYmRHQ0FF?=
 =?utf-8?B?VWRxQ1NnU0FESVBGUEpHTEN6Wkp2SkprTEhVVmFQL3JKUnFpU01sVTBOUUhK?=
 =?utf-8?B?dkh5U01yeThuSDZ1L2o5QXFKQVZFRUY3VUFKdnJQNHRVS3hqZVd3UzlLQ2Z1?=
 =?utf-8?B?VUFzczRtNVkwbVkxYXg1dWJzRTFUQTdzc0ZSdEtBa3g1M0o1ckpJQ3VrMGVB?=
 =?utf-8?B?bXhaZzB2YXV4S0Q2Ry9FSS92eGxxS3orK3FXMnRGRDI2Ym9FWk5qZ3l6eHRK?=
 =?utf-8?B?RlRhWUlFU0VNYTRjbzZVNXBqbzI4a3lXMmRGayszeVAvRjVPY0RiYkNHb0lr?=
 =?utf-8?B?SHk4eEZkY2pnUTgwR2FrVnBoZ01jbmhYbW9oS0NqbFpndXBiZkR3MW9KUjg3?=
 =?utf-8?B?MlVZUnpHWFA0RFMvN0tGeTBIdlQ0YlBsdGlMb3ZYa2F5MlBCTG0yYTV2Qk1w?=
 =?utf-8?B?MzRzeFlkanJiY1ZPZ0J3NkdndU8vWS9zT2xsc0RIR2R6a0oyUjBPbjlrVWJQ?=
 =?utf-8?B?aEhpYlR0U1FXZ0tMbVdjS1B1ajluWWVGa2NzWEZpei9WYjh3aUlOZS9CdC9r?=
 =?utf-8?B?Nk9mUHk4eU9OS1hVaWZQRmkyb1VFK3dFN1Z6TEZRWXdVaHlCUXRCRTMvc0k0?=
 =?utf-8?B?SlR1eU5OenlSWXR3V3pFc1N6cWp0cjYrNnlpVFNYc2dIYlE1MzlSVDNRczBD?=
 =?utf-8?B?RDJ1Ukk5Zzl5eHk0eTM1TnBZVFQ2VGJ2TjNzVW8xaFlDMGtiRE5naXVyTkMw?=
 =?utf-8?B?Uks2eUlRR0NwSWQxOEtFejg1bjdWcjhXcWdJd0JGMHQ2SVpveWNUdURETVJs?=
 =?utf-8?B?OS8xYmV4ZWl3UWJPbWh2UGM2dGk1N3J2LzlHVDVXVmNEWmtTV2I5TVhKUWNI?=
 =?utf-8?B?TkZJT29NMnpLZENlN1ZJWTZ0Y2hnNjJPM1hyaDB0WlhBUmxCeXA4U1J1MStC?=
 =?utf-8?B?VjNMTjE3VUY4NDRjSHdNVmxvZDRNcWJvQmMxSVpQVVpIeEo1ZWZ1NnFNdkpv?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 818794e6-ed5e-4f16-6b1b-08dabb0a8f87
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 06:38:46.2648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rDu3JwoYJoQkg8fPlH6W7GKlVOBhB0Tyxjckbg7UtcfHruceV7giaWETIgKWVG7EI+ffo/9yS8QjIHZEX41o6gQz/G6YzHgYiek9epFd+sk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7525
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hwmon: Fix a build error used
 with clang compiler
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



On 10/31/22 7:19 AM, Dixit, Ashutosh wrote:
> On Fri, 28 Oct 2022 21:42:30 -0700, Gwan-gyeong Mun wrote:
>>
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> index 9e9781493025..c588a17f97e9 100644
>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> @@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>>
>>   static void
>>   hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>> -			  u32 field_msk, int nshift,
>> -			  unsigned int scale_factor, long lval)
>> +			  int nshift, unsigned int scale_factor, long lval)
>>   {
>> 	u32 nval;
>> -	u32 bits_to_clear;
>> -	u32 bits_to_set;
>>
>> 	/* Computation in 64-bits to avoid overflow. Round to nearest. */
>> 	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>>
>> -	bits_to_clear = field_msk;
>> -	bits_to_set = FIELD_PREP(field_msk, nval);
>> -
>> 	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>> -					    bits_to_clear, bits_to_set);
>> +					    PKG_PWR_LIM_1,
>> +					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
> 
> I registered my objection to this patch already here:
> 
> https://lore.kernel.org/intel-gfx/87ilk7pwrw.wl-ashutosh.dixit@intel.com/
> 
> the crux of which is "hwm_field_scale_and_write() pairs with
> hwm_field_read_and_scale() (they are basically a set/get pair) so it is
> desirable they have identical arguments. This patch breaks that symmetry".
> 
> We can merge this patch now but the moment a second caller of
> hwm_field_scale_and_write arrives this patch will need to be reverted.
> 
> I have also posted my preferred way (as I previously indiecated) of fixing
> this issue here (if this needs to be fixed in i915):
> 
> https://patchwork.freedesktop.org/series/110301/
> 
The given link (https://patchwork.freedesktop.org/series/110301/) is an 
inline function that reduces the checks of REG_FIELD_PREP() and pursues 
the same functionality.
It's not a good idea to add and use duplicate new inline functions with 
reduced functionality under different names.

+/* FIELD_PREP and REG_FIELD_PREP require a compile time constant mask */
+static u32 hwm_field_prep(u32 mask, u32 val)
+{
+	return (val << __bf_shf(mask)) & mask;
+}
+
  static void
  hwm_locked_with_pm_intel_uncore_rmw(struct hwm_drvdata *ddat,
  				    i915_reg_t reg, u32 clear, u32 set)
@@ -112,7 +118,7 @@  hwm_field_scale_and_write(struct hwm_drvdata *ddat, 
i915_reg_t rgadr,
  	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);

  	bits_to_clear = field_msk;
-	bits_to_set = FIELD_PREP(field_msk, nval);
+	bits_to_set = hwm_field_prep(field_msk, nval);

  	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
  					    bits_to_clear, bits_to_set);


The patch 
(https://patchwork.freedesktop.org/patch/509248/?series=110094&rev=5) 
that fixed the build error in a simplified form was added as there is 
only one place that calls the hwm_field_scale_and_write() function at 
this time.

If more places that use the hwm_field_scale_and_write() function are 
added in the future, how about changing the interface that calls this 
function as Jani previously suggested?

Br,
G.G.

> IMO it would be a mistake to use REG_FIELD_PREP or FIELD_PREP here since
> here the mask comes in as a function argument whereas REG_FIELD_PREP and
> FIELD_PREP require that mask to be a compile time constant.
> 
> Thanks.
> --
> Ashutosh
