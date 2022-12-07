Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BE76453EF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 07:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F7E10E0E2;
	Wed,  7 Dec 2022 06:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D341110E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 06:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670394051; x=1701930051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p6YK69DHz4lUGvb86v+QqFm7c1XaOqLy4XS5SOi9jP4=;
 b=fdveSpy0OkShBedsvEvjGcmtslCTKDgAL3zsbzWhEjPNqubGHVYezDpZ
 rLmGM3vqA4XWeD5RGzSYU3GQ8FGzdJPIEKxjJQ9gPJCxGdL6JYkUNI1PW
 ffbrQWzvVibkKgNWGVfGAmqSjbUp7lbTlRpv3fQ+SbUU2i/D+61Nm52+R
 evQWGAP/P9k1witW699vcfxU+lm+uveGyiDqHwZqzCra1HaYw/crCyTg5
 4rGAbtNqaExPaZhdPG4HyGO/bgRLYePJhF8GS/+PoAoaCfEtB+ypnGK3S
 OljO+msrbHLs/sERc1AAi/c4/Onclu0odJWbo1E/FhnaIDz0q4d29IFTW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="304441958"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="304441958"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 22:20:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="640135985"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="640135985"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 06 Dec 2022 22:20:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 22:20:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 22:20:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 22:20:50 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 22:20:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tm91YzJxDpHV0W9MyLQvTr0/4wedbKl5jsNmZmMKFdaQJ9QjeYUcH5ySZhN1iD9QyX3joGJXjY8SRfBPYR1NNeeAWYT6wMcbow9YTGHmftsK4FAJzJFEJKq58bXWUgIVTdrKyqimW04mkYhFs9qgFtqY1PCtKW4EuP4RubWPsbCv1fm+QuQyH5u0aLs8FulrcD4n8wl+QyN//18WIVSliOySEoYv36bm1Fz/XyPLYYq7DYR3PC5URmFM4+YpCCaaim078pWNlXBVZ2JQD62ZU/+6CWnqSZlv2bat/BrWqD9LWRhNPGnS3Q+MArAuuM+oyBTKC8w0ReSdy3mCQKR9mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7wgTm/4ADA01lEsc8EEFkd1pOFlXEIl4iOcloJKum14=;
 b=XLOnZA+MREnTVRrYhivzbOe3/H1JID5yq68EiXaN3D/Bka72D7CpKx4oVIY3lYSwf3Y6Qt+GaAjJB1eH8abLfaG/w0bVh9bXxwErE2O/xRO2J1qQzYtFVsFP1hhlTnfIirOOgLZV1n5/jHJ5PPcdn1ySji4beeX3xFPLrdhwwJvC98vM/r32CJviYKPiYJBFQku/48PKuUnvRlXk2hRzc14Qvuy3DorbImrnF2wIEdHV1qVXKq5ob/Z268hV+Os9ne3XoBIvOgDujQpnlTpU1a8yBzQ9afetOC8xPe0egQUi9usdZinwgQPgrGRJL/Wp9KT5EiEzMv/BecNSNMccoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 06:20:47 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64%9]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 06:20:47 +0000
Message-ID: <3279807f-3b4c-53e0-bc2c-f99ca7126a4a@intel.com>
Date: Wed, 7 Dec 2022 11:50:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <9f5e6b3a-5e03-a1fc-c9f7-16545b61658d@intel.com>
 <20221206183925.72d6f7a2tqpe73nx@ldmartin-desk2.lan>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <20221206183925.72d6f7a2tqpe73nx@ldmartin-desk2.lan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::13) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|SJ2PR11MB7573:EE_
