Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC28703CD9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 20:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810A010E23E;
	Mon, 15 May 2023 18:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A522510E23E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 18:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684175967; x=1715711967;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BgKYvD2wOXIm9u86AogM/FnHsfe1uLfWIjIm3IEbEwM=;
 b=gPf0UlonUp2AiV9HCV6UreIVoS+xlIh42o+4H9TVpSTum5OmGishgeJM
 0goTlIgUsM5y7krUSawk3/4coRaatzPRQViStanEv6gmBZ4RiRTEBb15X
 1I3wbfmMcYLIpf75VLxYa3aTjgt5vqvgmXT0ePk+WTvTFPONWjrul3S7o
 KzGyeAM1KlbzqPtDRZSksuc8PdylR5J83gEhjvLG7lMMr78ePqw2EYO5W
 sTzTBRVnb2S1mTz8oefwSINfyWudRDK+7tUEObg/tyr5SlQ4Vwxug3+O7
 4ls67w/BERsfUsgyJN2tv3K6gMKGxVncfT6rvNn6D7+JbEChVHLTBLmL5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="340641997"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="340641997"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 11:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="875306013"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="875306013"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 15 May 2023 11:39:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 11:39:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 11:39:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 11:39:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 11:39:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAeAMQfou+hnfCdWPiaUaOovzqoiU2eTtizeCs3WPDL4QBN1lrCLG8vJOPU2ZYPvSqFKKZ5VY9Jd4Ela//rnFFVlkTjic4rPIiRLmcEMzjtcm/iUh30tabDYKJ01hGLXhxj9lALp6YYYwhThBVtc5ylKuaohwIHecSmuiyHf+LGMZJo+sPGpXlLoxZDJxK3vPLqnqCgWcy+8iGdx1sFLTrDdYXK+nkxpjW6CAmhMKDqqph3olxN5C5wzmK5P3DRS6eBK0X+FI5w5j4pTtSaSwfcSG68oqqtrufeVKjT9E4EOF0bmaFs2jIZR+0E2bf2+08Iiu3jCWoEDyrHgTNn92w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKg2gM5afwsfnMXwRO/NYcsNKYtId5AiNk3yzMhe82E=;
 b=N6FmY+0PIRTtHtyJMAEeyUszdRivqPfEQabLj0w6bvx/mj7ELN5hkYgOJjgJ1wTtK7XQM4pDTlA4sCpnYSDX9IEKtUqlMlJVhr7uvbCTAKgjdZYkeRK2xHvKiKbbW2vuiDXeWlRVMXJbdZANoUWmLKKt20HHzwtLlfQTtIsSmOy5UvvRzd/57cdJRgbyK34x3fj8hHBHXSArGpofOPJarWr0wxUJKyKa6K0qoNGH9g4zEPoKFW1gV19oqcGVpfcxThQMVjlfbqNiinygDCw/TjggsfPl4PahytdhuAF+jKDsLfq/W2Vugd/10HG2hO1gClr68XlE3DVj7gtrcS7mCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.30; Mon, 15 May 2023 18:39:22 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%3]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 18:39:22 +0000
Date: Mon, 15 May 2023 11:39:20 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZGJ8WE23hzKZWWIU@orsosgc001.jf.intel.com>
References: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
 <20230515064416.3054707-6-umesh.nerlige.ramappa@intel.com>
 <0a35b039-dbcb-2785-a60a-f98fc2b54a28@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <0a35b039-dbcb-2785-a60a-f98fc2b54a28@linux.intel.com>
