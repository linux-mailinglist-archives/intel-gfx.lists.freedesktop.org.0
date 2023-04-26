Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED2C6EEC05
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 03:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF16310E12F;
	Wed, 26 Apr 2023 01:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81B310E12F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 01:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682473647; x=1714009647;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=IbCkhk8+p18U6HHm0MizQKe/RzZLjk/iYyXnCqqZOac=;
 b=ORXCF2HxCCRH1d2zM7p7tPYqnVgPO4SeBfzcJSYtygD0i4h+5MnYKv63
 ci2Oqyi1xpiwEQnBTAOJUCIlgMCLnkD4RY48i11kTqpJXXiXaRne2vFGr
 myeDxV2+K5pYDenkNIihpVAf3hodtr+dI3m8ZjpzOSNJlujJXTPgBrk0r
 gRxxN5hLCG9SAwWLj1X15TZtUREldeVbZaqNfpkTaqG8PrOFJ9UkxGzOk
 ra4OI6BApqa/dQsWhMwZWKL32T9pmojieC60EbJm15NeYHf0rnnXau3o2
 osSYa7hwr5ZLUmlJ/pBE0FW4MB6el555Hox66WdcH+TULvlQPdKRY2o6J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="326567590"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; 
 d="scan'208,217";a="326567590"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 18:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="763104947"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; 
 d="scan'208,217";a="763104947"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 25 Apr 2023 18:47:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 18:47:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 18:47:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 18:47:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 18:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GiwRn1A5s3eqwVt07mOf9eK033E9aYyqq/BkUAflVlf7s6JZrd86QfeUA/JuxgnayjXth8xgJGpkWtq83at7BQe55ismb8qjaQtnhTLEovNJNaedd+QvkwRre+shkeQNbsLjb8+L4ohX3KzmKD3vHs+b3enOlqR28Q9il4/OusQDlG0T+agqbnmrS9glYGWDk4F4MlX5NLG3u+m/hFm1EImnRcCgjmhj9aCp4GVSOxnvM/0CTy3/kMFLWGqdtpvxEE/y85s1Ecqq0r+w7eBGUCTr0r2Fxh7CfkgKT+6hBNRztJbTV3txGyAdWD6DWTnb8pJS0M7Dcz8WCSF9k0oBsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4wxJr6DSFRDIj176S/BZt7aG2pXCqYY1UNTFFS61Vrg=;
 b=UC603ejC97L5kOb+KX4y31apH+y/gtF13MLMIxJnmQmCBFPV2TfvlXR1wq34ezNmUlC2tinMn1JdZQiVlDZt7VDybL7HRxv4BHJa5+NSkR5+7OENF2jBxxB0paL2aYL+/X1s0e+i5FcPZJ6trBDuYUnuOh6NhzLUK3jF/wiiKPFXkY+P8Bxdg8UBLByqAAjCRXsf9NLK7RNTBHvTuyAwQf74aRTi7jmrwt3pvHBJoQTUYGuPUuFI+soybCg25c7Z4LwDOlTUf5wdu7XzVCBgH47hnU6Um3+dndQA9YvfY05lqyyDrDXz0MRtFrebMEdgunvgkOk3SnFjP1cwp8IPmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Wed, 26 Apr
 2023 01:47:06 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::3721:5:721c:79ae]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::3721:5:721c:79ae%4]) with mapi id 15.20.6319.034; Wed, 26 Apr 2023
 01:47:06 +0000
Content-Type: multipart/alternative;
 boundary="------------Et5uqODz4WDBlfHLEHdzU3tD"
Message-ID: <451e4513-f21b-78ec-3a02-e2367eabcb5d@intel.com>
Date: Tue, 25 Apr 2023 18:47:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20230426003942.1924347-1-vinay.belgaumkar@intel.com>
 <168247325665.17155.15503009078267968314@emeril.freedesktop.org>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <168247325665.17155.15503009078267968314@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::19) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SJ1PR11MB6204:EE_
