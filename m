Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF31AE8B81
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 19:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8C810E7A1;
	Wed, 25 Jun 2025 17:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMiQQ5d2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C45310E7A1;
 Wed, 25 Jun 2025 17:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750872581; x=1782408581;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=R9FXYNU+bzOQuiRd2WAl8NEwbMX2WjRdF5H1PkwybJo=;
 b=fMiQQ5d2qmUG9QzP40VbkzfscsD6pbD2nDgOEyQ6sJ6LTuUmL5ii8JPY
 8soGewDNES/5/LsFlM4a/YbpTFi4IobKFZsytwW1GsWITwn6BwRJ7PBty
 0gbstG7KQDKDF2B8a2VDbq3jSy0/MwsblzCMUnpEZcAmyiPavw60GDcot
 knOCgxWLYisR9k/1AspRrjolup4BJglk2XMVeDQeof63AnlhqMaD4AWU0
 kUlZZQqpnMPuSnn4CRrG6v8n9ou3D/uNcUYBnH5fSbPDxI5Ub8JYOnc5D
 CZqWeeNLlfeOPDrT6PNNqdxSIkvGtKqTQ8jmcX2BuCbnlfErVLR1OeiXl A==;
X-CSE-ConnectionGUID: MhqIqqDgSN6jNhtX/FnDYQ==
X-CSE-MsgGUID: XjlQyfRAQ4a7w2bUL+U4vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="52379534"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="52379534"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 10:29:40 -0700
X-CSE-ConnectionGUID: RFZrDrzMTcixCZ6yLYj15Q==
X-CSE-MsgGUID: thdFjBj+Sh6RpYgedL181g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="152408138"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 10:29:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 10:29:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 10:29:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 10:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cI5hPWr+xLoySliFyTVlln61Cguu8MRGnB944FqriocHZZUjF4YoCw9YKkEB2z4GdVYYExKgIQEVkyhquZOJ/B3wxMZhatdZmhiTbmR5s9FE24/YuaZVCQL9ATr2Bv60wyLGxjcBKVwxSG2oC+bNNCkYEWoxtKIXukNnye2jOw4PoToCVYmiyc+7d9ZhRlQWfonOPYunK5RCYHqYICT4xhHpymKxh1J/WcH6UY4Crr8DRoyJM3j0V06b04+AaqkEB0k0nE3LR6uFUqv6yL/izykW4R7zd0oU4nFbu5f/Y6JGzWuQGgVHKP1q/JwDZRcSIrj0z2lA1CAd67Roc8Ursw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PlQopVnXG+PcLQdCS7resha517qAvXMSoJnqqP6wZ6k=;
 b=cOcUFJaW3tUua7mUfuP36Iw1hQ1EmSiq33M4+AJvJfFeRA5NAQhqmJxu323JhisijK4hG8Mdte7BJSgyJBRcPZRlrPm6bBzV1bVnWmXzOB1vf3ZnqrcF3HKyiuYkA7niXQ27pLjknJZcP97za/6PTTKPb2ofR3DfZnShdmdZPoSkfJdt8zrwY6PcJ3Lam14REklZjnbnPycetFCgc4AZjLmhVSle1x6PxjTKWFThXjhjTr63F6Rkl9Hc53EFRMXxbMMD4cB92E/21EDKVHZplT068a4ZhBggn3hF7mQoWMD1enStIlkVV3qAXtyGvrcUzlcX52nIYd/tAx64pfPd4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by DS0PR11MB8070.namprd11.prod.outlook.com (2603:10b6:8:12d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Wed, 25 Jun
 2025 17:29:10 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%4]) with mapi id 15.20.8835.027; Wed, 25 Jun 2025
 17:29:10 +0000