X-ClientProxiedBy: BY5PR17CA0024.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::37) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM4PR11MB6477:EE_
X-MS-Office365-Filtering-Correlation-Id: d235ea31-b80f-418e-05ea-08db5573b336
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bRhB/kCj2Y4it2IJb6tw1M+80c8LPVGno6yV9ALeKPClk/3sqxzQKXZaIm3n/C+ZHTo2gdPGwKpEo+qJiuQ7gWS+aNY/CYLrr51eDryvP2d3xORpGVmQd+JmIrA057rPGGmUslI/zUUF7yGsKaOpPrjGNeFhO2Fyc66hYYgDE9a7KITHZXGOyRdNdm6pk7JDyCEqUBnDEcvo0nvqahLMGe3LzYbjzsmPs6LuUJUu0jKoB5uHMabvmF5B50RWXUnVyYArw1few2D+w4xOwPJLfzZIM/8FPA6tiic/s+HiDcUF5b2HCtL/rP8ToQHmrfdvY5sQ7ZS1CVgXTDDEZHQ0zP9MO09FoNtOtXukflvfgd1bPMTXSGJ+2pNVXnPi6/MsFsrVkbfBcB8ME2aBBFXJRazrHNc7lOKUoEoDKP6fuSagJ1NZxaQvKuim5DRbu00fKuCAO55YePIuq/7fUCStAe6Kb/IdUehuBuW7mVAr56GecO4c4ovsI7tGwQ+H+PPLSA/8Vr1CffzpZLL/AZHZ81whAjr6fpA5R69aJDUWdFpEz8TQRVJG02GHvTJ63aP9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199021)(86362001)(316002)(66946007)(66476007)(4326008)(6916009)(66556008)(478600001)(6486002)(5660300002)(8676002)(8936002)(30864003)(2906002)(38100700002)(82960400001)(41300700001)(6512007)(186003)(26005)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUp2bE9oYjN6aStwc0R6bUpjY1FZS25tUjl5aVVDQ1l2QkxtYkhqSktiRkd4?=
 =?utf-8?B?bnFBdU9PdFJLMndCVFNiM1NlSjBPY3JIczhpNFc0QTR1ekhVdXp0Tml2bkxO?=
 =?utf-8?B?Tjlrb1krNGtMSkNoNVRlR21Zd1lBVGpiY1gxTFRnVEtiL2dGUGNnMGM3aG9u?=
 =?utf-8?B?bTl6eEpweEM3RjNIYnBqcWdxOU1FdUd6SHFjWE50RnYvekZCWXJhODNPQ1By?=
 =?utf-8?B?NEpHMFNiUHJBaDRRQitGTWZCL3J6TG14ODYzNTNnbXVGYnFzSU9kK3dFV2Ny?=
 =?utf-8?B?cjNLUG1iNk9LK1AzMlUxNEhUUzc5TjluN0RoVnorYk8rSXlCc1hLQlRxZ2N0?=
 =?utf-8?B?T2VzSzdVVmR2Q0kxZ01lM0N2dWxKMEt4TVUvTWU1NkQ2RS9BOGFwbFlqZWpw?=
 =?utf-8?B?TlIxV1NmV2puMUxoZWt3dzlnVENrVkhvU1VkQ0lPNXFXSWU1NnovL2NGcEtM?=
 =?utf-8?B?M2RMTkVRbi9sUVdzUDFsYWJqTEZJQW5VM2tzMVJzZm9PUTQra212aFFFVlpK?=
 =?utf-8?B?WmkrRmdDUmVWTHhCTzdEVXdMdmpMSXJodnNIVWNEbXlMVEhYUEh1N282VFkx?=
 =?utf-8?B?ckFndHIxanR0ZHpCcTNzRzIwODZSUE4xQWlrWEFaSDlvZXI3UTRzK2U1QjQ0?=
 =?utf-8?B?YVNpTmZpdkk1L3BlT0ZXc3RYVTVUcE9oYytNZU5VaEhXajNrdGNrNjNPN1pt?=
 =?utf-8?B?ZDd2bENqVXNuUTRwcmZuaCtyZTErbTEyb2E2dGNxMEM3S001MXliUFEwZm9u?=
 =?utf-8?B?Njk1cGEzc3BhTE5ERFNUdGZBZERkNTdYSTFjTmI3bzhBeGxxb25va1BEMytT?=
 =?utf-8?B?bEJzVzRpZjFaUUF2STdKeGVjMDh6TkhsR3YvcWMxMkxGcCtteHJQMW1wZ2pT?=
 =?utf-8?B?TUxGQ01iOGJnTW1TeEF0Z1grc2JmK3NJNVVKbG8rV2pPVElidndlU1hFb2I3?=
 =?utf-8?B?QmZmSkM2eUVFQmFtT0RsZXpmaEpJMFZJWHpyWEhhU25Oc2poZXdPeTVQMHVU?=
 =?utf-8?B?dDV5dHZtRXk1ZlRjTnRJUWM3b1J5YjgyY3hFSEI0dWxCWlo5UXBmV2NkMlNR?=
 =?utf-8?B?R1N3a1NOazFXK3pUdzZ6bmhPVklGOUhDSjdNVzIxeXkzcXNmWHloRzV1NitZ?=
 =?utf-8?B?SjJudTYyQngzUnhQUGYzeXd6U0xOclNteHNNZVFqOUZJdDdtK0F6VnBIYzlW?=
 =?utf-8?B?T1ZXeGlJOFpERHp5d0U1R2h6VFpTR3pMRlF1TWExL0RGdGdHUWlpNmo3ZnFa?=
 =?utf-8?B?SERES3ovaDk5eGs3UEtMa3B1SDZ2THI5S1RzVjZXa3RSeUNzN3YvcnNNYXBu?=
 =?utf-8?B?MWxFUXhESkNGQ0xYenY1RjcxSXIwbnU4NzBlOWl1b3RqUGc4WGlqZzNkaDhX?=
 =?utf-8?B?WVV5MHlkM3ZGY0hPRGZsbmFOdUJkK21JWkhsTW1tWC9hZEtyUThRYnZuUmFW?=
 =?utf-8?B?N2xDSjdydDhTOFRSUTVtK3p1VGFzQWlXZ2RJQW8zalBiWXdrQVB1cjc3cDVM?=
 =?utf-8?B?VmlvY2cxVmdZRkZzY3JHY1NhdmZKQ293SGhiVzdybXVpdE9Wb0ZSYjZuLzJS?=
 =?utf-8?B?bncxN0p5RkxZRGh3MDBZTVVJb2RmbGZGK01VbzhKVlJ6WmErM1p3Z25XMFNW?=
 =?utf-8?B?Tml2Wks5OW1xSU5naVIzUVRNaWYra2sxRlpsMm13V0lzYzR2TFZhaUtaTUd0?=
 =?utf-8?B?SnFGTlpBV2d0ZXJGTGRvNFI3N2dFZmRrbG83MWpJS0FxZWVVVElVOTFMZ2NV?=
 =?utf-8?B?dkVyaFN6cmkyc2N3M3lrYzJaNWRYR2w2VHVDZU5RUWJRdThhYXdZcktRT1Mw?=
 =?utf-8?B?N1lVcDNhc3hxcVRqV1QzUW1OaVQ2NXFxbDl6Mm5ab1RDZEt4ZzJrNFdOOVhW?=
 =?utf-8?B?Nm84aUFvVk1Wdkl1NVV5em9KTzhyd2g5bzlyT0ZDQTdpUDFTa1hxZWxqckFI?=
 =?utf-8?B?ZlVZSUQ3ZlBYSENEU1dORm5yQlJsTWd0WjF0N1QwTlJ3aXkvWjVKOUk5MTQ1?=
 =?utf-8?B?V3NkSHhFSHpVOFFURlozL0sxSXlad0pseXcvOUZ5VDBPNklLMEtXQWRFNTJO?=
 =?utf-8?B?aEFtK3QvQUtKNFNkMVJyMXBTKzFidXhlUlhwT3RCdWR3bGpObithZkFaWkI4?=
 =?utf-8?B?RWVCTE9RU0hIOUkxNWRWQ3BxaWNSaVZQaDZ4WTlsN1Z2bWpvdXIrWXJHc1Ny?=
 =?utf-8?Q?kwPDuV3TcNTMIAXOMeWluEA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d235ea31-b80f-418e-05ea-08db5573b336
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 18:39:22.1620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6kxnT7OgwhG/a6e0b59P/7UcgWmawLYl4vqmk+Wffdx6O3Ml2lUDVxM21KPOFtas9nJJoDZ9X9TaotNyKqsS0Zxr4YOxVF1apmY+R0VTik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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

