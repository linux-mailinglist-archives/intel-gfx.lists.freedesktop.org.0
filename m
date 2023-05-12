Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 131D1700F14
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 20:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8438910E1B1;
	Fri, 12 May 2023 18:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB95310E1B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 18:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683917638; x=1715453638;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aYqkBr+1W/nBAMviKDv77oWoou18zkfI7ymjXrgnR70=;
 b=OSDGpfgRv/9CWoGC9Kh3OWC8ONNg0TXKVkx0hX7dACz4XaB2eYMscpag
 gOJmUdSJ6R6cPab9/0t/Fvsxm0CpvVwD/K1MaaNMbe84JOcH1c7XRhosf
 zwLlnmSR4jPcw2WxwvijIPxz3QC+RxND3z0JDcF5cbSEgqBK4pm/brOOW
 /g2SVIbr4dF2zhhiOUNSOZC5nQZptE6LYlTnc+0syC4M17Tl8WvCSqvLv
 m7e+OZ9fWnh1hfO1P1kGz+bIG0EiGbO4ZZHbnBMv8ucbRMxUpJyGf/XNl
 pj5zqPNUs9cfNUkmaBSEshLvDp987O8cd1YSGW6wMxwCChTMBP4kb1zpK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353999018"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353999018"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 11:53:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="703274634"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="703274634"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 12 May 2023 11:53:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 11:53:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 11:53:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 11:53:44 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 11:53:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2F2tghkmJkUJZFjjTwXdoOMl1CH8cjGg+KbuMyM8OfT2RI7XnCxfkiiI7B4CcOfoOybdTFv+BTtA624XpNxKbvkOIKJaC8nkQOcMLup9rsAcmtyqPy22UxcnUdLfQ/RZcz5P/eV+fRhhNHXvzP2P4BETm8hCM3nCIs3ADPwlpSBQv3bOK7pk6OWBDIinD2lvJJzYzGf/XBgPf0J0jC9Q52thwAraMNz+MqbO53vsPGJ6XOTBOHZdP4e1oCA1hSXIarESUXzmtEuDdc5xi6P6uWQhPd1bvTOO/6ar7q7MOsBgqp9G4s/6umDNTLcchM25cJz6moEHfNJwW115EcnBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdUUB1rT4Y6//Y9vG4fsEsJ7s8nyR6Hb6YH/XxEnd1o=;
 b=Q7t0yvqPYRlSiywgBm4qk2RlpW/Yzdj/6LvkeO3PsWdFITzJRIG6QgWAH37RFyJSkTUDDbSY1XLMYvBghNro0Y8gNSviqN67hQDY7BFIsrxhj4LOMhDbNZBmtoY9H9YeUqJ31iCsZj3GfjIReKsrV8HOb+i73czjjI8Onj64KQqr6wnJR7p1L+WJm6zFk9wBhOmBPDpLZvHEbTKUdw4TJltDc9GUUmLCt4isueifqVg50/xG51ClMBx3u0f5gH9dEejJsIqfRwbgMxL9lnVruvvvFGD3WU/X+6LjXRmDwXRnlCO9Hq1/eaWS39xygVXRZsdxdnWNlrllRZ1dlcft2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB8575.namprd11.prod.outlook.com (2603:10b6:806:3a9::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.24; Fri, 12 May 2023 18:53:42 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%3]) with mapi id 15.20.6387.023; Fri, 12 May 2023
 18:53:42 +0000
