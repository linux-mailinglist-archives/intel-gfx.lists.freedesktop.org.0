Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10688810AAA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 07:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5826E10E701;
	Wed, 13 Dec 2023 06:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEF810E701
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 06:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702450461; x=1733986461;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pRCY4Lv8b0xVVrfE+O+OIODAmms1W6r7DiLE3HoD/T8=;
 b=hRPgbFOQrzkFISLJRg0mSScIfCARE0gpayqFhCE3k6qlu34JdJ8liVR/
 aVDD1fpO1vafg2gt5+EZ7+mekW9XI+/mOXZcbcRd+3G97kefbbpX3kVtR
 o2mTGeB/wEFyBQP1of2mIHRJL98Bvv1k5fPn8whNhOT78aPFMuVtWv58C
 3soGo4+MASftYVTh97HQeu5JhO0hkA/Zz60hvJQFF2H2gLa5M9Ky6IflU
 E2fAsh7KgxdDF1LFgptGOgJWqXXPq7qBE6I/ziItL1jyg7/5qdBNy+dig
 5Wcq1NJKOVUSPx3AnIxgHYP5jf8jFRHs+37vdxzWWoz7qUDFsqjqFfYDm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="459241330"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="459241330"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 22:54:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="723528520"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="723528520"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 22:54:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 22:54:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 22:54:14 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 22:54:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mEntfYwYF4v//j43hcW8/yb5obvtnGDeqqaCibrXFcOWKSc1NJ28oUiOLh4byGoNgu3VvaHc/bYRQpcH4ik4xtFfUvxBgRAicfoEmgmFn9blWL0OUa9TqtK9Idt+ObfN4RVQlmupXpzkIWoFpVN6H5D/3kXZ5K2rFpszUqlPZay8Ou6+1yFXgN4bpOXrYunkbuSR/JzrPuaI2T/DiL/ucXQz9v4+Z3vMRN94BPMgeoHrxp4aLkivHtgTVnVPCKSUTkjCtPXOiuYSiVCmXMnf3VZw8FrZFMjoYTQgjV2sAhOSFnXkOLUqbrC1Y8/CN9ysqPCf0PbTXlF/BCF8PpVO4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKEjILz/oPBha+9oxMZeWUYQBzJ5WfQfb7gzC1J/gdo=;
 b=B2jvZ0/WkvXcHV8kQemlX+BLMNMiO8DAk0So/Uj1oIGMvr3OLWtcSUV32hcklgSUw55racOe5j6ThLcGaHxj2HICcspcxZMSzkNZ2zhVvItux+r9FcFYMXVtuElFxUUpmlZV1oFA0qTXI8U+f3MjeUxHkBlSJ65UUXU2SLqI0I6oClSZ2B8HiQxlXx4dPAFPJ1P3UdHPxyDONG7HmCiPZXavuV0t20NnvCS+YA53987tC3cyfQul6K8JAn2ZdxzG7iduCzqsW0nflIPXyK0Ec2Z7aaR91w2ZUTH6Z/QuzpVxPsiAu1KO28tbre7hGxpwo+B+r3F4ONJy6t+YuF/0fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8597.namprd11.prod.outlook.com (2603:10b6:510:304::22)
 by MW4PR11MB6786.namprd11.prod.outlook.com (2603:10b6:303:20b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.33; Wed, 13 Dec
 2023 06:54:08 +0000
Received: from PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9]) by PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9%7]) with mapi id 15.20.7068.033; Wed, 13 Dec 2023
 06:54:08 +0000
