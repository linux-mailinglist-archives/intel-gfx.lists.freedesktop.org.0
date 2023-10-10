Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372737C4305
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 23:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E867010E169;
	Tue, 10 Oct 2023 21:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FD010E169
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 21:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696975041; x=1728511041;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CF+8I9Vgj8jkBaGjU4xDZqk919Ttcm2R65AZRZCSFMs=;
 b=A0y4v156hPp7UbD+q3bb8fP3TiDLVWGwiOUEl4MeLB9sTveB6jzo2uPo
 TRdGx2EOXsIS7NDI1NWIWTjGHgi7zPG/RjE2+tu8rgRMGVnE2csVKYt4H
 bVN+97PKN6yxDLB21oH1j6Ijx2z5k7OpUX1PS+kOGNXwQHXxlNghenhyz
 QEoc44SkHCto/QA2HjySEJDKRsD5ZxL8XH546q4Tdx6NqhaaeRERUAr8Y
 d4qFg30sj2KEDBB7wAz6CZTuCShCvxS8yVOIpWhxqSnmmjZR4gPiqPi6s
 0PaFPYd62PjO47kyGKNqlT+/7ATipD7mjDfH/kiOAva5AKNPxPWIjP57d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415544712"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="415544712"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 14:57:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="747207721"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="747207721"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 14:57:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:57:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:57:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 14:57:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 14:57:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DM/sS74Qz298B339ZUaj9YtFjyZ168ckgjxcmwH/msQYFVZqhgWuG7EYWFWRFS8WtMg9agUQyz7TVJzOKboMSXbcwcUcUM9XbpBuVUUbNQlHjjsaCyWNt7hXtlfli+NOQEyJ42K9n8JD1GYoRlWMXgSFJuk602R6GCW0hfqFtEpA5AbKyl/d657ZGIgurQ0Og91i2Nqlw3mLbhTubyIGwyj1DP0IwlNI5ra4Ck5YutG+8kUosRhSuCofAcHVXbQWz9yKSnrSwoSrk1febz8Pie+oQcGM8WyWsS2J71hRXmNAb7SQ1y1Ueyr1YNOnyW7W12A5RNlTbemHSX0HTfvMXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XxdqEUQJ3JLwspgBETSTkTXajvyp2OBSKwqSwbynJLo=;
 b=dKDVIHiSEA7c6a5FX36jwbnCvL7cNkVsgL2+QLPuR/9OtI+FhMf++cQHGRCjDSLqE+MXHlTDvpMdyAAuVluS98aVfkeJOhYPKiDtAn3YSESFDzenv2YRWvVlLepqXA5QLN4SUp4BJd8YV54oywMjyXyBuguBotgHrAOzj59LRBl16rLgm9Hzy0qY/XHJp+GtjR05FI1jyFOAHxj3Csu13FU3D/M0GhKL2KJZRoHCibx3wHrKL341zLv7mi67rf7pF0mGfiEnUqXMtiBVSlPPRAbFlI//Rgo0soNkXmcvfPXIOvWok61QZto6tI9r5fjWFSS1v2KBlLjK9Q6yu6FtGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.43; Tue, 10 Oct
 2023 21:57:11 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 21:57:11 +0000
Message-ID: <f9f43e11-b6bb-4caa-ba2f-954289ccc7a1@intel.com>
Date: Tue, 10 Oct 2023 14:57:01 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
 <20231010150244.2021420-5-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231010150244.2021420-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0137.namprd03.prod.outlook.com
 (2603:10b6:303:8c::22) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DS0PR11MB7382:EE_
