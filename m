Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69911819010
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 19:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5651A10E1B0;
	Tue, 19 Dec 2023 18:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9402D10E1B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 18:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703012256; x=1734548256;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J8CFc8rNoacv7DQWmv2bpDHKj608keRom3r40Zu7qNo=;
 b=UpZ2PxDX64vExYcBrxCWLDw4qxu5WnvrGLuwpsM+z8Rj0GnzlXMf5f8v
 b7VlsRuTfonj+i6hg5v1eQtX23DE3jLj1R/TzhA2Z5oejd3mu+08nHcRl
 UDn+zumOfTWaZBPOVGvVKfY9RrCkV4kw5LVN5xxDcPrC+vOAI5b3TwITl
 plHCU0mK22QkluUspfA0YUDDmv61WVe8ReV4yX88TSGZ9uOmAuo853Y5x
 78mmq8dmj6UMiAyl079rPyZwefppteTNcauQTm+CXnll7MkW9A50MlQuv
 1sNUjRJ0Xj5qkB/Fdi0i+RJ+qmCYEORGlHc9ohun/BXO6+48Dh/Xzn5bS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="398493498"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="398493498"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 10:57:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="17969855"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2023 10:57:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 10:57:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 10:57:35 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Dec 2023 10:57:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCYvnU5H7tgOubR9tqBFyz+AFGuLwQeTdcXoj5vJpOd40OoYJKDBsHIPBYtS77YNMxam+R5Rj/wIzjZAiw9KwFyGA58XjSsc0+iJ93SyVY+y0TozorA1P+AgOgFLwbMPA8lPRwwtdlADdw8x6KJV5m/2CYsjXO+iBefhlzNzeeO945VU+5oeWZk1fN6We57B4cgmM5+JP0953ndJyrbxM6oI5PXfoEHjMze4kiUNEpHps0LkSspOkHxyYphEGVBRud1ClpNVk1ZF3+S0LG9E90RxMHZgRa2wUsQOnFyFBocLsoG2SFyfILIvQhGdcLZ3riCzMkunUuwbIHmM1QiLdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FrosGZydXI9htb0Qh0y0nNgZtblT7Ttsjd7TKiOhHCE=;
 b=DEUp7EBd3Ocf9hk8NVDZLFHDlrza8IZVSVNYv7hnksmzmeaJARfasF1Byo9oyWBexN1krgEFtrcFYZPlg5VhsBkn9y+tt3IgXdKD4aMxG/pzO0W62fSwBVWmYAcKHEbnzWKQ4SIOKbkvDAiID2HxS5vRlfBm93RgJYXl3BgCp2vjp7e6C0nSJM3eEgV7db7qCpDs/Skr6ZLIiDqeU6TJuTSqZ4OwoJJNh05AcLqXS37Nv5VAT+LNPoZopfqe7N0wSVVWtrKsw0i6EItl41e1jsL3Pfds2S05Tn4vMZdtxemvpwz1/d7H3DTfNQuYovpExJbWTec0aNd/+QP+kVCnWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8597.namprd11.prod.outlook.com (2603:10b6:510:304::22)
 by DM4PR11MB5389.namprd11.prod.outlook.com (2603:10b6:5:394::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 18:57:32 +0000
Received: from PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9]) by PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9%7]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 18:57:32 +0000
Message-ID: <b15690c6-f682-4bbb-9978-953c3716c546@intel.com>
Date: Wed, 20 Dec 2023 00:27:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/mtl: Add fake PCH for Meteor Lake
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20231219092800.1406608-1-haridhar.kalvala@intel.com>
 <20231219170920.GG1327160@mdroper-desk1.amr.corp.intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20231219170920.GG1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0154.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::7) To PH7PR11MB8597.namprd11.prod.outlook.com
 (2603:10b6:510:304::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8597:EE_|DM4PR11MB5389:EE_
X-MS-Office365-Filtering-Correlation-Id: e83f49b0-b567-4260-ecd5-08dc00c45ad9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zpK8APk2+ILz/Wsa9WxuW7Waotvmr/gbENVnL7j3CF8Cv1kibc4sEJHyvcMGTLIcrCjIJbFyuk+8I34kWBtdJ4kabUUvSzEDaJUSVPXm+iSKZf9Elh9BdEjdEEVIM3Rx21bRaYhKHXq1H1jN6A+Rg1fMoX7E6eO4EVH2xvpAzZBZI9PKt/nNts9OL+VELg7ssBA2wlGct+d2xfAPSPiqYf1RYeOmmLVRoYZ00QTAtKEzVn/jUAFMsHlCBULYeJjzJ3dkzyXlxgXtl80Anhn8oqfrDtEU1BbInLERfWsegHPL+nvudvF832jtXDZshFXl9+gp+i7A2/kiVMYNgaPlQ7kaRVEsNW2qvItbxwpct5a2brn5LOTis/z1NjE06koSbVmgyzXsjNXospFL2IJt1WqLIiZps1S1N+zcyqQ1vdkkOxkzNJK0l79rz6OecH3rQ/r3Y4kGJv9oq3n2XjFf3UAIB0tGwb6dbAfwMzCr6nE9SXhGyL06z6qCBuT/nh67F9DKwlGeXKicmdSBozPEqm8H0afeuXC3iv38Ia6SuDT6Z4A1X9yssH/e7WUYp/AqVWvKbhPHeC0XX0PE0hfs2q7MWMciRgAHwMcLDjo9nM+/oiMm4wH2YAu1HzLDYsyh7I4sptfPexsjql1LBnIKQtBH8BvfFsaT+UQjJ1L7mfpagQTTVHWEqt44wPHMALc2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8597.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(31686004)(6666004)(38100700002)(30864003)(5660300002)(86362001)(2616005)(31696002)(2906002)(83380400001)(53546011)(82960400001)(6512007)(6506007)(26005)(6486002)(4326008)(41300700001)(36756003)(66946007)(66556008)(66476007)(8936002)(37006003)(316002)(8676002)(478600001)(6862004)(6636002)(226253002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXFyb2FpZW1OVWNUNmxnU0hnREx3NWR1bzA3c0UwTUt4TmNjREd6ejIyTVl4?=
 =?utf-8?B?amxTUC90RnU5S3VRVEZKR0gxa1VXbFJiSlpreXlGVm5TRVZYRlBVSkNvSDZx?=
 =?utf-8?B?akhGcDNJYUhib0E3emtUYjB3c1I4THA2RnlGTEpCK3hRV2JjN2JpT2M4aUNI?=
 =?utf-8?B?Y2pqTTV4cXI5YlAwSGNDd2JVbWVVanZ2R25TaGJ4THpmMmFFK2V2Z0xodHlD?=
 =?utf-8?B?YkYwYzlOVi9pNHFpN0tjcG43ZklMS25ZTk1iZE9Fd0s3eko1UnJkVlJjeTFk?=
 =?utf-8?B?ZnVtZjJWSmNtQ3EyLzkrQjNWNTVxb21BTHFjZG5nOGNGdC9SVmpBT3ZqOTQ4?=
 =?utf-8?B?ZUFGZkZWaWkyczVrU1dLeDBvb2VHTlh5dlNtbHowT3NWVHZ6bjJPaGs2WTBZ?=
 =?utf-8?B?RzFFVkl4SkVOQVErTVp0VWZZNGF3aG5aS3ZRWEQ5TlljYitMYUJzNlc4Z2hU?=
 =?utf-8?B?WTNIMGdManBMTmt1Lys1UnFxaEZMRjlYdzdSNmdRR1pKc2Zxb24wMnRkL081?=
 =?utf-8?B?WmhyeWJTTCthcTdxWWRkR3g1V21kR2YzTUlqRmN6THpLcFhNVkJJQll5SW5F?=
 =?utf-8?B?d0lhdTlFZm5qWTlHQ2Eza01TeExyTFVHMGh4VllFZVhCY0k2MXREL3B3QXMr?=
 =?utf-8?B?MzFuZ3JXMnltN245UlkxSnZMWEdWam5qTUlyTkYrQURZRlBEZDBRNEZNSmhG?=
 =?utf-8?B?RjN4QlBDWjlDOVFBMTBpWitVZG5Pc3pEY2RUVGcxdnRnR05ubkJVM3JGYjdW?=
 =?utf-8?B?Y1FabURtd05ZMGpqSkpiNFJMZ0dweFhlVXFKWERSZlhZN2YwYWttOHhZOU02?=
 =?utf-8?B?eTlPdmlVZnpZN2tiKzZ4YnlpcTlqL0t1WTJ5ejJ5RTdqMG1KdWtSRGpFMzQr?=
 =?utf-8?B?akl4TzdKVEVHNmFNTUh3T0Rad0dNdHZCRmpJajZaZ29HL21MdXo0TFJHdm84?=
 =?utf-8?B?MmdyOHBVbjZKWGo3QmorTkFPWkpMZkpWQlc3TEVoUEJia2lpcGUyWEZQbTRY?=
 =?utf-8?B?M3hnaThNQUxiMjhzVm5OWisvMUJmUGlzWHNDSkJxT2ZNYWJ5QkhHZy9mLzlh?=
 =?utf-8?B?U2ZzZXFGSXAxVTJWeE9JT3ZLTUlGbjI2aWlPMHVoSVpmL014L3ZQL2NUNUlH?=
 =?utf-8?B?VVNoTUdqMzkxVG9FdDNCQ0dDanFqTVAyOXFvU05tOEJJazBpZ3JndFFaTmVT?=
 =?utf-8?B?ZmRlZm96ZEl0Z09mSkNKRnk0QnM3dWtHTEF4ZXhIY3BDTks1TytrUjNYRHA1?=
 =?utf-8?B?bURiSVNGU0R5YU5lZWFRSFF0QmlkN3c2Z0VqcHlDeEk0d1ZxRU0wbXRNakls?=
 =?utf-8?B?clZGTUx1VDZtN1NGaG1ab3JXcERWL25EOXl6YzZab0dlaHFLRE0wbEpMT3BJ?=
 =?utf-8?B?Yi83Q0FhK2FEaFYyUlF6T1NsMTFHYW5OUXd3SEV0RmNvbWZRTHUxWDJKQlhJ?=
 =?utf-8?B?ckNLQWQwRjQxTDBpNHlqU1Qwb01Yc0dBRmh4QjRwSUhzU1Z0a0xqYTlJTVlC?=
 =?utf-8?B?NFNvWEhSSE1xNktkV1NlODlYcDRpRWdYTnRaK21GYk94SVhkWjliZVFCeFVM?=
 =?utf-8?B?dXMxTjY2bUVyYVpDY01nbE9STHhBOE9Yai9KTmlNYWd4M21ZMDg1QjZhcENL?=
 =?utf-8?B?S1VzTStRNHhYdmxxbHhTOEhmWXkrK2NkQ0Z1blE0M3FnbkRJZ3FuSmd0L2VN?=
 =?utf-8?B?UkNmaU9LaFYwTUM1aHIvQWpxQ09aZEZ5ZXdCYURnSGYvQ0JFVUIwLzVQcHF1?=
 =?utf-8?B?U0lSTXgwTTdSZzVuYnRSdjQxTUJIeWxPZEJFS3Y3anFWejVVZ0xObzRBOFpa?=
 =?utf-8?B?WWppbmpjK05UT1J0K2pXbndMa3I3MEdiTXBvN2dVeFBZbVdkZkRleUlXMHEv?=
 =?utf-8?B?QWdsTVNpemhIcFpFWEd3MkZGWmo5WEJoaUI5bHNQMi9kZStSZU1SOEhaREJr?=
 =?utf-8?B?d2JNbTFOeFZQMEZvZzNMZ0NTZHZGT1Y5cXh0MHhIU2ZuOUppL3ZLTi9EaFJ0?=
 =?utf-8?B?LzB2UUtsV28zNTBzZXRPVG1mNURlaGlKUkRxRmFmRFIwb1Y0WjJXMGZ2KytE?=
 =?utf-8?B?cllSdkdVKzFYWmV0TDFNRXNRMFNENmVHU1V0cDA2YWIxN2xOQjQwd2Y2UE94?=
 =?utf-8?B?KzVmb2FveURRUWlQTE8wd2tUN1Q2bG45RytJZGx2L09rdkhPY1l6Wmk0MjI3?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e83f49b0-b567-4260-ecd5-08dc00c45ad9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8597.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 18:57:32.1364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYj6Z5eYvD0/4bHr5QBQs7gR+XMPl2yz1QkoMeIV6iiAzDGTw+4UimVDcHzRYN7Ny99JoKONZBqlCsddapyTD/K4pikSXPvR+Uhd1V6bQqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5389
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


On 12/19/2023 10:39 PM, Matt Roper wrote:
> On Tue, Dec 19, 2023 at 02:58:00PM +0530, Haridhar Kalvala wrote:
>> Correct the implementation trying to detect MTL PCH with
>> the MTL fake PCH id.
>>
>> On MTL, both the North Display (NDE) and South Display (SDE) functionality
>> reside on the same die (the SoC die in this case), unlike many past
>> platforms where the SDE was on a separate PCH die. The code is (badly)
>> structured today in a way that assumes the SDE is always on the PCH for
>> modern platforms, so on platforms where we don't actually need to identify
>> the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
>> MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
>> us to avoid restructuring a bunch of the code.we've been assigning a
>> "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
>> of the code.
>>
>> Removed unused macros of LNL amd MTL as well.
> In the future, make sure you generate your patches with "-v<#>" and add
> a changelog to the commit message so it's clear what's changed since the
> previous revision.

sure. With commit title changed, this will take new series so started as 
initial patches

taking previous comments into account. I will add version to next patchset.

>> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_bios.c        |  3 +--
>>   drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
>>   drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_gmbus.c       |  5 +----
>>   drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  6 ++----
>>   drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
>>   drivers/gpu/drm/i915/soc/intel_pch.c             | 16 ++++++++--------
>>   drivers/gpu/drm/i915/soc/intel_pch.h             |  6 +-----
>>   9 files changed, 17 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
>> index 612d4cd9dacb..696ae59874a9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>> @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
>>   
>>   	if (controller == 1 &&
>>   	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>>   		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>>   
>>   	return true;
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index aa169b0055e9..0e61e424802e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2204,8 +2204,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>>   	if (IS_DGFX(i915))
>>   		return vbt_pin;
>>   
>> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) ||
>> -	    IS_ALDERLAKE_P(i915)) {
>> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
>>   		ddc_pin_map = adlp_ddc_pin_map;
>>   		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>>   	} else if (IS_ALDERLAKE_S(i915)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index c985ebb6831a..2e6e55d3e885 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -3469,7 +3469,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>>   
>>   	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>>   		freq = dg1_rawclk(dev_priv);
>> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
> Since PCH_MTL > PCH_DG1, this condition can never be reached.  You need
> to re-order the conditions here so that they go from highest to lowest:
>
>          if ( >= MTL )
>          else if ( >= DG1 )
>          else if ( >= CNP )
>          ...
>
> Once you do this, it looks like it will also solve a pre-existing LNL
> bug that was causing LNL to (incorrectly) take the DG1 path instead of
> the MTL path.  Bspec 68969 confirms that LNL should be inheriting MTL's
> behavior, not DG1's.
Thank you. Will reorder.
>>   		/*
>>   		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>>   		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index a7d8f3fc98de..e318e24d1efd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>>   	 * their flags both in the PICA and SDE IIR.
>>   	 */
>>   	if (*pch_iir & SDE_PICAINTERRUPT) {
>> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
>> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) <= PCH_ADP);
> I think you can keep this one "< PCH_MTL."  It's a bug if we ever see a
> PICA interrupt on DG1/DG2 since neither of those platforms had a PICA
> either.
>
>
> Matt

Sure.

Thanks & regards,

Haridhar Kalvala

>>   
>>   		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
>>   		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index 40d7b6f3f489..854566ba5414 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -155,7 +155,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>   	const struct gmbus_pin *pins;
>>   	size_t size;
>>   
>> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
>> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL) {
>>   		pins = gmbus_pins_mtp;
>>   		size = ARRAY_SIZE(gmbus_pins_mtp);
>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>> @@ -164,9 +164,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>>   		pins = gmbus_pins_dg1;
>>   		size = ARRAY_SIZE(gmbus_pins_dg1);
>> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
>> -		pins = gmbus_pins_mtp;
>> -		size = ARRAY_SIZE(gmbus_pins_mtp);
>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>>   		pins = gmbus_pins_icp;
>>   		size = ARRAY_SIZE(gmbus_pins_icp);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> index 04f62f27ad74..76076509f771 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> @@ -163,12 +163,10 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>>   	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>>   		return;
>>   
>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
>> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>>   		hpd->pch_hpd = hpd_mtp;
>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>>   		hpd->pch_hpd = hpd_sde_dg1;
>> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>> -		hpd->pch_hpd = hpd_mtp;
>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>>   		hpd->pch_hpd = hpd_icp;
>>   	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>> @@ -1139,7 +1137,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>>   
>>   	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
>>   		xe2lpd_sde_hpd_irq_setup(i915);
>> -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
>> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
>>   		mtp_hpd_irq_setup(i915);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>> index a8fa3a20990e..2d65a538f83e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>>   
>>   	if (intel_dp->pps.pps_idx == 1 &&
>>   	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>>   		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>>   
>>   	return true;
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
>> index 240beafb38ed..3cad6dac06b0 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>> @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>>   		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>>   			    !IS_ALDERLAKE_P(dev_priv));
>>   		return PCH_ADP;
>> -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
>> -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
>> -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
>> -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
>> -		return PCH_MTP;
>>   	default:
>>   		return PCH_NONE;
>>   	}
>> @@ -173,9 +168,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
>>   	 * make an educated guess as to which PCH is really there.
>>   	 */
>>   
>> -	if (IS_METEORLAKE(dev_priv))
>> -		id = INTEL_PCH_MTP_DEVICE_ID_TYPE;
>> -	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>> +	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>>   		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
>>   	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>   		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
>> @@ -225,6 +218,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>   	if (DISPLAY_VER(dev_priv) >= 20) {
>>   		dev_priv->pch_type = PCH_LNL;
>>   		return;
>> +	} else if (IS_METEORLAKE(dev_priv)) {
>> +		/*
>> +		 * Both north display and south display are on the SoC die.
>> +		 * The real PCH is uninvolved in display.
>> +		 */
>> +		dev_priv->pch_type = PCH_MTL;
>> +		return;
>>   	} else if (IS_DG2(dev_priv)) {
>>   		dev_priv->pch_type = PCH_DG2;
>>   		return;
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
>> index 1b03ea60a7a8..89e89ede265d 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
>> @@ -25,11 +25,11 @@ enum intel_pch {
>>   	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>>   	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>>   	PCH_ADP,	/* Alder Lake PCH */
>> -	PCH_MTP,	/* Meteor Lake PCH */
>>   
>>   	/* Fake PCHs, functionality handled on the same PCI dev */
>>   	PCH_DG1 = 1024,
>>   	PCH_DG2,
>> +	PCH_MTL,
>>   	PCH_LNL,
>>   };
>>   
>> @@ -59,16 +59,12 @@ enum intel_pch {
>>   #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>>   #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
>>   #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
>> -#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
>> -#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
>>   #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>>   #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>>   #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
>>   
>>   #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>>   #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>> -#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>> -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>>   #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>>   #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>>   #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
>> -- 
>> 2.25.1
>>
-- 
Regards,
Haridhar Kalvala

