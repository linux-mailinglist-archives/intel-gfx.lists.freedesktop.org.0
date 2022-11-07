Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D9B61FDAE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 19:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DECA810E380;
	Mon,  7 Nov 2022 18:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1378C10E0D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 18:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667846305; x=1699382305;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TAkpaiq0GPntlhjk9/y2x+cIVDs2lWW+6km4qXNE/hg=;
 b=Ve9LS/N/1gZ6X2QRLzSopOlXq9pNHH1NpL4POANIyvEqp7taOJEd6bXf
 spK0tHk5mvf5Noi/CsKGlQbMcp37sSoXOpxKFaW/t/u9Gh8HU56IBS1UX
 qVkXOx2gf1M7deZUDeKBdaGhDVqK9o3KX/bS2Sx4G7bl3rXkdt/WAxhwe
 WZ/c4VKjwvTWmANYUYdKQ8SCl3D+TGFKYf84RBdg04nBSb0VKWtWUQALk
 qRUxmMrAe7amY8JhkwT5Pk8DDcVpMlBQXSvFT4jiGLmXKUgWgK0lU6SXh
 nHKPvMt59/s2o8Pcg5TLvSdvUHzpZMpgDvjsWeVME/HaMTslMppNqyD2u w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="396787059"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="396787059"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 10:38:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="613970127"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="613970127"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 07 Nov 2022 10:38:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 10:38:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 10:38:20 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 10:38:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HycskWvUTdFUVWdzfvQdN8BiaTLb07se+C75udV8gtObko1WDGEr7CtE3Asn5Dt8orFc9VTJqDxRpr/NAhedGBX92SkpjZivulHO6qD4/xBNe5KDtf26CLwUAW9KuX6pPcKoNdGU1iGhJhfdzoojk6SWHcT6nvWeYvAoyP+jDPyUalysf+K3i4NXoCuguLp5nb3+xD9k0CwbGMUAJKucuzQf8NaOCPkDwvU6G8nT3hS4QEzoWsVCRp+6k9r0TA/d9MjQV3n78tdPwLhtT+90TmC4AeCgy2wpN1uxkSniHZvXlEvaO6/KxlDgiH3qoTLIKFdN3gzPSHQbclijIA6Kfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wj7DU67+q5G2k9rFYMe4g8ZwtWW37Bfm5WmaPQgYfxY=;
 b=nXVGz9wAO73m0LEHLoPpgCNOGd/cc3HOZhkQgjbYgkxFsTht1WzdxfRqRdVmVduyRCQaUv2UR1d8aNE1ZDEw4AREk4eIh7jPxuILucvsYjzdG0V3VKgOxfDd5I6mKKm06+VJu2yG5bbwUdnXBfNLYwuQpQShiHao9fHaCJPe71WW4rjwQiznwJ2XA/PA7ZSWWo45ek5jb90yYcIBeRx7LOkjbDHYnfXQwJmi9x91YxDfUvZibLN7TvbKjK0Ebl3zQEZh0HQteI0vSV1HfEX9ttc+tN3CRh8IIiXX705JVAa/QoyraFFsvqp8M3UXodW2V/HAxc3CB3jAkac+ZTNGhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 18:38:17 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%6]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 18:38:17 +0000
