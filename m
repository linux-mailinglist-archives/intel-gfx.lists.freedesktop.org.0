Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D5C501F7A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A214410E360;
	Fri, 15 Apr 2022 00:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D991510E360
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649981660; x=1681517660;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I9T+XLsZmUbCQBOHzEmpeUn4ByxqFhdaTc2Vc7yhKwg=;
 b=OpW+6E+2LAUpsFs8cUc0i+Wi077U4yZSepFm5SjuJWbhCxqJcAYfuWU/
 K5UQV4yl/vpurc4lqrIeIpPqxIDBoMkYPD89kOlXy5Y1YK8X4Q74NUj1Z
 zgI9rfLeIqpiZYDFXX/FHczWPML7sT4qcwvTlfTQiyxYStzDIk/pdCnjP
 uGvykWqWm4XrGSbEHZuJn0GW5EDawSEHdh3w3pHUXgb7umuXMWh0ADaHG
 yO5dgm+q05kwA40vsq+3idsyh0qMlG8OBVP5tTd7BOcZL2veBTXnIF+T3
 2h1PsdY/Cv7bRMDamDPsy+p7QdAvnLyBNGZj15OHuk14xLXzpa+92RL/p Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="243646677"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="243646677"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:14:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="661581168"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 14 Apr 2022 17:14:20 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 17:14:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 17:14:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 17:14:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RrglazYYSwh5xj5ZuB8/bTBZBa2/px1dbb6P4gN6VL1RCMaQg3dg5MQ9ieeCb+NmSzvNwq7nHBJ0xSrWzUzQAIxJBRlQwSpYHfEgc3uyOGSQhT8quRzoQT7ChyLH4tJ960a3ZmY+IQTOePy2uS42TuxbBZASOnPQDkHO91pxdQMEtnZOYfiJKDsEuUD3HN3xRAIE8pc7yqXlTeMM1BjzBOw0EHhDsZ1wxxEfwy80/luoQZN8+bUshMojRk/IqUcFdbQb3L3c21WAEKvGcVkFZe1TO8LRezJZJyBqh2j4ZT8HWwwBBVnFL7uUz45s37CEN1zlQXW7THiALrpgbTiLiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWmk/pgDImWc2q/TCfksRio8W0CGdMu9bW+6C3eZwiE=;
 b=d0OHVrc22PKV+YT6oP3id6F7DDrkjHqK0QPBQF9XEsHWJf6no+vVe1FPVhhTvolDfEhmVBtcshV3uc2J9uLDrCbJOfjNJVMdpRPNf1wC9uK5mJmctZ1t9+bCldWfvZMFqiq4AQ8Oog2bkztk2R0zJWVNXePFcm/Fa8/9yoZjBxrWYPwYv/mONs/ZB1BpgrftzCgA+An2IjYYxw3LvWah5QyABHfafiGNcSLJvMGfVJtDnJgKjVy+Mb+f09VCJncl0HgykzyV+jkR2w3BMUmaDsXmkIsv3rF/i3gDU0P0miXODzjWydlR4p+J0xzV1j1gULP5LLdlnLTDwp7d7RVn2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Fri, 15 Apr 2022 00:14:18 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 00:14:18 +0000
Message-ID: <6e7ad45d-0d3d-87e7-28ce-8e358ede42e0@intel.com>
Date: Thu, 14 Apr 2022 17:14:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220413225732.34943-1-ashutosh.dixit@intel.com>
 <d3ebcf9171361ce6eb25e1b5e5360ee45c5e1885.1649971340.git.ashutosh.dixit@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <d3ebcf9171361ce6eb25e1b5e5360ee45c5e1885.1649971340.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0177.namprd03.prod.outlook.com
 (2603:10b6:a03:338::32) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd7964f9-3ab4-4628-e07a-08da1e74e1ba
