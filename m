Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 307CD6C2650
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 01:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DB310E067;
	Tue, 21 Mar 2023 00:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5C310E067
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 00:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679358461; x=1710894461;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=klmljztgEA5UBvh6nXrI7YuovDfvEH0QTCu4BSGfAeA=;
 b=kAsioy3S+KfUSyZj+sZmViL1x7LCo6QcsfHuG9UWDVMkeoiuop9Gp9HT
 wOuaELBw5pwDfouDsULWXQGq8gR+gBe35oS/cHFxzQuLaldnaH32VBmBH
 w8RMPJAeWm8FdKLpu+X/5qtczihvmq8/sW4aLFBNeIvrOrB9zSc+DgXqJ
 DcDWAz87k9PaXqClB18zARRqHws9JKzKDInaErQ7qD6ojsHOsxP+w7Zvt
 /xeiY2Vgsf/4Khw4F33aBaiUQvZB3wQR2s3uDRbayAHS6E3/TQIuiS6F6
 +p3MnrA6DIVmyodV5r4owsR9N8ARwT3dz4rM14QVi3AKWdzarW4GQGU0E A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318461142"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="318461142"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 17:27:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855473458"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="855473458"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 20 Mar 2023 17:27:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 17:27:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 17:27:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 17:27:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSfGivjh0i4geO7em7ELGr9d2Ipgs3KgxqagMTmektz3BNpYCzwlptTmY+KHLL8ZyuRYilKGk0eKf5Mm7n6iqXmOMfCP7d/+oRGAQd9ZrjbrgwSDZuUdpEWWrHLoOzbl7rUvmbV5cdbHrVX5oCmTYCQO+Oi5rB6ZqkhjMa/HQfpLTQGlJ/FV5vK+Y8H+RNaouakdB0d2VVcl34Ep8pOdOVjeo8rQkQpTnjIgnec3qm2F0YIZy6McKxJRnEtiVLdrgj0bogMQb4hmB52smd7bL+/2Nj7T9FTsKXwZzX4LdSA2UMmpoI28YLLQYyeqIn+XimBjE50qajwxKfMefE2Yhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K5k7HDlFFmngZuYlyOQFbrso8NU1/PXmB8w7RZFnV6Y=;
 b=WErygz0DDftPZvQlIPYFWFRF+TaU/9U/X4/Xambu17g+R1KQlrb/Z/bpFRa8OTZFB1UafbG6yI6HqUPYvr5HpcfPaaGI/YLyA/H59nolSu5sHIKge3AyYiqJNo69gYV3BKaPSaNYRixA0Kkaq7gsxPu8DNCwTcm4TYc9xStQDc8FZBfKe/124ZPlj9xp9Z0jYpR5GvRHnpgQYILrgSXUlW/xyNmUpzl60+i5Uv2cAEQYBwl6Ac7DWdi6cmPcqm7qBEtqybT/dkna2UH3nfYUxJQ5Fo/4IbVhqQZQU1UsZ0p+ijrwXWAH9rm2KHDahsSpUlDNLAIRBeNeEPrgk5Z8WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MW4PR11MB6786.namprd11.prod.outlook.com (2603:10b6:303:20b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 00:27:38 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 00:27:38 +0000
Date: Mon, 20 Mar 2023 17:27:23 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZBj5601q/xlo1DAG@orsosgc001.jf.intel.com>
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
 <20230317231641.2815418-12-umesh.nerlige.ramappa@intel.com>
 <87v8iwt6sv.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87v8iwt6sv.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR01CA0063.prod.exchangelabs.com (2603:10b6:a03:94::40)
 To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MW4PR11MB6786:EE_
X-MS-Office365-Filtering-Correlation-Id: a4c6dbf7-f703-499d-5ccc-08db29a31337
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: avcy0LyCCiwbLQTUz5pm+lMp6VIPCnhBKn5rwjEQQifpzDBcJ0Xe3c7BpZMCFNALWQhrIMeRg6GawVHfHDjMWoI1gwXi3cOvokALE70BFTGZnr6L6SMXXQQ4nij8gHxAfzX7J83yONnT+4D2jLQu4abTjYGWloiU4sq+31boBVhhG8hUVSaES/t9WqWTe8QP8QvsrydcWwYvgE13k97nppFcaJAgZ2JTO6KhrIjYBHc3upBlghGsWfL2vGtFeOvehaBZX7U3o63TnT511+mWQwA6IWbxjYLDuInVFJaVSjHEH0YQ2ThPxzMsJj4I64FaSBGwYsvsOhoqZE54OYEpZs1g2K43x6AfD014egS/0ci6qlk1nmalj0jN93bdPGXmNJzFSqbKV2XSFS3H/w3bUn5RiB66kQwfpgyowVXkLecfWBWS+3rOsI0am49dzDMIb8hIgfiZk+s86vDTAmc3wxyf8xORdLSlejMEiLO8CqWYyDTcJevJ7QJa2/Fyl0Sx15mvONyMoYioYg/XGPsDJ6E7zkI4goS2IiRTzmXOpJMwP/H5DwB6vwRUI7wpJfLhoV/dZLJmbbS34KF3wiBE99EDVvTItRvwgIXlg79ClGUXN68dBiISBkqCDc5+2Ti7/Okx4KPh9KkHPVF3qK65dw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199018)(86362001)(83380400001)(6862004)(66556008)(316002)(4326008)(66946007)(478600001)(8676002)(66476007)(186003)(6636002)(6512007)(26005)(6506007)(107886003)(6486002)(6666004)(38100700002)(8936002)(5660300002)(41300700001)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjdrUHZWNkVQRjZVSkh1U0c2UUY2dWhLY2NvOUVLODZIVlVZakNXYVEycWNp?=
 =?utf-8?B?cmdkSU9ZenA1Zm9iTk9uSDV3QjdpK0lnWURreW95bmJidXZla1hZZ2ZkRG5U?=
 =?utf-8?B?cTRsWk5aWWNuWWtZelZGV3dEMVhIeDFzSVdtTkRLT29CTTY3R1YyQ3hoTndD?=
 =?utf-8?B?Ly9yRkdDK0FLRDBvZldIcWFscjlSNDR2ZnJPVWQzSVNpV2oyTFVlYU90UGh1?=
 =?utf-8?B?alFDaVlDNVQ3bTc2N0dWZVZWd09NdllQcTZOblk1NXJjWXRPQ0JPSHNIck93?=
 =?utf-8?B?YWN6ckE1U2FYSHFIVDFWNTBlOG9zd3J4ZWZxUHBnRGRpUkIvT2crUTJTMDBs?=
 =?utf-8?B?c2YvTXNLdTA2RCtHS1IzNGNDZ3pxOW9Sd2cxb0wrMkdEWWpjUHN3Y2NYQXpi?=
 =?utf-8?B?cXZKazNIWUcrL1FjUERHS1ZHb3JIYXZidFQvWU9YWDhWRnhlRVhuclBTaFlV?=
 =?utf-8?B?UHlEY0p6dTFoVUhMSFo4c0diWlNtOFVzaFBVZ1NEei9kUHNIUGNXbjNiTVd5?=
 =?utf-8?B?aXJpZFlNbjNwL0JUSkwwcXl4RE9BU2h4c1Y0WW9xejRqZTJKR1NJbGIwOHZC?=
 =?utf-8?B?QjVwS0xDOTdGaE13WjZJRGZSeDYrS2xsYUpGOUErS3ZnQVRuSk5pM1VUcHJN?=
 =?utf-8?B?anh6b1FSL040WjJidktkMlByZjNjQVJZV3B4TTFsd25wVzQ4RU14L2psZUJh?=
 =?utf-8?B?eVJONnBoekI4Z1lIY2NLYjRpRE84WUFaa2RMd252VVJQR09qTHRnTU8yRnp5?=
 =?utf-8?B?RnNtYmxnQ1B0Mkw4SXdBczcvbWE2ODMxNFFOUXVCYll4U3hpNzViRytiMjRF?=
 =?utf-8?B?SFhJM0N3VE1aRTlSRzdwa09RODlOTkp2SG1ocWF6TFJXT1M0NkQyVnlmYS9G?=
 =?utf-8?B?NjVMUVhuYUluSVFaaW5hckZ6cy96dkVCak5leG9RcUdTdFFHRnhvTXpMcGFs?=
 =?utf-8?B?WUI4RGRyZDg4d0ZjU01VeFJuWGM4d0VieHppcXN0STh3RVNKN0U4dEhNbldm?=
 =?utf-8?B?NndaT1Q4ZEhGOHNIWVdQc3RqL2FzOXAvaGxlL21UY05zNXZhd2phLzBBVXNE?=
 =?utf-8?B?cmJ6d2hSZWtXMzRHeHF4Q05FOE55TUpQMkpkMUpKeURDT2pSeVIwR3dNUkVI?=
 =?utf-8?B?K09mejFaL2UrenFDSTd5eEJwMHJjQk5VYzBrTVlseUNJTTJSNnFEWXRRSEtR?=
 =?utf-8?B?NFVGK1U5eHhtd0cweU0xQzFpdmMrMVpEbGpzdkdkSjVzWHlmS093OEdIb0Ev?=
 =?utf-8?B?TUkvUUpJVmJWckhFQ1J1TEtHSjNudmxxb054R0FFaWk2MlhoZGh4VHRaM3JS?=
 =?utf-8?B?TGYyQ0JPdjRZQWdkY3BoTHdjSUF6Q3dCYi9LSUxjaUg1Rk9uK1pyQzR1ZGFx?=
 =?utf-8?B?N2xxUHE1QWpFTndXaXFQU1h3UVpPZ0J1VVRhM3UyT3pFYTRiSWlvQ2JuZVhL?=
 =?utf-8?B?Qm1SbVNNM2pBNmQzK1hmVmVjV1UvcGN2amVIWEZPa014dEpxOGU0SFpwQTVm?=
 =?utf-8?B?ZVlGRm5ndzF0NlRMdDhrMXU2ckJmRTRkbHJQUFdFbEtqL3R6aDNLVVpwM2tu?=
 =?utf-8?B?ckh2MnFuKzhKbVA5UGk2dzR1YXBIRmJrMm12K0hvN3RvL25VelhodTBrUktI?=
 =?utf-8?B?WGtpVHRnRkxoRjZqbHpkVVliN01lMjc1V3dLaTh1MDRuc1V2VlBHZG5oVTd6?=
 =?utf-8?B?NVVyYlJHQi9vcUlBYTRYTmNZdWxoZjN5ZnJMb3p1bUZ0N0FxK2tVVkduaHNu?=
 =?utf-8?B?ZzJacG9HZytlZy9welMwU1MrL1gxSUJhN0dHdWY5M25EdnlJWnRMRFdxdSsw?=
 =?utf-8?B?WUdCYjlob0d0WWJrdm1PVWFtRFhEWENsUmtZV29yOG9CRUh5bXlVQ3FybVJL?=
 =?utf-8?B?ai9mWm5VOG9uNndNdnM4N1NSRnpHSHRTVmRRVE05VUtjWHJ4ZmtxQTdKU3By?=
 =?utf-8?B?czFidVlDK3hGTzgxYjM4Mi9FMzg5ejk0Y01wT1FmSkpacldMaHF4V0lLbWs4?=
 =?utf-8?B?bjBWSEVzT0djdXBMTWVBSk5pVDJnVTUySENIbDNMVkZLOU9PT1JHK3gxNG9L?=
 =?utf-8?B?ajB1cVRib0YwV1J2SHEySmZheiszUm44bWpmSElmVW5sL3dWQnpFdzJnT0dt?=
 =?utf-8?B?eE5pMmZPV2MzdTNWKzhLWFJJWjRUUm0vL3NkeHJUaE00RHJ6Q3pHZkxwL1cv?=
 =?utf-8?Q?R4TwFMrFkfa/RayD6lP1OCY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c6dbf7-f703-499d-5ccc-08db29a31337
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 00:27:38.3735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WD/msGDegfknDmn1I02lAA3QKHbOYNncc+8s+4zCie84dgZ6dIfs5be0nJyDYLD6UCiy86UjotxxlUyRwM04as6xEp9pzBC90MMwWBrj1zA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6786
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 11/11] drm/i915/perf: Wa_14017512683:
 Disable OAM if media C6 is enabled in BIOS
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

