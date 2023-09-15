Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 251857A2B1B
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 01:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D8110E6B4;
	Fri, 15 Sep 2023 23:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C6310E6B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 23:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694822139; x=1726358139;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bnszrww7wJzirYNiCZ60siM62XyPOEPpHlkfeXfUGyg=;
 b=jFFrxDMUgKskl9Tdm5K3rKLifaDauAXenIXup/xCjnU4f6w9HsLz6XT7
 wHvDvkhLx08D9gwV888t4SKuRWjTlbsHiVkgQDAwG7raguGPwdAlXJ2CY
 UN8EgzToIV9bUJOtm4vgtdL+IRK7qf5xX99jqP9Qx/W21+Vv/a1YOPQzf
 5B3ILhOTgQP7jyvIq2fFbJJmS8IQgwbBUSrrQN9HLt4W4URFB8uRIxDAZ
 NC8CHHURgXB70bX6qZm9Vva3vC6vm4kfemx9T2PD0f8IW8p4lqkVGqt8y
 VIWvNrgST3/c/4yZyX2aTtKE3/80FE4GiuyF8sFIYrVPLnRT9tsQ9GkMa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="359612870"
X-IronPort-AV: E=Sophos;i="6.02,150,1688454000"; d="scan'208";a="359612870"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 16:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="721866917"
X-IronPort-AV: E=Sophos;i="6.02,150,1688454000"; d="scan'208";a="721866917"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 16:55:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 16:55:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 16:55:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 16:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ahzlXXQQfAXeDXEq+psbxKLetil3WcOm4JRsU3FwvOcZWWG5bwyG2WSHU4KSy+iegFPn5yOvChzgLopVzcOY8gpmhpy510ypCv9OyT5n4+QqP/S4ZTBhH91CeHDiOdXi9nEle58vXV0isT/iE1EZjjWTA0IJCkmW7+UbPwqZg05k+raSsI7ewF8Ss1+Qjo3Fq0mmxyO/pYAnKbNgeKW/hHtAIHpTs2/gTk9Mh2vMftV8LezTbNqoacAKykV+sK3DsveKsEnXM8I+KVFFH8Fz0IuHjfM9aMMTVJ3LLZA1EUmmoVm3swIBLqnmKM3JcesaYHXqblnJYVT5nGFXkYZZlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3ebGcdtEdDjcqlQ/9T26XJUl1PTt2UqfF7iXFvX+kA=;
 b=mG6nP0mylf3hCNmBI+Z3VdmzXDrHDDwgr+SW0ca9ZQSx4F/xSjD1qxowecK9Bn0C5NjFzqguenTvZUZdr9HHdmZBUw8udqTVmWAThB0zZZVjQfRkEXomTJJFw/4RMe00G/lFxVekjHDTO2i4cwg0wbTh8Q3kl9enomAmSJ1eFsL4YX/RWzh6j9s/D6MMRhrv59bWKeWm4kca/yHWTPYkeegjQA+wKk6tXLEzKgciTZVrSHqHZBzIlI+FTVDSh29oN4mM+JaC3iFxvdyVG0WvOgNLVKIjZ7Y4LNHX055DnGnJmrhzGMIbkFBIjVQjwVer5fKKDCiWmZLbDpsHzkD3mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by PH0PR11MB5110.namprd11.prod.outlook.com (2603:10b6:510:3f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Fri, 15 Sep
 2023 23:55:20 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f%4]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 23:55:19 +0000
