Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DF04D960E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 09:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B6B789B0C;
	Tue, 15 Mar 2022 08:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5053289B0C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 08:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647332418; x=1678868418;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+EJWyVUWjnM8VXh0lCYf50fvAfNC0hY5W+Pgf0stDDk=;
 b=PlumhPw8HL1c23iS3wMLj8smccwNQLmY8CCCUM5R/p1jCqey4uAP8WN1
 HNCNxwOgUBQXKzsNNZ1BQwEBNEBYTk5BxNtmXnDMGgqGGnLgzjC4fW8cK
 t3mR2ow0f+vSylXuvZILAOCnDkgl50ZhbCBU7gdVOCXB/oUlMggAvxwRc
 xN+iG9/ocQEmorfHFQkugidEM+P1jv51CEC39vGTg8WUkdMmr1aWn7i1p
 kkIKM9QSdTpCXWAgE7MjbUFZ4+cqlF4g2uXv88nBx8uJblbw2tWETbEff
 9a36eVWeuZFWJjCgv9vinholqIrRbOfuStPMrMnXdqfS+nPnkKWWOKfmI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="316965197"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="316965197"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:20:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="540335900"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 15 Mar 2022 01:20:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 01:20:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 01:20:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 01:20:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M6MyDl+Y5aroGWC98SFYBhnnpY8wygYGr/QzL/Ys4xXjITeuieH0w2u1I3Vf8BTfUAmHE3iTlBXYr55Fh6X6ZkzCKi6SS2fEgYWZOLuJSy+/mJqDH2U03Mp2543+dARG9uv6oTV333AgTt9J5YwXpXYCxVb0vlzSuhdM8rL2fucBAXpaUNpO8vUO+8AdP7yw9gyS2EpGd8weDrC30POEU+0HSx7TgpdqbZze+6w5/aGXO13lfbrOxBZR8pe4zKkOBlSmCum5lfYKnE04sff3sE5W/7+B0ER9xvfB0rw1tzbCwURb3k4nSU+xWYuR0FPnFsZgwZqndmksqmnzaqVt8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x81VPrNQz+C1WGZfl8hZEMTsAJSexKsilHpn+aZtlG8=;
 b=DV62l7tDeFVwzEfPpkA/tPNiszDiHmb+NgrB6fBSjnz//+jzuG5tgWf+5gXwEVkQ9QedoXixr5nR8EaQTUPSWcNhfhf8JLH35SChfKZhAQAKfKN86zSDfc9SO0FYwwt6Hrcga4dABF+T9Liv8KKRFuy4S2aM213ckGkXzCcl1jFAnYqvWhld9rKd3XakzZSNtvSwicYPXVzR6T/FYTXpbOYxbwpbN8AFKtZDPGlX+SgLkELa4+Ff1onXdeDQfkSRPxY9XLK1AYo1VmI09DfEq4Msy8+Y6ZP7jWUbbIfIRfgdluFDaQYWpZTmUjlVqYJMuYn2Joy3UqzEXbZu2TkI2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BY5PR11MB4371.namprd11.prod.outlook.com (2603:10b6:a03:1bf::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Tue, 15 Mar
 2022 08:20:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.5061.028; Tue, 15 Mar 2022
 08:20:08 +0000
Message-ID: <5410f96f-6e2f-8c93-ef05-2a518d9818dd@intel.com>
Date: Tue, 15 Mar 2022 13:49:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>
References: <20211026053821.162028-1-ankit.k.nautiyal@intel.com>
 <20220310152520.GB2275631@ideak-desk.fi.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220310152520.GB2275631@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc141d98-c477-44ed-43ab-08da065c9dc5