On Sun, Mar 19, 2023 at 08:56:00PM -0700, Dixit, Ashutosh wrote:
>On Fri, 17 Mar 2023 16:16:41 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>Please read from bottom to top. Mostly nits but let's see what you think.
>
>> OAM does not work with media C6 enabled on some steppings of MTL.
>> Disable OAM if we detect that media C6 was enabled in bios.
>>
>> v2: (Ashutosh)
>> - Remove drm_notice from the driver load path
>> - Log a drm_err when opening an OAM stream on affected steppings
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 41 ++++++++++++++++++++++++++++++++
>>  1 file changed, 41 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 18afa76653b7..823379d63caf 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -209,6 +209,7 @@
>>  #include "gt/intel_gt_regs.h"
>>  #include "gt/intel_lrc.h"
>>  #include "gt/intel_lrc_reg.h"
>> +#include "gt/intel_rc6.h"
>>  #include "gt/intel_ring.h"
>>  #include "gt/uc/intel_guc_slpc.h"
>>
>> @@ -4216,6 +4217,20 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>		return -EINVAL;
>>	}
>>
>> +	/*
>> +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
>> +	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
>> +	 * does not work as expected.
>> +	 */
>> +	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
>> +	    props->engine->gt->type == GT_MEDIA &&
>
>Instead of gt type I think it's better to check perf_group->type. That is
>why as I said below maybe better to have a valid perf_group even in this
>case.
>
>> +	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>> +		drm_dbg(&perf->i915->drm,
>> +			"OAM requires media C6 to be disabled in BIOS\n");
>> +		return -EINVAL;
>> +	}
>
>So now we can change this check to something like:
>
>	if (engine->perf_group->type == OAM && i915_perf->mtl_bios_mc6_enabled)

