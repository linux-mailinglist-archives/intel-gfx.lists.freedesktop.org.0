Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D843DEBA5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 13:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5436E0D0;
	Tue,  3 Aug 2021 11:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28E96E0D0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 11:20:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="213639764"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="213639764"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 04:20:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="584695934"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 03 Aug 2021 04:20:13 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 04:20:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 3 Aug 2021 04:20:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 04:20:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TiI3Cn1hqwxb191vXNktBWZs8TDloElxPpBe/pLZWGvllWslerb1Miarpmt+gKvcqgCu07tjeIvA34zrMAVVS4nRM7l9NqNPrpgmLYX8xoWGIYmDkdOJRl+D1pWlKZqhKVHR7GKNnFhsm3/yOS8dePFcN2AAkqToNvLyY4BQUrYCsDCdR1g/XqlRFA0rBvZrG7Ii9+5RWcwBu2W1J5I/doAuha7HhWzmse5T5oip/1nujbMGFG+Atmz7LiAcPn52BWbIF1t/VMTekg6/HYFNspobrjGxtrzKGMq1WaCuIUYDE3jWjxZ+GSJ9Wd/6XUxtmhCkYGwDpyMnuNdpruOyOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mw7SvWe33Jo18o75aFGoNhoh2PO+AIM6ziRVXEutcuI=;
 b=DV0Z/wQJr380U8UoKh6PKvyYEali6ZVTPpWHVi/bKZA9yJyjmOXsCeZPo+CKc0rHfHTAvUjwKkQkmjyMemcAjXTVVBX460oVwngWxZXr1SQxLhaQkSkx8VyXqnNEWwZJ+efwA2hHZul9t6bijhbehM+eLaY8jzq21pRkyZjRfjqKG/HLryyebaY8sCaHI4dnmoKv6/e1NO3baDcrb0xrV2YWi4mAW4efGXIigEltTsrwERQY8ei71xZWwF9/xkbEDab3+5LXiUOA4k3MH7mu9zaZqoLXDZWk5ihIvC/K4tX2/TnGQQc8h7yUMhsQKt99DP/MYgP+gnv49ndSk+3snQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mw7SvWe33Jo18o75aFGoNhoh2PO+AIM6ziRVXEutcuI=;
 b=dF2RrPgXcLz3ZhguCxyzNHfge36xTDYkUzQUN0J1E9Y19gxxZhpeUr5a73KAQ39fsWM7NV+bAz4hg3FikrT7lWUXyAA41X94cbyOThYGyD/sWCJApZWf3dIz07OqDE3ROICP3iiFP6HAnhA2RjZp0D5o/VkLvCmAyMRlkirLhhg=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5235.namprd11.prod.outlook.com (2603:10b6:610:e2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.22; Tue, 3 Aug
 2021 11:20:10 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a%8]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 11:20:10 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-3-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <29fc7f2e-93e9-229b-0fd6-75e4b988edef@intel.com>
Date: Tue, 3 Aug 2021 14:20:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210731001019.150373-3-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0220.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::16) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.252.35.69] (134.134.137.83) by
 LO2P265CA0220.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:b::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Tue, 3 Aug 2021 11:20:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caa92e4e-af77-4d08-153b-08d95670a7c9