Message-ID: <f78fdbb9-c83f-4340-ad50-6fd53bb32191@intel.com>
Date: Fri, 15 Sep 2023 16:55:17 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230915012857.2159217-1-umesh.nerlige.ramappa@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230915012857.2159217-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::13) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|PH0PR11MB5110:EE_
X-MS-Office365-Filtering-Correlation-Id: 64915bc9-815b-4caf-6c13-08dbb6473770
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LM4H1a4uPjeDL0nvBxtUUUWcVF9+XLmZZTUqu3/UvUutfUqCHKZb2EPnAHp1TYF+9zdvLOvic37qD93f12NW/Q9sc7A4WtyJ+7E6O9LcOg1isTVHFhjOEdVy1kW1n1RgL/Km1Rw8u5aUxcMry6d0vM4W4w8gG0U2OcMAoheOqBaVQnad7ZBvzgPdAZKnCYVOsDHkp0uZXxAKHruKUZbT4YIHwCFG0w67EqvBbb7WY46GF9+Fpos+/2WVyru3rrf3T/w69kuHTHpuTsAXCFLIzlUVTDN9bVZhCHM+Fjx9WdFwU6UBxyjAZT44iTljWmwOzPtOvj8DTEUqgT2zGXooWOK5hLa627t8M9mWY+NDT4gROOZhHMdFAJ9u80NS87Ap0zTsUz7ikzER/DGQHz7fVRIM06psTXDnJ2Q7UWIjVn6QBeRTbpeMaTfQD4SGzUBSB8f9XKyC8T6EdIoyDublnLoIaPoJjwyj4MwT5tuIAngynHTWWZRh/H0zzzFM31HPxzudUOlXguuLIpj8CmLVoNKnWRb1MhUKqBALWOUAyIWKptfO9XQaDu69N4NZSugQ/j1gLSnVshq0nR2GzrrcsyNkJqqD2epGK1V6Yj/0GrHIWJ6X79pgeZnXkQQrzEzp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(396003)(136003)(366004)(186009)(451199024)(1800799009)(5660300002)(8936002)(8676002)(41300700001)(316002)(26005)(36756003)(38100700002)(86362001)(31696002)(2616005)(4326008)(83380400001)(2906002)(31686004)(66899024)(82960400001)(6486002)(66556008)(66946007)(6512007)(6506007)(107886003)(66476007)(966005)(53546011)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDMrY0EweE00ejcxTm9xMlYwQWdTR2ZxT1ZKaEJySllHeHU4bVRBa09razhL?=
 =?utf-8?B?QndtSXAyNC9GTHBwRDZUVkt4V1hnN0szQThHQk01ajRqd080V3ZrNzlXRTVL?=
 =?utf-8?B?UDZ3bVpiUzdxTnc4Skg0QkVHSnQzRmdZWDhrV1ZlME1iclFyYlRBTGxBVTFI?=
 =?utf-8?B?dWk3ZSswY3J5b3lzQ25ESVRwUDdVR2N2bjRZa2xPdHBBeXk5VCtPdnJEd2cr?=
 =?utf-8?B?czFjVjJDcXo4U2s5SjQ3U2VXZTMyTHpJVXg1Ty80MktVMmo4UW1mTStSRG01?=
 =?utf-8?B?eXFzT0JEbTg3cUlCODQ3YmYvWlZoVmNtcExPNS9VNUpjZWdWYWhDWW9HeWpP?=
 =?utf-8?B?WXpVMm0rb3BjQ21NZzBONHU4cWVhY3BPN2Z5QjBqMHZBbVNBSWFKK0JuQXJI?=
 =?utf-8?B?ekZuTWIzM0lpTHdaZklxYVRHZGRnenpyRHVDRUlicEJrQmdvemJ6YkNWbmFP?=
 =?utf-8?B?ODlyZlhUdk95QnB6a2hrQ294T1AwSTFuc2d2NVJzZlpVRklFa1dXQ2tEWWNi?=
 =?utf-8?B?WXU0czJPSmI0SnZVb3BLUEs4TU5HcjBmMzRTdVFVUlFvbDZLbnhBVGhOQnVN?=
 =?utf-8?B?dG5HblhYUHY0SWkwdUNXQzZlc0ZqeHNFSWFldUgrOC9OcnhSU0c4RCsrd3Zs?=
 =?utf-8?B?SE9JT1puMldWcXVOZ092OC9Ibjl4c21kcWxhVCt4VmNaUTJqbUZLMmhrMG0v?=
 =?utf-8?B?VGEyTUxMRmJQOFBlbTE0UmRHZkx1MDRQV3FydGplV3BSZlNtWUQzaGpuemVo?=
 =?utf-8?B?OVFHdzBXVTlqNGN6MVRNWXpYQ290YU5kVWJOeGVsdTFJOHhHTUdETUl3MnpU?=
 =?utf-8?B?VzIrcWpBVXJiVHBGamFlTTg4Zi9qNmNQYndjaVdtVkZIMzRBZFhUWlZJd3Y3?=
 =?utf-8?B?THNlMlM0azBzcjZFWHNXS2tzKzhuUHlHVkhaWHNwcHdTazh5aDA2dThLQWtJ?=
 =?utf-8?B?TGtQWlhSL0hqN0NVdkwzalNPTCtlaWxCSzNzMkFmNlljNzU0VVJ4LzFMNWZo?=
 =?utf-8?B?NFNKc2RWVjl5VDVpOGsxeEZpamJFUDZ5UVRRYzVIYVVtT0VWNzhteStVZUlR?=
 =?utf-8?B?TitVaU93aWNMNVVCVGFXQllhbXV3OFp5Z25CMEwrUjBYTnFWTXpxbDJyT1c3?=
 =?utf-8?B?c3k1OXYwL2ZDSU1KV0V2U2FacktrK1g4eWxQN3lZa3E5aTlCdmd5aVZxazlJ?=
 =?utf-8?B?WUc3ZmcwK1VNSlAvbDI2T1p5RGl0QnlqU3Z3aTNjZHV1R005dEttcXYrSEdU?=
 =?utf-8?B?Myt3SWlSZ2Z6ZHZISVpGb21aRTBaOXNHaUthMDNsVHFpSDl2NjZYUjNyUXM4?=
 =?utf-8?B?RTZYUFloRm1kdFhYdTBYQjhpWEZzdzk5Y1lJSDlneTNYeWxjR3RyN0g1cWhS?=
 =?utf-8?B?Tk1qTU5YYWRLVm4ybFFJTU5PN0YweEljQnE3OEpXWnhlaUhoNUh5RFZ4R1lU?=
 =?utf-8?B?UFZ2TnlwMnRKdy9tVUpreG81Vlo0cWdMTFVHOWVtYnQ1a3ZKb1V5SnNSNWhz?=
 =?utf-8?B?VlhST092b0IwdlZORXptT1BtR0ZmTmNQM2lKL2ExM3ZwY2hXd0loSEdOcXZX?=
 =?utf-8?B?M0czK1dMOXRTdzNNaWVZaGlJeEZDWWFSWC9nQk9pL0krMC9jU3Zib20vMHA4?=
 =?utf-8?B?TDlzMkRCRUd3eFF0eXNOWHpIOXZmVS9zZDM5OVlMRlllYlgxSU9Kelh5dkln?=
 =?utf-8?B?TUxxditoZUs2SmlvM1JiK2M0dm1uM3BLS3VtUDNpYlJzcDF4S3JHK3ZLcnNW?=
 =?utf-8?B?dFBJRFhLamo1ZDFDMlpwd0pqNHNwWVkwdXNEMDBKRFNZbkxGbXQzUnNYQjBw?=
 =?utf-8?B?TzNRQnh1clUvMXpiT3dWcTBFWU0wSXg0dkZUajNvNHZjNHBTV1kzRjJMM1pO?=
 =?utf-8?B?cm51WXZLMmlMZ0JBemxHZ2x2L0dKS0plZUJlVldzSU5YeFQxeDlrS3EyNUl4?=
 =?utf-8?B?cjIyZXJ3OEJra2J3RHZmM3lVUjhtVXdOeC9qZHMxc3k3bUY0OXpzNjZTWWR2?=
 =?utf-8?B?WE1kczlCc3Nza1YvMEdTS3N5MDRZMDVsR084K1VpcnpkVXA5SWNXS2cwVjla?=
 =?utf-8?B?RzlQbXJpQklUdDl3SzJrdngyeVFaNGNlMnhoZStzQzE3TWJOdEZ2VEUzNng1?=
 =?utf-8?B?c3lPRjkzL2hnMG9PK216S0I5RmNlQ2pJUHZaOXlxN2QyZXluWTgvVlNxRk1o?=
 =?utf-8?Q?l9KGmHztW7+TmTcvdtp9gt8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64915bc9-815b-4caf-6c13-08dbb6473770
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 23:55:19.3284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxKQye5hBNTLGigG7KlcwucrODYABkbpvu6lC1SESrH81PStsP7wob4iR2tEDi/vG5v7y72uBdgv28Zr97bNnDppx3k0Nkx5Xx3sSuObu3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5110
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/guc: Get runtime pm in busyness worker
 only if already active
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



