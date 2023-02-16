Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86FB69A2C3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 00:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7DF10E1A4;
	Thu, 16 Feb 2023 23:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED2F10E1A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 23:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676591895; x=1708127895;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=t0RRXBDJoTNJOxAoCPNVvVC57GMNw7mgSFwaKBDCEHE=;
 b=YrycZLy7GEdw6W5rx9pBmgiSVl/T9zkXg+/Zmrfof4Y2Mbuhy+WaVfU/
 dLRPlSi3enXV1Iz4YjGomMfPOSoa9QSjox+vQAqaO/ZwL4HbcXKRHvEK3
 SR5LDluz4i9V/AU6jtSzIJ41FqeFLJ69jMXzZKQ/yi5TsndNGXShNqQOU
 VUttQmpWp8lJnMBnCAo1qnw/Qhcw8wvKxZIMFG3OwA2tp6X1sROTnHFWr
 4EAh5juk4vCfyzL86mC4unuU7kmQPgz2pWcqCNMcnLXNA2z8snSkIQRNa
 g0ITDdLwwE6fWfEvsKlXeS8kE4cWh3LRmLMuESso8zAd4kUi12hjV6VoI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="394343223"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="394343223"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 15:58:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="779585447"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="779585447"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2023 15:58:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 15:58:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 15:58:13 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 15:58:13 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 15:58:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnXffuxxwMev2hCiPseGAkttojBoFcNszL88Bc0V93nNE5LLuwi4n8x7GpyC+2mVhNFORMEdxDUDAyGWLeOjYr8TkuPvajBJFa5xKx1UzvuqKzrOO1UTdT8mLnmUTAKau+3Rj3+wk34NVB6b94lx1cMheDNdEtXJAusuY5Pc/2r/knx+iL4iWQyvEXuOtdr4rbpR6ydERSf+t1zKBo8FPUtSaHV82MWuUlSII5OZmc29IvMPn67GMS28Ia01O3YX88lEAD9KuEUBEy5VzHtpdBNLZG5qWxyzYAT97RC1aQUDRS3fcfoTuFehRnlk8LRIWB4h0W65fW2CrMTt8NpSVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGOBJcI99c+c6RvfceIfzkJ9NpajBcDBKteybDIIWSE=;
 b=dKVHya5hwj+ThMOO1nOVCP3CLctC7ml1kX5pUafSpNMIM0bEPFL0aqUD9+vwnRmdAho1GtlN0gylTBWNBmGLvGZwt6ZbLWkPCxffnm9YTKaX5R0V2V7ZrtUhBWSFEN2pSgW54M3FEL+xz3UskyysOzsl4c58EJ68IfgwZO0vVUt63PBVd0IqjJb3vSb2anPQlV+ZzrkxhgdpOaZi5vI4q7CfN7Irg3At/hZlFe/T6QvcY2M+yYP0B8rvYrxrMCwWua/jWsjfDCgVkd4//3YnayRWVAZNJwPErHIv26+tNcKgafe6VxJWMwUKBkdcwfRvp9dZy6UpX0ZSSXEBYVmL0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA0PR11MB7742.namprd11.prod.outlook.com (2603:10b6:208:403::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Thu, 16 Feb 2023 23:58:11 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 23:58:11 +0000
Date: Thu, 16 Feb 2023 15:58:08 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+7DEFbHKCx04Poq@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-6-umesh.nerlige.ramappa@intel.com>
 <87lekx2895.fsf@intel.com> <87r0upmr4i.wl-ashutosh.dixit@intel.com>
 <87fsb5zdka.fsf@intel.com>
 <Y+6YXzhGWHZnqJT1@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <Y+6YXzhGWHZnqJT1@orsosgc001.jf.intel.com>
