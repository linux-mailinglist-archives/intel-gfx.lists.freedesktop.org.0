Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AB77EA08D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:51:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF2110E3C0;
	Mon, 13 Nov 2023 15:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42ED10E3C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699890701; x=1731426701;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3IGd20M6CEyARXdRzXIecmZ3H1f1SdHcdm8IuN4CyNo=;
 b=OdWRdM3jGSeYjQ9G2Pt+TarfwpSEAIo9v8w7uLNk6vr57nMYwL25r/SW
 ZsK3uOCJHNUZ8mfwulrp0s+mFGE7WXCFI35ZdtGlhgl28QCDaLZE0DBSz
 M5PZDY4VqfsNsKTkvFbB6B7kX1vqAJt1rg32r4thJ84P3yCCSkczyqaXj
 9l0V5Bge/1YWBGnzPB8jCzf7GWQlapW/Gio3WFdPrh34N0NYi7WVrEo82
 iQ6ywgcscroOJWYAiXJ2wJMo8eFa+KHCH1ryWzF6Bet9qk4OTzt5d8Aru
 sFYjO4oLjWTR14Zx6/iZX1yjf4Qz9sjgHh4u6UY1e9QNNyYjWwkTQQQlH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="394361649"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="394361649"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:51:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="1095787359"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="1095787359"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2023 07:51:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 07:51:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 07:51:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 13 Nov 2023 07:51:37 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 13 Nov 2023 07:51:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BROvel+PME93X+NDMXVCWqyKe2SUf7c6SfpH9ay2y2aR16a8sT9eMCZPbflXsQONB6dYqGQTcU8/k6xOXzHD4/R6u6cZF3g5MEyRxf6rt3HMkPu6AGPnBDNX2MfRwbbdgYxShlYX9EwUegQcaqD4P1ybJ7jG/1SAV+tgkf0NMV/VAfEbAHYGXNf2DtJy9oFfmtpOfmHJtR8amUblJIdWwTCwTU3/piWkkpuaypavtc2aylkzOO9F77cH1BdiwW4SADfvuFA+y6VdFYmc3GPGkVzNfLer63hc/hItRBsIm4/j6K+UVok7/R18zHa6MjENsN1G8Jhc3PPeNJSPAYZn2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bO6yX8bue9w4gU/9/Iqn6IQfcveo8wf+ETVW/B1FgDM=;
 b=em7NUaa+cw2xq05kSyLQDniYVVOdVulM223RZySk/crToURK++6Ldyc1CYF6ZNUoo2Dv+skIL5/YIh5AO0bbbG6RmQamS3aYH5hBs4QMHW+/To5oQsD0uzWq6/PTD7HWARkLWYNa2TrZIybz6tNOwX/NCOiggb0edUylIZSDfoHr9mQUv5iNLVz0bdHyL8LlZ3nv+P5wlHUHwNdXkN0+28CAcdc5Ds57npF557fGsxFsNxxYAi0U2VA/slTmKSMnbqweFBLr77bvRyPXbVhdArnaHPi4d1V+ni3ltviJJH8FuTdjuZzxpyiDioK9OCnfHH+rIq0WaVAkPTWqyHMFYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Mon, 13 Nov
 2023 15:51:30 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86%7]) with mapi id 15.20.6977.029; Mon, 13 Nov 2023
 15:51:30 +0000
