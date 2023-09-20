Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 079A27A8959
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 18:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E649D10E263;
	Wed, 20 Sep 2023 16:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1E710E0D6;
 Wed, 20 Sep 2023 16:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695226876; x=1726762876;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=abEE4TBGWku67T3ywOZt032mM+ZXiTxZFiyhTnEzO34=;
 b=mpHRgL8Sx/tMs/CKy9J2rwMuLMGRCOccaQbLw5oB1LizKl06Yh3T7l7B
 JzENnxuqvEwTN6AyndnQOkgycEyPtCqQo1ZaGb0bxxZb6H39vAC8qI7Q6
 t6CNx8zgI1wroa0rE84zGYa5Qs//h2JWpPEazdRZ+ftyDSrVdmc/vLazc
 /vVag+xQckALHM9r4t+yiJrpy6P1H6vYOedcGOj7rdx37JAME6k9zmJGq
 h5GtTmAbyk3ITMr3LzqDeXGsHp8FxI+47lty0lEn44B618fN0ZfVzHCkJ
 +CfwfxNCZ+i2TzyS2knyiAoNrs2CR/5enBbhdV6a2ZzIeQMl3UUS/Vtz/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="377574801"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="377574801"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 09:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740280052"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="740280052"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 09:18:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 09:18:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 09:18:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 09:18:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 09:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HAdS4sfXZ2Ndgk4WXVzXRDcpkL00UP0wRkzi0PJskxWgMA023d7b3Vz+fzW0eI/SGOiV0PzQK+eAslwOEwfZodEezoN3LOaeEjucUWvXdOcOHJHCHHsV9tNbZk/7L8W+iuq4ocyZmNmk5JM9F8vpMoBKn0BwnEbKkifLxqiauqf6QZga4je+d1d3ROTwm+BcEBp9NOVYNjzSsBkNi3iqSTKICgxH72vVoiqc2S+fukaRSazl2f68HIClNhyHdEK7RYn5LRyml8MTPC5EQB2bMNIHlHtD2Jzke2jqnUeV5Lx8uGw6JNablpYUvLATM2lMBEKNWgDleIf1mIbywAPQ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2/6U4rWgy+QKk3Hp6R63TEnn0tXaYV19ae5gPRTReTo=;
 b=fryuSYkOL26pj7FbKSJQiU3nWcXWbfba/hfRQRb9Aj9lVqVqjkyy/PtlmOWrV7kZRHp9QdWcDxMp/+oeJi6b7swx6uyEPFa1aWly3B4TdlA8q643GbuEfsVa/O6lB2sgV8bFCEebLx6mkkbPugw8zge4xN0lipFmjQt4FngfFmNUF9n+TlXHClmCqmutuDOihRTJFLAUEB4R0iU97C3x3QmNgQ9SNLbofJy9ZStDZdsD9wPXRPz2kGINmy3qS+6O/YtITI3uASikBuQ7efrp7KVw0DPKZXGlK50sGJnqAaTWaLMb5oZsaBz+JSUjltkBXsIyWntXBzDUO4hIO9DbEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DM6PR11MB4721.namprd11.prod.outlook.com (2603:10b6:5:2a3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Wed, 20 Sep
 2023 16:18:10 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::2d90:2991:354c:a720]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::2d90:2991:354c:a720%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 16:18:10 +0000
Message-ID: <4028e035-4b39-0c6d-a0dd-a9ec583ab07e@intel.com>
Date: Wed, 20 Sep 2023 09:18:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
 <ZQr8lowFNiMGnrbn@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <ZQr8lowFNiMGnrbn@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::39) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DM6PR11MB4721:EE_