X-ClientProxiedBy: BY3PR10CA0019.namprd10.prod.outlook.com
 (2603:10b6:a03:255::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA0PR11MB7742:EE_
X-MS-Office365-Filtering-Correlation-Id: 82615556-0539-49ed-07d0-08db1079a87d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TEvun/hheox61xiAT1sh7pcT7EREa6K9oUOAgnWdwE8q2TErlHTqP2fcc2KJsWaKBvjh6VoS99v2GKl3bLsDXYPS76uo0XxAuZIxAQ0YVlzetCu6GaYBUE+DOgwM7vlA9CbzHCLKhyRBCSIl/s3LZHzh5su8uelJsvMe5UQpTqMrDkvd/F4NNwWp02dAox4hTs5ZF24t9wXsfPOueFRP9kyPWnSJrN8JbbNLMo/2OpH1MjzplIL9BkcJQ+L9LHIE13YAdTc/nXeVzFKBKzkcJkzcmIOdpLO/EUzp3CFeEOLhIbDs8zmdagspthBZPIGgSn+9DwsUHmNibspudtvr6TWlsbhm31omvVpD54Z7im9dKB8wXV9VzrPyRbrkFoTGoj1IdYVh+eN3ziwsyNmyp1hLTpEsYmmKpGI1hgSrK4BD08UMqRXmfJwnTxNWKYVsOwjEETthEgPMpPlVN/YOePpm2ji9YY9+R2eJ6P8z7hZ7QLAf54OIDXcEcPXrYdguigv3KHHbLqXMMj5ccCDhx04LoSke8FpFl0U+kRZOY6s7sE0jh9rzUz/s0wtd3tBoO01IPOm2nu1txFFsF69rZ1sKuDyJb38MGGkXq6NKMbOOOCINBf9ZrphMCTBFR7Y2AzZGJcve6UY2kudMYdfqgJOWh71VA+WlkyqZWMbSWynUu/jqQ2lvhDD9HUcQgsNz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(346002)(396003)(39860400002)(376002)(451199018)(6666004)(478600001)(6486002)(86362001)(83380400001)(82960400001)(38100700002)(26005)(186003)(6512007)(6506007)(41300700001)(66556008)(66476007)(4326008)(6916009)(2906002)(8676002)(5660300002)(66946007)(8936002)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akZSQmNGVGE5WEliYlI2Y0xWaytGYitxd3dLcVJzdURyeGoveWkyT2ZjbkE1?=
 =?utf-8?B?OVpuR2gzdzN0NmVHNjlXdmorbXlZelFMclQyY2tmMUl0cXNXQjh6UndJRGRj?=
 =?utf-8?B?c0pGZ1FJWkNwaVNETGllbGFSKys0S3lUbEVtSHlXeFU5OWZTV0lqQkxiYlpZ?=
 =?utf-8?B?R3JLb3JuaHBNM2YwMGJqRDhVM1UraThkQ1pZenRLZlEvdVJ3NVFrNzdpRzVI?=
 =?utf-8?B?WURqUUovYzEzMyt6cDJuT21LQzM5SCs2K3JBLzBTNm4zcytSa0Z0Tng2ZWtI?=
 =?utf-8?B?YjFsaUNZUUFmRE5KYkZ3NlRZQm8vUW1VZHNGMkpnTDFvYjkyTmdaeXcxYi9Y?=
 =?utf-8?B?T2c5VmpsSkpBMzZid2kva0JZWEVYOHFZaXF1dFpPUUpCeVRXMzBUeFBHNEU4?=
 =?utf-8?B?TFJFU3B3bmsyVVB0MGxYdzgvQ0NnQ3NWamRJVDFtVGVLWlpKcTd3YlU5SzFh?=
 =?utf-8?B?TWdjZVQxQWtlckFreGhNOTlTTzBMU2ZFUHBiT1lLTER6Z1M2MTJpNnNrOGxk?=
 =?utf-8?B?T1JjRjU3YzlHdTdVUkY2Q0twSUU2aEIyV0Jha3Z3Z1hOUUlJa3ZZMDlpdFdp?=
 =?utf-8?B?dW9DSWtjbjRvenA4VnlrZmZ2c051Q2pPMXcxM2FsUHY2aGhkK0o4VkdTSSsy?=
 =?utf-8?B?cEZ6QUV4TjJLNHpZaTZ0S2lyc0x5SkhWVnpIWEsyZ25pUDhzU0FsdmVIcDc3?=
 =?utf-8?B?N1JRUVNBNGIwOVI3Yy8yUjVjeGNLcmcwY3lIc1Y5V3VpZUpSWXNsRnFlczRW?=
 =?utf-8?B?ekNnRDZ6eDFFSXZtRitCd1FTcWprUGVjdHBQcENaVHo4eHkzcHQvTnJhdXJz?=
 =?utf-8?B?YVRIWnBXVStBOFpzN1ozZmFtbkxzbmdoUFU5SkdTTEtxdUE0NVBSV0hQYTgw?=
 =?utf-8?B?NUVGSitlcXVkaE1URnRRaXJVNS9SM1grSEthcDE4bnlrQVhmV0c3RFVoN1B1?=
 =?utf-8?B?ekwvY0FZQXF4T2hsaWhLb0d5WnBzdEM0dGpFYm5yL1Q4N0JTQTJHcmZtbTI1?=
 =?utf-8?B?M1N6QnFncEpvdkRTVjAxd0pOYW9sWStrd0pWTXlHV0Q2SUpQMlZJTjFTZ0E4?=
 =?utf-8?B?cHJXZU8vdzJNVGxSVE9OWFdPZWRRZUlOakFFSVJ5UUs1SDlDaVVTVUFnajBE?=
 =?utf-8?B?NnRMMjNOb1JrdUVaSDZERTB4YkVMc1hua2RlemgzT0g4c2dhQ0dQaytVMnJO?=
 =?utf-8?B?R1lYUDgvV1lqYnoyVkNBbGR4cXdVSHZXeG13S0MxSHpqSlNjSjlVWkxEMFdD?=
 =?utf-8?B?Z25QT29mTVdSenNNakRQVDFNeWZDU3JGb3JUeXdNSFJYcnRidzZFaWovdVNp?=
 =?utf-8?B?WlhWR3FxeFNZd2FhV0R1WEJ5blRhUkZocXFGMVB1eUowS2tkanF2M3lPMXZx?=
 =?utf-8?B?WkZyUjU3U25nN01SOVRBWE5NZEdTalQ2T04rNjBzU2xiTi85YzI3Q1kwbmtT?=
 =?utf-8?B?YjBmc1ZseUg1bzFMQUczbi9BYnRUSjRNemUyNC9rRFR6WUpjRGt0aHRvcEpx?=
 =?utf-8?B?eUc0dVhCUjRtVysxUE9VbEtRRFp2WlJiSzdyRExwZ25EMFlVdUc4WW5zaFg3?=
 =?utf-8?B?dUJhZ3hEajN5RThNUGRCMmY2NGpneUw1bUkzSkJNS3lFVnZJWDVRQlAxWXoz?=
 =?utf-8?B?SXpaL1QyS3haNHdoVlRqc05tSkVOZGpjZzJpSDdlVGNPVTlOMDJlaVNsZlFj?=
 =?utf-8?B?NTFqQ2VHTUhMTklZcVJqbHR2aU0yZnlEQUJlZ25kV0hRL3ZoVWgweFRjY042?=
 =?utf-8?B?R3EwUElUUjNYZzZ2dmhkK2VXQlBsY0ZQV0J0NTB6WFA1NkpEcGs5Y2NzdzlI?=
 =?utf-8?B?ckJBaDJCRlRQOENlb1ZDK0g3Z0NVSVpkd2djYlRwMUJldG54ZVZRa0xoVjk4?=
 =?utf-8?B?UXhsdmlRTmtwRzdPYmlySXVuNGw0RUZXdUlWc2RWbVY4VGNHeUhBUDM1NE8v?=
 =?utf-8?B?NnN1YUdZTS9aS1UzSDNZU21HL0c1SG5VMnVSNE9OclVRb2dENy9PREt4ejVn?=
 =?utf-8?B?Q0Zad2orVU9GSFhjelIxdGdMeHhkR1VBNERDcHI4SEhVQW9CajhBd0ZzUW5r?=
 =?utf-8?B?VnBpditXSVZUZHFMdnpKL3JCb3pScVJaT0p0S2NPRFBBZHVadGdRZ3VYVXdO?=
 =?utf-8?B?aDNvK1Z5MkozSk9XR3Vqa0ZjN2p0M3lsR0RORVVkMnBqRnluNDd5ODlncXVH?=
 =?utf-8?Q?m78MYkNpXuzCwwBk1CFwas0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82615556-0539-49ed-07d0-08db1079a87d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 23:58:10.8629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DIX2o/nTLIIsak7wu9Y3Lh6K189gh0QjHIiJxTEZXTYbCADZ+RVOer38MCL8XPzRiAXCSzDW4fU0o7MER7CHTP5jV3C4iyWAf7Odlj9yhwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/perf: Group engines into
 respective OA groups
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 12:55:59PM -0800, Umesh Nerlige Ramappa wrote:
>On Thu, Feb 16, 2023 at 08:10:29PM +0200, Jani Nikula wrote:
>>On Thu, 16 Feb 2023, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
>>>On Thu, 16 Feb 2023 02:51:34 -0800, Jani Nikula wrote:
>>>>
>>>>> +static int oa_init_gt(struct intel_gt *gt)
>>>>> +{
>>>>> +	u32 num_groups = __num_perf_groups_per_gt(gt);
>>>>> +	struct intel_engine_cs *engine;
>>>>> +	struct i915_perf_group *g;
>>>>> +	intel_engine_mask_t tmp;
>>>>> +
>>>>> +	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
>>>>> +	if (drm_WARN_ON(&gt->i915->drm, !g))
>>>>> +		return -ENOMEM;
>>>>
>>>>No warnings or messages on -ENOMEM is standard policy.
>>>
>>>Hmm I think this is the only error for which this code is failing the
>>>probe. So if we are not going to fail the probe, we should at least allow a
>>>WARN_ON? Exception proves the rule?
>>
>>A whole lot of other things are going to go bonkers on -ENOMEM, and
>>getting that warn isn't going to help anyone...
>
>Should I just add a debug message here instead of warn_ON?

nvm, you already mentioned no warn/message on ENOMEM.

Regards,
Umesh
>
>>
>>Maybe we do need to fail probe on this after all, but it just seemed
>>pointless at the time it was introduced a few patches earlier.
>
>Sorry about that, I will fix the order of patches.
>
>Umesh
>>
>>BR,
>>Jani.
>>
>>-- 
>>Jani Nikula, Intel Open Source Graphics Center