Message-ID: <ae06d191-bff4-4646-b5bb-bfaa0be4d5e2@intel.com>
Date: Mon, 13 Nov 2023 07:51:28 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231109235332.2349844-1-daniele.ceraolospurio@intel.com>
 <2b774727-e901-4c17-b6b9-2e4b3348cae6@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <2b774727-e901-4c17-b6b9-2e4b3348cae6@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0297.namprd04.prod.outlook.com
 (2603:10b6:303:89::32) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DM4PR11MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: e8fddbc2-bd79-4771-958c-08dbe460675b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3f7tUX578VzRHRL9vfG9CP1KWlKgz3leInQx3uNfd055F0LZkGHgX3uTQx2h3a0l8k2sdBA0O7TFx/09S1qyCSBkWqfMLPrRbhZ5JvKyLg7aYCG3W/YHHqRd8INsgOYZUN47jg/hsNFI4oJCTHovyHUn59GyP3G8ADoHIzoLep+F6ZG4Sh/zqbSbNuuObv266TRAH1XfU2SqDo/imR4Gmyo2CU9MRg6I7YS3BXkiQCEnzh2uPQvlCepGfRVsXbiJztSnQc05JMRN/baokvF4HXs4BXA1BhGzEcw0E8gYDyb5ml8AEJcLbHgoSA5H75K7phs2M4DaVmXiIQ+xj6T2HH6HKR84DQ+0hFoB7Ctc1dsb6t70o9kjewodla06+0v94A8B0eJXCPGkwY0s1TblFRb3VvTESWDgtg1IRn44qYEZH3m7WERXkmCluPFb9qtU5tizYrnA093k+zCe31r7xr47rLutqhr+j1APIqx2ojj7XvsyzzYNuoar88NBTJdHSuexEPfhBPJfdAeuZPhuscNi4Cz73hUgMI4rak9AS5A3Rh5JQKR8ooiSNzw7EVRVWr85l7EzJ3xqUKG2DsyuMwKNfF+469NEeJIysSY2yHQyApyrqybrpQ6tN0pBTW/P9lWsJPdyOarFB+NDdgppCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(316002)(54906003)(66476007)(6512007)(66946007)(66556008)(83380400001)(38100700002)(82960400001)(8676002)(8936002)(4326008)(6486002)(478600001)(36756003)(31686004)(6506007)(53546011)(5660300002)(86362001)(2616005)(2906002)(26005)(31696002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXkxdVpDZ2RsMUw0SWRjZDU5UVVoV05PQ1JIOW5TaW53cVFobWE4SDkxc24v?=
 =?utf-8?B?T0I2d0dGMGFuTmYxMEZnQ3p3enZPdVFPSnowYjRweUUzWkdEdlNvQWtlR1dt?=
 =?utf-8?B?aktXZFJYbHpJcmJlVGZQTm53dG5QckNEV0xXSUNJYkNtWld5SFBuZFNORmEx?=
 =?utf-8?B?ai92OUhReGgrVTVqSnpkcklBNU9odys4b3Q2OTk4bzJ3UnRodDRtRTBESUQr?=
 =?utf-8?B?UTJKbTZCR3hkWlUza040OEdDS0IxZEo4L0pQZnJMSnRDdFdGbVhQaXVUYmcx?=
 =?utf-8?B?Y2h1cHBxa1hOdmZZTk43OHlJUzRBVldLK3FMUnhXanM0bjBSL0FycWVFSFdS?=
 =?utf-8?B?VjlhZ3U5bGw5RnRaSDFQc1BhbWZ3RjRvekdnRmtjbjZNc1lNNndPNlA4SURI?=
 =?utf-8?B?U0dOVDljc2JsZ20wcFdHUWp1QkxCY09IbyttSldKUE9XZlhQSHorVTZ5eVNi?=
 =?utf-8?B?ck5hREJndSs0b0luNVFKYk9EMC9rK09tN2R1TDl6RFN6TXJtOUhYV3F4VDhX?=
 =?utf-8?B?bWhZVmNNRG1XOTFKQS92c0RoeGZiMTVkWkhCZ0tIN2RWZUtRN0dOeHVBN2tm?=
 =?utf-8?B?T282VlljSldRT0tkOHVWWUZBS3dybjNLTFFyY3FDRXhjSDF6YkkyQ21tQVFw?=
 =?utf-8?B?czZDVGxQN0M1NURYcXBDWlFXaStaVm52QkdlejAvSnpxcytxWFBjTFIrb29D?=
 =?utf-8?B?eGVMekFaelJHaEt0M0hlMzRJWjV6Z09OMTFJNzJsakdNdXFuL01QMWx5MFpo?=
 =?utf-8?B?RTJibnhubUNRZ0U4OXdiVUdsdTd3WkNrNjR6T0hzTkVNcDNkS0pTblZzT3g1?=
 =?utf-8?B?Uk5qcHVxdG5pbU03YWUxUTJYejJlLzVoRWJiWEg0VDV1UWU4aGx2OUc1cnpn?=
 =?utf-8?B?aHRMUGxLd1JmZld6Sng3bS9xZ3hOMjl2MHQyZ3diWUtPQ1VlK0VKTlRMM1BU?=
 =?utf-8?B?OXN6VjNoYit2V2dnQ0kzb1VSUzF6QmNPUnRzVVMrR3J6Qk80RnFNelpHT2Q3?=
 =?utf-8?B?UXVaYTdnR2lhN2E2dDhROVNOdExYdlphQzAzTWRIbkd4bTR1R1ZmWTM2aEQ5?=
 =?utf-8?B?Nm02VXhzeEJkRVRKSkRlbllVQVU5Ymp3VDdnMVVUV2V1c3Z2bkdVRTR5c2ZN?=
 =?utf-8?B?MVNYUjNVRTVpd1pXbi9HODEvVWpJZkUvZmZCNndJcUo3NG9xNDhtbUtxSFZs?=
 =?utf-8?B?aU5WQTZVVjNoR0dBV1FzeDQ5NktaNldkaWJ3cWhxdU0yeWlTTy84OUttYUxH?=
 =?utf-8?B?VTEyY0s5c0txbnNIb0VjVnM2ZnZvL2JsdUwxaTY1Y01jdU5sdllLa1FpM3ZY?=
 =?utf-8?B?YmpTRWRoMzFsRnpVU1VUdllqaERUbE5qZ2tXYk5rUjFLNHh6bnJDTVRHQU5s?=
 =?utf-8?B?ZDlWU1pIeng5UTBsWkNQd0RTTW9aUktIazlVMkJLb3dyT0IySFVjcS80dldM?=
 =?utf-8?B?QkZ6aC9KMVo2ODV5N2dPOWRKV25zSmdKRG95aThtemQyRmpRUml1UFFtSWFH?=
 =?utf-8?B?V3JLVVo4Wm40Vzg5LzRTdGR5YWc1UTJ3TnR6eHQxNXhmSFdtdTRFWjYwdzZF?=
 =?utf-8?B?Mk01NnFiMlIzdXJiRzFmcHlQTEh1MEJtcGMrcEErQkI2OVVxSzdKQk5QcTgv?=
 =?utf-8?B?Z1pNSy8zWmhLMVZ2Y3h1MFVCNjZ5dXE1UjhWNlJDQkNNaDdLaENLaW5XQ05C?=
 =?utf-8?B?S1E4T0ZCVWoxalM4Mko5UEJMNlJCYWNEQ0phNm5aSkR0UnhjaWRhdUVWejZn?=
 =?utf-8?B?NnRUaXRmSzlPWDdRNHVXR2M2Tm1VdWpkTlNGV05XNEQ4Mk9YZm15KzN0aS9N?=
 =?utf-8?B?WWRnWWhsaDI3QXZQWCtlYmU4bGVEWjJyRnFrV3FZWGJHemFpZ2EwUUI0VlRm?=
 =?utf-8?B?eFRZelZtYXM0cjMzaS9UeURWMFJ5TE9pR1JCTkVjYzVLV0NIRjMrNlg0M2or?=
 =?utf-8?B?U1haMG04OWE0RlRUNUpFYXU1RWpvSHoyNHI5SGRHdnVhU3NBMTJQS0hNRDhI?=
 =?utf-8?B?Q1I1d2FKb1hMSllrUmF5cmkyeHBrSFgrVVViSGZadVpZK0lMNVJIa2c4bCtm?=
 =?utf-8?B?UkhYUGN4MloxNHRZR1FkWWE3NlM5TTlHeU83OWtDZ08weDdnWkc0SDErVHkr?=
 =?utf-8?B?TkJ5MUZKVnNTTDJHdVBRUWFHckRYaW1JdXRiUXR3dnNLZnBoY0dodDNIdG1C?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8fddbc2-bd79-4771-958c-08dbe460675b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2023 15:51:30.6746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Voa2YAbhbTxNb2cW7nYTUwuU7sh1toHX5cNdwbLPPaQvKcNPAUewq825BoBat6Z/sg66I08VPOK18z8esbQgt/0DjbtxkEM0pGWGIPeE2iM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Assign a uabi class number to
 the GSC CS
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/10/2023 4:00 AM, Tvrtko Ursulin wrote:
>
> On 09/11/2023 23:53, Daniele Ceraolo Spurio wrote:
>> The GSC CS is not exposed to the user, so we skipped assigning a uabi
>> class number for it. However, the trace logs use the uabi class and
>> instance to identify the engine, so leaving uabi class unset makes the
>> GSC CS show up as the RCS in those logs.
>> Given that the engine is not exposed to the user, we can't add a new
>> case in the uabi enum, so we insted internally define a kernel
>> reserved class using the next free number.
>>
>> Fixes: 194babe26bdc ("drm/i915/mtl: don't expose GSC command streamer 
>> to the user")
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 17 ++++++++---------
>>   drivers/gpu/drm/i915/gt/intel_engine_user.h |  4 ++++
>>   drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
>>   drivers/gpu/drm/i915/i915_drv.h             |  2 +-
>>   4 files changed, 14 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c 
>> b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>> index 118164ddbb2e..3fd32bedd6e7 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>> @@ -47,6 +47,7 @@ static const u8 uabi_classes[] = {
>>       [VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>>       [VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
>>       [COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
>> +    [OTHER_CLASS] = I915_KERNEL_RSVD_CLASS,
>
> Could we set it to -1 (aka no uabi class) to avoid needing to maintain 
> the new macros?
>
> And then just teach intel_engines_driver_register to skip -1. Would 
> also need teaching engine_rename to handle -1.
>
> Might end up a smaller and more maintainable patch - worth a try do 
> you think?

That was my initial idea as well, but the issue with this approach is 
the engine_uabi_class_count[] array, which is sized based on the number 
of uabi classes, so having class -1 would needlessly increase its size a 
lot even when using a u8. I thought about limiting the class entry to 3 
bits so the array would max out at 8 entries, but that seemed to be 
getting a bit too convoluted. I can give it a go if you think it's be 
cleaner overall.

Note that this patch does not introduce any new macros that would need 
to be maintained. I915_LAST_UABI_ENGINE_CLASS already existed (I just 
moved it from one file to another) and is the only one that changes when 
a new "real" uabi class is added; the other defines are based on this 
one. This also implies that if a new uabi class is added then 
I915_KERNEL_RSVD_CLASS would be bumped to the next free number, which 
would cause the GSC to show as a different uabi class in newer logs; 
considering that i915 is on its way out, a new class seems very unlikely 
so I thought it'd be an acceptable compromise to keep things simple.

>
>>   };
>>     static int engine_cmp(void *priv, const struct list_head *A,
>> @@ -138,7 +139,7 @@ const char *intel_engine_class_repr(u8 class)
>>           [COPY_ENGINE_CLASS] = "bcs",
>>           [VIDEO_DECODE_CLASS] = "vcs",
>>           [VIDEO_ENHANCEMENT_CLASS] = "vecs",
>> -        [OTHER_CLASS] = "other",
>> +        [OTHER_CLASS] = "gsc",
>
> Maybe unrelated?

no. Before this patch, we hardcoded "gsc" below when calling 
engine_rename() for it. With this patch, we use the name from this 
array, so it needs to be updated. The GEM_WARN_ON below was added to 
make sure we don't get different engines in OTHER_CLASS that might not 
match the "gsc" naming.

Daniele

>
> Regards,
>
> Tvrtko
>
>>           [COMPUTE_CLASS] = "ccs",
>>       };
>>   @@ -216,14 +217,8 @@ void intel_engines_driver_register(struct 
>> drm_i915_private *i915)
>>           if (intel_gt_has_unrecoverable_error(engine->gt))
>>               continue; /* ignore incomplete engines */
>>   -        /*
>> -         * We don't want to expose the GSC engine to the users, but we
>> -         * still rename it so it is easier to identify in the debug 
>> logs
>> -         */
>> -        if (engine->id == GSC0) {
>> -            engine_rename(engine, "gsc", 0);
>> -            continue;
>> -        }
>> +        /* The only engine we expect in OTHER_CLASS is GSC0 */
>> +        GEM_WARN_ON(engine->class == OTHER_CLASS && engine->id != 
>> GSC0);
>>             GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
>>           engine->uabi_class = uabi_classes[engine->class];
>> @@ -238,6 +233,10 @@ void intel_engines_driver_register(struct 
>> drm_i915_private *i915)
>>                     intel_engine_class_repr(engine->class),
>>                     engine->uabi_instance);
>>   +        /* We don't want to expose the GSC engine to the users */
>> +        if (engine->id == GSC0)
>> +            continue;
>> +
>>           rb_link_node(&engine->uabi_node, prev, p);
>>           rb_insert_color(&engine->uabi_node, &i915->uabi_engines);
>>   diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h 
>> b/drivers/gpu/drm/i915/gt/intel_engine_user.h
>> index 3dc7e8ab9fbc..dd31805b2a5a 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
>> @@ -11,6 +11,10 @@
>>   struct drm_i915_private;
>>   struct intel_engine_cs;
>>   +#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>> +#define I915_KERNEL_RSVD_CLASS (I915_LAST_UABI_ENGINE_CLASS + 1)
>> +#define I915_MAX_UABI_CLASSES (I915_KERNEL_RSVD_CLASS + 1)
>> +
>>   struct intel_engine_cs *
>>   intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, 
>> u8 instance);
>>   diff --git a/drivers/gpu/drm/i915/i915_drm_client.h 
>> b/drivers/gpu/drm/i915/i915_drm_client.h
>> index 67816c912bca..c42cb2511348 100644
>> --- a/drivers/gpu/drm/i915/i915_drm_client.h
>> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
>> @@ -12,7 +12,7 @@
>>     #include <uapi/drm/i915_drm.h>
>>   -#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>> +#include "gt/intel_engine_user.h"
>>     struct drm_file;
>>   struct drm_printer;
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index f3be9033a93f..a718b4cb5a2d 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -238,7 +238,7 @@ struct drm_i915_private {
>>           struct list_head uabi_engines_list;
>>           struct rb_root uabi_engines;
>>       };
>> -    unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS 
>> + 1];
>> +    unsigned int engine_uabi_class_count[I915_MAX_UABI_CLASSES];
>>         /* protects the irq masks */
>>       spinlock_t irq_lock;