X-MS-Office365-Filtering-Correlation-Id: a5a67091-6edc-4208-4f70-08dbc9dbdaca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JXJfOADc2iFgCQBvNSSHJWGCEmeU5Oo05TLkyaYn0YZBV0Eqra9qyGaxs/SCzDjXpl6SAsX7kS7IX51JpEUY/PQv0sLo1FNqJ/rAGsscELoFZww9/SyJ6THgp3CPN3/YNOiu1PM9fRC/82ILMcOvEsdWv8EY2NUIhCw/2MpPY/oZO5PxGk4no+fo2ZfO4Itm19Sfi8bY63zgTOZBzlTNStzrbW8Uo9eALMeYawPSLMnd3UTAu4LsaJQFukWHJwlRlWMOiApg3jWCB2tYAjoRr7MyJ+SD10r5dPCt5UWhbvSfZNaZSyvcNYi6aZ86EiQrSZ+K0V22yMh9ZSDQNSQs3oIpSqHEztRBoVqbr98//k5EfoQth3LG8gjSV1No2hKrLsgBhzPJhmwgrSLNTvAZCSDlVUjBUz7ZB1lwCqU5RI34qg1K3qOurcHagWZowsX/2VCJfu1Om6UBfCqhOz8cKmK9VcPPB69Z/aepqFXrdNEF00um9GH7W3z0mNkDMaLKlprfmQCt0NbaTLiLSYqojvjcQPMV3M/1XY5Xs0cZAquWG9pZzTNkYm9xLbbuKV05kp3heegqxF6apJQSnfChb3TBalCUaF9suuOBOi8TmxE8jsoaaH3s+SagE/FmI2fZ69h2VTEv91+Ine58zZY71g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(39860400002)(366004)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(86362001)(31696002)(82960400001)(36756003)(38100700002)(31686004)(6512007)(478600001)(6486002)(8676002)(4326008)(6666004)(8936002)(15650500001)(41300700001)(2906002)(83380400001)(6506007)(5660300002)(2616005)(53546011)(66476007)(26005)(66556008)(66946007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnNzNEY4WU9XTld6UzFnV2FoSmlWYnZhc1RSMjRsUy95RGVoOHB4Z2VqNE9H?=
 =?utf-8?B?Z2NxeE5NOE9XS0R6NHVuaWZXaURvMGFrWTdQTHZTWm1ybnE5aEg3WnBBUXZq?=
 =?utf-8?B?MnFUeVFXRTllK1V4NEwvMHcxZGRoWkZTU2pGWUNoUTJLR3NrL1FNMEJxSmNB?=
 =?utf-8?B?SzVJM0VwRncyTS9rWEQ1VUk2SmF4YytvMmJyRjIvNUlTR0g3WGdQdE9iZ1hr?=
 =?utf-8?B?dGhpbWduOXQxNE9qaElMc0xzZVl3bE05cUVDUHFrYmxrZ2FuUWNsY1NNd2k2?=
 =?utf-8?B?Z3BkZHFwVnRVdUtJc2lEc0o3RDI1MSt5RjZJWG5NWmpJZDFJU05hYVc3Q3JG?=
 =?utf-8?B?dUl0c01DSHYyZjIxdGZzRHI3eXJhbitGNmIxVlJEZkljT0R5dWRFaC9Wa29Q?=
 =?utf-8?B?TVpHcFBpR2JtUE0xbUxKb1JRdVU3YWlSQ2IwVmJSWlF1SGlJOEhtL2RFdER6?=
 =?utf-8?B?MWhtYUZ5dmpnKzZRY3JMQ3dtMGFnNnFrQVU1dTZRbDl5YWcvMkp0aFJ6eUVE?=
 =?utf-8?B?UkJOZzJYWmp4S3BlT1crcml3QjBpVFVwSlB5cnR2NjZuMFdvV3dta1hsKzJq?=
 =?utf-8?B?d3h1M2pQT0hyaVFFamJrZE5qRUlkcG1mVWszNTV0WXpPUUVKbmNBQlJtemxV?=
 =?utf-8?B?SmVrSVpnVlA0dTBYZnhBbUl1U052bUJOMTAwdklQU2t6b0dEa1dTSHFhbDVt?=
 =?utf-8?B?NE5sMUNpMXlYSHFKWFdhL0VQNGgxSVJIaUZVdGxZWVdMNVFHT1ZXZWxjZERu?=
 =?utf-8?B?MUJ4WjVwMVNDaTRaTWRIdTVLbTF0N0JOSEt4SlM2Sk5OK3V0YTV5b2NLZ0wx?=
 =?utf-8?B?dnRtbE81TU1EUXlVRXRnOWdKVGIxRCt0QVBzM0dJbHdmZkwyNXZ2YSsvRUMx?=
 =?utf-8?B?QzduTzZHVGdNU01KYnZTaVcweUNOS3QwSWVrMXhGSnBBbFBFbWx4UnZjSkJI?=
 =?utf-8?B?RGhSQWFBWUtMSFlSTWZubUtFQmRyQ0h3SW9zbUpFY2ZndVdDSTFlVGgyeDMz?=
 =?utf-8?B?U0d6ZDFYRzFVSi9RYjY2L1gxSzdiQ2xIY3Bta0JvZEpocDZEbTNTRWkrZXcx?=
 =?utf-8?B?dEI1aVdaUk8rbDlTUTFyR3hkUCtibFpHblFVMDI4cnBETGFuT203NnBKeFkz?=
 =?utf-8?B?YmtCeVNJczkwcEJUVW1GS2NpS3FtVzdOK0s3YmNzM3Y1SUY0SmE0M0pDcUhD?=
 =?utf-8?B?STVXWGUvL2lkSXd0emVwamRzdUt4RENJeW1xMXo2Qzd1bldiYnJ1ZHd4R2U1?=
 =?utf-8?B?ck1IMjlQUlJ2cmtwMTZMUXdXYnVDaVNQWTJOdHZkUW10SDFUWE9zRDAzUUlS?=
 =?utf-8?B?TzNpWjBiQ1hENkxvamJtN2lkSloraWRwUHFCd0xpM2tIUEJIWG5IY1BFTDY4?=
 =?utf-8?B?bU1pd3ZQZjZmakhhclFTSXVIVnpMSVZ1MkNIRUpFODloRE5MRnVTYnJlRUds?=
 =?utf-8?B?NGZDazFzK1ByU2ZjZTBUV3BwdlBibjB5UlkrMjZ0eXR5Ykp5dk8vNUpVQnhL?=
 =?utf-8?B?NFY4YTJCQ2NydVYwT3J1cXVZN081RUdoWVF0cC9sUG1HVjBtYWpFMVRHQVkr?=
 =?utf-8?B?c3Z1MDRSTnRWSzgzZURGZHNaeG9WQkhSSy9rc0QxN0FaZEJnSXNMWkRBWGho?=
 =?utf-8?B?b0tUSjdpMWVDbkpYMHdPVStoTktpalpNLzNrdVhiL3RrNnBlb1pEZnFYWjlG?=
 =?utf-8?B?Z1JBbkw2eVYrbGxuVnRJQnkzS3Rsa01rcVI5QWdQbGVBNkZGQXZOOFZ3SkVX?=
 =?utf-8?B?SVl0eTVyOWFja0J1T25jVFc5VmF6enRmZVJjNVY1TVZQeWxicXVFODRvb2l3?=
 =?utf-8?B?MWszT2VRY1A3OWY5dlBWdXhhcjkvTmJ6dVQ5ZmJSemhIUDJ5Nzcwb1hRaWhu?=
 =?utf-8?B?Q3VGMkdHVFNNaVMvTUQzZm5hVHphYUlVOTZFWXd0aVVna0tTdHdrL2pqOG5S?=
 =?utf-8?B?TmtpTkFLTHpXVFNlWXB5RUZ4bDZyeVpQbWhCSWRJRHpIb0dWTExPVGdpZFM0?=
 =?utf-8?B?c0F3Z0pMKzN0RTlUL2pTeWErSHpySFQrWVhIVSt2Qk1mVHVmYStpSTFlU3Ni?=
 =?utf-8?B?ZzI3RkwzQlRYc3NidHdtZVJCY2lhSnBoZTN3WXNSMWhrU05kMDFCbVVrWDBR?=
 =?utf-8?B?d3JVc2VwUXpJV1dINlA1SGdTcUM0TDZRQldPcWRPZjNDSE1tZFZuNk9zOHpN?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a67091-6edc-4208-4f70-08dbc9dbdaca
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 21:57:11.0929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xZIGW4RNYmpBHiET/AssGPsNtQp6DkzRqQTeHCnXxRxDn1XaIk3aYovbDPTuElLREYo4NGbZMNV3f43TPs2iIAjBCD/f05xIdIiuhJgfn0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7382
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 08:02, Jonathan Cavitt wrote:
> In case of GT is suspended, don't allow submission of new TLB invalidation
> request and cancel all pending requests. The TLB entries will be
> invalidated either during GuC reload or on system resume.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 21 +++++++++++++------
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 +++++++
>   3 files changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 06c44f5c28776..ff7e7b90fd49b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>   
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e9854652c2b52..b9c168ea57270 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1796,13 +1796,25 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   	intel_context_put(parent);
>   }
>   
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>   {
>   	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	xa_lock_irq(&guc->tlb_lookup);
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
> +	xa_unlock_irq(&guc->tlb_lookup);
> +}
> +
> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
What is changed on this line? Or is it just diff being confused and 
seeing the move of the 'wait' declaration as being the anchor point 
rather than the function declaration?

John.


> +{
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> -	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1833,10 +1845,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   	 * The full GT reset will have cleared the TLB caches and flushed the
>   	 * G2H message queue; we can release all the blocked waiters.
>   	 */
> -	xa_lock_irq(&guc->tlb_lookup);
> -	xa_for_each(&guc->tlb_lookup, i, wait)
> -		wake_up(&wait->wq);
> -	xa_unlock_irq(&guc->tlb_lookup);
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 98b103375b7ab..750cb63503dd7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -688,6 +688,8 @@ void intel_uc_suspend(struct intel_uc *uc)
>   	/* flush the GSC worker */
>   	intel_gsc_uc_flush_work(&uc->gsc);
>   
> +	wake_up_all_tlb_invalidate(guc);
> +
>   	if (!intel_guc_is_ready(guc)) {
>   		guc->interrupts.enabled = false;
>   		return;
> @@ -736,6 +738,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>   
>   	intel_gsc_uc_resume(&uc->gsc);
>   
> +	if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +		intel_guc_invalidate_tlb_engines(guc);
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +
>   	return 0;
>   }
>   