X-MS-TrafficTypeDiagnostic: BY5PR11MB4371:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB4371D70F2EC6416E52613FEACE109@BY5PR11MB4371.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VZtqeSoQW/xMGsZfMEowdui76lv15Lsg4URdLTZWDkqHLY4V6avo3t8vAcDnFCZbGDq7B1HwbhfRRx+fY0/0bGLy4k1eMqVCcqqgEosTE45ov3PVFjDbNEAkbJwYEOoEsxE8wQqv/Kh6m7Cc/3bqAwBsb1ex3ZApIEcCc+8B84wRbf96dLKQ1c8YTgmC2QzOWswIilTYBCdqjbZ9XT2qyymjmzlw79Deqk7nNXsow+6x0brhE/Ez5juPJVtRPB1wNn/q5Y1+NpcRvG4izYvjGidW2UKNKeBSqQT7VQuXO6BDbuobPVo0Do0lFFDheuW5LH9G3+XF3xx0JBSs7Mtd1LcJkdFzQk7d76tsV3IptJyEFCnhLJHQfIpT3TsofABawXawDbYHYeGxr/ewcpHJz9CuNRKQfHZzWDb5AuTsOYlw+vSB1lYP/eNCeLruvq0OE6XlQrIL0lOy1pCp00gaGyPzEaRFugF2DvFWMdlqnJyaTDLvp0Qre6XmELtDDSBMHIrrg94t7wJjyJ4T457pp8x/AkZewf6zzLZ75i8jG6rlegOxBp+h8QK+rNb40e0YzcCsSmvHmdg4SMpatIg93mft/RAYuuV5Q5Jq9+2nIK+K/NA9a6Ron7j8IoqYrvE9ctYVuyAvXdPwDIOO2S/cW2JQQC9BYkz+9jJUfn9v74jJwmNDd7u7ecnAa+lKPmXaXeCGkrqui0ll3ZEeNX4yipbSkiF/31NZnMxtL/TnB+c30o+76132fxuN+JOXRaiA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55236004)(53546011)(83380400001)(6506007)(26005)(186003)(6512007)(82960400001)(8936002)(5660300002)(2906002)(36756003)(31686004)(66946007)(86362001)(66556008)(6862004)(66476007)(4326008)(8676002)(6486002)(966005)(508600001)(6666004)(38100700002)(2616005)(6636002)(37006003)(31696002)(316002)(16453003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTlLZEhpVFg4V1NROFhjTkxkOGlQNWZkZFhPdElvRStsTkJQNUoyTy8vZi9x?=
 =?utf-8?B?NEFkWUZJRnJueDdMWXdoUmxPZGJWVDBGYUxzZEtCSkFGNmkvdHM3Skh5QThi?=
 =?utf-8?B?UlpTR0FPTXQvajVHalE5cDJmQmVxb2JHNDJvL2dLL1hycFYzL3E0K1dCeTV4?=
 =?utf-8?B?UVBOS3phazZzZzAreEVpOUVLbjRUZmpNZU9SblorNGtQdTc2cko0ZDNPUFRt?=
 =?utf-8?B?ZXB4ZlNRcWZ1WFVrTFBvanFWbjIxenc1dWNhdmlIQkpSTnY5KzdRM1doUXJV?=
 =?utf-8?B?ZmJOckNXNkRzeGxrd3pNSFFKOEN0STJhaFk5Vk9VTTNwTUFsR05XNmd0RkRv?=
 =?utf-8?B?VTlVL3JqdC9QelBwTjd5SUJLOS9CWktLamlSU0VLN0w2c0FVK3NQWTZuUmVk?=
 =?utf-8?B?ZUFVQjZhUmFmamdaMi9ld0lYc0xyWXV4b2NLcDdTUFpsKzkzVTN5b3VBYzZP?=
 =?utf-8?B?ZDJqMXkwYll5cXM1Yy9UMmdnTHhlRjBhZ2xVL0lNamZIbEVDVzRWamhOWjJw?=
 =?utf-8?B?anYyRWkxOU8zb2xIeFUyWDJaZm5kbmp2aWR6dXV1Z252eUV1SnFtdjNVVmhM?=
 =?utf-8?B?Y2VCNGdLZEpGckpPZDFsVjQrdmZka2swbW50cFg4Sm8yQndUd0FIOS96UnRN?=
 =?utf-8?B?azE4R2IzS3lBTW5Xb3R6bGZIQ29pcHN5bFkxaFJ2cWJaU3Bqc1NCK0hqUExU?=
 =?utf-8?B?RUlTd3dEQmU2aWhNcVhvSGVaVFhCcUlDZ0x1dEJFUUdpR1dlVXZKNGFINVpK?=
 =?utf-8?B?UFpNais1TWM2VXJ4Z3ZpVll4bldWUUlQZ0dHdklTTEpWN0tZSFFoRTFMTkFv?=
 =?utf-8?B?RURkU29JUXVVZ1JHQ1R0Z1lKQUpkR1h3TzdsRU56eTMwYnQya0FJbFVCK3hN?=
 =?utf-8?B?cVpaM2p0US9Gc0xBU3VwQzRvd2x4d3JubVpISzhtMldvbWh0NjBWR2xXNlJn?=
 =?utf-8?B?bStyblptU21kclQ5ZHBXc1J0S1RSZ2lwa0MwclJIZkxtQ1NtblU4MG02Nmwz?=
 =?utf-8?B?dk41SWtuNm5LN3FvdndQRXRxVjE5TjNJSTV5alRLYitaWE9NWndjbnUrUGxN?=
 =?utf-8?B?VCtZUXhoSkxBNThYRjZQeld3UVJKZDVvU2pqVmIyUUhaMDZEV2QxblB4Q3Zv?=
 =?utf-8?B?b21PMkdKRWN6cGRQbXJHdDhoNUlhTit2cXJnTUxKWlhQdUtnbnZDc3BKTkVC?=
 =?utf-8?B?OFF3NUJsWFl5VUZBbFRwQjM5a1VzalE4WmdTZW9IV0RKSmxENkZqVEJtOCtr?=
 =?utf-8?B?SCtMYnFFZTY3NVEzUXprZHRhT0QzdGpYbVRTTE1lM1BKb1p6dnRPS0xUOWxs?=
 =?utf-8?B?Y1A4eU5JS3VJZ25waGxBN3QxaE0wRTd2SDFCN0FYSVZIYzB0WXBpaU1Wa0hJ?=
 =?utf-8?B?QWMycEVySGNaNzlMU2FxOFhKTVJqbG1wem43OEx3RCtPMTVpeWY4ZkdIVDEw?=
 =?utf-8?B?TW1Ma2RjYytsbWlBNVNmTXZkQzZDKzFNRUFMS0ZtOEIrZllqMVdkcm1pWTBp?=
 =?utf-8?B?OFc5ckFub1l6RWRuTkxtRCt6RTJuU3FLdWF3M2x2Y2ZSVUdHOUxwY2JHdlZK?=
 =?utf-8?B?UFJxWG1zMHhQTEhlcVhNNURZSHhNQnhGTmxNSXFuU09QeHNLVGp1d25YcEJX?=
 =?utf-8?B?ZTBDemdveFlrMUY3OWFUZVVqSE50Qi9qVTV3Q3Y5V2xLUHRUZXZ6dVAyemZO?=
 =?utf-8?B?eHQvdnBTaFphanJCcHhZQzFQVUZLVWRLWTdDUXBmNkhOQXdmZUZUNjlUSEpS?=
 =?utf-8?B?cStMREt6cEowV3BLZTBHWUdUUVBTbnFyY0pseGZEMzgrblRrMDJkdk1tYzdz?=
 =?utf-8?B?V2dYb0h3MFlBRzdCUzlLNVJKT1VOeDZQcTVHSytTemttYjFPbG9MdzFRUlJk?=
 =?utf-8?B?UUE1NUZLeVNGdE4xYVdLb0UzYS83T1JCbmYrRGxmNWxqT0pSRlh0VW11U3da?=
 =?utf-8?B?M3p5VTlxdVUyUXIyZGU1bER2VTBxUHNqWjNRUUdPOFVjam1YTkJLSnovTFpm?=
 =?utf-8?B?SVhmc3ExZFpnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc141d98-c477-44ed-43ab-08da065c9dc5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2022 08:20:08.3337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HUpnzYySeool1udkBJIyIOVS7WAmSo6CKNg8SLEL94a89laidJ2XA0Bz4d1NGajl4zDqBNYPcpifiBEV84aEuX5P6t5VmvP/eB5gqpibnGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4371
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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


On 3/10/2022 8:55 PM, Imre Deak wrote:
> On Tue, Oct 26, 2021 at 11:08:21AM +0530, Ankit Nautiyal wrote:
>> The low voltage sku check can be ignored as OEMs need to consider that
>> when designing the board and then put any limits in VBT.
>>
>> Same is now changed in Bspec pages.
>>
>> v2: Added debug print for combo PHY procmon reference values
>> to get voltage configuration of combo PHY ports. (Imre)
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_combo_phy.c    |  4 +++
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 32 ++-----------------
>>   2 files changed, 7 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> index 634e8d449457..01ff86b3ff91 100644
>> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> @@ -112,6 +112,10 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
>>   
>>   	procmon = icl_get_procmon_ref_values(dev_priv, phy);
>>   
>> +	drm_dbg(&dev_priv->drm,
>> +		"Combo PHY %c PROCMON values : 0x%x, 0x%x, 0x%x\n",
>> +		phy_name(phy), procmon->dw1, procmon->dw9, procmon->dw10);
> The expected encodings are not descriptive, could we instead add a .name
> (initing them to "0.85V dot0 (low-voltage)", "0.95V dot0", etc.) to struct
> icl_procmon and print that here?
>
> Otherwise, the spec matches now the code:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks Imre.

I have split the patches into two, and sent as a series : 
https://patchwork.freedesktop.org/series/96293/#rev3

Have added new member name and printed the voltage values.

Regards,

Ankit


>
>> +
>>   	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
>>   			    (0xff << 16) | 0xff, procmon->dw1);
>>   	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f5dc2126d140..693d7e097295 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -385,23 +385,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>>   	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>   }
>>   
>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
>> -{
>> -	u32 voltage;
>> -
>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
>> -
>> -	return voltage == VOLTAGE_INFO_0_85V;
>> -}
>> -
>>   static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>   	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>   
>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -409,23 +399,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   
>>   static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>> -
>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>> -		return 540000;
>> -
>> -	return 810000;
>> -}
>> -
>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>> -{
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>> -
>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>> +	if (intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -468,7 +442,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>   			max_rate = dg2_max_source_rate(intel_dp);
>>   		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>   			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>> -			max_rate = dg1_max_source_rate(intel_dp);
>> +			max_rate = 810000;
>>   		else if (IS_JSL_EHL(dev_priv))
>>   			max_rate = ehl_max_source_rate(intel_dp);
>>   		else
>> -- 
>> 2.25.1
>>