X-MS-Office365-Filtering-Correlation-Id: 931bb40e-b464-497a-95fe-08db45f823e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ii714kBgqIDfTNQL8u7aNGaqIocRjmbmjVX+InsYmV42qSZP9vbY31tOirFchehfkTiHKanYiTjxLlbqKCpHyAlqV1r26Z7218nfWrIlf2QLcYQLsSnspRvaXYCw1Sj9eKAIDRj1bmgBkND4fzKUBrhz3lNxDdL7gCxnNc/dR7s+N/ZnlBV24ThAdL4S4bhEMHwr9a//p622js+qPf4LLtau0i5v8zasGwVgb+i6zloft/Oa7wiQB04A6c1nie5GfZZ/aEVuplaIlYS9zeB6ZnYHczhZ8Y/qCt2NCXWV0J5wzyQplxS885QHx2Qr6uY87i9gPbB/vGtM9IUVuS55meZv4KVmE1j1P5EvVIvxNox2GVXo/MO4dqA5lt56fB9GvPkGvpgKr6KrC7jraxQzfmlJIyiN/XQubGjXH/CRGMN+vk8nA6KrHydg7k1m2LqXuWOpjjvb6Gl3Lt8kmUccy2juyWWUh1XpAtig6pYrcW/Lj/cOYH8ebfqHqT4GcTZfeZBpQkT+ezaZPy2fzVtYnOxcAhsjqIenRFueyo7UQoLk/dZkh0aZncubOcjvZ+8NZATB7+KXONBSabb94zsbSwxWPbc06i4cYYCkfrummhex568wwQA3B5jyNU/HdmfeqMgUONxuQTPLVZWh3jldOIbCq+GFdgX3NVa3oT4IPiI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199021)(2906002)(21615005)(66476007)(66946007)(6916009)(66556008)(316002)(8936002)(5660300002)(41300700001)(36756003)(31696002)(86362001)(186003)(26005)(6512007)(40265005)(53546011)(38100700002)(478600001)(33964004)(966005)(6486002)(83380400001)(31686004)(2616005)(6506007)(82960400001)(166002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVgyRVFUS09xN1hROGc3OVYraGxJVlU2OE1VbVVMNlp3cCtaVTVkUFgrUXdI?=
 =?utf-8?B?QXQzdnhIV3VBYTZ3dEx3TGh6Z1RWZENnaUVMVUN4cVdJL3FWMnk1UHJ5Yyt3?=
 =?utf-8?B?MmFubXpWTzFGVS9Qc1lzRHh5emZJd3cvTy9IeDRaYW1qcE94N1R1Z0JLcEMy?=
 =?utf-8?B?Tkl1NVNDVStTQjAzWWlaMzVMbnlBT1NwQy9kdlI5SFBCbE1QWFhxQXMxa3p2?=
 =?utf-8?B?cWh3d0V1bFpVcWFaY1FJRjZvZGJtYWRjNFlpbnVnazFLTE1IL3JqcjYvRTFz?=
 =?utf-8?B?RC9ibWtyNVphWHk2WVVoY1RhODlHMFJHakt2dGdCRVJRTmdWSnNYQXFLOURa?=
 =?utf-8?B?ZnZiSFJkVS9uMjRCeWdRWmdCUEc1Nm1YOXcyMWZIZFlnOWduMTd2RHZJME1n?=
 =?utf-8?B?S1U0cUxkMW1wUkJ1NWJJQlh4cmh0d3FlUXlJcU44bmo4LzRMQjlVTEtaK1Qz?=
 =?utf-8?B?eXN3bnhMSzNsU1lBQklMY2wvM3NVaVJiU290YlpqVjFOdzhxNXM5NXdWWTFR?=
 =?utf-8?B?bFVoWHQ5V2wvaThrQzBxQXZYOXdlV1h6UWZKKzhoN0J4bXNDV3g4aC90cWpR?=
 =?utf-8?B?cXd2MFBaVzZkZlFNOVJEdk5mRnJCSTJ4V3N5aHg5RFpySW51SElqT1AwZTM0?=
 =?utf-8?B?MGVlMEdDR2ZCaklmTGhRbVo2NDQvaWU5Z1NZN1dzVzl3aEpyVXpRdzJGb2NP?=
 =?utf-8?B?SERDRkptSnVERUJ3QVNjb1B0S0hRaEhsN3BObFBGREZUSzNtSVRwcDZiZ25S?=
 =?utf-8?B?Yk4zRHR6ZlBRbjd0aCtXNWtjT0pacWZrdHFnclI2K25tQ25Ka0ZuVXk1QWdY?=
 =?utf-8?B?VDRJOGZBMENNeDBxRGVLQmE0cFNPUm43cDExVkZKbytWMDdPL0I3T1FqU0Ji?=
 =?utf-8?B?VUU3YTB1c2pkazJFejlOQ1hhdFFtYXk4R3RlMGxQYnBxSUpIVnZ6V0NhZjdz?=
 =?utf-8?B?dEl6UVdXQVdGVXNpbTZmclVqd1luNXNVL05XMGMwWDZ0aUIrY1l2YSthRXRl?=
 =?utf-8?B?Rjk1cVlZeDlzazZDMU1SZVR4dmZmajBCY25TNUxwTmF6MHgrNkNXNHVYQUgz?=
 =?utf-8?B?MFMxNTFoWk9odHBJTHhCVUhjdGgxSVJPSzZZTXA4L2tQZVN0MVcvdG9hSEZo?=
 =?utf-8?B?NTk3b1RhSmxJYVVTeXFiaDE1MW1YQ1dhOElGVE5IUExYSlRLS3Y3M2ZHWkxh?=
 =?utf-8?B?S3Q5ZGgyNVREL1I4NDhOeUpZYWNFSUVoNGtaeFZFREdMQ2hYRlZuZkxKOUtw?=
 =?utf-8?B?bHZtUW52eFFCODRzQUVNeDEwKzlzMjNVQm9mUHdoZ0ErRWZCZDNQNjN0cGdR?=
 =?utf-8?B?cVdWS3NMTXZOSG5QdlBBdXoxZWtmK3pVcjQvNzV2NHFva3BxWTQxbTdPSVlv?=
 =?utf-8?B?RjIyUDJDRzRzSC9xYjVNdXFqeXYyM0l2b2owZXpvS3ZWL3VXL0h3eDdkakwz?=
 =?utf-8?B?RmZqRWRnQStpVFNyNVdpQU5YQmczWktGbHpYcGhTM29SZ29icGI5eWwrOWZI?=
 =?utf-8?B?NVFROGNtNXVxcDVJTmtlT2JqMXFQcG5VTUpoWEEweDNCR3BCN3pRbUVQSm0x?=
 =?utf-8?B?cHhENlMyM1Y2Y1diQks2K3VrNi9VQkd1MVlXZllUWUpqTzhZNFozUVgveW84?=
 =?utf-8?B?MzFzWTU3KzlaOTlHSnE4NndXdlpSZkh6bnFPUmVZVmZDSGFVWTB0alpjd1Qw?=
 =?utf-8?B?ZVEvalpDbGtIUFFBQ3pwYW1SL1Y3ZUt4RmtaeCs1MnlPZGdaZ3BJV1pOU3hB?=
 =?utf-8?B?MVlSYXYrTisveVFRaG44eXVEdGw4bUd5Nzd6ekxBcEpRZ3A4dFlNMXF2azVn?=
 =?utf-8?B?eWxRb0pVWXd1bE5oQzhlNHdxVy9YNlZ4dzVXL0Rzck1nV1F0dHFLYUZUU3Za?=
 =?utf-8?B?dzZVbGZhYkRMTEM1OG5xdmZINGFZNStOdUVKWVRmMU1QaFRucEFjcDJld21z?=
 =?utf-8?B?L1hUbEV2MXB1RlMvSDgyU3hVNEw4TThkQjlKS2ZlUCttakUyQURXMS9NOHZG?=
 =?utf-8?B?czZQM25xYmo2aEtRS2oyN1RYZGZURzRPSVRZcGJleUJSVnQzM2V2QzkxeG50?=
 =?utf-8?B?K2NWMW51a1FBWmRKWU5PelA0Zld1d0ZkWDdFVXljSEp5blMwK3dBeTU5bVdw?=
 =?utf-8?B?V09oZVRaTVpmSzl4NjhhM2ZyT1gvWEVUS2hXcGk5eDRvNFlVbWJZVno1ODlo?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 931bb40e-b464-497a-95fe-08db45f823e8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 01:47:06.2304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QkN9tJpe2yW2wijePkWjd2msXfV0zjACAIbo3geEx1V6AGrITkQGRowAltmkbBOGvu7UhKPfJgRIjI5Rb0zM7udzUAH3NVDDt9vH4X/30VY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/2=5D_drm/i915/guc/slpc=3A_Provide_s?=
 =?utf-8?q?ysfs_for_efficient_freq?=
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

