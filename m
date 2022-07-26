Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 256175815B4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 16:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4C090350;
	Tue, 26 Jul 2022 14:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D3290386
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658847005; x=1690383005;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T5VlQr+pepH5MtKQZVduJHCfUpIfocDAQ86zK+CKwo8=;
 b=YPpWZec5guRsQB+1eLWjGg5N1IktxFkynNbFGZ+K4nG8JnKoaSYO+qhP
 oszGmwJ+kssQ2UKS2q0YmqhZqrk092Wfe0uX9gbkOfLWNha5rg+19eHQT
 W1k2nwfgR1Di81JKymKb37HRpH3HJhZrZXHiuVlQS2ey1U3sIL0/w39Ig
 gT3GBVpvcRW2SvO2MeyHB9yt+Ky9MvGFLz380uN+ReCLf3iPG4NP3hAWX
 Fq7CXOxQL2LKv3zDdUCKqQ1ctifcf4ok+QELZWRA+cq1mJVVmkZEOrjca
 iVZ6nQGys8HW0nteXsY1NUIipENDO3Cb5KS0R0139Cxn0X4QjfSfympX/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="351964661"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="351964661"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 07:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="632785990"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 26 Jul 2022 07:50:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 07:50:04 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 07:50:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 07:50:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 07:50:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/Jn6dbBZlCmquhiSxci7QXtKAKCsJj5w7Yzogno5Mz//DGbNaopw4q+QamvIMTm3ZxQyJZrrqx8BDv5P18oivqzeqCLcxan6bV1MOQfM3onmrlLebAoGKFb9jR4EgKZsonPWl8zt89JDBw4qKKo1NjAQDrK0i0jV3BxHoI+PEo2PdTJMq5yC6MUZ9br50lNjA9tUaMF5ihZieQLQrSx51T+vj/iyn1NMj0RTRsvt2eUQWtd+sZRlwR8fHREsB4rwVMWGWoQNkE6/izKVzfDFnWt44NJ11t3NALGC0DXwIk83a3Gmud4ccvUyFcmzsBeHpsjVoD9FlubuxnTPHYj0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fatsTXMTmtjD2fi/H/wik1gPx243IYfJtZzmpfttvg4=;
 b=fp+0ENocvRQd2hOwbQaKuCrGI4su7qLgeIohp8kHXu2nRotoq+Hn8xoXyCeQ12slqsLE+m8AouPHhHizOyxEHB1RWGbbEIZg8AhLeDVB6hLGrqLvP7dK7QZPNFg3Kc8VqlZ4wz9O0sSN1WpYsU4blZ/mq9GjBoeAcPRNOfGdGio4Fe7agOllot+BDZYbsK+WsoNqIr7wv2rlq1wGCHFPQtHsPPDVh/W+DFEwOBPsUu1Q88PhaO9g0N+L3RgIBE9zJhg6UHZeQU+49j8HzaYyvP588Pg7IUk+tnvmJxmLVNembMJVL1/wucdt79i8ULhtQ3WQFCx4LbNqnEmbQGpFhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MWHPR11MB1774.namprd11.prod.outlook.com (2603:10b6:300:10a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 14:49:56 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e%5]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 14:49:55 +0000