Message-ID: <ac5fde11-c17d-8574-c938-c2278d53cf95@intel.com>
Date: Mon, 7 Nov 2022 10:38:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
 <20220928004145.745803-12-daniele.ceraolospurio@intel.com>
 <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
 <Y2WfpLbX1SeDtk+7@google.com>
 <301a2ee5-db5a-ff79-f94a-ef6014ca3a10@intel.com>
 <d1be3d1b-da7f-f1a1-cfe2-143bcbd99b45@intel.com>
 <Y2W8Fj00yaq8Y9ib@google.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <Y2W8Fj00yaq8Y9ib@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR13CA0018.namprd13.prod.outlook.com
 (2603:10b6:a03:180::31) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|PH0PR11MB5901:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dd1eb60-6819-4a8e-ff95-08dac0ef3c98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BNZC4L5fQ/O4k8KaH/eR2af4o8t7mxDTbCGn7Vl+gPO3SQPUR06AHkXQ3xGT/94S763kKPER9AXVkQsJA+XK64tykxuc8xcS6ZolHX3iQU/YNlxeg8x5t3+1QZXGMhYghePO+dgYwOs8wjKUzjVGi/owYYFHZyMS4Z5+Qvgx70xHphUCdrgP2aiE7gwRv71VUbcWOQl9VwdMW4wzrsewd3Z3LXfK/kJ6bX2rA8Gg02alUDCrZdZy9InNtrk0qjTJr9A+xKSS1szGGiEx1LgQj7k4M/UailL41GwyYh1zcPQk2GR2Xa/Yb7NN0qS0zm7/NBJc7ZaUjRoCrA0DRMCbruBwfHdb6iLYUsrApnTw7GenqFpMOgkGne9hV0X/xsqDGC9+vgN54RYMuinGrjtqY3WwEs2S0rYHmCVO36/Ljr6nmVWvDneZFzT4mBCpUDXuflxE/SQuzzZzSiqBX1Ham8V+BD9yKbeuHN0yBKFGf5TVnUuowOAKDueyJnjuZAvfcfk9jgElmh3pDoC13ZcHIhlQOXuaf5DkHIuMfOc/Glvk1WZT64MnwZ0Mm009xBENfNE2cqrz9PGxl7JOxOMQFRZWbMgMMdrbzTFbq6t8GQWC1HFj7NvfHNavFav4MtX+auFdfW7ry60dbBWjifuRR5niNWN014P6IaXxgQf7XbMlZ2wqD4fHdG7dsqoCSkEQ1/W4r/X0Cky96/uO26/YCuExegbWLdkz5qH97pU1zej+N6GdDz8nGYycOAXmBPEHlSbxQqxNTXB/n4KejYpc6fHyery7hAUVDS0iyRcEhpmvSjStAyfWEFngGTO+74jMLcfHj72gSR1fmhRi99g1jg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199015)(6506007)(6512007)(26005)(6666004)(53546011)(186003)(2616005)(38100700002)(8936002)(2906002)(6916009)(6486002)(966005)(478600001)(316002)(41300700001)(4326008)(8676002)(5660300002)(66946007)(66476007)(66556008)(82960400001)(86362001)(31696002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zmxmcms1ajM0Tng5V3htZFZ0U1FZbHZDVEJ0V3NhMk9GUWE4ZVFsL2xGeFVM?=
 =?utf-8?B?NUZ2Vll3R0NsTTkyelR2bjFhWGdzSnBaYTBCVkVEL29MRlkxUUtsWUwxZmNk?=
 =?utf-8?B?NlQ1UkVvanM4Z0ZDTE02aTF1dWIwekVKSVQ0MmxZM0ZsOHNuM3ZZMmZGSlg4?=
 =?utf-8?B?bmxiYjFzSzlKR2I4SzgvdkMxYXg4QkhGUXFkL0Rjb1NlbDJlRUYwS3VKdlJE?=
 =?utf-8?B?c3VDMHVkOWlBTklqUGFWSjBNb1l0aHZONjVWcVluRmg1cGlZRXkxUGMrM0dF?=
 =?utf-8?B?aFJ6bWhoMmlLV3R6ZFlOUWRXODJDOXB4V2pLSUZYa1p0Q1htNHRmUDF6VlZX?=
 =?utf-8?B?bTV0MGlZZDZMOTJ6RmFkbzdZdkhVdTJYS2RmUWlIN2U5a2JkMkltYkxKQUFs?=
 =?utf-8?B?WUo3eEYzWGhtL0Z6ZXlONGljbG1SOXplMVFVUzlDWi9RdXFKeUljV1VMcGxw?=
 =?utf-8?B?QU9BNFpZbUVUMTFJQkQ4ekh0WjhManVQWjdDdzJPTUhHNkJyUWFMSy9Tdmsw?=
 =?utf-8?B?VTdETnNYNFR0c3FrLzdQdW9WYXZranJOaFE3WkNXMUMzYzNBRTg1QzUrUlJG?=
 =?utf-8?B?dWdDQStKc29rTzV3UGpsMkxmd0tNdXpJNFRQYkxlV3gra2t5S0xNSFJXZ2Nh?=
 =?utf-8?B?SUFwalhIdmY2S2hWR0ppUS9VUHd4eGhER05RUkR4a2pPblQ0cWdhUjBzSFgz?=
 =?utf-8?B?eGY2eHNkd3JmN2tsZ283NCsxUWVHTG1iUEFHL3V5OE9pUm41SVF2QStOTEhl?=
 =?utf-8?B?Y2syaklNM1N6a1VhS0NoZDl6SWtESGh4cmw3c09KK3E1RUoyNWtDSmp0NXBk?=
 =?utf-8?B?UzdOOUNBU21oREJibXBDaGFOS2k3T2F2SGVCYXhBMWF2RjM0MU15WUFTMUhw?=
 =?utf-8?B?SW13M0VtVTVZcldJbTQ5d2F1a0lQbitnaGlaUnNsSWVPUkE3MjI2YkFHNjZL?=
 =?utf-8?B?WldQOFlCaUN0a3dtZXZBZFBjTkNNNDhiRENUdVFpaUE1eUg5SGd5Z2hvcHpi?=
 =?utf-8?B?U3VaM0o1VE5ISGR2NFRsNkQzRDd4enB0Sy9WcVNEcktEREdEeEw2RjJvQ2Jy?=
 =?utf-8?B?Z1hORk5xb3N1WS9OQnFVMlVpa0U5YW5tWFo3dDg5Y3Mxei9PUkRtdXB4RnlK?=
 =?utf-8?B?dHgySGpGMmNrNUpjNkZmSGZaY0xRMzE0UzdKRjNSNnFTTkx3T2Y3ZEFVQTU3?=
 =?utf-8?B?WkZabXllNE9WUnFVRnVIaTZ6SnlqKytGN0ZocldPUnJBUG56dkdDL0NOOHpC?=
 =?utf-8?B?TmcyQkdjSS9YaVNtZ3k0NFpzNWNRMTdnYSthTDZCdUZObTZzL295cFNoVUxk?=
 =?utf-8?B?ZlBOMWZKUDBTYkxZMmFaNWIxem9qbzRrTjdxYXZUTDBwbTFDRTY5UHUrSTlV?=
 =?utf-8?B?TGRkM1JXNDBEM0JUZWdTZkNZeFIxeHQ3NWNmbFVpZE5YUmsxU05jaDdFN3Fy?=
 =?utf-8?B?UWlxaVQ3RXZkb1o2b1BIcmxGUTdsQmFocWwwOVg0dmlaOXppTktrSXJ0emVT?=
 =?utf-8?B?YzB0ZnduTm1CK1JwaC9lcGl6UXc5aWdQQ290M0lValBSTDN4Y0hRcmwvR0lM?=
 =?utf-8?B?eGs2aGVTaUxmaVhwdklUU1ZBWEQ0S0paZjVkU3dvUEJMRzYrUlpkUEtsbENq?=
 =?utf-8?B?UkhkUXhWaVAvY3Y1NElZZnUrSnFSVjE5OGFqRHFOSlltZG1PbzdOSUhoL1RT?=
 =?utf-8?B?NUE1NGFhWktBdWg2QkNrbFVzbFcvQUQ0VmdYV2NkMWVrWmF3eWpCMmhUMlA4?=
 =?utf-8?B?ZkF3aitCaTR1OTZrcllDZnducUNpRFlyM1dnR1UrYU43OExnQ1JiRFRqV2Rx?=
 =?utf-8?B?TUZoTlluZENVUVlqVTZUSVZJRCtOMXlmWUxzbE9XZ0t3dlMwcVpKWFI4Q1Jj?=
 =?utf-8?B?TGwrQTR1UytnRWJGMGRaNzBlSEdHTktJTEpZRmo2M29WQm8xUXpsVjFoTllU?=
 =?utf-8?B?Z0tXVmVyRUxCTU1PRXh6MlBQZTVOYk9oOFhwb0UwUk1kWFlYcDYvMWpMNldH?=
 =?utf-8?B?OHNrdU84bEdZS2NmNUEvOWhEYmJyVGxkbkx6Sjl5VWNzL2t1M05TNWlUM1M0?=
 =?utf-8?B?SVhZbnZoVGpaZUVCaVlPdFJKN25YWkRFYXJ4VGFyU1Z1SUh5b0RYelZSL3ZJ?=
 =?utf-8?B?UlhXQU5mZHNHMDlQZG5lQ0oxOUtKNytWOVBsMS8wTy9oVTl2a0ZvTGFXV1JR?=
 =?utf-8?Q?jsdrzjgoqDTUA2WRefuK0eo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dd1eb60-6819-4a8e-ff95-08dac0ef3c98
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2022 18:38:17.4285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j8zqw1pdDwlsg7bEUK8HL0GA55vt6xv12ZFKltTW8e71xuJNv14umML5dVRZjQFcetXMwtkJZByxI51UqHu0afWME0avZJ1JYdl+8JHQ3iY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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



On 11/4/2022 6:27 PM, Brian Norris wrote:
> Hi,
>
> On Fri, Nov 04, 2022 at 05:49:54PM -0700, Ceraolo Spurio, Daniele wrote:
>> On 11/4/2022 5:38 PM, Ceraolo Spurio, Daniele wrote:
>>> On 11/4/2022 4:26 PM, Brian Norris wrote:
>>>> Did you track this down? Or consider reverting? This is tripping me up
>>> No. I didn't manage to repro locally after Tvrtko reported it (I run the
>>> full selftest suite twice on both ADL-S and DG2 with the debug config
>>> enabled), so I was keeping an eye out as suggested to see if it popped
>>> out again. If you can repro this consistently, can you share your setup
>>> info? What platform you're running on, if you're using the latest
>>> drm-tip, any non-default params you're using, etc. Dmesg would also be
>>> useful to see if there are other errors before this one.
>>>
>> Just to further clarify, this issue is also not showing up in our CI runs
>> (which do have both the DEBUG_OBJECTS kconfigs you pointed out enabled),
>> hence why I'm suspecting that this is only happening on specific setups,
>> potentially due to a different kconfig or modparam being involved.
> Huh, well join the crowd. I'm currently hunting through ways to
> reproduce the CI runs, which are complaining about a different patch of
> mine...
> ...and I can't reproduce :)
>
> Anyway, I'm running on a GLK Chromebook. I have to do some minimal
> tweaking to get the average ChromeOS setup to work (basically, neuter
> the display manager and boot splash, so DRM/drivers can release
> cleanly), but then the IGT tools run as normal. Attaching dmesg and
> .config.
>
> Test sequence:
>
>    igt-gpu-tools/i915_module_load --run-subtest reload  ## this first one is probably unnecessary
>    igt-gpu-tools/gem_exec_gttfill --run-subtest basic
>    igt-gpu-tools/i915_module_load --run-subtest reload
>
> I'm running drm-tip, at:
>
>    a397a9098fb3 drm-tip: 2022y-11m-04d-19h-23m-35s UTC integration manifest
>
> I doubt too much of the ChromeOS setup itself is uniquely interesting,
> other than perhaps that we run a simple 'frecon' console [1] that I had
> to kill first (so, it probably touched/released some buffers).
>
> Brian
>
> [1] https://chromium.googlesource.com/chromiumos/platform/frecon/+/HEAD/README.md

Ok, I think I have an idea of what's happening: if HuC is not enabled, 
we skip the call to fence_fini, so we leak the debug object. Can you 
check if the below diff fixes the issue for you?

Thanks,
Daniele

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c 
b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index fbc8bae14f76..e3bbd174889d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -300,13 +300,12 @@ int intel_huc_init(struct intel_huc *huc)

  void intel_huc_fini(struct intel_huc *huc)
  {
-       if (!intel_uc_fw_is_loadable(&huc->fw))
-               return;
-
         delayed_huc_load_complete(huc);

         i915_sw_fence_fini(&huc->delayed_load.fence);
-       intel_uc_fw_fini(&huc->fw);
+
+       if (intel_uc_fw_is_loadable(&huc->fw))
+               intel_uc_fw_fini(&huc->fw);
  }