On 9/14/2023 6:28 PM, Umesh Nerlige Ramappa wrote:
> Ideally the busyness worker should take a gt pm wakeref because the
> worker only needs to be active while gt is awake. However, the gt_park
> path cancels the worker synchronously and this complicates the flow if
> the worker is also running at the same time. The cancel waits for the
> worker and when the worker releases the wakeref, that would call gt_park
> and would lead to a deadlock.
>
> The resolution is to take the global pm wakeref if runtime pm is already
> active. If not, we don't need to update the busyness stats as the stats
> would already be updated when the gt was parked.
>
> Note:
> - We do not requeue the worker if we cannot take a reference to runtime
>    pm since intel_guc_busyness_unpark would requeue the worker in the
>    resume path.
>
> - If the gt was parked longer than time taken for GT timestamp to roll
>    over, we ignore those rollovers since we don't care about tracking the
>    exact GT time. We only care about roll overs when the gt is active and
>    running workloads.
>
> - There is a window of time between gt_park and runtime suspend, where
>    the worker may run. This is acceptable since the worker will not find
>    any new data to update busyness.
>
> v2: (Daniele)
> - Edit commit message and code comment
> - Use runtime pm in the worker
> - Put runtime pm after enabling the worker
> - Use Link tag and add Fixes tag
>
> v3: (Daniele)
> - Reword commit and comments and add details
>
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7077
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 38 +++++++++++++++++--
>   1 file changed, 35 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index cabdc645fcdd..ae3495a9c814 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1432,6 +1432,36 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	unsigned long index;
>   	int srcu, ret;
>   
> +	/*
> +	 * Ideally the busyness worker should take a gt pm wakeref because the
> +	 * worker only needs to be active while gt is awake. However, the
> +	 * gt_park path cancels the worker synchronously and this complicates
> +	 * the flow if the worker is also running at the same time. The cancel
> +	 * waits for the worker and when the worker releases the wakeref, that
> +	 * would call gt_park and would lead to a deadlock.
> +	 *
> +	 * The resolution is to take the global pm wakeref if runtime pm is
> +	 * already active. If not, we don't need to update the busyness stats as
> +	 * the stats would already be updated when the gt was parked.
> +	 *
> +	 * Note:
> +	 * - We do not requeue the worker if we cannot take a reference to runtime
> +	 *   pm since intel_guc_busyness_unpark would requeue the worker in the
> +	 *   resume path.
> +	 *
> +	 * - If the gt was parked longer than time taken for GT timestamp to roll
> +	 *   over, we ignore those rollovers since we don't care about tracking
> +	 *   the exact GT time. We only care about roll overs when the gt is
> +	 *   active and running workloads.
> +	 *
> +	 * - There is a window of time between gt_park and runtime suspend,
> +	 *   where the worker may run. This is acceptable since the worker will
> +	 *   not find any new data to update busyness.
> +	 */
> +	wakeref = intel_runtime_pm_get_if_active(&gt->i915->runtime_pm);
> +	if (!wakeref)
> +		return;
> +
>   	/*
>   	 * Synchronize with gt reset to make sure the worker does not
>   	 * corrupt the engine/guc stats. NB: can't actually block waiting
> @@ -1440,10 +1470,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	 */
>   	ret = intel_gt_reset_trylock(gt, &srcu);
>   	if (ret)
> -		return;
> +		goto err_trylock;
>   
> -	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
> -		__update_guc_busyness_stats(guc);
> +	__update_guc_busyness_stats(guc);
>   
>   	/* adjust context stats for overflow */
>   	xa_for_each(&guc->context_lookup, index, ce)
> @@ -1452,6 +1481,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	intel_gt_reset_unlock(gt, srcu);
>   
>   	guc_enable_busyness_worker(guc);
> +
> +err_trylock:
> +	intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
>   }
>   
>   static int guc_action_enable_usage_stats(struct intel_guc *guc)