X-MS-Office365-Filtering-Correlation-Id: c37b0494-17c7-4f84-ad07-08dad81b2d43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GSRtDZAP1B5biWi9hRgHqPMNuH/mLDRdPwPW7wHIkA05NIvKTjlysw6lgtcsMp7SLIj53Pp+BHlAuRG9F1f0gLHlInVqs4kX+eL0ybDLUf90IhmjdRTpD4UxdIw1krDG3UB+zdWYxCCrTiGh5MoApSNrbTt6FRRxFTahav08rf7+L7LouYmAMjV0RYQwHPwCsmkQOp6h7rRDl8isRDPJE1zNX2fX7sLQSr3Skl8YmUnLYhRIg3IhlEJ7z46HkEkrGxj3+vVh8R3uvN+IoI9aOLEMfU+lZl2Tz/TwGZ2OjoTe0hVqbjzlFLTB/ipJ96ocD1TLFzxSAOcuCz1w+rF7+B0mYv0nQYytrilWAfpt2GDKHUqOgFz1g4tKJ34nWG7Ms0BzuN0JRTnF7DXIP9n1cR454ac68tqWNi0qgycAREQluMmoRc5CW+hg9uSSTdyo4r5mYxJUlCO8ipF/y8Q4h6TNYlOtwdF9ekveu+ukvsJAuyQlygg+OcN4jo9f0LBIzhjnQT4s3DbvE9kQ5iicUuNJsHoSuXkmOaBmbbi5jCWoWQ5mBh7SALnkmRfzJge7zJb8YS3tTi6JS4f9atTx3CzgO1L7HmOh5BKwilkP+gmahsyWM0w+bNgzMUedxY8tqyGfejr7/UT29zqso905Gu/P80O7gd6VYCZK0Dx1Sog=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(39860400002)(136003)(346002)(451199015)(31696002)(6486002)(36756003)(86362001)(38100700002)(37006003)(478600001)(6636002)(316002)(5660300002)(30864003)(2906002)(53546011)(4326008)(66476007)(66556008)(41300700001)(8676002)(8936002)(6862004)(66946007)(82960400001)(83380400001)(6666004)(966005)(6506007)(186003)(6512007)(26005)(2616005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFBnWW1HMkUyWjljdzd0SnNFNHc2WEhYMC9CQjJ5NFhUdlMvTVVTNzZnNkpP?=
 =?utf-8?B?clYzZWJnZkpDS0pzUm1tWG5IeUthQzFmWUF1bGRQd2RjeUdWZmpCUlBvQzlB?=
 =?utf-8?B?ZmoxNGdjZTY0NUIzSjhhL0k1aUpFTmFoYVpsOEpoZllidDdITjVjNTlxazVS?=
 =?utf-8?B?RG81MWlJYUlNQjBxaTh2alRLNk1MTmRGWmNGVXZsN0JQclhLcGJEb0NFSFpp?=
 =?utf-8?B?RmR3Y1NFaFMxbGtPTWJXZlppUEJhTGN6V2g5L3JSWEhGdGZ5OUJpWlJrWUJo?=
 =?utf-8?B?TFArMDR0NkZEcGNBZ0xHWVl3djB3eGdIM3pwVzZyY1BydHJaTkNFdjh6RnpJ?=
 =?utf-8?B?T25XME1PdDFERTRiblFOQkMzT1VCbVZsSnVKTGpUY2pJc3Y0ZWNEU1c5Q3di?=
 =?utf-8?B?R3dkOFNjWG1MQTY0RWxERkFneHBvUlR0MWEvLzkrRm9kZXhqS05VQ3hqM1Ni?=
 =?utf-8?B?YU5xL1ZPenZDSytxK0J0VnlRdjFYbHArcE5oV1RwTXIrTlRjQnpDSlpZYldi?=
 =?utf-8?B?Y3p6bmFJekhIdUkxZHJVSy9JcXdIZHJqYlJGWWQ5ZS9YYWpjQVpGVGpuQTcy?=
 =?utf-8?B?WHNoOGY1SWRpMHd1Rk5VbktMNW9nM3lYNDlabWNHS2lOK0VwcFJSZXMxc011?=
 =?utf-8?B?UVFuRzN5NzRqY0txTTZvM1Q0OXNXckRkZUIya0I4aDZwMGZaN3VIbEFVamoz?=
 =?utf-8?B?WG5ybFJ6Ym43Q0I2ajE4WWpaL2NyelZpN24wdGE3Y3EwSExmM0tLanpGS09y?=
 =?utf-8?B?YTc1NWFNd1pHMDVRNXB4RHprRFhaK09kTFhxbFJ3SXNKdm1LbUFrQm51WGRC?=
 =?utf-8?B?R0xIbWlFL0VNK0ZlZXRXR2wzMGx2akR5c2F6YjR2WU9GR09KTWlZK1JuUkFy?=
 =?utf-8?B?d3pvbTNxSCtvaVNTOUgvNTJRamVIZUM2d21yS3RkeWxheW9jUXhjVVQvOU01?=
 =?utf-8?B?MjJ2UldCMnRaYmxJclEzL2NJVE5lTnZCRXhWVFB3cE9MU29qalJOenJtWVZB?=
 =?utf-8?B?WnRGQ0IzZTJvM0xYL2hscHpLSklodXdIM3MrMG5aN1h4WHhEMWVhWjJFWW1z?=
 =?utf-8?B?UGRQaTU2WHNTWDdwZlhuWlV4MS8zZFhNZi83VW9NU2VIVExQUW5RUUxFK2Vh?=
 =?utf-8?B?WXpINnYreUVMVzF1QUV2amxVZWJaYy9jdnZSeHNzeEM4OHUzQkg5OHVLeWJC?=
 =?utf-8?B?bE9CUE9pNUZXMEZlaHhLUkJRelFVNnZlZ0FHalpqTnpiZmNKRVNQcUs3N1Ew?=
 =?utf-8?B?SjZhM2ZyQzlGM08yM25CZGVIbU1LVmV2dDU2UThybWRvaE9CRVdkWklDbEcv?=
 =?utf-8?B?SmhYa0JPaElXMlpIakNIQTA4b21uYTBNM3BkbnZvajI2VVpscGZuZ3h3UmZt?=
 =?utf-8?B?MHQ1TkF0VEV5dktMTk1wdkhjSlVXUUdwa3c0YldlUk1ubkdGWk5icWZtdlhw?=
 =?utf-8?B?L0xKQ1BDejFyR2hDaGxVc1pMOXdoTmxtZjhPWi9XRjFEZklMcEloS1NEUFJk?=
 =?utf-8?B?Mis3VnhhQ2dkN2NRT0h5eStHcU9aN3dQZFMvUVhVd01DckM4M2JzTDdjY0hs?=
 =?utf-8?B?YmNob3hONWZ5dTZzQ2poYWZZaGRmcFJGb3ZEUmhxWjQ0RFpRaXJwV0FjOWIw?=
 =?utf-8?B?cjVpSnlWYXlwQ3BGQzNGeklaaEk1bTI2U09kTWZnSEVXWngyVGY3dGZ1MGlC?=
 =?utf-8?B?MEdUUFNFSVhpVENZOUNOWis5Qk0xelVsWTIrL0lPbThaMTNiRG9KVG5UVjNM?=
 =?utf-8?B?OFNSNXhvQmN3WlRvQ09vNFhsT1RhcnZmclA1MUZrWlNJa0pIYkwyYzRXcklm?=
 =?utf-8?B?SWs4MHhxaWhQcks3bFhCZWZzSVppOUlQKzFFSWJRanR4amZnR05GbXhhdlhB?=
 =?utf-8?B?WVp1U2JYUUJOWk8ycmRQYllteTRiMDN1L1NMbWlWQ1lySmVPaDExVERWTEpo?=
 =?utf-8?B?MWp6WHBVamExQU1LREVldkxHMEtKUVFLNmFsV0ZEbVRKOVA4Mmt2eVVTNlBR?=
 =?utf-8?B?V3lYUTgrQjBuOVVwQ0NQalVyS2JaRGViVk5QS0p3VWZURzhkRlBSV1loRHZ6?=
 =?utf-8?B?YVVhSEdwaEZtdG1VSDQ1ZjE3a0pueGVrR01PZSt2b3MwdC9mZ2lBWFowK3pr?=
 =?utf-8?B?M3NOTjMrRGxzbUMyc29KT3I2YWJheGFCYmdlb25rdlZyR0ZzNmhScWpTVWZW?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c37b0494-17c7-4f84-ad07-08dad81b2d43
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 06:20:47.6314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AUDkZwmuSed26dpw8ybjMBJ3TSvK6U8HlS/kVbCO98VAMsCuT6M4CF7oZv7GrsyX1HuKfj6x94d+2INfnElfW5JJDrkHeuMGDoOjPXkTu5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Define MOCS and PAT
 tables for MTL
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



On 07-12-2022 00:09, Lucas De Marchi wrote:
> On Tue, Dec 06, 2022 at 01:38:53PM +0530, Iddamsetty, Aravind wrote:
>> please ignore this series will be sending a new one. some how patchwork
>> didn't pick up this neatly.
> 
> Patchwork makes a mess if you do --in-reply-to like you are doing.
> As it is now, it's pretty hard to follow the version of each patch
> and patchwork thinks this is on rev8 (it ups a rev for each patch
> received and tries to apply each one individually)
> https://patchwork.freedesktop.org/series/111390/#rev8
> 
> if a patch arrives out of order, which is certainly possible, it won't
> be able to reconstruct the entire series.
> 
> Corollary:
> 
> Just make sure you have a cover letter in your series - it's anyway a
> good practice to give an overview of what you're doing in the series as
> a whole. And don't use --in-reply-to: patchwork will group as new revs
> of the same series by subject.
Ya understood the problem now, will use coverletter from now on.

Thanks,
Aravind.
> 
> Lucas De Marchi
> 
>>
>> Thanks,
>> Aravind.
>>
>> On 06-12-2022 13:07, Aravind Iddamsetty wrote:
>>> From: Madhumitha Tolakanahalli Pradeep
>>> <madhumitha.tolakanahalli.pradeep@intel.com>
>>>
>>> On MTL due to the introduction of L4 cache, coherency and cacheability
>>> selections are different and also GT can no longer allocate on LLC. The
>>> MOCS/PAT tables needs an update.
>>>
>>> BSpec: 44509, 45101, 44235
>>>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Signed-off-by: Madhumitha Tolakanahalli Pradeep
>>> <madhumitha.tolakanahalli.pradeep@intel.com>
>>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/gt/intel_gtt.c     | 23 +++++++-
>>>  drivers/gpu/drm/i915/gt/intel_gtt.h     |  9 +++
>>>  drivers/gpu/drm/i915/gt/intel_mocs.c    | 76 +++++++++++++++++++++++--
>>>  drivers/gpu/drm/i915/gt/selftest_mocs.c |  2 +-
>>>  drivers/gpu/drm/i915/i915_pci.c         |  1 +
>>>  5 files changed, 105 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> index e37164a60d37..428849248c34 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>> @@ -467,6 +467,25 @@ void gtt_write_workarounds(struct intel_gt *gt)
>>>      }
>>>  }
>>>
>>> +static void mtl_setup_private_ppat(struct intel_uncore *uncore)
>>> +{
>>> +    intel_uncore_write(uncore, GEN12_PAT_INDEX(0),
>>> +               MTL_PPAT_L4_0_WB);
>>> +    intel_uncore_write(uncore, GEN12_PAT_INDEX(1),
>>> +               MTL_PPAT_L4_1_WT | MTL_2_COH_1W);
>>> +    intel_uncore_write(uncore, GEN12_PAT_INDEX(2),
>>> +               MTL_PPAT_L4_3_UC | MTL_2_COH_1W);
>>> +    intel_uncore_write(uncore, GEN12_PAT_INDEX(3),
>>> +               MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
>>> +    intel_uncore_write(uncore, GEN12_PAT_INDEX(4),
>>> +               MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
>>> +
>>> +    /*
>>> +     * Remaining PAT entries are left at the hardware-default
>>> +     * fully-cached setting
>>> +     */
>>> +}
>>> +
>>>  static void tgl_setup_private_ppat(struct intel_uncore *uncore)
>>>  {
>>>      /* TGL doesn't support LLC or AGE settings */
>>> @@ -602,7 +621,9 @@ void setup_private_pat(struct intel_gt *gt)
>>>
>>>      GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
>>>
>>> -    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>>> +    if (IS_METEORLAKE(i915))
>>> +        mtl_setup_private_ppat(uncore);
>>> +    else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>>>          xehp_setup_private_ppat(gt);
>>>      else if (GRAPHICS_VER(i915) >= 12)
>>>          tgl_setup_private_ppat(uncore);
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> index d1900fec6cd1..8a3e0a6793dd 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> @@ -147,6 +147,15 @@ typedef u64 gen8_pte_t;
>>>  #define GEN8_PDE_IPS_64K BIT(11)
>>>  #define GEN8_PDE_PS_2M   BIT(7)
>>>
>>> +#define MTL_PPAT_L4_CACHE_POLICY_MASK    REG_GENMASK(3, 2)
>>> +#define MTL_PAT_INDEX_COH_MODE_MASK    REG_GENMASK(1, 0)
>>> +#define MTL_PPAT_L4_3_UC   
>>> REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 3)
>>> +#define MTL_PPAT_L4_1_WT   
>>> REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 1)
>>> +#define MTL_PPAT_L4_0_WB   
>>> REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 0)
>>> +#define MTL_3_COH_2W    REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 3)
>>> +#define MTL_2_COH_1W    REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 2)
>>> +#define MTL_0_COH_NON    REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 0)
>>> +
>>>  enum i915_cache_level;
>>>
>>>  struct drm_i915_gem_object;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> b/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> index 69b489e8dfed..89570f137b2c 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>>> @@ -40,6 +40,10 @@ struct drm_i915_mocs_table {
>>>  #define LE_COS(value)        ((value) << 15)
>>>  #define LE_SSE(value)        ((value) << 17)
>>>
>>> +/* Defines for the tables (GLOB_MOCS_0 - GLOB_MOCS_16) */
>>> +#define _L4_CACHEABILITY(value)    ((value) << 2)
>>> +#define IG_PAT(value)        ((value) << 8)
>>> +
>>>  /* Defines for the tables (LNCFMOCS0 - LNCFMOCS31) - two entries per
>>> word */
>>>  #define L3_ESC(value)        ((value) << 0)
>>>  #define L3_SCC(value)        ((value) << 1)
>>> @@ -50,6 +54,7 @@ struct drm_i915_mocs_table {
>>>  /* Helper defines */
>>>  #define GEN9_NUM_MOCS_ENTRIES    64  /* 63-64 are reserved, but
>>> configured. */
>>>  #define PVC_NUM_MOCS_ENTRIES    3
>>> +#define MTL_NUM_MOCS_ENTRIES    16
>>>
>>>  /* (e)LLC caching options */
>>>  /*
>>> @@ -73,6 +78,12 @@ struct drm_i915_mocs_table {
>>>  #define L3_2_RESERVED        _L3_CACHEABILITY(2)
>>>  #define L3_3_WB            _L3_CACHEABILITY(3)
>>>
>>> +/* L4 caching options */
>>> +#define L4_0_WB            _L4_CACHEABILITY(0)
>>> +#define L4_1_WT            _L4_CACHEABILITY(1)
>>> +#define L4_2_RESERVED        _L4_CACHEABILITY(2)
>>> +#define L4_3_UC            _L4_CACHEABILITY(3)
>>> +
>>>  #define MOCS_ENTRY(__idx, __control_value, __l3cc_value) \
>>>      [__idx] = { \
>>>          .control_value = __control_value, \
>>> @@ -416,6 +427,57 @@ static const struct drm_i915_mocs_entry
>>> pvc_mocs_table[] = {
>>>      MOCS_ENTRY(2, 0, L3_3_WB),
>>>  };
>>>
>>> +static const struct drm_i915_mocs_entry mtl_mocs_table[] = {
>>> +    /* Error - Reserved for Non-Use */
>>> +    MOCS_ENTRY(0,
>>> +           IG_PAT(0),
>>> +           L3_LKUP(1) | L3_3_WB),
>>> +    /* Cached - L3 + L4 */
>>> +    MOCS_ENTRY(1,
>>> +           IG_PAT(1),
>>> +           L3_LKUP(1) | L3_3_WB),
>>> +    /* L4 - GO:L3 */
>>> +    MOCS_ENTRY(2,
>>> +           IG_PAT(1),
>>> +           L3_LKUP(1) | L3_1_UC),
>>> +    /* Uncached - GO:L3 */
>>> +    MOCS_ENTRY(3,
>>> +           IG_PAT(1) | L4_3_UC,
>>> +           L3_LKUP(1) | L3_1_UC),
>>> +    /* L4 - GO:Mem */
>>> +    MOCS_ENTRY(4,
>>> +           IG_PAT(1),
>>> +           L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
>>> +    /* Uncached - GO:Mem */
>>> +    MOCS_ENTRY(5,
>>> +           IG_PAT(1) | L4_3_UC,
>>> +           L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
>>> +    /* L4 - L3:NoLKUP; GO:L3 */
>>> +    MOCS_ENTRY(6,
>>> +           IG_PAT(1),
>>> +           L3_1_UC),
>>> +    /* Uncached - L3:NoLKUP; GO:L3 */
>>> +    MOCS_ENTRY(7,
>>> +           IG_PAT(1) | L4_3_UC,
>>> +           L3_1_UC),
>>> +    /* L4 - L3:NoLKUP; GO:Mem */
>>> +    MOCS_ENTRY(8,
>>> +           IG_PAT(1),
>>> +           L3_GLBGO(1) | L3_1_UC),
>>> +    /* Uncached - L3:NoLKUP; GO:Mem */
>>> +    MOCS_ENTRY(9,
>>> +           IG_PAT(1) | L4_3_UC,
>>> +           L3_GLBGO(1) | L3_1_UC),
>>> +    /* Display - L3; L4:WT */
>>> +    MOCS_ENTRY(14,
>>> +           IG_PAT(1) | L4_1_WT,
>>> +           L3_LKUP(1) | L3_3_WB),
>>> +    /* CCS - Non-Displayable */
>>> +    MOCS_ENTRY(15,
>>> +           IG_PAT(1),
>>> +           L3_GLBGO(1) | L3_1_UC),
>>> +};
>>> +
>>>  enum {
>>>      HAS_GLOBAL_MOCS = BIT(0),
>>>      HAS_ENGINE_MOCS = BIT(1),
>>> @@ -445,7 +507,13 @@ static unsigned int get_mocs_settings(const
>>> struct drm_i915_private *i915,
>>>      memset(table, 0, sizeof(struct drm_i915_mocs_table));
>>>
>>>      table->unused_entries_index = I915_MOCS_PTE;
>>> -    if (IS_PONTEVECCHIO(i915)) {
>>> +    if (IS_METEORLAKE(i915)) {
>>> +        table->size = ARRAY_SIZE(mtl_mocs_table);
>>> +        table->table = mtl_mocs_table;
>>> +        table->n_entries = MTL_NUM_MOCS_ENTRIES;
>>> +        table->uc_index = 9;
>>> +        table->unused_entries_index = 1;
>>> +    } else if (IS_PONTEVECCHIO(i915)) {
>>>          table->size = ARRAY_SIZE(pvc_mocs_table);
>>>          table->table = pvc_mocs_table;
>>>          table->n_entries = PVC_NUM_MOCS_ENTRIES;
>>> @@ -646,9 +714,9 @@ void intel_mocs_init_engine(struct
>>> intel_engine_cs *engine)
>>>          init_l3cc_table(engine->gt, &table);
>>>  }
>>>
>>> -static u32 global_mocs_offset(void)
>>> +static u32 global_mocs_offset(struct intel_gt *gt)
>>>  {
>>> -    return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
>>> +    return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0)) +
>>> gt->uncore->gsi_offset;
>>>  }
>>>
>>>  void intel_set_mocs_index(struct intel_gt *gt)
>>> @@ -671,7 +739,7 @@ void intel_mocs_init(struct intel_gt *gt)
>>>       */
>>>      flags = get_mocs_settings(gt->i915, &table);
>>>      if (flags & HAS_GLOBAL_MOCS)
>>> -        __init_mocs_table(gt->uncore, &table, global_mocs_offset());
>>> +        __init_mocs_table(gt->uncore, &table, global_mocs_offset(gt));
>>>
>>>      /*
>>>       * Initialize the L3CC table as part of mocs initalization to make
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c
>>> b/drivers/gpu/drm/i915/gt/selftest_mocs.c
>>> index f27cc28608d4..66b3c6fcf1f1 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
>>> @@ -137,7 +137,7 @@ static int read_mocs_table(struct i915_request *rq,
>>>          return 0;
>>>
>>>      if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
>>> -        addr = global_mocs_offset();
>>> +        addr = global_mocs_offset(rq->engine->gt);
>>>      else
>>>          addr = mocs_offset(rq->engine);
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_pci.c
>>> b/drivers/gpu/drm/i915/i915_pci.c
>>> index 414b4bfd514b..8e872cb89169 100644
>>> --- a/drivers/gpu/drm/i915/i915_pci.c
>>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>>> @@ -1147,6 +1147,7 @@ static const struct intel_device_info mtl_info = {
>>>      .has_flat_ccs = 0,
>>>      .has_gmd_id = 1,
>>>      .has_guc_deprivilege = 1,
>>> +    .has_llc = 0,
>>>      .has_mslice_steering = 0,
>>>      .has_snoop = 1,
>>>      .__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
