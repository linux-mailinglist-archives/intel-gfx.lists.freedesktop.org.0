Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C148B918574
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 17:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092FD10E90B;
	Wed, 26 Jun 2024 15:13:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bC3PjguZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D9A10E90B;
 Wed, 26 Jun 2024 15:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719414805; x=1750950805;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UY9famemT1+lIM4YPHV+i3fO7hq5RJ7SzxRCJxJrqIk=;
 b=bC3PjguZN1totRgpVvmJamzUS5yf0BmDEFAFIGiWvCZm6VZqLoi6Sd5l
 /GvuzwlMxYlo0jN5TTv3fKXpnvMhAaDgaxmnMOPMjfrrXdNTwlqLCdscZ
 l1YQzjOHLXL+wAGyMLgDCaRDio6QKsLPEi6tSYonv7eAlgTHUddogFMV7
 vvZP2wGq5/rTATrJH9XHZ4mwalZfiRWFS7/0og8W68NTK+I2J2bkbYweE
 nVcaXwGrBrkOG5cDsm4mmrcdmd8+6Idqmia4B2ocOGj3qw3QbnlS6+Sst
 SVjrZEezts35FjmiqVnmOKF5sQjN5CNhVvpFNUDNGEYliTPDf0LAP/tFu A==;
X-CSE-ConnectionGUID: Jikudl2cS8aUICPZyNbq6Q==
X-CSE-MsgGUID: +W41VCUfTpqxKnU95ka3PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="33948753"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="33948753"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:13:24 -0700
X-CSE-ConnectionGUID: IxU5qLKjSLimkUl54FlTTg==
X-CSE-MsgGUID: yF0I+Y5BTNOgreDUjGHjMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44674901"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 08:13:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:13:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:13:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 08:13:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 08:13:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQRqsob5Lcvw46m16JjfMBpFGs6Zd825+BKmNR0KhfxTioFIEOEz7ClcZdOUqkLpm+x1w4gfgBs2sDCbkSyIaeLZ8khQNRyzrMdxLQs/Pcd/NjIo/5fvl4JJQq5pCyNNBcX7zEIV6W8wHOLdARR5nDZLwzWHwyWUbUwrwMGnXzn9j9xCsB43048QlUGyDHYg1W5ZcT6+sQz1unNiN6SPYLetR6X5KNAeZ9EiintreXvRVxz9ilWu6rY2mPgBQVov0v9rZCkemiK7CMXiSb/Layx9C/csW30HOqTbKR5adZNhFUhFEB2n3p1V7gjTsszwwSHs7BWwY7nfDKkMcuFEAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lAiI31jKZJ/oCxDq8iycP7AZKxdeNOB7u1yvgqq0SI=;
 b=M7DYbHYAcNTDEm80KfsjL2DSGyup60YKt/JEKH4KcEa/VGY9ZsSoU3lqEGI0hzwB/gL28VN1XJMVhQO6kuvIwfAPaK1l255jS1/4PYV8qr2CWzs+ezowu5ojbW3EZjUM7FdNsvtzyf5qKusOMIQDa99Vq5IxwmGDFEQrdKWclvuvLNkn3oljlaphOVlwO5NmCrzRozjAUXnODnZeQHNw2SJ0BX0/D6UYpo1cRpeojiCBh68L9vRv3T23f/cB6n4lgy2b/Q+xoR9pxWz5OXB+wr+sFhH/J47WtDk2TJU2J7E09Q38BN+2k5jEG3z3cjPhZ22qHY260CG9zh5bzhLopw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB7129.namprd11.prod.outlook.com (2603:10b6:806:29d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 15:13:13 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 15:13:13 +0000
Date: Wed, 26 Jun 2024 11:13:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, "Runyan, Arthur J"
 <arthur.j.runyan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun
 during retrain
Message-ID: <ZnwwBZFFugbV7JPj@intel.com>
References: <20240626083624.4042544-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240626083624.4042544-1-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: SJ0PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB7129:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a0e1464-ccc9-4c1e-c0cc-08dc95f27f8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|376012|1800799022;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wTrbXOKnq7eUKwtm/wJ+Itsw93DERxGLgAEsiJYwDLBaS+Ox4vmwQQE7K0dX?=
 =?us-ascii?Q?fhNBHoWUQeSSP2mLsdvmgRaNfZGD/alpL1j5JZNlkkcKie3dQoxhJI9YbZQs?=
 =?us-ascii?Q?wtZiDvxftaG/kFsEtwDYVRFSM4jln+BU8LkPjqm3dgj+dKb9YMlfxtUI6O5H?=
 =?us-ascii?Q?xFZtyeUH0kjdHDAw7UenuR7q00gP5pbvWVTb7JreGZKKkMx3tLs//uLFaMAt?=
 =?us-ascii?Q?y5e220o0NG2szPbAIKyndQiD/MpBN2EAtw+M+ES62oaLhQzePfsqNieqz1/x?=
 =?us-ascii?Q?ZrX8e1IOnfd86rN2H0bgOnU4qTVCDAI4RKlshEU3ZICq4MM9LfFpXyWj5ss6?=
 =?us-ascii?Q?Hcyq9ypFFMhVQm+Zkrisbo0fBOwipSiQqp54mdlpNdQ5mlhCGKNmKZQSmC/m?=
 =?us-ascii?Q?97MWlHOaC/CelP8Isj9O9jmoNnFw7kDZrpxgYoe4jtMsItvP6ZoTEE354AVe?=
 =?us-ascii?Q?kQWGnmM8kFU3YydZRBkksNz+rJ5s2KyZD9/oRTRNfnRcerC9h1DfK13fVrTt?=
 =?us-ascii?Q?zaEzSMg3BhIPo1gQB/eow2cIQOL73AYBf1px+7fk22bTpS1gCmMRcUdKOv8K?=
 =?us-ascii?Q?X4MR0TKbe1OT09/TGurBmerUfx2ILr/XLzSp4JWM8fDPEvtkfCO+Xxdoh/tz?=
 =?us-ascii?Q?hjVdnfvPDwxZlOfNgD7ihsWRARjp3RH09UzureT8Ee9zE++AstvjQQp4g11F?=
 =?us-ascii?Q?u6vvM8glco7hnzRoXcU3k/HuZcokOIlwEN62t7wTIMhejU7cy+8IAi1qBVfJ?=
 =?us-ascii?Q?qe0F80pQlBY992bgLzP94CgqYupmK6qAqdA2fTk2UYz/BD8+4lc67Y9P8V40?=
 =?us-ascii?Q?Ooq+ef1/FNW8SGkXNcqIFPt+1hN1sVE9g1SpOp4LwtYvyL/s4mGAGbAAM79q?=
 =?us-ascii?Q?uEXl0J8KHMY3shDLPHWCTwVeAGxtBdTB0s+KjEx+AweWc20BA5fUG+2civgO?=
 =?us-ascii?Q?ZlbRpZv+zNNjX8H0/8ZopIZFi3K+byP2N/TFo8PsSrq8/iITpRmvzv79dnBE?=
 =?us-ascii?Q?H5AEfCatnYrKIfZ0hrgx7ey8l3LcFCuq/EhfcgciHg1nljG0owQkCliRVbwW?=
 =?us-ascii?Q?aSKtcLUsyjanVoFKt3UtxufYCv+Wq8fzuNIKRYjyNYk09zpx4opUVd8P0Ggk?=
 =?us-ascii?Q?j+3xFAhMZRc4QW9J+wEDS8UlfcC6EonY0u0kRZCkgENMk3J7ikxwt+9a7t/P?=
 =?us-ascii?Q?Q6OG2lS8UFvx7SFuGsDB6oUkYFs9YQ6jQBACB5eCyr1avb46KSUkmc39aly1?=
 =?us-ascii?Q?XP0RICxq1/PFTmDt1wbYN0gYcxBYzZ/W/9fQgeap2MLnKGEEsa7L42YQp4Li?=
 =?us-ascii?Q?czU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(376012)(1800799022); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TUJZOjaLgf6+RkalQQ9H+MP7qmEgXfcbthpkFVgb5hjvTI62ZYOnElry0lFL?=
 =?us-ascii?Q?dwqIxJ7D6kUEIKK5oCc1yVBdcq+t/WiYHcIGwXxhAJXYNBAcjMtsVfUoEbvN?=
 =?us-ascii?Q?sJvozBhjcVqJYdnQKJQrCkcK8qSL5am/Umw1sCzHj6k/38CF+1gn9G+fkRy5?=
 =?us-ascii?Q?AV4KVQTBlAWD/8bNcykUPhq7UUdPOlwqIHLOLJX5gqDB3PuAgIDYIyJbVLV9?=
 =?us-ascii?Q?iSOYVE+5Aa85lCAp321fOuchiiKCYJ6pK3a+2hyb2kRpDotsHUOh6dEqQtot?=
 =?us-ascii?Q?IXbmxFOdp6qde1vF7vTsEqhbHQPWhQmz9JYRL/Gy7tcjxIIC0D74OeyDx0v5?=
 =?us-ascii?Q?xUQ7JTObsY2qUTSdrtaQ5+UmFu5RtWx7VJrFThDdLGM4OpceUS/vYaE5fInK?=
 =?us-ascii?Q?RiQYlB2bxC9Dry5SXbeVwksHKyXBeNtskzc06elbU0ueGux7mgSvxgGPXfCp?=
 =?us-ascii?Q?V27scbhHQKOfarZmdrARXkg33PSQWypk5x0yd2tMQ9HR/XOKHAcI6Ph4V96r?=
 =?us-ascii?Q?Z5PehNFi8tTWX4UVpAi4IL+MYQPddS33pvviXdG1T0mADnhCa70iZ9dXSwhb?=
 =?us-ascii?Q?FqRlqSOFjPspvBE/rk01/fzQTDYT72ikG5sR2iX4RoekYMTP1xbbdUyw8CgF?=
 =?us-ascii?Q?Z/rjZt2T1t/ieORVoiAoc7rplvPPsAduIPd3k32ditGxo8lNNmBME8oqwI6T?=
 =?us-ascii?Q?ymejlZWl7ZpTdpGsnhCnVHK609QMZM7ll1mXLbBp30K8u5bF/gEOnKZRiuoF?=
 =?us-ascii?Q?hWtwcgd6xorzduWvqgpM0YVebC4W7ZzltkV+CSIBpYtRzW3Fd0qdfYlpdSq5?=
 =?us-ascii?Q?Sc/angpnQgSBlZLOVVej7HeInXZKM0NQ33zzcvMxi5e0CRELdtfwbCyrhlZg?=
 =?us-ascii?Q?HfJCemz3ak9O+AqIeTe1/+bIGG8raXuON4IeG7a5MqjLVDfd9egluBcPF0rM?=
 =?us-ascii?Q?Yo1Z0R0lwlptr36HhV/BxEiZ2Uv/X4YEpYaCb54OY9RQmxSCATPF14pDLGAo?=
 =?us-ascii?Q?FYC7ifLQbrEys9tKPmdiXkPu7Ie5eTwuRAW93qxuXrt2pFUoIkkMOhYJsPmR?=
 =?us-ascii?Q?7wVZYaHlmJGyIruAjBliYo1nnDwuQzYK2oU+dFwPWxHH36W0M7qxwbHema7Q?=
 =?us-ascii?Q?OVUdnTd51r6rib6tgndbB6JJsWCOusy9MZ0ycYsevi+OYdfAFucNU2IKh2cY?=
 =?us-ascii?Q?7VA6b2Gm7nNHjtrDaU8WDeMv5jCAEalisAYCiV9937dhjLa/uxcWPnkqdQRf?=
 =?us-ascii?Q?I/sLPMdZWXpFvERkGqnt7nW2Urpft2jikCbPlKWrCOKhUpQEjmCQZe1XQWmW?=
 =?us-ascii?Q?zeNHBbhaPa84v4AyY71IWkLCBsOIdTygaoqJZNKA7WQlbsA6Npaqyj5/mtwm?=
 =?us-ascii?Q?OnoC5f9Z6LjlmyNPQ11uahLW+Hc3qMGF8HoJG8nz9z+z/8NMuM5dtpovtk5k?=
 =?us-ascii?Q?QDKaFaCSpgBjv75EDnSaXJK95sXKcM4YnHo1LtxcxCd4zkyJr+dJMPtYPryy?=
 =?us-ascii?Q?Tu5n63905Rs/iuXxzXEvCYMkN7rcK2A0NEHNfseWNkHVSAcAz2okkYoS3lMm?=
 =?us-ascii?Q?poss3MikNvsDkYkbsBaMjxcCZ4pXj/+/GQCTu+EW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0e1464-ccc9-4c1e-c0cc-08dc95f27f8a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 15:13:13.6042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FpAZ2EGToW0zMQbx4+NgGPxIkAScqIPCJXb99RqORxUuqO3g94rpaXNBa7OeSKup3/X9uZMiRs9goyHGcQACmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7129
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 26, 2024 at 02:06:24PM +0530, Ankit Nautiyal wrote:
> During Link re-training reporting underrun is disabled and then
> renabled after re-training is completed. For BMG its seen that we get
> FIFO underrun just after the retraining is completed and the underrun
> reporting is re-enabled.
> Add one more intel_crtc_wait_for_next_vblank before re-arming the
> underruns.

Cc: Arthur Runyan <arthur.j.runyan@intel.com>

Art, any new workaround in BMG for this issue?

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..25af51499383 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5325,7 +5325,12 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
>  		const struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> -		/* Keep underrun reporting disabled until things are stable */
> +		/*
> +		 * Keep underrun reporting disabled until things are stable.
> +		 * Wait for some more time, as we see (at least on BMG) that
> +		 * underrun gets reported just after the reporting is enabled.
> +		 */
> +		intel_crtc_wait_for_next_vblank(crtc);
>  		intel_crtc_wait_for_next_vblank(crtc);
>  
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
> -- 
> 2.40.1
> 