Date: Fri, 12 May 2023 11:53:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZF6LLIIpV4QPYAV5@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
 <87wn1eelwo.wl-ashutosh.dixit@intel.com>
 <f3000e77-678b-4d92-d800-35d696ddef50@linux.intel.com>
 <87mt29eatx.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87mt29eatx.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::6) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB8575:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a0ac105-49cd-4b47-8110-08db531a34ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1I1aickPFH57n174IJpErRcopR9KxRZab32+jX0rq2VnUF8onfU1gZawnzPAe+fAP4kPLxZcDelk8H29YHMaz5aoa9yPPLnnj/+4R1SRzSzaB8noFOnFXqLkIcDxvZdgzKa21NMFL4jQxpYdQGa1MtM7MKE9xocAPyk4uqrcDkQyZsjKjj+nRdFcMQgM8GUwnG8IXgEDDOWcYyQiaqKh2Mhgrr3vXOpalsUtbqBZA8KsDLsTePc9GrKtc5hRCJ6Rwvp2QRLgnazUVDdqXTCKubajCehZFxcML2Cg6LsRomVGsZPwtj/kuWlmiFKrN8p5xJ+I2IwOkrUbaXrATUrQkRgHZlAPcvD63icbPXwo8GUOynPX546dm4W+uftpDSxfnoUSedoQvd8biaMTRiQe8LGMlN8xvjKN7nGJww1MAlNik6Jv3B6cgfxDGSpBTA68x/LVFyQvbk1x4bNBbjdbBRNR7ZyniVd7I6rAvDJgmjvoe23G7WrnInAB8JtvPivSUJRzFUilfJPcQiT0lpfHFsDf6orvUF/r6Ec5yDE2leqfmF1wiLUYnHDs9wxSQ2ZA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199021)(38100700002)(82960400001)(53546011)(6512007)(26005)(6506007)(186003)(2906002)(6862004)(8676002)(5660300002)(8936002)(478600001)(6636002)(6486002)(6666004)(45080400002)(41300700001)(316002)(86362001)(66476007)(4326008)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVNLdjdkZTdYZksxQlFKRExhYTRSdjMrVGZoa3JwaHZPN0NrQk9ZeFU1b0F4?=
 =?utf-8?B?RUJvcGVCUERmTWs3QVFmTkNIdnhHa1RYOHkxcTQwaVJxVWdvaXZnMG5tQ0px?=
 =?utf-8?B?K2FPczVaY0xmUmxBWm1zRnI3RXEvYTB2UEtwVFJVWkpISmVpaUpYQXVRZkw1?=
 =?utf-8?B?d044SjRIQ2c1Z2dXeWtmN05lU0N3LzNnMW12Y24wTnp5Y0xXR3ZvUnRTMU5w?=
 =?utf-8?B?TmdiMDJiWC9nalRLRWt2Yyt2a0dhT21ocDhxaC90MG9COHorMG9HV1c0YVc5?=
 =?utf-8?B?UHZnREpwNForRUN5UlJGVm5IZ1RHVks3VlhDSHRyemZUVjdiVit1YnMrak8x?=
 =?utf-8?B?aFZaZEUzTFpBQlQycUZ0bzBySXpBdXNUa3YvUWI4bDEwTmZmSHo5ZjUzMzRr?=
 =?utf-8?B?eVl6MUZNUHFvRnhDeWt4RXd0eEhQVU1kNTMyZGxOOXlPWWlTZGh4a3ZtNFN3?=
 =?utf-8?B?bjFDcGp0bllEZ1BpRGQ1dGdKSWpWSHcyUXp3ZWh2VjEvN2tBczJGRGdOanZZ?=
 =?utf-8?B?YTFldXU2OVVLUmxuR21GWW1Nd1BGaWlIT3Bzc1V2Ly9LVnhaZWp2NitDeG1J?=
 =?utf-8?B?MGRyZys3cmtGNkJFZjg4SVV1TWlFMVVpdDRmZWNTdWsrUzB0SVpHNi9WeXNR?=
 =?utf-8?B?b081YjZrRi9JQXVkZFdScFAwbXlzUGdBb1ptdW9vMmZiNlRtS2hQSjJ2Y0pt?=
 =?utf-8?B?MmlBNlByN1BxMlN0SExGSkYzeWJMVGhVamdtd0M3QnorRElwZEFsSnZZSURX?=
 =?utf-8?B?ZnQ4dXE2NVJtMkNKalQ5ZzY0VWtMNVc3OUNrY1d3aXNOMit4dE1IRDQyMGVv?=
 =?utf-8?B?MVFoVDZ5dHpGZVJJcnNYNlFqTnRSVTE1TEdzQkNLOFIzQktiUVJXci9BQ3c1?=
 =?utf-8?B?bW5UYmRTYUh0Y2wrZU16OCtnd2FwTEZoTDVmSmZRTWx5TXFqdXN6R0xVREdn?=
 =?utf-8?B?enJmcyt5eGkxczFuam1MZnhoSUk0endTVG9BR0ZtbklmWXlBbTBqbGRNY3pW?=
 =?utf-8?B?ZTFkRGVEWWREaVJyZk9xRVRMWGloOTAzZXYxUHErOVZ5Vlg3Nnp2VG5peVln?=
 =?utf-8?B?SG1VR3J3R2JyTW1sZUxBUE1FMmY5Y3IvTnAyRjhaQUIrMEx3T0daMlpzbGxo?=
 =?utf-8?B?ODlqd2VWbDVZOGd1VzYxSjIxemw4ODh2bW9KS3JDSko1MnNYRW1CeXIrMWpa?=
 =?utf-8?B?UlViWGRodTlNZXRDbDFVaWlkN1J4Q1VvWFNIeUtLckhGTS95azlZVW1SSWpB?=
 =?utf-8?B?S0xDbC85M0JRZzhHMW8wSE9YOXF3SERxWUd5bFN6SWkxS0diTHNoeXFKVFpH?=
 =?utf-8?B?eUJZREhVbU9HM2hVN1hPYnZCVlRQR2FXN200TktyNGUycmRrd2k4bGxqZ2VU?=
 =?utf-8?B?RHgwVWRCVnBrSTMxV2NNMllkVVQvUkE3VXhOV2ZqbkpONmxLejhaM05vKzM2?=
 =?utf-8?B?ZUxGKzd2Nnd0V0hreTFDMmMxUVV4bUsyMEpldlVyZkFBZVZQSThDcGUyOVY0?=
 =?utf-8?B?czBSUkNISGFVTHZFLzFMd1RjWWQySThKVlJHS1VzK0RxK0RmcmhhYSt3OVVE?=
 =?utf-8?B?dmNoUTBaNCszUzhmNk1yLzc2TDh5MjJGNkNHYTNpa2c1VXlKeHFpQ1FOL0pp?=
 =?utf-8?B?N2RpekcwNExxTG9qYmFmZ3pOb285MlNRNzRidXpNY3FFOWk4a2FlcC9kQ0pM?=
 =?utf-8?B?bjVWdk9BcWwrdkg2cjFDT0J1OUhUaHVRU1ZUUkNtUm5SZUVSOEVkVHJuUFpM?=
 =?utf-8?B?TmRkR1U0VCtFN1hLMThLMG14Q1UyRnNQK1hoeVFtbUxza09iWWx1N1Z5MmJz?=
 =?utf-8?B?REVobW44Q3MvR282bnl2QURrSjN0TlVGcnpEMCtBTGhmTFRJS3BFUFllanVW?=
 =?utf-8?B?dEJWMUFOUCt2dnFWYlBEWnMvYzlyc3RvT01SYmRpd0dMYjloREdUNzJMd1B6?=
 =?utf-8?B?WlRLbjZkVWMrV1hIMms4VkNPQ2dFdTJTVWFnekhyM25qU0ErU3NTTTBIU0NE?=
 =?utf-8?B?SDZVNENNWWJpY2dtMk4xRVZDZUtYcDdjZFFCUkVLem5yTEl5UXVUZmZseU5K?=
 =?utf-8?B?a0NoOE5ENjJ2cGhYbkN6MEdGZnByS2hOY0dtbmlzNmFKNnRyMHp5TkN1VVZ6?=
 =?utf-8?B?ZnVURkFDamR2c25Ub3R3d0E0Y2xiaHZzT3pFbG55ZmI5bExwejFxMUlHaEZs?=
 =?utf-8?Q?6Alq+1f0fGqvoCuhGkfvMuQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a0ac105-49cd-4b47-8110-08db531a34ac
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 18:53:42.2856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AXxCnMztZeo83nCxa35RHni0SlPKdYNuRMAa0+90D6BFAZhpFtGgIsxBYRRQT17ViBUGZ+n34SM/idkoFfR5ZUVmH+HSf18C1MgOxgkLVtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/pmu: Export counters from all
 tiles
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