X-MS-Office365-Filtering-Correlation-Id: ad71f637-70cf-4115-d6dd-08dbb9f52e6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YzPgqmO5wP60Of4UeeuIbCP87cyIYEjMdSAWVc0ZxtkZ/M/48MWJ3Ei04cvkTZaH/4I7olq7b0QnnrhlGCtdzIjxc8naO0xcue+HhJVVyYSUot/NpvWHPOqmkK1jqC2Q6MV9GstbjcI+1FATEARIpGo2pKxLlHRe0BaVcj67wfMCa9Bo0lOAKq5LTccNwXrdgFosKYlAVN+ErXWw2hk+Oa+epP0S2msWjFINN9lgh+hjmOpcpk730UCflMdblPDmqY0hlOY3s0tXgYqKJVE3dCFZ2/r0Y7EJBq1nympGTLTzLwqps+RAw16qb8avOvGoXAhP9vx7QvdQzOnIUjPI8EgivJ9oCTrBL9WuYJ5IHNMvHvVOaEFGELPGsuz+R3rQvAi4cDHkkQT6LUnqkAH5FnD/2+YD6wuQcmu1DKvyf7HzIwYzpMU9rf3Iyf79r9K1545WD4gBpE5yTCdyQb2TMexR8ELzXjrzC9UxWDKsriHA8mZ42bs08wnywFqBhZQ925XF/nM7vcMRBvrVA619CgQHWFJF1jiORS1sDYHS6SqKZwBO80GugVcgttidbBRe0cE4a5lVFNl/ArgArNmKKisHgSEGI7gvfo70zf41EcP7nbAb3f4tSUuUQYAuvw71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(136003)(396003)(376002)(1800799009)(186009)(451199024)(6862004)(37006003)(83380400001)(6512007)(6636002)(82960400001)(53546011)(6506007)(6486002)(36756003)(6666004)(2906002)(41300700001)(450100002)(66476007)(66946007)(66556008)(5660300002)(31696002)(8676002)(4326008)(86362001)(38100700002)(8936002)(966005)(478600001)(316002)(26005)(2616005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VU1UeGpnM1g0d1M1SmZSRkZGSXBPbXlXMkdvVlZKVWZ1MkV2dHpPTHVVSHQv?=
 =?utf-8?B?MFIwcmNzakN4RURDV3F6VnpxTGhpYnVTMzR0blZvV2N2ZWZEUTVrRXdWem9i?=
 =?utf-8?B?YmF3dkxVTUVCa3RabjJacHRoRU9TdGF5V2tKelBWMDZ5TXZUbEdRaWxJN2Rs?=
 =?utf-8?B?dm8yU29VNDRJZnVwaC9WazFvMU4xSnk0VGNBQ1JoSWtUSXFCeEtpSC8xUFBZ?=
 =?utf-8?B?SklFZmpQOVcvcWVPZWZNeWVmMWpSNk82bjB4emNqUG9oaDdzM0c5ZG9DcWhx?=
 =?utf-8?B?NWVhSnJScERuRTZzcjcwN0MzUXZpMy9vdnU1U1FiWlR0eThFeEVkS1k1akx0?=
 =?utf-8?B?d0JiSnl3eEtyY3p4Z0hDck1UdDRLdVpaZGRLTldKRWFBQmovUmhSNFE0ZFlO?=
 =?utf-8?B?bmc3OUFtN1RCYmk2eHl0OXZOSXZJOWxvY1EvR2xTSy9mRmFoMDVNYXphRktG?=
 =?utf-8?B?bEJVVjV4YjdGRzYxNzlINll6dFp5eXArNjg4K0p5Mmk2aVloRTJMb2FlN1Mv?=
 =?utf-8?B?Y09WSzZ3dTVmTFFVeTBoN0lxZXVXZVVrZ3VQUFdhc0Q5MENMYkNpZFFQbkZX?=
 =?utf-8?B?TDFNcjgrdnYxQVJhM2wrVS9nUzhReklCUFREcFVRb1d2V2xwTkpHSUVhd2Rs?=
 =?utf-8?B?UGJrM01TK0xOUVk2eUw1RjF3bzNLeCtVSVZiSjB2TDJ2YVhRa0NzQ2xKM0lw?=
 =?utf-8?B?SmRNR0FZdWw4ZjBhWHQ4VGViSGJTQXo4eGNmNlVBd0w4RmVCNUpnMHQzaWIr?=
 =?utf-8?B?YVlwWGpleE5pRkVLdm9CNnlyNVArb3ZTR0s5Rm9GSFNJc0xUMy9EVEJjTUhM?=
 =?utf-8?B?TzhONXkyck5sU1ZEekFyUy9SY2ticGtPdFhFU2lRMi82YnBzWTZkTDZZMmRm?=
 =?utf-8?B?Tmh1UklHcnlQK2ZHM21pdTF3eUNINnlUaGVSMkVTWWVyN0Q2WnZKckVUbGY0?=
 =?utf-8?B?aUExM3cxd3lVTkpYQVF2Zlp6VG5NMFI3SnE2ajAzRmRkMDRsWFJUaWw3bHBG?=
 =?utf-8?B?Rmd6R1drbTBIK3ZFMzN3NFppek15QzQwRFdyMkZEUmRvUUR5bDNQcHhwNERx?=
 =?utf-8?B?TFlhNEl5OG5OOW1FU09Jc1hOZk0rcm8vcHBIL1NLZTNpOEdVVnRyWmlmVlFs?=
 =?utf-8?B?LzNyaUpNY1ZkRHlCRjl2RGxIUHh5M2dvamFId09jeDhtUlgydXZFbTlha3lY?=
 =?utf-8?B?ZllwdkE4cHU3djJkckh3Wi9oaEtyVlpSRFA5TkRIMThSUis2SWlaVTFYZ29L?=
 =?utf-8?B?VmE0V0xER1V2djZXRWl5cGJJYlY2dWpkRWFBQk01ckQ1dWRGakVRWGswb0xI?=
 =?utf-8?B?L1BVSDdvdE9SUUhtSkZjVjJkYmd2T1hHWVlsTUc1VlE3L1VZeE50K1ZIdjBm?=
 =?utf-8?B?elFZZVNhdXVwbzlvRUZ4ZmIvdWRDbkdxa0N3NER5eHcxYkJtVFNhMGh0anFY?=
 =?utf-8?B?QWpLTTNlUnlSWVpmbFhZOGdSWGJmdndhYU1aYzNDWVBzWUFRc0xlcnprVlBt?=
 =?utf-8?B?Sm4vY3pWNGYwc0tEMXl5aEJSY2lEMkVDL0xNRFZ1ZWljRVhXZ0dlZ2dPYlNs?=
 =?utf-8?B?OE90ZE9uK2FZUi9xMDBOcjlBMWlYL2MvL3ZkSVBQMmhGSDExbXhrMmhQZXB6?=
 =?utf-8?B?S2pnUXJHY1VCbjVpM1VoRG10VUhBbWtFby9XZjRWWGU4Y3JmVjZ6RGp2c1lF?=
 =?utf-8?B?cm5qNXQwcSthL2hRRU9ta3pnTkt0UjFPZjhwK3B2blQrYmlPa3NPZG04Tm03?=
 =?utf-8?B?V2QrUDk0Z2hkbG1NU09sNTJYQk40RUdUVDBSRFFQZzNoMlExQ2czQ05DcExN?=
 =?utf-8?B?bWx2TnMrWkFReENjMFRtSERWOGo1Um9jRkE2Q1lNT1JDK2ZhTFpiZ1d3aWFh?=
 =?utf-8?B?ejhKcnhMcmxuT3hBWVhnVU9pTFQrL2MzRFpIT3JMRzhSL2Z4Uk5rdXU1NWx5?=
 =?utf-8?B?YmlIMGIrRGFMSktkTjNkTmRtWGVpS3Vsb0pqcDhEQ3gxRk9HUnlMV1JQZEd0?=
 =?utf-8?B?aW5QTnE2RUlBVVYvckpSVGJrTUwxdEdET2pLUXp5SVFoMVFIWlc0RUw3bkFJ?=
 =?utf-8?B?MGpDSktEaGlpaWYwVnhydHZYR2xPL2oyVTlReTJjVWxqTzRlK2xSR0Nkc01v?=
 =?utf-8?B?cThkRGo1ZlZLNXhCZVJJS2psUUpXM3lJT1hnWCtJbG5RL295eXY4UnRKNkxJ?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad71f637-70cf-4115-d6dd-08dbb9f52e6d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 16:18:10.4241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g9Zqp1+OhUlj2OnsU6SmDfIzIpzK7kme9j9AgDAmr7fWl3YUBjPBMQGbYUensxVV1mlgKIudvK3sIkxomsSvs8MjsayIuw6aaNOmahW31Pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4721
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Set min/max
 to expected values
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/20/2023 7:07 AM, Rodrigo Vivi wrote:
> On Mon, Sep 18, 2023 at 12:02:59PM -0700, Vinay Belgaumkar wrote:
>> A prior(rps) test leaves the system in a bad state causing failures
>> in the basic test.
> Why?
>
> What was the freq immediately before the failure that made the
> machine to be busted and not accept the new freq request?
>
> Maybe we should use this information to limit the freq requests
> that we accept instead of workaround the test case. Otherwise
> we are at risk of users selecting the bad freq that let " the
> system in a bad state"...

i915_pm_rps (waitboost) test sets soft max_freq to some value less than 
RP0 and then fails. The restore on failure does not work properly as the 
test is not multitile capable(it sets the root sysfs entry instead of 
using the per tile entry). Then, the current test (i915_pm_freq_api --r 
basic-api) tries to set min_freq to RP0 as part of normal testing. This 
fails as soft_max is < RP0.

There is some non-trivial effort needed to convert i915_pm_rps to 
multitile, and this is a BAT failure, hence adding the quick fix to 
ensure the test runs with a good pre-environment.

Thanks,

Vinay.

>
>> Set min/max to expected values before running it.
>> Test will restore values at the end.
>>
>> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/8670
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/i915_pm_freq_api.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/tests/intel/i915_pm_freq_api.c b/tests/intel/i915_pm_freq_api.c
>> index 03bd0d05b..6018692a2 100644
>> --- a/tests/intel/i915_pm_freq_api.c
>> +++ b/tests/intel/i915_pm_freq_api.c
>> @@ -55,7 +55,11 @@ static void test_freq_basic_api(int dirfd, int gt)
>>   	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>   	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>>   	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>> -	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
>> +	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d\n", gt, rpn, rpe, rp0);
>> +
>> +	/* Set min/max to RPn, RP0 for baseline behavior */
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
>>   
>>   	/*
>>   	 * Negative bound tests
>> @@ -170,7 +174,7 @@ igt_main
>>   		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>>   			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>>   			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
>> -			igt_debug("GT: %d, min: %d, max: %d", gt, stash_min[gt], stash_max[gt]);
>> +			igt_debug("GT: %d, min: %d, max: %d\n", gt, stash_min[gt], stash_max[gt]);
>>   			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
>>   		}
>>   		igt_install_exit_handler(restore_sysfs_freq);
>> -- 
>> 2.38.1
>>