X-MS-TrafficTypeDiagnostic: CH0PR11MB5235:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB523565FE81F8873805B4593AB8F09@CH0PR11MB5235.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IcpeFLWLLLEb3EhuwJ4l25RnYrOSeaCkwdGcCxkEIrFwD6hzDWmbsNAd1W1sxfjwBq9bFPyM2W9vyAk3g6Qw9s5Cp9lJE+ToP4IeEK7Ndrt1vpt64vYbe5cMr9UoOGxoVPK29jqe2qp5cPmZkGncBIX92ZJP9gqddn9MnkgRPzvMapykRduk3juD4p0Oz2JqswdPvP2JXZOG0DCsHOyW/UVSWiAm3J7shjr99AvcsrR6UVXKqCG641XGMfFy7zv2ouitqzw4+5qyh2OvO9x9Zo+2Jucbj2jnRfUxD+Zp3WoAml9nr+ZervzHYmzpN6lyJca2x4ovCqdJ/EI1Pu/HPZ4zM0DLMWBAf4e8oiwau03ji/SS2OGdyQQwspwA418nyRDfCxrHsY2hNJR3dnX9zc7bqZVkeWtSPF2GNn+3H2mSmSHQl/NPZs3mBDyKdjQKnGNaNaCsLXZtZHWhhA/qo5xwNFxlCzoQVe+0W5qY2S77Uo8pOjrMqV1QJ/h6idB/U88EbA8n/VhR/zIfs6vadNtMm/6J3q1WYBIlwQtZii4jVdG6N2jASzXWWxdmEPYUjlzJUnw/ip1aPIbevj3uK7Oxtes3pKdf2rc7cAOkbTFNom/HAlgilCSSOjcDLucnTf165CRe2p7uvhe4bFdP/nD4CPgUwGK2f1Yel8E3H7uVb5k2Jbq4m48iQnI/ooL182rJc5VZe0/kdOJNiWo4Rh0jDrTyasElcqOY/3aovCI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66946007)(66556008)(66476007)(36756003)(2906002)(508600001)(83380400001)(31696002)(6666004)(5660300002)(86362001)(38100700002)(53546011)(8676002)(8936002)(2616005)(956004)(31686004)(16576012)(316002)(6486002)(186003)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXZOb1BRWFBpa0dxZ2hLM3NrN2haLy9mRTFWRW9pVERYVGc4ejQzczh2SlRw?=
 =?utf-8?B?aXBsVFhRdUJGeGRyZEl1NFFFVWNsazFIVWEvS0oxMXFtWUJwN1RFK3htMGNX?=
 =?utf-8?B?REprN1VVTjlmQlNZa05mMGVjYWN5ZXJTZXdCZnZvUE1UQ2RNektVMllDZFRl?=
 =?utf-8?B?K0dZRnRxSG5HTWNGNTFDRkowSVpqVWk1MTlSNzd4V2UrWkllcDBYZExlM0Jp?=
 =?utf-8?B?dFJZWFNyeXVGczVrWTlKd1JGZzBSbEY0SkcxbkgxR3hCS3pNRG9aNVA5MlN4?=
 =?utf-8?B?YlZJT3g1T253U1loUForMDc0Vlo0NWcva0dnNHp1MVdNNC9sYnNxeVdrWGxC?=
 =?utf-8?B?dXNuczJ1c3ovMCtDTU9rUThGTm5YdTc5c1F6Z2FiRkJpczN1Y2luem1QT3ZN?=
 =?utf-8?B?ekpGRm9nRUxtYUc2d0tEWkNpbnNaQWJZcmFBQ0JJdDBqZ2RaZ0ZtTDdzZVE3?=
 =?utf-8?B?dW1uU1VJWDc0TThuNWVXR0Q1b0xJTTNtUGFITFdvSlJkYmZxUUFGeGFrQytK?=
 =?utf-8?B?YU1YL3BOTVFEK3RJSWNqQ2dtcndFbFZ1dXd1RXBQUTJxMFRyK1RBcWdsVzVl?=
 =?utf-8?B?V1Mwa3FEQXVBWnhhTFZiOWdldnkxbWlhdUNGTldUTDV0Mk1ieGRrZEkyd2pj?=
 =?utf-8?B?Rk9FQ0gzbGg1M0hvMzZvQW91MkU3UzJydTlXQ2RtUTc5aVV3QlgxcjdRQTRa?=
 =?utf-8?B?MVpSNHNNT3NjenZGa1N5aHdNcjhCMlYyRmM0MTRVQS9BdkI1NUtZUXVmUjUz?=
 =?utf-8?B?MkpncCttYnp4ZzNVOW81UHFHUU1HNDg1RS85WGJ5ZStxNVZpUmhiY0tCN09k?=
 =?utf-8?B?THByOWl4QVRoblM4NzVhcUdMRHJUT1J5MUNESDRCSWFuejROa1ZKK1NVWDBD?=
 =?utf-8?B?cXB4RmRZQkRVTW5oZEYzZ2s5K0pjNXRhOTR5MVllOEkzNEtybXpQYWV1WUJE?=
 =?utf-8?B?WnJrckFTVmk4Z2V4WEc3VDdXdm1ENnJoVXRtN0JIR3NNdzBLdU9RbHhRVWYx?=
 =?utf-8?B?V2tWeVhaT1VVTFdwbHZuajRsZ1dXZGYvNlBpaDhrUDMxQjlWYmN4L2JieWJi?=
 =?utf-8?B?YUNyWnNnOHB1NzR2ZlZVLzJZejlqRDZLNk1KUWg2S1lZdG05VmtnQkQ1Y1Fi?=
 =?utf-8?B?Qy9XRGhVbndlZzFKZks1Umc1VGJML0dUa0ozWDk0MFUwMmNWbzZxT2F1cDlT?=
 =?utf-8?B?MHdDQUFjY2xYV0kxTWZ4U1dsME5YS0I4RXBOUTFuNllqYWlEUGtvdHVka3pF?=
 =?utf-8?B?bmkvb3VQeXpxcUhZSHRNRGxkekVramREeDBUR0l1Y0ZMZHlUc0t1NnZPZzJo?=
 =?utf-8?B?UTRXQVJTZVFad1VETVhYRWVCMnFOWENJRHEyMk1mQ2o1NFNnT3d6RlNORVpP?=
 =?utf-8?B?N2NPdGVqeUYzMXAxV1pkYStkamZML05iWDhlRHNVMDNhVG1IM050K3pOdVZ1?=
 =?utf-8?B?Q2VFY1hUSU1NcUdwT0U3TDNFOXl4bllFZUZlTUkyUSt4a1FWSzdNVFJUSW1u?=
 =?utf-8?B?Tm45Ym5EYm1HMnJ5c0RKaHVDazlmME1EaHBQcEdNMzF1cllZTTg3N2JCU1ly?=
 =?utf-8?B?SDlaTXB0Q0NpNit4d0hmM2FwMkdpSGg0UW9nYjRCWCtibWt6UlFHNncyLzFs?=
 =?utf-8?B?ZHNYMHoyQ1JDOWRFRGxSYUwza0pBSm5pT003a2N1UXA1ZWVEaHAyZmpub0ZX?=
 =?utf-8?B?U3diWXA1VUVrUE5NNlpKa1dQMllvZ1NyV1A2QzltYnJ5ZEJBOUNtRDdMREVv?=
 =?utf-8?Q?QFXbfIya1BA05oNFvig6TXk1akgWYv/XcnDoVCs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa92e4e-af77-4d08-153b-08d95670a7c9
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2021 11:20:10.3712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +K75iBL2SY6AxSKxCj42xf/T1dzhoMIVV3ew3OvNEushS2PA0LE8hpp6l2tezEPfdbTeFN9mxCNznbQWpvf6s6Od3YElRiyj8IeLn6wajDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5235
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke ORIGIN_GTT
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