On Fri, May 12, 2023 at 10:08:58AM -0700, Dixit, Ashutosh wrote:
>On Fri, 12 May 2023 03:57:35 -0700, Tvrtko Ursulin wrote:
>>
>>
>> On 11/05/2023 19:57, Dixit, Ashutosh wrote:
>> > On Fri, 05 May 2023 17:58:16 -0700, Umesh Nerlige Ramappa wrote:
>> >>
>> >
>> > One drive-by comment:
>> >
>> >> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> >> index 12b2f3169abf..284e5c5b97bb 100644
>> >> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> >> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> >> @@ -546,8 +546,9 @@ config_status(struct drm_i915_private *i915, u64 config)
>> >>	struct intel_gt *gt = to_gt(i915);
>> >>
>> >>	unsigned int gt_id = config_gt_id(config);
>> >> +	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>> >
>> > But in Patch 5 we have:
>> >
>> > #define I915_PMU_MAX_GTS (4)
>>
>> AFAIR that one is just to size the internal arrays, while max_gt_id is to
>> report to userspace which events are present.
>
>Hmm, apart from the #defines's in i915_drm.h in Patch 5, not seeing
>anything else reported to userspace about which events are present.

Ex: We have only gt0 and gt1 on MTL. When user configures an event (sets 
event id, tile id etc on the config parameter) and calls the 
perf_event_open, it results in i915_pmu_event_init() -> config_status() 
which will return an ENOENT if the event was for say gt2 or gt3. This is 
for runtime check only.

>
>Also, we already have I915_MAX_GT, we shouldn't need I915_PMU_MAX_GTS, or
>at least:
>
>	#define I915_PMU_MAX_GTS I915_MAX_GT
>
>Better to use things uniformly. If we want I915_PMU_MAX_GTS to be 2 instead
>of I915_MAX_GT (but why?, below is just a check) let's do
>
>	#define I915_PMU_MAX_GTS 2
>
>And use that in the code above. But I think we should just use I915_MAX_GT.

Agree,

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
>
>
>> >
>> >>
>> >> -	if (gt_id)
>> >> +	if (gt_id > max_gt_id)
>> >>		return -ENOENT;
>> >>
>> >>	switch (config_counter(config)) {
>> >> @@ -561,6 +562,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>> >>			return -ENODEV;
>> >>		break;
>> >>	case I915_PMU_INTERRUPTS:
>> >> +		if (gt_id)
>> >> +			return -ENOENT;
>> >>		break;
>> >>	case I915_PMU_RC6_RESIDENCY:
>> >>		if (!gt->rc6.supported)