X-MS-TrafficTypeDiagnostic: BYAPR11MB3224:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB32242749C77E10A451207FDDF4EE9@BYAPR11MB3224.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9X7VHICMLoMrq4lrXh6sVJo1yfKfJMvFpLi8s+C7Jfo+9dlJJh2aSVYFsuKPcGK2Aj4B+4zkpC3vg/ptbs6IhAIqaHjJz7h0AjB+1HsOfIeup+VmVqmA+DGpZe1Rgv5FcltZRIouydzzZOnYW6sW52TWVPr+yRUa1sA0Tz2sQAVRQUk4+n0NwrAG8tLHMomN/KiHUVVWXUyRx1TJXlzHkl1OkUEq1HbAfrdAhAZJV/Uq86GOg4RFlxcB3KFNoSmQ3NAdURob3FcDYH93wa+F6FBwotMIESaxmSOTEojP7gOBw2aJb5Mo96wyalHI+v6QRDrL1fCNmXvc7PHX7Z73GMZmbC0+QtnIKJ5bN50vjq9xlLVucK8dOVSDgMIlUyHJf0wMqrVYBTadzfS10haTTgO5pruMED9DX0VMdoMBivhLNwYueTUPULktFcD0QiNfidLXt6Khhr6u4u5Vm/ZbzU/m7Zi/p/56Xw0kSNz0gH6QwFvSVMpfqUIYdTTP105oO4BH5t5DpavhhHlCO+T6C0c9/qWjuFc3mkBnBMOxluwGrwvDyalmlgTDKUOa8Zv90j7RNVTvMBha8+sFYn1Z1RvWAlOFNOiFYrxjBqrpKgBt4HimMwt/arNVwE1M4FOYPb5iUiwcbwcKYu4QlAniIMjpTayIcz0fqzVJlz+aBiVwBAOMSl5WElRuM9F0r6gMcol43st39TvmUS4bG8b1RYZddPeTiuTwYf4Thj0XZaUZ9WWRJEe0kdIoD9vqGo/0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(2616005)(26005)(186003)(6486002)(508600001)(107886003)(38100700002)(82960400001)(54906003)(31686004)(8936002)(5660300002)(8676002)(66556008)(66476007)(4326008)(66946007)(966005)(316002)(36756003)(86362001)(6666004)(31696002)(6506007)(2906002)(53546011)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2RFbUFnR3RCQkdsWHN2YXc1YmRwWVJMaXgyL2tYWGh0Ukg5ZHhFZ2ZFeU9u?=
 =?utf-8?B?VGNDSWdBUkVKamZBaWM3L0lhdXd6UWlkWTZMQVRlOEZvV2pFbjNYOGkvbHkx?=
 =?utf-8?B?RTFxRFJtME90Zk51ZUpVV09pR0NDNU1rYVVGZER4ZTc0NjY4U2JHVHRIY05J?=
 =?utf-8?B?NXhVYVpIMDdxdGNYNkE2RE51ODJrcmE4V015cS9OajdpeUlrOVoyVVZGbnNK?=
 =?utf-8?B?SUVTM0VkNktNaFZYZ2lxTnhUMXkwZ0FrZHllYjJta09IZDB3YnhmUnp6eFZ1?=
 =?utf-8?B?dEZDUytHazFFYUQ1M0ZSUVZzWkNkMVhsTENPWFJiNkN4RFFaaEw4c2FRZ3Bo?=
 =?utf-8?B?K2NvcXo0a01yaDVJeHUwNGhTVUtsNEhrdlJhU0VkQkUzc01BY0dabmN3NGEv?=
 =?utf-8?B?VDhVajVhcTF6NUF4c0VsTzAvSFVEV2VsSXQ3V0diemtnQ3lHaWYvTVBWMzNh?=
 =?utf-8?B?OC9PcSsyYXdtNnJQcVM3MmwxVmpoY3hzQmtHbS9iZWFwaEc0WnlQVXBnRUVJ?=
 =?utf-8?B?WkJrdmpNc3pMTGEwdlpFaEp2MGVUMUhsNGRyRllPV2NRdW1qdjg3OEdGblUz?=
 =?utf-8?B?ZGJGcEUxNUIzVytvS05MOStOS1prNEtKMEdwOURmVmxqMXRwUk1BUmlheUhP?=
 =?utf-8?B?RmhEWUdQVWxCejVQSHUycUp6RzErMzU0dkZ0akJjbUd1N0ZubCtJekJqTWxK?=
 =?utf-8?B?WGRoRVQvZWgrdVVVZnpFTlhWTW90MUNzQVVLb2U4R2NsSGVNSjdSSlkwUzdY?=
 =?utf-8?B?eCs5QjBINHZzMm9ka1A2MVhSSTMzNHlOZmR0dm92Z0VhQ1JTZTQyclUrbDdO?=
 =?utf-8?B?L09ZQTl0ejhzMmlIcGU5VC8zMGFDVjMyTFJIWDU4amY0VzdPb01VVHRMTkZU?=
 =?utf-8?B?MHlOMEhpSXNRV1hDOVJjQzgxTWY2WVd6NDA2aFF6bUdFTWhIY3UyQ2FXaUI1?=
 =?utf-8?B?cnpQekVCQnk4dHA3L0RSZkhhWHJBWllpaEF3a1YreUVoQ3dzektOWGFoejJR?=
 =?utf-8?B?OUF1NDJBVjlPMXZ3QzhRVlNUemdmT0c2V1NYZUtKUVozT2dUWGJ3Zzl3M201?=
 =?utf-8?B?TG13QjE2UkpiZllXN3pJYVFYV2YxWmkzK0lqa2lVL0NpZFBVeUZ1NjVRUUo3?=
 =?utf-8?B?OGZldGtPdDNoODNyS2FzU2JiSEJFMmpCWUR2bGI4bU13VVpJRGJlS1lvb0NZ?=
 =?utf-8?B?a0hId2g4VnlKSktqS2lqU2UxRXBmKzQ0R3NQZmFUZTlqakd0SEdRWEFNN3F0?=
 =?utf-8?B?Ni9BVTJOZXlkblUzZ0V5WE9uTHBZVFV6eUJkZGpBb1RSSXJ3R1ZVNURrSm92?=
 =?utf-8?B?Y3MxbGFEVWxQZ09QZWdjQUdsNC83QU9UNTNXQnBmV2VYZUtNUkt5RjVBdmlL?=
 =?utf-8?B?SWxjMEI2cWhTd3pUNUwwak9GYW5HTm5ZRTVlR1NpOUxRZWhjR0IvSThYK096?=
 =?utf-8?B?ZnhyNlJpM0pzU0szQnA3ZFhvREtUVUxvZ2xuTjB2TzdVbFNyMXpIVHgrNlRI?=
 =?utf-8?B?RGxMa3pFLzZqNFFQM3JRTGVVNGV2ZHAvLzNUbG5ScWpiSVdyWDUvQTlxOHFD?=
 =?utf-8?B?dUoySXRVYkh2VDNrZHc3bVBjYnMraWhYNUsvQm9NZ0NLalpCV05OTXQxdGVT?=
 =?utf-8?B?R2tLcm9nVTR4aWhXTTRkM3Fpbm1NeDN0bVBtaEMxc290Y2lSR1JEclVHK2sx?=
 =?utf-8?B?VW9VVFhLNXdUTytDS1JqdkdnMGJtRHBKTFpOS0JlWVhCV2txeURpRFJtQm5O?=
 =?utf-8?B?YzRaVi9XR1FHV2FBNmxGdHpMQVNPNHJDaTF3djlBTS8vazVjNTM5MEhSNHc0?=
 =?utf-8?B?OGZFOEZkelJvNHpWeGdsTGxNN1ZUbFh3emlYc2RSemdWMi9uSU9GVmNFaFIw?=
 =?utf-8?B?ZWNWd2kvaW5xc2RXemovU0lES3Y1UkpMRldkUmtPYnY5dTZxMEd1b2grajlO?=
 =?utf-8?B?N09leUVXdjEzWjRWNTNDbEtpdjUzb1ZUeUk5L1V0Mk1DQUl5U0tLd004S0t2?=
 =?utf-8?B?QllQQWpqZDlHODlpRjEwdHZLVnk1MkIySWNrejFTc3draSsreEcvUVpnNjMr?=
 =?utf-8?B?UGF4SXRmY0h5akl2MXN5N2hHd2FHUkZ5alczNDVBMlRGMkwxV0Y0aytVMEJI?=
 =?utf-8?B?YVhWcy90U3ZhOE0wTjFXM0hKc1BLVVdaa2RMYlFsY1hhMGlOQmE5QVRJbkQ3?=
 =?utf-8?B?dDUyTzRyNmVDYUZkSTdGVzgrS3lEcWpWVjlFYW13d0dmaDRSdUlNMWxlVzRx?=
 =?utf-8?B?WFpPdUJxc2crZXVMMStaV2pjV3BzTTYwejZUem1iWmR5R2IrQTBlRTFzbzRR?=
 =?utf-8?B?cWJRUXhmeW4yLzhFNDBjS3ZNM2Q3a29raWQwM1FQV3NhVmhGY25uaWRhZWc1?=
 =?utf-8?Q?/ZN/rNHEStjQuRm0jb0Fl+zb5w5NIIcPQYb7r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd7964f9-3ab4-4628-e07a-08da1e74e1ba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 00:14:18.0068 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pTOsnflr+Jj3HMwqb/nm1zZFNHBPMf+3V3C7npFAiVHtX17r1xAIRs3DqeWc+ihaErpbvmsgropMBjLcw3XjgjbM9LW7DXbT6b1wHajcYGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3224
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Don't show engine information
 in fdinfo with GuC submission
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 4/14/2022 2:24 PM, Ashutosh Dixit wrote:
> At present i915 does not fetch busyness information from GuC, resulting in
> incorrect busyness values in fdinfo. Because engine information is coupled
> with busyness in fdinfo, skip showing client engine information in fdinfo
> with GuC submission till fetching busyness is supported in the i915 GuC
> submission backend.
>
> v2 (Daniele):
>    Make commit title and description more precise
>    Add FIXME with brief description at code change
>    s/intel_guc_submission_is_used/intel_uc_uses_guc_submission/
>
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5564
> Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drm_client.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
> index e539f6b23060..6d34065e845f 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -145,7 +145,11 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>   		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>   	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>   
> -	if (GRAPHICS_VER(i915) < 8)
> +	/*
> +	 * FIXME: temporarily skip showing client engine information with GuC submission

Not sure if this comment deserves to be tagged as FIXME since the code 
isn't working around a bug, just returning early due to a non-supported 
feature. IMO better to drop the FIXME tag, but anyway:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> +	 * till fetching engine busyness is implemented in the GuC submission backend
> +	 */
> +	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
>   		return;
>   
>   	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)