On Mon, May 15, 2023 at 11:12:33AM +0100, Tvrtko Ursulin wrote:
>
>On 15/05/2023 07:44, Umesh Nerlige Ramappa wrote:
>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>>Reserve some bits in the counter config namespace which will carry the
>>tile id and prepare the code to handle this.
>>
>>No per tile counters have been added yet.
>>
>>v2:
>>- Fix checkpatch issues
>>- Use 4 bits for gt id in non-engine counters. Drop FIXME.
>>- Set MAX GTs to 4. Drop FIXME.
>>
>>v3: (Ashutosh, Tvrtko)
>>- Drop BUG_ON that would never fire
>>- Make enable u64
>>- Pull in some code from next patch
>>
>>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_pmu.c | 148 +++++++++++++++++++++++---------
>>  drivers/gpu/drm/i915/i915_pmu.h |  11 ++-
>>  include/uapi/drm/i915_drm.h     |  17 +++-
>>  3 files changed, 129 insertions(+), 47 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>index 725b01b00775..b3dd9e51c5cc 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>@@ -56,11 +56,21 @@ static bool is_engine_config(u64 config)
>>  	return config < __I915_PMU_OTHER(0);
>>  }
>>+static unsigned int config_gt_id(const u64 config)
>>+{
>>+	return config >> __I915_PMU_GT_SHIFT;
>>+}
>>+
>>+static u64 config_counter(const u64 config)
>>+{
>>+	return config & ~(~0ULL << __I915_PMU_GT_SHIFT);
>>+}
>>+
>>  static unsigned int other_bit(const u64 config)
>>  {
>>  	unsigned int val;
>>-	switch (config) {
>>+	switch (config_counter(config)) {
>>  	case I915_PMU_ACTUAL_FREQUENCY:
>>  		val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
>>  		break;
>>@@ -78,7 +88,9 @@ static unsigned int other_bit(const u64 config)
>>  		return -1;
>>  	}
>>-	return I915_ENGINE_SAMPLE_COUNT + val;
>>+	return I915_ENGINE_SAMPLE_COUNT +
>>+	       config_gt_id(config) * __I915_PMU_TRACKED_EVENT_COUNT +
>>+	       val;
>>  }
>>  static unsigned int config_bit(const u64 config)
>>@@ -104,10 +116,22 @@ static unsigned int event_bit(struct perf_event *event)
>>  	return config_bit(event->attr.config);
>>  }
>>+static u64 frequency_enabled_mask(void)
>>+{
>>+	unsigned int i;
>>+	u64 mask = 0;
>>+
>>+	for (i = 0; i < I915_PMU_MAX_GTS; i++)
>>+		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>>+			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>>+
>>+	return mask;
>>+}
>>+
>>  static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>  {
>>  	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>-	u32 enable;
>>+	u64 enable;
>>  	/*
>>  	 * Only some counters need the sampling timer.
>>@@ -120,9 +144,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>  	 * Mask out all the ones which do not need the timer, or in
>>  	 * other words keep all the ones that could need the timer.
>>  	 */
>>-	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>>-		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>>-		  ENGINE_SAMPLE_MASK;
>>+	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>>  	/*
>>  	 * When the GPU is idle per-engine counters do not need to be
>>@@ -164,9 +186,37 @@ static inline s64 ktime_since_raw(const ktime_t kt)
>>  	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
>>  }
>>+static unsigned int
>>+__sample_idx(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>>+{
>>+	unsigned int idx = gt_id * __I915_NUM_PMU_SAMPLERS + sample;
>>+
>>+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));
>>+
>>+	return idx;
>>+}
>>+
>>+static u64 read_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>>+{
>>+	return pmu->sample[__sample_idx(pmu, gt_id, sample)].cur;
>>+}
>>+
>>+static void
>>+store_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample, u64 val)
>>+{
>>+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur = val;
>>+}
>>+
>>+static void
>>+add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val, u32 mul)
>>+{
>>+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur += mul_u32_u32(val, mul);
>>+}
>>+
>>  static u64 get_rc6(struct intel_gt *gt)
>>  {
>>  	struct drm_i915_private *i915 = gt->i915;
>>+	const unsigned int gt_id = gt->info.id;
>>  	struct i915_pmu *pmu = &i915->pmu;
>>  	unsigned long flags;
>>  	bool awake = false;
>>@@ -181,7 +231,7 @@ static u64 get_rc6(struct intel_gt *gt)
>>  	spin_lock_irqsave(&pmu->lock, flags);
>>  	if (awake) {
>>-		pmu->sample[__I915_SAMPLE_RC6].cur = val;
>>+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
>>  	} else {
>>  		/*
>>  		 * We think we are runtime suspended.
>>@@ -190,14 +240,14 @@ static u64 get_rc6(struct intel_gt *gt)
>>  		 * on top of the last known real value, as the approximated RC6
>>  		 * counter value.
>>  		 */
>>-		val = ktime_since_raw(pmu->sleep_last);
>>-		val += pmu->sample[__I915_SAMPLE_RC6].cur;
>>+		val = ktime_since_raw(pmu->sleep_last[gt_id]);
>>+		val += read_sample(pmu, gt_id, __I915_SAMPLE_RC6);
>>  	}
>>-	if (val < pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur)
>>-		val = pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur;
>>+	if (val < read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED))
>>+		val = read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED);
>>  	else
>>-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = val;
>>+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
>>  	spin_unlock_irqrestore(&pmu->lock, flags);
>>@@ -207,13 +257,20 @@ static u64 get_rc6(struct intel_gt *gt)
>>  static void init_rc6(struct i915_pmu *pmu)
>>  {
>>  	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>-	intel_wakeref_t wakeref;
>>+	struct intel_gt *gt;
>>+	unsigned int i;
>>+
>>+	for_each_gt(gt, i915, i) {
>>+		intel_wakeref_t wakeref;
>>+
>>+		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>>+			u64 val = __get_rc6(gt);
>>-	with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref) {
>>-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
>>-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
>>-					pmu->sample[__I915_SAMPLE_RC6].cur;
>>-		pmu->sleep_last = ktime_get_raw();
>>+			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>>+			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>>+				     val);
>>+			pmu->sleep_last[i] = ktime_get_raw();
>>+		}
>>  	}
>>  }
>>@@ -221,8 +278,8 @@ static void park_rc6(struct intel_gt *gt)
>>  {
>>  	struct i915_pmu *pmu = &gt->i915->pmu;
>>-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
>>-	pmu->sleep_last = ktime_get_raw();
>>+	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
>>+	pmu->sleep_last[gt->info.id] = ktime_get_raw();
>>  }
>>  static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>>@@ -362,34 +419,30 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
>>  	}
>>  }
>>-static void
>>-add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
>>-{
>>-	sample->cur += mul_u32_u32(val, mul);
>>-}
>>-
>>-static bool frequency_sampling_enabled(struct i915_pmu *pmu)
>>+static bool
>>+frequency_sampling_enabled(struct i915_pmu *pmu, unsigned int gt)
>>  {
>>  	return pmu->enable &
>>-	       (config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>>-		config_mask(I915_PMU_REQUESTED_FREQUENCY));
>>+	       (config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt)) |
>>+		config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt)));
>>  }
>>  static void
>>  frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>  {
>>  	struct drm_i915_private *i915 = gt->i915;
>>+	const unsigned int gt_id = gt->info.id;
>>  	struct i915_pmu *pmu = &i915->pmu;
>>  	struct intel_rps *rps = &gt->rps;
>>-	if (!frequency_sampling_enabled(pmu))
>>+	if (!frequency_sampling_enabled(pmu, gt_id))
>>  		return;
>>  	/* Report 0/0 (actual/requested) frequency while parked. */
>>  	if (!intel_gt_pm_get_if_awake(gt))
>>  		return;
>>-	if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
>>+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
>>  		u32 val;
>>  		/*
>>@@ -405,12 +458,12 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>  		if (!val)
>>  			val = intel_gpu_freq(rps, rps->cur_freq);
>>-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
>>+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_ACT,
>>  				val, period_ns / 1000);
>>  	}
>>-	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
>>-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
>>+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
>>+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
>>  				intel_rps_get_requested_frequency(rps),
>>  				period_ns / 1000);
>>  	}
>>@@ -444,9 +497,7 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>  	for_each_gt(gt, i915, i) {
>>  		engines_sample(gt, period_ns);
>>-
>>-		if (i == 0) /* FIXME */
>>-			frequency_sample(gt, period_ns);
>>+		frequency_sample(gt, period_ns);
>>  	}
>>  	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
>>@@ -488,7 +539,13 @@ config_status(struct drm_i915_private *i915, u64 config)
>>  {
>>  	struct intel_gt *gt = to_gt(i915);
>>-	switch (config) {
>>+	unsigned int gt_id = config_gt_id(config);
>>+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>>+
>>+	if (gt_id > max_gt_id)
>>+		return -ENOENT;
>>+
>>+	switch (config_counter(config)) {
>>  	case I915_PMU_ACTUAL_FREQUENCY:
>>  		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>>  			/* Requires a mutex for sampling! */
>>@@ -499,6 +556,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>>  			return -ENODEV;
>>  		break;
>>  	case I915_PMU_INTERRUPTS:
>>+		if (gt_id)
>>+			return -ENOENT;
>>  		break;
>>  	case I915_PMU_RC6_RESIDENCY:
>>  		if (!gt->rc6.supported)
>>@@ -596,22 +655,27 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
>>  			val = engine->pmu.sample[sample].cur;
>>  		}
>>  	} else {
>>-		switch (event->attr.config) {
>>+		const unsigned int gt_id = config_gt_id(event->attr.config);
>>+		const u64 config = config_counter(event->attr.config);
>>+
>>+		switch (config) {
>>  		case I915_PMU_ACTUAL_FREQUENCY:
>>  			val =
>>-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_ACT].cur,
>>+			   div_u64(read_sample(pmu, gt_id,
>>+					       __I915_SAMPLE_FREQ_ACT),
>>  				   USEC_PER_SEC /* to MHz */);
>>  			break;
>>  		case I915_PMU_REQUESTED_FREQUENCY:
>>  			val =
>>-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_REQ].cur,
>>+			   div_u64(read_sample(pmu, gt_id,
>>+					       __I915_SAMPLE_FREQ_REQ),
>>  				   USEC_PER_SEC /* to MHz */);
>>  			break;
>>  		case I915_PMU_INTERRUPTS:
>>  			val = READ_ONCE(pmu->irq_count);
>>  			break;
>>  		case I915_PMU_RC6_RESIDENCY:
>>-			val = get_rc6(to_gt(i915));
>>+			val = get_rc6(i915->gt[gt_id]);
>>  			break;
>>  		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
>>  			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>index 3a811266ac6a..ea2d24ef5664 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>@@ -38,13 +38,16 @@ enum {
>>  	__I915_NUM_PMU_SAMPLERS
>>  };
>>+#define I915_PMU_MAX_GTS 4
>
>It can be 2 just as well, are there even any plans to upstream 
>anything with 4? I think there are sufficient assert in place to let 
>future someone know this needs increasing if and when. I mean 
>I915_MAX_GT too really in that case.

Makes sense, will change to 2.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
>
>>+
>>  /*
>>   * How many different events we track in the global PMU mask.
>>   *
>>   * It is also used to know to needed number of event reference counters.
>>   */
>>  #define I915_PMU_MASK_BITS \
>>-	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
>>+	(I915_ENGINE_SAMPLE_COUNT + \
>>+	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
>>  #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>>@@ -95,7 +98,7 @@ struct i915_pmu {
>>  	 *
>>  	 * Low bits are engine samplers and other events continue from there.
>>  	 */
>>-	u32 enable;
>>+	u64 enable;
>>  	/**
>>  	 * @timer_last:
>>@@ -124,11 +127,11 @@ struct i915_pmu {
>>  	 * Only global counters are held here, while the per-engine ones are in
>>  	 * struct intel_engine_cs.
>>  	 */
>>-	struct i915_pmu_sample sample[__I915_NUM_PMU_SAMPLERS];
>>+	struct i915_pmu_sample sample[I915_PMU_MAX_GTS * __I915_NUM_PMU_SAMPLERS];
>>  	/**
>>  	 * @sleep_last: Last time GT parked for RC6 estimation.
>>  	 */
>>-	ktime_t sleep_last;
>>+	ktime_t sleep_last[I915_PMU_MAX_GTS];
>>  	/**
>>  	 * @irq_count: Number of interrupts
>>  	 *
>>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>index ba40855dbc93..f31dfacde601 100644
>>--- a/include/uapi/drm/i915_drm.h
>>+++ b/include/uapi/drm/i915_drm.h
>>@@ -280,7 +280,16 @@ enum drm_i915_pmu_engine_sample {
>>  #define I915_PMU_ENGINE_SEMA(class, instance) \
>>  	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
>>-#define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x))
>>+/*
>>+ * Top 4 bits of every non-engine counter are GT id.
>>+ */
>>+#define __I915_PMU_GT_SHIFT (60)
>>+
>>+#define ___I915_PMU_OTHER(gt, x) \
>>+	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
>>+	((__u64)(gt) << __I915_PMU_GT_SHIFT))
>>+
>>+#define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
>>  #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
>>  #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
>>@@ -290,6 +299,12 @@ enum drm_i915_pmu_engine_sample {
>>  #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>>+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
>>+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
>>+#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
>>+#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
>>+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
>>+
>>  /* Each region is a minimum of 16k, and there are at most 255 of them.
>>   */
>>  #define I915_NR_TEX_REGIONS 255	/* table size 2k - maximum due to use