--------------Et5uqODz4WDBlfHLEHdzU3tD
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 4/25/2023 6:40 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	series starting with [v6,1/2] drm/i915/guc/slpc: Provide 
> sysfs for efficient freq
> *URL:* 	https://patchwork.freedesktop.org/series/116957/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13062 -> Patchwork_116957v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_116957v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_116957v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/index.html
>
>
>     Participating hosts (39 -> 36)
>
> Missing (3): fi-kbl-soraka bat-mtlp-8 fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_116957v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>      o
>
>         bat-adlp-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adlp-9/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html>
>
>      o
>
>         bat-adlp-6: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adlp-6/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html>
>
>      o
>
>         bat-atsm-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-atsm-1/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html>
>
>      o
>
>         bat-adlm-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adlm-1/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html>
>
i915_pm_rps@basic-api is supposed to skip on GuC enabled platforms. 
Another series - https://patchwork.freedesktop.org/series/115698/ will 
fix this and ensure the skip actually happens.

Thanks,

Vinay.

>  *
>      o
>
>
>     Known issues
>
> Here are the changes found in Patchwork_116957v1 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>      o
>
>         bat-dg1-7: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg1-7/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>      o
>
>         bat-rplp-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-rplp-1/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>      o
>
>         bat-dg1-5: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg1-5/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>      o
>
>         bat-dg2-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-9/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>      o
>
>         bat-adln-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adln-1/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adln-1/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>      o
>
>         bat-dg2-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>      o
>
>         bat-rpls-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-rpls-1/igt@i915_pm_rps@basic-api.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html>
>         (i915#8308 <https://gitlab.freedesktop.org/drm/intel/issues/8308>)
>
>  *
>
>     igt@i915_selftest@live@migrate:
>
>       o bat-atsm-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-atsm-1/igt@i915_selftest@live@migrate.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-atsm-1/igt@i915_selftest@live@migrate.html>
>         (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>  *
>
>     igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
>
>       o bat-dg2-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html>
>         (i915#7932
>         <https://gitlab.freedesktop.org/drm/intel/issues/7932>) +1
>         similar issue
>  *
>
>     igt@kms_pipe_crc_basic@read-crc:
>
>       o bat-dg2-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +1
>         similar issue
>
>
>         Possible fixes
>
>   * igt@i915_selftest@live@slpc:
>       o bat-adln-1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adln-1/igt@i915_selftest@live@slpc.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adln-1/igt@i915_selftest@live@slpc.html>
>
>
>     Build changes
>
>   * Linux: CI_DRM_13062 -> Patchwork_116957v1
>
> CI-20190529: 20190529
> CI_DRM_13062: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7270: 3bd8bf9bca97bbfb7b4b408f9fccd0cf6f742d4c @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_116957v1: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 0c684b06550f drm/i915/selftest: Update the SLPC selftest
> 8e7da3d2e93d drm/i915/guc/slpc: Provide sysfs for efficient freq
>
--------------Et5uqODz4WDBlfHLEHdzU3tD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/25/2023 6:40 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:168247325665.17155.15503009078267968314@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>series starting with [v6,1/2] drm/i915/guc/slpc: Provide
              sysfs for efficient freq</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/116957/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/116957/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13062 -&gt;
        Patchwork_116957v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_116957v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_116957v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/index.html</a></p>
      <h2>Participating hosts (39 -&gt; 36)</h2>
      <p>Missing (3): fi-kbl-soraka bat-mtlp-8 fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_116957v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>
              <p>bat-adlp-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adlp-9/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adlp-9/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>bat-adlp-6: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adlp-6/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>bat-atsm-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-atsm-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>bat-adlm-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adlm-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a></p>
            </li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>i915_pm_rps@basic-api is supposed to skip on GuC enabled
      platforms. Another series -
      <a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/series/115698/">https://patchwork.freedesktop.org/series/115698/</a> will fix this and
      ensure the skip actually happens. <br>
    </p>
    <p>Thanks,</p>
    <p>Vinay.<br>
    </p>
    <blockquote type="cite" cite="mid:168247325665.17155.15503009078267968314@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
            <li>
            </li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_116957v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>
              <p>bat-dg1-7: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg1-7/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
            <li>
              <p>bat-rplp-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-rplp-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
            <li>
              <p>bat-dg1-5: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg1-5/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
            <li>
              <p>bat-dg2-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-9/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
            <li>
              <p>bat-adln-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adln-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adln-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
            <li>
              <p>bat-rpls-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-rpls-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308" moz-do-not-send="true">i915#8308</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@migrate:</p>
          <ul>
            <li>bat-atsm-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-atsm-1/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-atsm-1/igt@i915_selftest@live@migrate.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268" moz-do-not-send="true">i915#6268</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
          <ul>
            <li>bat-dg2-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932" moz-do-not-send="true">i915#7932</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc:</p>
          <ul>
            <li>bat-dg2-11: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-send="true">i915#5354</a>) +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@i915_selftest@live@slpc:
          <ul>
            <li>bat-adln-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-adln-1/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v1/bat-adln-1/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13062 -&gt; Patchwork_116957v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13062: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7270: 3bd8bf9bca97bbfb7b4b408f9fccd0cf6f742d4c @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_116957v1: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>0c684b06550f drm/i915/selftest: Update the SLPC selftest<br>
        8e7da3d2e93d drm/i915/guc/slpc: Provide sysfs for efficient freq</p>
    </blockquote>
  </body>
</html>

--------------Et5uqODz4WDBlfHLEHdzU3tD--