On 7/31/21 3:10 AM, José Roberto de Souza wrote:
> There is no users of it, so no need to keep handling for it.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c         | 10 +---------
>   drivers/gpu/drm/i915/display/intel_frontbuffer.h |  3 +--
>   2 files changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index ddfc17e21668a..e4d412d395c34 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1129,7 +1129,7 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
>   	if (!HAS_FBC(dev_priv))
>   		return;
>   
> -	if (origin == ORIGIN_GTT || origin == ORIGIN_FLIP)
> +	if (origin == ORIGIN_FLIP)
>   		return;
>   
>   	mutex_lock(&fbc->lock);
> @@ -1150,14 +1150,6 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
>   	if (!HAS_FBC(dev_priv))
>   		return;
>   
> -	/*
> -	 * GTT tracking does not nuke the entire cfb
> -	 * so don't clear busy_bits set for some other
> -	 * reason.
> -	 */
> -	if (origin == ORIGIN_GTT)
> -		return;
> -
>   	mutex_lock(&fbc->lock);
>   
>   	fbc->busy_bits &= ~frontbuffer_bits;
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> index 6d41f53944250..4b977c1e4d52b 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -33,8 +33,7 @@
>   struct drm_i915_private;
>   
>   enum fb_op_origin {
> -	ORIGIN_GTT,
> -	ORIGIN_CPU,
> +	ORIGIN_CPU = 0,
>   	ORIGIN_CS,
>   	ORIGIN_FLIP,
>   	ORIGIN_DIRTYFB,
> 
Is this patch absolutely necessary for this series?