Message-ID: <5166fd90-7f37-0198-4222-cb7a7286753c@intel.com>
Date: Tue, 26 Jul 2022 16:49:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220726144714.18251-1-nirmoy.das@intel.com>
In-Reply-To: <20220726144714.18251-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0135.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::10) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65093d67-fdb9-4de0-62ed-08da6f161ab2
X-MS-TrafficTypeDiagnostic: MWHPR11MB1774:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZJOy6TdStVAEpMgfsDiDBNAcU/iT6XYReWgbUN/JqUn55UGHmgYH94jw2tqKMKJ97M6wBtH/Z/ShyMTTe6kFFIGh5dMuPTUmFRpBGsKNr7og2728WS163qqOSvUV0tAVFGGQCpQhemmbTLB9XMpwt589caWQSzTINZnLWfEFOO1g5uk1jruEMmzgcXTUrhurCOE0IXqZ8/rp23xVhsleATGRgNL/2R5VO/w1uIgKUm/6+4fUQXbBG22FNR5KnVlPYR10yv6ZHriwT600uaXMWQurFMk4cESf9RalDD0Irow17iz0nE6rYMN2cFkMW/459oqTnUGVctEBkw48oqSFhZ7G8RJXQcyYoP5u3pEQOTF0hneryUf5lq1aRpeQGBAtKPcTkkq+zm2Jr5DoWw9f8mErkiJKgwFqko59PUMBMeg6tCkx5CZBjB7u3wCnnjeNJbDxV2KSqNUW240vFDpBvi6HOGDncXLf3ztcChct/mCIPzwMjGhgKqny7sMCbP1NOyNV+9toqkDYQ7LnRY5uGVlQSCm3vKGnROAEMQXsto89AzmH0gvviXScZFVFHZkw8OoKevpgmz/uyAaPi2p9vmPrHtdonJahgXIPhceAk0OgnRhbOgyTjYG2jBCihGsaS31VgUYXMJzAwL5DdFpZbWnRDtldgCvkXf+OZKoFRbyjnoQznsfsUzV3QkWlPqqdfB+laVVuJLMpF2f4CZmW7OicaWQOjPZPFe+1Qu/cAVw3Z1cPTnJDxzmOCz1vtQ04lL03lhMDXLaOiB4GkxMLng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(39860400002)(366004)(136003)(376002)(186003)(83380400001)(2616005)(107886003)(36756003)(38100700002)(2906002)(6916009)(31696002)(316002)(5660300002)(8676002)(4326008)(8936002)(966005)(66556008)(82960400001)(31686004)(41300700001)(478600001)(53546011)(86362001)(6506007)(26005)(6666004)(6512007)(66946007)(66476007)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3N2UHN6NzdJUnNRV2VFZGxCT0taMngrWUZ0eFlKUER4eGl6QllmVmdTZjF0?=
 =?utf-8?B?UkFIS0w3aGtiQVlQT00waFhoWUhjZVRoUW9tM0N5TjRtZFhkWmtRTlI5Qjl3?=
 =?utf-8?B?eUpIbS9XTTZpVkR3TVM0ai8rMy95bGNjRHl2NzdqVjdXRjNUVUtWRDVmNTRM?=
 =?utf-8?B?Ni95aVFtSldsd29DS3F0TWlQQisrSjIxa1FLNFFTdEphK2dOV2lTTW1RYWxL?=
 =?utf-8?B?SklEdXJmTjBST1FISGdWRHFqdU8yTjEyaDNUek5WMEtub1pHMkFsMVlZMmI2?=
 =?utf-8?B?bEhROVFibzYwSEZSamhZcFBqclRldDlZVHpMMFEzOUwzZzZLZVZ6bnEySzFx?=
 =?utf-8?B?VWdSZitiTkxmbFRhOWVhYmRIZWI2NVp1ejFrTEdhZzNZMlJhUnNHR0s4R1R5?=
 =?utf-8?B?ZnRyZ0VOeHV6NExacjc3MnZ5dCtZRTVKTWRQbjBmaHJ2TFlaczdrbnhpNzRp?=
 =?utf-8?B?STlKblVBQmM1V0c4eFVNN2VtMXBtR2NjM0FrcnZWVGdFZFY5L3ZuUE1JSVhG?=
 =?utf-8?B?ZnNBaDI0UGVoUkc3cDZiaWdWcEd1dVZXVnY0UzJ1S0pxanhhc0VXQ2k0OFZQ?=
 =?utf-8?B?MWhiN1NlWVdyazFXSHlKeVdycTJuWHI5ZGZZd25TYXM0cnh0cE15aTRoN25G?=
 =?utf-8?B?bFR3UURqQUY3dlM0c0wrMzZlUlJUUlBqUWpjY051L1NsM0dYb3VJN0Nhdjdj?=
 =?utf-8?B?b2t1Q1h2RkV0SnNrSXNHN1Yvd1RlNXZ3TnhHR2ZkLzF1NGtyWG9zU1RwZnRa?=
 =?utf-8?B?cFJkOU51QU5HdXBYc01UekF4YzRFSnpMOVlWbWgzenJoSjRMMG8rbUlJU1pP?=
 =?utf-8?B?TzJibEFYZ0VLK2tSMG13N3BLZzROUHJiVTMyRnU0K0psc3ZrbGt3cnFMb29G?=
 =?utf-8?B?OTlpZmppTFA5RC9GeDJNQXE2My9nWUJiYVNGNUU3dUdQTmVBWGlZUUswSk1M?=
 =?utf-8?B?Um92UmNOQVZuU2JiUStqdStrblpCaitzaEwzM2lJcFFWMUo3VVlCUzFFOWh3?=
 =?utf-8?B?SlNUZ0xLcXFNVEdHY0pGMmI5OUNSdVpRNXBvNTlVbzNLbzhHbmowbUNydGxZ?=
 =?utf-8?B?a0ZTMFdZdkJsVFVKWW0vTkp6cEFvcHFrMGdMSUdJVktXN3I5MWFHSGtFM0RJ?=
 =?utf-8?B?OFRLTCtJWE5HWVpqNFA3SVRXc2JnV3NDQmJsVWhvWnk2Q3NYYUJVWVgybWp4?=
 =?utf-8?B?c2JyUEsyekNwQlhaaDVVV3ljSGNwbUY4QzE1b05PbmNZMy9vbFkwV0xnRzhx?=
 =?utf-8?B?Z2pXUnFsU1BwOUIyaUJ5WHdidFByYWp5VVk2QXdUb2J0MVBZVkdNRTdsZGZ1?=
 =?utf-8?B?VmdqRG9acXFxaXRMdjRJZFhYc3VEbWkzV3c4czRzV25POWFZcm9QbFpPeUdI?=
 =?utf-8?B?N1R0V0U2K1B0Qm9TWXZEZlBCeXY0NVVuYy80YVRLR1hEU0hjazBOMHRHR3BC?=
 =?utf-8?B?QzFPWk05bEcrSWFkNXdNTXhkSjhnaWt1UTRGMDVPOW9YNzRMRzN4TVplOWQ1?=
 =?utf-8?B?d21hb2g4ZXBIdUsrU1JPZkFESHdUaTJtTktMSEt4aDZ4M2NKeEdDNVpGajFV?=
 =?utf-8?B?TWlVWHcwYXVPMG1IeFB1NG9sQUxISW1XN0d4SEppMHlXNmpqeWJteDBxZzhj?=
 =?utf-8?B?eTRscEo2NWhYQmxwNDBYcGJvWFQzc05Yc3JOVUFoeVJ1bDJ6QjByNENUem00?=
 =?utf-8?B?V0N4OXUyZkxSelRheGswbkljdFA4Y0ZGcTVQVGtaaHhPNXZBQmt5WlBqUzVL?=
 =?utf-8?B?Tm1XUmJPMFovM3JxTDBzQ0dMY2h4M1pUSkJnR2U1WERvVlJzUGlVbVVVaTRI?=
 =?utf-8?B?V3hYb09vd2FFVDRRcGNBa3pNeE1lTmI2NWowcXVldHhhaGdIcThYaWxpam9R?=
 =?utf-8?B?cjYxdTFORTRuQ0Z1UVk5TWMvekVXQnZoZEZGU2dTN3loZXFpWi9wa21JQU9O?=
 =?utf-8?B?L3E0c1JwcXNLTlpvb2xDaUsxU1FvVjM0bnQrWCtqOWkxUVJTbndDN0tPaHoy?=
 =?utf-8?B?d3RIVXBqaFpoQ2lmQThCZ0l1ZzFxWDZLTTlRcGJFM2FCcENzbWxKWUYvWi9r?=
 =?utf-8?B?MnlNdDdnenpGZXpDalNUVmtjVWFRUk5lbjJ3TnI1SFR0NFpoY1BZNEhjNGls?=
 =?utf-8?Q?zZDMhxYqtG+rpUXqE2g5zxAQ4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65093d67-fdb9-4de0-62ed-08da6f161ab2
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 14:49:55.7489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5roBMq/Ap2iq0l/S6UxEDWhnzfOtiG75MYCyYVlsqulLqIjv+5zVhvlp4ZNxQISgS9eEsgQQ1GMpzj1bEncZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Suppress oom warning for shmemfs
 object allocation failure
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Please ignore this one.


Nirmoy

On 7/26/2022 4:47 PM, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
>
> We report object allocation failures to userspace with ENOMEM, yet we
> still show the memory warning after failing to shrink device allocated
> pages. While this warning is similar to other system page allocation
> failures, it is superfluous to the ENOMEM provided directly to
> userspace.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 4eed3dd90ba8..4466173e1bcc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -137,7 +137,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>   				 * trigger the out-of-memory killer and for
>   				 * this we want __GFP_RETRY_MAYFAIL.
>   				 */
> -				gfp |= __GFP_RETRY_MAYFAIL;
> +				gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
>   			}
>   		} while (1);
>   