Date: Wed, 25 Jun 2025 20:29:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v3] drm/i915/display: Use the recomended min_hblank values
Message-ID: <aFwx4SpA_OXt05Pd@ideak-desk>
References: <20250625-min_hblank-v3-1-6f89a55d4bf2@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250625-min_hblank-v3-1-6f89a55d4bf2@intel.com>
X-ClientProxiedBy: DUZPR01CA0032.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::11) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|DS0PR11MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: 275f2ac8-99f8-4d23-021b-08ddb40dcbac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s280RHzEYhJZYvP5JjGo55o0tJ6ee6XXdU/LZ74bRNsfJms46VfjbdlqOQcf?=
 =?us-ascii?Q?q8kt/bFPc81y2JLvgkkBdIllY/XRdv2vhh/9sCvcB5XMLH2tY/zdGzdhf9nb?=
 =?us-ascii?Q?uvhyE1gUsbKfOrIa6PHtFhxB7K2S3J/AxpilFaOZSTI0Ialj2kfsvrTS87ER?=
 =?us-ascii?Q?egVVHLWxcFbjGm97FCUwK1Y2XRI2Qb9QSxHUPBJd64yOF08SRSzL8IlaxH35?=
 =?us-ascii?Q?CM5qkgFPBLfk/WeUTKVeQoTBYVt6PFFWbxPGRPzv2ItkPAp3YkWLHIgT8ml4?=
 =?us-ascii?Q?YDGEpsNTOleHRD08SXorx9LgDsIS7XR3JHzTlk90dN7AbSvOFhnMvYfwQsmz?=
 =?us-ascii?Q?esRLVVTSLUrKgEI36mUJZed6d3XfhXaJHRKEfX5arRognhBmBb9ix24HCT4/?=
 =?us-ascii?Q?CcROK7slIQ6suMd9rECtoQke53+wmrf14gEnz+g7bGFBGR93iKEGHc2RQHLh?=
 =?us-ascii?Q?SvrWH/aoSluR85/sr4PchhBv6pwFALk6WvZ8X9sZuCLEevmcRRVqMz3WTWS6?=
 =?us-ascii?Q?k7J+ajfcjnV5YHVsh67QAC1zMVP1Ib+iKD1eoqdOK/+ecbfYNmO2T4ddMyrM?=
 =?us-ascii?Q?YT5MSFoCBlRVabTzUYjavp/7MFEGY4Jhl419wmuzl7SJuYjYqv5QX7CP/IPh?=
 =?us-ascii?Q?rTgPPlb+QzLljETLfzLupUot//V5HERc+Llxg7rUlHhqk6a+f96RdpUc6/7G?=
 =?us-ascii?Q?apDTzMEbJN5jpoLRmZfM3RYtnS/VEPsRQyrXrGUaP5LHX+BQA9jhicHmtzN/?=
 =?us-ascii?Q?6tgx493QywdbTfwMCfPuqFzZ5WmzIv2T506xZr3DrvbwR9vZ2OFgPwwe60mA?=
 =?us-ascii?Q?CcUSVQ/9jiPcm7HqOeksr73eZgwofwndiEUr+thqw3RV7yWKlX6TRj3qVzUq?=
 =?us-ascii?Q?VbBMX4xkt/bDJGDYMQCLQL02n8ZnoUaMZgKupqVn407XWh7S204VPmXaRBq6?=
 =?us-ascii?Q?nuxVIfLE4/tn6U9MNpUT4AqElvOoo5QM1696R6i05yvyXMa3CdEz/lNGSjvK?=
 =?us-ascii?Q?drEMwCKvL6nmB+IKaw8mFp2QIKbOK7+h6igjVaxlhx0JJM1DQSWKGKTWTcRj?=
 =?us-ascii?Q?RSuw4mRN7zXRFe2uwAKm9MloNd7Fum3fazBAQiTizdji6A9WOBmWDyFXdXOI?=
 =?us-ascii?Q?6nGjlUY27nrJzdWX4E7rTBDYqeHtXAA9FFC96udKfJkQj1wGnOq2oCtXThnj?=
 =?us-ascii?Q?CVkPc/hjlfh33HBs1neLYcfKamoof3pinU7KIV5Uju+96JKTQgYvp2PsHDQW?=
 =?us-ascii?Q?j36rF3SxiTo0l/FqfjW5D0s91MgGvQqGWAC4PeOwyjqblp8DiscjzQuFVQ7B?=
 =?us-ascii?Q?B0toy3aaYze3DMlukkd4y1S6RwyRkxrYOkuVAOJnwBhbX35jYKkpB9S7riys?=
 =?us-ascii?Q?q+pljWE9rWcmVVRZjTDPpVw1XmkZUiJnDghtggxgKx2Q2GRBhuwjvmeIKjmu?=
 =?us-ascii?Q?3nfNwOTeLwY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BrxHBa5yhZV6ZMnbgCUFt15z5K1eBMGRmn64SF4G6iCe8njP8jRVlIe3v3yY?=
 =?us-ascii?Q?yHv9QQBLxhg9rPXd+/b+WPyocLYhCX83gCkjJLyZBIYiX3SnXUIVGArCsyBz?=
 =?us-ascii?Q?jwOtJNYn5n2QNfawWyhCyZo5MJ8EyLB4s1WAFJr/PSc9wcaY3PAFG5QlT/U+?=
 =?us-ascii?Q?F46TPwiPFDZkz4gMS8VWZTucxThxUPn6uussUTIUbZH8Hf2FIIpmlm2b56dB?=
 =?us-ascii?Q?jcsfcNPs9oMOmBXtrGik0vXoE6u9Gd5VHETMonpCSp6grHqS7DfH/vCWYjPX?=
 =?us-ascii?Q?P+a06fgn573YNlYrlJL5w0IVhToMkRgiOHkRwtZxJu1vXZBH3RCyD+oNSkup?=
 =?us-ascii?Q?h9znfQBhpkm2xVzpZkImMpLTbPfEdO+EPTpptND2WAKKvnzGd0cRh1g+E2cg?=
 =?us-ascii?Q?pv+sjZMkCCQ9UfTjRTMsJq4iURWpZeO/dMBvFftClSte2dXZ/KHpo66nNBUG?=
 =?us-ascii?Q?lmrGqanN7h7qz+BxfaI3slwGQ3pHxQUuT5pgYRjjBlwkp6w6sif3/QAvsGRB?=
 =?us-ascii?Q?NBw9cMvI+QQugJhHW6SxUAAvoTjiPP3nIcpIY1YGOlrDpBrgbEMW5AQXJyow?=
 =?us-ascii?Q?86buV7B8bm/ANIxywujJlJJmKJtQqXKm1usZygA2fo618axgLWEpGmyXtLDu?=
 =?us-ascii?Q?MCZNgf17rWO3DPW+tgp8RMTb5eQeOFlZMYcVVqcpSfhac0iYmF2i1l5yeRfQ?=
 =?us-ascii?Q?4UpPJ9G7hmZRWHbtx9hm+6L6L9L6VFzR1UCWXZ//mOYB3jCO3z96dU1644Ck?=
 =?us-ascii?Q?zeSzqLXV8MvqpzRcIIYEpL2gCBsvYccXSgNb2XOxPgnEhx//Wws2KVPv8tEg?=
 =?us-ascii?Q?WWNAWOh3m3mSS4UoyRak/+n4S+gboivUrQb6SRmEPiQ7U/svTQrpCdMjFCWG?=
 =?us-ascii?Q?dLN9tahlOOenXAoM59hHgtwePnKUZzj9K5tJ0nPB2tEFXjR9CpJCkv2RN6Hm?=
 =?us-ascii?Q?vgr71fXEYzb8YfTqUt+9XcsJePP31oQ6VRMcdHaJ260PKiI7UpW5O+4LpvHX?=
 =?us-ascii?Q?XD8KbitT7zfmzr6hIvWbezWmvttCq78D9fQqjHJmWe12rTcPbjowQ+AHQmkw?=
 =?us-ascii?Q?6dp40C1+mMfhB/Z8POsxRAJJ9/uXmdF1zfDNOYsse7nSc7mBWQa1bFcXvq6X?=
 =?us-ascii?Q?Kv/YfV90gOBdTB4ok7d2hNF9gSnWSIxrVY8PFsofqwW9NvxAFwwbcP/fsani?=
 =?us-ascii?Q?VmsmPMl+etzgDZHPY7AzTKbbbrcFz7jrfEzwuY/wMvxks3pXe2DIWr6xkkuk?=
 =?us-ascii?Q?8WmCf89yUicLu0ftmc5rOa9VmuWmHI0/miEQFIhFTEFrB0d9kqxCURFe5XmK?=
 =?us-ascii?Q?ju8hUWYYsamQehpHuuTTnE2MOGEJbbwF8Y4VcdXHTYKYy+LwwfM1eADhb0Ht?=
 =?us-ascii?Q?9MzRPnHihdX4/7d138eVp8SAfaO2pF6w0cVcefKCzk9i3OKiIohUy8p0ceBm?=
 =?us-ascii?Q?Xn5Q3M1lsVduZkFNPCMb+UUd2fLMPu/+6IOrQhmqu+nupzhVGteACSjr2FM4?=
 =?us-ascii?Q?KnLpaPY7GYd4dCW2JNnHdAKddqBGYoQlem/ClkcMQebGVDRwGah/OAFhb4ep?=
 =?us-ascii?Q?shFIgVfij9UWpzcFGBbdONeESGxWWYjAbr9OuanC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 275f2ac8-99f8-4d23-021b-08ddb40dcbac
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 17:29:10.3588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I6GgmPN09TGRKdya3n0F7GE+zZUk4oUa/ob/9YgpalBJb71BNeNfw/ECU1lLVAM4izGM8q/CpTPqXxJJVMEJ5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8070
X-OriginatorOrg: intel.com
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 25, 2025 at 11:04:07AM +0530, Arun R Murthy wrote:
> Use recommended values as per wa_14021694213 to compare with the
> calculated value and choose minimum of them.
> 
> v2: corrected checkpatch warning and retain the restriction for
> min_hblank (Jani)
> v3: use calculated value to compare with recomended value and choose
> minimum of them (Imre)
> 
> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> Changes in v3:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v2: https://lore.kernel.org/r/20250624-min_hblank-v2-1-9110a9342d8c@intel.com
> 
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20250624-min_hblank-v1-1-5c100e4a8b05@intel.com