Message-ID: <835917a8-98ba-4575-a47e-a1f46f09b34e@intel.com>
Date: Wed, 13 Dec 2023 12:24:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14019877138
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20231205091105.3604223-1-haridhar.kalvala@intel.com>
 <20231205202426.GK1327160@mdroper-desk1.amr.corp.intel.com>
 <0cdbe01d-710e-423c-8fc7-39787cf571e5@intel.com>
 <20231211155644.GZ1327160@mdroper-desk1.amr.corp.intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20231211155644.GZ1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0133.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::18) To PH7PR11MB8597.namprd11.prod.outlook.com
 (2603:10b6:510:304::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8597:EE_|MW4PR11MB6786:EE_
X-MS-Office365-Filtering-Correlation-Id: 63088ed0-1969-43a6-c3fd-08dbfba84daa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pISqBS+Bu5GntKZROD3sXeNh8o940DAzjtwrOYTTSUoYz96TwOsgw0qtoRYwxEQRkaCAPcJUbTKZHFJaKGoshyRvYKKPrEVTI4Ia84x7rUwMaodt21VaApEfAa2biO3IJ+7dms+KgwHVNrbx+eWxS16etBUL0YXOTu2t/YyJuf0O+5ApWq6mXM5SI/TfVa/xI5vhTiif0MbC+qmS2FxyDa1u1N86tnHEc11UFDZwWHGFROH7dXU9R7rumyPg3tccxc9fsLXZAAUpze+Fu3N0ekBCD5UC/NImJJJUcAEqP6QyZzpKUfMjHIGeMaGgb+DpFWcY4dzehHe3lpWqkU7Ux7tmxmY5rgQrWwpcUhU12DLWmuZkZMrY46riIQQkdPfWUNuNYg73VQ6WQWNEMMYrwtiD1BXuFqTQY1ZY+JT4P9dRAoGOeC80Nz+z0N9RGAIJx9qT2k0AJJNylo8GcYU5bueOl9sqfKFLdpdpgtd+w7JTMuM5/kHrg2yIv/H2j2A5+3ckLX2Kwgf60Gj4gIcNwLv7HN/7T8RoxUD0r/m/fTGeL/aoIWhMcG4awn6+NbpSxPPQPlV6fUfVF2RbFOKT0fMoqjEU81XlO6a/WnifaYSc6B5cuhpy/tFZgW220X1jUIpvsWgahPyWS8BQCfT9/iu5Wydkx3Tb/Gu3UMWHwrTR2YB0xxSEhtZ6WHKDxSbA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8597.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(376002)(396003)(346002)(230273577357003)(230173577357003)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(6512007)(53546011)(6506007)(5660300002)(26005)(2616005)(36756003)(66946007)(66476007)(66556008)(6636002)(2906002)(83380400001)(31686004)(82960400001)(41300700001)(478600001)(86362001)(6486002)(8936002)(8676002)(4326008)(6862004)(31696002)(316002)(38100700002)(37006003)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q05GTUFkblExVEhWL2JzRms5ZWludjk0RC9GQ0RyaENSVjllVFRrYWhRK0Rz?=
 =?utf-8?B?VENjRnA3WW9CVTRiVHhmajBoNk14d1B4QmlpM3VWUzRyOWQyMmpJa0o1WG1i?=
 =?utf-8?B?TlozZkd0NFQ4ZnZ3TzdDWGpaVlE1RVRIa0RCYWRSdFhwUmdra3FqK29lY3dl?=
 =?utf-8?B?aDd3b0NlU2h1Wkd2cnRLV2hGbEprT20rOHRyQW5yZzBpTnRNWFFZNjNIS3Jm?=
 =?utf-8?B?bWhjUnVKa3M4RDN3RTFwUXkzdjNtaXBVVGxBMjZYVERMK29LdWZUT1ZKeTF0?=
 =?utf-8?B?UVczbjlkWjI1dWFUL1c5Zm90ZStkNzdlWjA4b1RQbWUyT3pYMm9PTHh5VjRy?=
 =?utf-8?B?UCt2cUpRQ3pMbFBXR0kwd3pjWWwvc2lCWUhpSG9EcSs2UXU1ZjlLMWZaU1FU?=
 =?utf-8?B?L3JjcUtaZjJvcGVkUWxLV3YydUsxVUg0MzFaSFA0endYS1EwaWhGZlVuZUY5?=
 =?utf-8?B?L1VjNm84Qzh0M2FYV3B3R1lWOEhTR05EYTlJRnhMMDBvaThMaERhN1RkUUdo?=
 =?utf-8?B?ekw2bVFrZ0ZRM0VGamlhaTQvUCtVMXhqNEZBdmNJWDZkZk1ZMlZveURUdk41?=
 =?utf-8?B?cmQ3cTdOTTNUL0dybWh1NmpkUFN0V0s0UHB4MDJiT2NZeHZHQmxQR0JjL0FF?=
 =?utf-8?B?OWt3REF3dzRXUTF6bW5wNzJYc3VTQXowSFBvMHNaRUhMcnovcUV5VUhwUzBB?=
 =?utf-8?B?ZTNIdVRjV0YxV3AxcWpNQUhDWExqQzVibmswNk8xSmpZSU5SYUQ2Z3J6c3ZK?=
 =?utf-8?B?WXo5RHBkb2RBOEl1WW5xWkxRemNtaHBTUkNwNzVFY3dDTjhIbSsyYkI0ZVha?=
 =?utf-8?B?WEV3clRxNys1YzZTMUNUQzhaek1IeSs2QWc1RTNFcWNIRTRhemdSMy9RUm5U?=
 =?utf-8?B?RjFBaUtBRlByZWpyNHowRVhhU0F3SkV3dlhRVlRnVG01Z0VaMytuejcxYTJa?=
 =?utf-8?B?M1JrSXVnK3lpQ1pVdlBGMTB1azZHREo0WGl0enpraWdEWjZ6SDBHL1RsMDBw?=
 =?utf-8?B?VjRYY3hQc1BOU1VUZ0dUY3JHcTVFKzdkKzJFQmFwaEwxK0I3SFRYVzIwNkpI?=
 =?utf-8?B?YUZVOHppUkt3aTlKSkhyY21VcmhnNjdRTWE1WTZLTE04VDliemVQZU02YVVw?=
 =?utf-8?B?S29FeVJEejgrYW9xczBrdEhYazZMVlpLdUs5ZlRPbnAzSzJ2TGNpUGV4RW53?=
 =?utf-8?B?SU9MVHJaZ2NHRWU5MjhDUkJXUnhNUjYrNUVtanlMTEVQRFhoR1RoUW42SFZY?=
 =?utf-8?B?Q3Fqb3dEWGJuNmxJU1hVN0ZSa3RBMnpVRWJZUDZWcm1CM0d2ZngyYzUvdVZt?=
 =?utf-8?B?ckkzdEd2UXZsRmt6ZkMybitETjBUSmFHMXhMRlViU0NYZzc0c1JXT09BOFNy?=
 =?utf-8?B?V1FQQ2tvdUh6STdhNHlrRVNNWFV4UjhNR1h2MGx3Vy9rUGExOWVrb0x0c2Vm?=
 =?utf-8?B?ZnVkOUtKcFRUMnVOS25FU1V1OXJDWDJPV1RxZ1lvWVBSR1ZOVVRiU0E0TVFD?=
 =?utf-8?B?aldYODV4Vi9NZTFXVk9aQVNhOHhlWE1vVHg1eFF3V2hibGNjbnMvTm5FSHV6?=
 =?utf-8?B?bnZLSlkwaUtvc29EeUdWR0ErWEM2T0Z3VE9sRGN5RXRaWmZ0aTh5UjVqUzV2?=
 =?utf-8?B?UG5jMEk2Wi91V0dSTmd0eWpLY0dlcWlYNUVXVWI5d3UybUxTSXpua2lscWo1?=
 =?utf-8?B?U3IwSlZjZmc3SHVwZ3N0azdIaTEzYnNQQ3d6TlFSaXE4U3dwUXBFdUhWOFV5?=
 =?utf-8?B?Z0tndS83Q2d3dVBzWGVnU3l5aVlnY1dXUXN3a2ZKSGRSM0xjOFdLdXpyelZX?=
 =?utf-8?B?M1p6Wk9tcUtGMWtKMzdzQnhoYU1PalVxVUM4ME5UMG1xSnhSWFMwa081ZUJy?=
 =?utf-8?B?czZPSStCdk5GMzdXTE5xOUtsYU9tMUswWXJ4UWk3MTVSc2JHM0tsN04wcjFj?=
 =?utf-8?B?QURlVStTTlkzWndKUERGWitYRmhCK0Nid1V6ZWh6VDF0dnl1ZHdibmZrRDVy?=
 =?utf-8?B?QTJiWkRzQkZ1czNZaElVbktGVjhLYi8xWnpqcTh0Tzc5czBSeDJvNFVRdGtx?=
 =?utf-8?B?eGFCODNFaytjeHFiMThNNjdwYUxwd0pGS0ZWcjd6RWNPNWIrYUN6eHAvcVhm?=
 =?utf-8?B?RlZnVzZ3aTRuYjI1M2l2SDVhV2lBeUQ4UU43QXdOQVFpY2xYUUFIN3lUay9k?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63088ed0-1969-43a6-c3fd-08dbfba84daa
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8597.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 06:54:08.2521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIqjsFz3bWin+vmQ+91NgAPDseeLMViltTxg40UxGnGBkQkFBtoG6mliOweHxisfw9ho2o74vYa0+tH0gcPU3zbxRnSKGmUhubQmcrLKvzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6786
X-OriginatorOrg: intel.com
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


On 12/11/2023 9:26 PM, Matt Roper wrote:
> On Mon, Dec 11, 2023 at 05:08:48PM +0530, Kalvala, Haridhar wrote:
>> On 12/6/2023 1:54 AM, Matt Roper wrote:
>>> On Tue, Dec 05, 2023 at 02:41:05PM +0530, Haridhar Kalvala wrote:
>>>> Enable Force Dispatch Ends Collection for DG2.
>>>>
>>>> BSpec: 46001
>>>>
>>>> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>>>>    drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>>>>    2 files changed, 6 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>>> index 9de41703fae5..85ba62639807 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>>> @@ -469,6 +469,9 @@
>>>>    #define XEHP_PSS_MODE2				MCR_REG(0x703c)
>>>>    #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
>>>> +#define	XEHP_PSS_CHICKEN			MCR_REG(0x7044)
>>>> +#define	  FD_END_COLLECT			REG_BIT(5)
>>> Looks like the whitespace between '#define' and the names isn't correct
>>> here.
>>>
>>> Aside from that,
>>>
>>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>> Hi Matt,
>> Thank you. I verified with checkpatch and it did not shown any warning. I
>> will check again.
> Checkpatch won't care since this isn't related to kernel coding style,
> just to consistency within the header.  You should make these
> definitions use the same whitespace format as all the other ones in the file.
>
>
> Matt

Hi Matt,

Done.

Thanks & regards,
Haridhar Kalvala

>> Thanks & regards,
>>
>> Haridhar Kalvala
>>
>>>> +
>>>>    #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>>>>    #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>>>>    #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> index 4cbf9e512645..3eacbc50caf8 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> @@ -777,6 +777,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>>>>    	/* Wa_18019271663:dg2 */
>>>>    	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>>>> +
>>>> +	/* Wa_14019877138:dg2 */
>>>> +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
>>>>    }
>>>>    static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>>>> -- 
>>>> 2.25.1
>>>>
>> -- 
>> Regards,
>> Haridhar Kalvala
>>
-- 
Regards,
Haridhar Kalvala