sure, that will work too.

>
>> +
>> +
>>	if (!engine_supports_oa(props->engine)) {
>>		drm_dbg(&perf->i915->drm,
>>			"Engine not supported by OA %d:%d\n",
>> @@ -4897,6 +4912,15 @@ static u32 num_perf_groups_per_gt(struct intel_gt *gt)
>>
>>  static u32 __oam_engine_group(struct intel_engine_cs *engine)
>>  {
>> +	/*
>> +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
>> +	 * C6 disable in BIOS. To disable use of OAM with media engines, set the
>> +	 * oa_group to PERF_GROUP_INVALID.
>> +	 */
>> +	if (IS_MTL_MEDIA_STEP(engine->i915, STEP_A0, STEP_C0) &&
>> +	    intel_check_bios_c6_setup(&engine->gt->rc6))
>> +		return PERF_GROUP_INVALID;
>
>I think we should just remove this. Let the perf group be valid in this
>case too since we cannot support OA for a different reason. Then we can use
>the OAM perf group above.

Sure, I will drop this
>
>Though if we drop this we have only 2 instances of the checks instead of 3
>so maybe ok to not have i915_perf->mtl_bios_mc6_enabled?

yes, since it's only 2 places, I would prefer to leave it as is.

Thanks,
Umesh