The above 'Changes in vx' templates could be removed imo.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df7fd26c9d089e8f1bd096bfc8df95..c55315fb74734fded40695bae40dd19f71a9786f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3175,7 +3175,22 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  	 */
>  	min_hblank = min_hblank - 2;
>  
> -	min_hblank = min(10, min_hblank);
> +	/*
> +	 * min_hblank formula is undergoing a change, to avoid underrun use the
> +	 * recomended value in spec to compare with the calculated one and use the
> +	 * minimum value
> +	 */
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		if (crtc_state->dsc.compression_enable &&
> +		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +		    crtc_state->pipe_bpp == 18)

The bspec page describes this format as YUV420 at 6 bpp. Not sure how
that would align with pipe_bpp == 18 (which is 6 _bpc_). Bspec could
also refer to the compressed bpp, however the driver's minimum
compressed bpp is 8. Could you clarify which bpp bspec refers to?

> +			min_hblank = min(2, min_hblank);
> +		else
> +			min_hblank = min(3, min_hblank);
> +	} else {
> +		min_hblank = min(10, min_hblank);
> +	}
> +
>  	crtc_state->min_hblank = min_hblank;
>  
>  	return 0;
> 
> ---
> base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
> change-id: 20250624-min_hblank-8af8d2626ff8
> 
> Best regards,
> -- 
> Arun R Murthy <arun.r.murthy@intel.com>
> 
