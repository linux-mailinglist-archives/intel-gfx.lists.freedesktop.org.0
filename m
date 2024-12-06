Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD8F9E747F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 16:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF5A10F124;
	Fri,  6 Dec 2024 15:38:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R0QeaoXt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A437310F124
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 15:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733499516; x=1765035516;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=OUs1yZfOMVLQZ1Jx9s6cLBTzPuwmpNMLj74aN9f9K7A=;
 b=R0QeaoXt//I+cfV+fxckOKB/h1T3QyaMPduSis5RIcK1+4P2fyFgb3AB
 luMP+FXH5G2lqoIQbZ7OnHa6nJASWVTYygSgT8EaSGF+4Lh4veSOe8YNz
 O/w5120LRNXo+g4PgnrnqR4h+q6djPj8vrut3lF3AlCKRbziguooR9qBH
 ipTSdNibFAmOjNRXy18ytEv7TW39ZAtdVyyaW2M4ErrzJDlCY8E2oAli6
 p5FfU88l739YfspoAadoYj/xHeqBGR2YeHAfZ43mI8q1hQTVsfJueARhM
 Mwm0eBfXNfujdfcnWztT5F3+JPCwlRnoXqAzBHVoD1cV0yhWVzBsk7jaA A==;
X-CSE-ConnectionGUID: 2A4g16pBREiNtEYIGhYGPQ==
X-CSE-MsgGUID: SCzq9wO5Qg+ufyTPJDDPeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="59256345"
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="59256345"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 07:38:36 -0800
X-CSE-ConnectionGUID: mgZeaXQ2TBmnkcYlP0swBw==
X-CSE-MsgGUID: VhK4v136QcK1jo80yeo1yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="94797619"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2024 07:38:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Dec 2024 07:38:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Dec 2024 07:38:35 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Dec 2024 07:38:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KB5g3/3sQfMdW9qBZEyGrHlmT+uFY/ONgVhdtjCqr7+2ZryjCjwEgEewXjDHpf4HBlUriqs+qn+U8UGDr4FAmTuehXr1lFGxe0YkeUzvwW9f8ZzwBPT12bPtOhgAmOc2HBVGcdKHh3nthPvbxvTHhHG7P2EMvWJpjKfEdQoKeKTTk0LiJEYF0Nqjlka/agQwB4i+Ge0zqks4uB88v6svUjLayKlWM0ejih28qufblrLpmDLmBNVp5CwVxqlNK73cRrLfLxCMatXAZkceABQGqMCOO8IYR3tCV+LCmcO4z+skwl3WOfQWdZcqgbYR1XW9wqqKXPZLseilwLiGWoTKjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M/0jeFh4pA0si3YE4n0pubujZOG3N7Gg3vhiD8lkKYc=;
 b=cc4DrmtAkfncrDryETh9FK4o7/rqy37mtOrGkOrzN3lLB1vysmmGrFKAF0Qa3J9jWE7Ytf51MjBb8AqqHgJbN09i8bgz95rOkEyxZ79qSPvLf9Ov6+TM4kKtaObfW9fAee4K0PJuw1nvQiDA9aQSZmR0tKK7qS3fdhAui7ApGAvE2SbmkPV83ua9b9BYM/z20JakjxPEP6fkrPffkwVHZMsz4Cy/f7uGTSPGrXPZ0Tz/nfyTnc739vPJOkzHLIOj8OPd+c4PMoU0hXen7uZO0N7/jJLiVXIIS/sENy1QnqxlfpgYL/uDxlmi4TdJiKrZWnkifV+oiHzVQNDZUPqHSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB8685.namprd11.prod.outlook.com (2603:10b6:8:193::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Fri, 6 Dec
 2024 15:38:30 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8207.014; Fri, 6 Dec 2024
 15:38:28 +0000
Date: Fri, 6 Dec 2024 10:38:24 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <vidya.srinivas@intel.com>
Subject: Re: [RFC PATCH] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <Z1MacMC8XyyyHcqj@intel.com>
References: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
X-ClientProxiedBy: MW4PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:303:8f::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB8685:EE_
X-MS-Office365-Filtering-Correlation-Id: eca06257-5aa9-437f-14a7-08dd160c07f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?9bidr6fpVbddZkFg4woV2dg4BAg9+4D+0kzTA3lhpRPKz1batQpFDm+DIX?=
 =?iso-8859-1?Q?n5E+JLVoD0n/Tvvu3uxT8+OBPTd12h5GHbDk16A+OdRE4HD/IIoJkTb2GM?=
 =?iso-8859-1?Q?xPRqZgc3720N/Txtzq0eHIxXaY/Z2lV7+pIvMxNvouY6k7SDW6EqnmAT+C?=
 =?iso-8859-1?Q?wZCR++ZkvHqvzuXlHXef8eb6dBpiGkiQt3UIKGhSB61SIWlfA3BAFwt0pW?=
 =?iso-8859-1?Q?jS0SJPxsmaMf4RKVfHQUBgUlf01xH9EsI3GU6YlElj3WFMG4CjPWaRfwuO?=
 =?iso-8859-1?Q?tnzpSPAJItwNtkTgRn4CGyikWRq3B+1vu64OT6Kkw1uHKDTHJiAyPPzasG?=
 =?iso-8859-1?Q?NEHNwTgz1L+KuEMnWJUOb1c65tSn4jgofsGoAfu5VScIVq4/cj0C+uqLjn?=
 =?iso-8859-1?Q?+ANaOOPrZdFR9U9lcAXUdfPSDGQUu8C9DLxXaColZwyevJ0U5e9moasLqX?=
 =?iso-8859-1?Q?ZGLH/9083vj8+eqXQzHyDVQcrR3IMVdo+1af1Kvm7RV54zzezJWOMtLPv1?=
 =?iso-8859-1?Q?BG+E1686VBnzZ5UPWi+ALC8BHyu4Ia4kXuM/bbvVXYR/MY09BLaBnLvj2D?=
 =?iso-8859-1?Q?2PnLIjnQtCOXZ8wwgnJvniNVIFWY4yZdeV7Nu8DCnqBZlkrO0rmvp6SLXw?=
 =?iso-8859-1?Q?vcS0iJ1SW7BIvQMJJgQjcf3WULg1AnZtKei7vS1H5KUpxTvxmwHhzP+5Sb?=
 =?iso-8859-1?Q?3KpM8jKHi1Y/Qm72ADqfuTri6yFUBeE4iRbVjFnovaARieI68nbX8BTSQb?=
 =?iso-8859-1?Q?d8KsZ4xu25Mj87tiF323/ClLtDDSZwL4Qu5TsYvkd/Iy48VgSPyYDPi3Wx?=
 =?iso-8859-1?Q?nc3a6SqeXLhYb7hJenfYgYkQycq5dxWI7k/55PX3Jc/ObTZ2A7TvZQCQJ4?=
 =?iso-8859-1?Q?uOb8Z+cPmXS3k5sVIen5zFJejiBMT0HK/woRTzzMpMBdhLnPP0VTAq4+NL?=
 =?iso-8859-1?Q?lOYX5UkLM3gmhr89bWLyjsYX9m2bEMsPDDezfWAx1QTGFFm2VkVdfFQDEU?=
 =?iso-8859-1?Q?v4163sIPt/T5dH/ba0z+z/2YiApulrk6FG4vRBnl7EqPeyhjEPDF49uXXD?=
 =?iso-8859-1?Q?Y44qcYQ13ufmi+6fYmB9N9J5jMQ5286bFlAFD/88S/j3I9pgL1ec4cozvN?=
 =?iso-8859-1?Q?N+VhVbVC0U8D3/iWdz8040R0/pfnQp/M149D6fOj7NzWJ+FrVepy6sQh+D?=
 =?iso-8859-1?Q?ilkw/Hm3w2+eC+id0hmWdR1FVoUgFrl4AD7HXKTqu2/dFq68KNJjNSskCi?=
 =?iso-8859-1?Q?xWKMOqzagZDoeZoDgmbM/NgfatBnWUBHAD0ADBt0jm9nf2UGkFds0WlPA0?=
 =?iso-8859-1?Q?hTwcSCmzgasqN1N6gmf0oOrGV3NF3Csw6Jie3SXX4Y9M/WI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qNsCqXoN8qz8D5w1SK6a1esY83rHJhTu5XTDIP1l9mxdMmyzdY4FQbn5Ae?=
 =?iso-8859-1?Q?nC6ZJP83XUdFGYv59+I9rm8ksvnQUEcJuPJRtq8R1UsYkVC4t9gcK2IWNo?=
 =?iso-8859-1?Q?uzJ1CFjlofVN0jLe1iaIKhzTErFEnorDtP4MRyYBzDwGNNfM4zkbpGK7uq?=
 =?iso-8859-1?Q?pGExkMIunnqlx33VT1zGOkEBddwZKD2/6cl3Famlyn75Do5c3hZ/FOr4DH?=
 =?iso-8859-1?Q?vJRfpx+29RqlBbOHxJjKonS0vXsyzITZlMXWTBDqkQiFeDa1Yx8B1E484P?=
 =?iso-8859-1?Q?0iTLwiNb+KWBU0kRzPsIOoCMavuRHs1UMo5UK2Axu1aNc9gtqo2H7jewjH?=
 =?iso-8859-1?Q?O2n9cAJOhFm9K15flcy7F4UDnZZkkouhrlHas5zYkTlhIcnJgIdMIjhjzN?=
 =?iso-8859-1?Q?4ELb+AUoPSCbcuQRBfTvAmrVhM5DYMNZdEHGxJ0eKwQVhZI6d5Qebbsgfj?=
 =?iso-8859-1?Q?9V1dlGMcg1AtT5LmhpJ7clQU9u8ZtedXP1bpNz0YIgGM5A3FUniUR8kF6o?=
 =?iso-8859-1?Q?e+0z4IpL/Ypm31ddBP9/3Jvdkao1G1RFYHq4z+6zpa4X6UYduS6ktr7+hh?=
 =?iso-8859-1?Q?eWobXjx/tc4PXgOGjPuSn14E3GIlkqSrAUkiB2E23e87LC52NQQQyDXpy2?=
 =?iso-8859-1?Q?5vpJeZCOoroFVJUUbzBBpsYn3fVkWqn+I9ZGvTlwb6i+f+sinRs1Fr7fgr?=
 =?iso-8859-1?Q?OTaXMguYuP+9/CYs0dwxwAy+yWd/EbPC+bIp8apGQ9LX4zqklFdU+v+cme?=
 =?iso-8859-1?Q?/e63Lcr1vkHW4/BLe0fHoWC/hHfTpJ0d/q6feBwevIBVpxWh6HNksEmhem?=
 =?iso-8859-1?Q?3Sk/WSWEo96U+jyyf/HSsamW+QwxxhGgXMmQmL2S1zL4EWmOTi2ggRmcUL?=
 =?iso-8859-1?Q?0ohhuMJh1zso9HGnaXOCPdIPx8higSqyUt9z7BsrhV/AbeCDzEraPOhPrj?=
 =?iso-8859-1?Q?uOSUnddXp5+hVY0LXzzRpM5xqmp286kH7ceYaLSIaLy+qBMVVIFQg/C5n/?=
 =?iso-8859-1?Q?NoI60b2stGP5Y7zmYMayrWU16IDHBBZ+taq4AC75hvlJEWrnco+Fm95eXK?=
 =?iso-8859-1?Q?0urcX3pVQcy16JHX2fhTXcFSN9R3UHUQAI3edMWtqbXsEfjaXtKrze8e0R?=
 =?iso-8859-1?Q?Yqn+vQP99VsAoW9ifWnD4exnCJudpQySBvch6+X0ZUHLY55Bk9tbZ/PxR0?=
 =?iso-8859-1?Q?6MRuR1J/wO2FiFUKCcnyqXP3gpfgbPkbcM7RF2jPcExMJZ/cbBp3pHpNPT?=
 =?iso-8859-1?Q?iyMaGFX0T8EwHbMV0kF0Zsq+qBz3d91tMKcXKmHGnoW1VHdswkvf2vn/0K?=
 =?iso-8859-1?Q?r/MzWutF8J/i4eTZcb8ZQ2FPtHbHZupfDuJc3Tnx4eKGFQwMWkmOFpyR/H?=
 =?iso-8859-1?Q?/dyfDz6lmJu15dNDBE8gpqMdmL3+6W0SI5og/KKF1TYFa9vfT0eXiJXPx+?=
 =?iso-8859-1?Q?5AiXJaRlL5o//zfAiEBCXJU/AbVtirgw3QbeCym3WIvo+3h9SIjyeLGEJ/?=
 =?iso-8859-1?Q?P/yfnNJ51W8jwWgmzvvVmjztzl8Z+KaQiMmvmUg5acsFwWqEQBwYusrf5t?=
 =?iso-8859-1?Q?7ci2x2O2dgVzJZTU1rJu1b56/UYhODRJ6nUzj36g1AAMv+eJOkfXGFdSnf?=
 =?iso-8859-1?Q?C3cvvAPGsZIRMfA+/QYqmNhMjlAsaTpc0wQerLQsoN4gvTvtppezsXdA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eca06257-5aa9-437f-14a7-08dd160c07f8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 15:38:28.8530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uMY+O5YnS5XfIRlkBnw8NpAWnVbssxvzCyjXnhU+TQUzED1hD+1ZBhU+YiLjJY979jkAdsRR26CfMBTCWYCuCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8685
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

On Thu, Dec 05, 2024 at 03:47:35PM +0000, Sebastian Brzezinka wrote:
> `wa_verify`sporadically detects lost workaround on application; this
> is unusual behavior since wa are applied at `intel_gt_init_hw` and
> verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
> doesn't fail on initialization as one might suspect would happen.
> 
> One approach that may be somewhat beneficial is to reapply workarounds
> in the event of failure, or even get rid of verify on application,
> since it's redundant to `intel_gt_verify_workarounds`.
> 
> This patch aims to resolve: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668

It should be:

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668

> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 570c91878189..4ee623448223 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1761,6 +1761,17 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>  				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
>  				intel_uncore_read_fw(uncore, wa->reg);
>  
> +			if ((val ^ wa->set) & wa->read) { 
> +				if (wa->is_mcr)
> +					intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
> +				else
> +					intel_uncore_write_fw(uncore, wa->reg, val);
> +			}

instead of duplicating the code you should extract that to an aux function
to write it...

> +
> +			val = wa->is_mcr ?
> +				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> +				intel_uncore_read_fw(uncore, wa->reg);

and another one to read it...

> +
>  			wa_verify(gt, wa, val, wal->name, "application");

However my biggest concern with this patch is the brute force solution
and only on CONFIG_DRM_I915_DEBUG_GEM case...

and as duplication because I see that the second write attempt is
already happening above if (val != old || !wa->clr)

So, something is not quite right in here and this deserves another alternative..


>  		}
>  	}
> -- 
> 2.34.1
> 
