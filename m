Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCBAB0C365
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 13:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123F010E51C;
	Mon, 21 Jul 2025 11:42:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsJs8bk5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7BF10E51C;
 Mon, 21 Jul 2025 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753098129; x=1784634129;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=j6gCyNKeQ9OcqzqXCmndgPU9/mchI5WEzM01j6y/5u4=;
 b=AsJs8bk5y91D5pPnasLZF8yWXQTNsJlBaGCJBJdbeB63e9TVQibGn1Ie
 k8OkCc23EgLDkAapKymERcXLN3mlUVv/+d2FnOCcgt9eE1NtDvPXMABIg
 nGPeWXKfBcnflIXKa6ATpIwO++urdu7teK3iro9BnlS7HXgl7XLDB7yVc
 5zkvv3wF1nvbj3+MUpw04QyO7fS5C0sJMPeMn7GEgB002QqkerdU+PYgr
 RnI1RDboV6ly4DStcB0vjhtKnKOa0JW1NLVhUEs/JRHCLnDGgZjfQDOCy
 3rUW08mIvAXaATtvi4xSAGeGE9Lu+U/6DWnafGgAz9r2tDtSY1tRQ/PEW Q==;
X-CSE-ConnectionGUID: JyViWRe2TPy0dDxp7p66hQ==
X-CSE-MsgGUID: TH+ITCxMQTyZ/Wcks0gmEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="66000140"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="66000140"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:42:08 -0700
X-CSE-ConnectionGUID: rR1h+Ez4RmmTVnkS5N7TvA==
X-CSE-MsgGUID: fiPla9o1QHeWl68i3mroOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="159158829"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:42:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 04:42:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 04:42:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.86)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 04:42:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dz91E/bH4c+XlafQ9e7pFMF2IQ16mGfApNKN6fpxfVA15SftIG9pFzfJUOveWDRoVVWflAteXDrkmSWA0ER0jeICfZF8hYjdE6vR3v6WqFlGumDCVrWAgAFMeYmpmcPXDqXDIo/kYsQoC29AMTg7mCk3UPWPs+jZBwmOhrcEzn1s6ph6OSL92G4KbAAEYmDWZMW1YUHs/6YTjSjwRfmtoLQksEbvdI5N6t7MWuNcDLt+T+EUfTvA4PeqdjM0NsG1ZCANiS2xJIOxPIrRAvoCjFbk1QzMUqBveeT1amL0XdNhgwEyPK6XFL2To3ckHo0kTDG9bG2iyckj4CoDmBWy/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqGoVzGNftHH12BfcTMc7Wj/rBUIcmNXWQ5xB+FTiyA=;
 b=L1u4l0epkCYsQFUvubYABZCW3NztQ6iZ43zePXdVbRb6MAbTa2mQezGrvkevyRkaUM95nWZnBs8LAV3oaJL5kBA0F1thfDj+30gZN1YoQ5cfPbZkpAK4AeVu850DCRQwluRKnfSFTvkGCTmAWTL3ptL37C2JEoSrEgCbKmZmVRcvwbWwq5y52eyPWZ46VSrzkYURv+P2Qdfi4BE1tOQJNJxV725Kz+jlahI3FYWjcKtd5T8HgH71JxPsg7pOalM7r8jbeM1nv088YRYWmr+ell3ish6env+iRa8jKpg7LH4+CKfrHc9UTRNPvnxUbKtKLuMIA/nULjv17EP4cf0Vvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 11:42:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8943.028; Mon, 21 Jul 2025
 11:42:04 +0000
Date: Mon, 21 Jul 2025 14:41:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/9] drm/i915/dp: Limit m/n ratio to 10 for DP SST
Message-ID: <aH4ngmg05DDtKmDN@ideak-desk>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
 <20250721091529.3864004-3-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250721091529.3864004-3-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: LO2P265CA0502.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB5982:EE_
X-MS-Office365-Filtering-Correlation-Id: 305781e7-7e84-4f7a-cb48-08ddc84b9d6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VnoctgS/eu2p66fCRdAdvJlc0Xdphq8zePwtTG9gSqJy+g+D9Gf/XP5XHZt6?=
 =?us-ascii?Q?9kidpdeQ29WADUIZID6VSxN8sONn77To3JyeYrem9xuNNqbHbocWVxUBrUMT?=
 =?us-ascii?Q?Z+12fXH8we6w3VrV58rc4JB7c4HX932xYn4fJLjujsP00w6U6N9sYy2NCpua?=
 =?us-ascii?Q?GV/W0K7KM1I9C3Kng/pHpuaB47HKQSJiLfZ5bxtfX2BiOe2FYyt4W/fqCxDU?=
 =?us-ascii?Q?qWnhWSKkhZYXxLEa7l5Cwp34TkYbBjbc3X3pvzh5V2oEuDcNWMmMXnnBmsHY?=
 =?us-ascii?Q?eA0m0XhHA8xX3IVIA6fd7pivMbSrrzfI0HgyUANRoQiH/CM9mvReels8dNGb?=
 =?us-ascii?Q?IYGNFGfQc/8skgbVrBSgev3AUTZ7hrzsB5t1zWbgoCYo8aVsqCQhyCVsXVZa?=
 =?us-ascii?Q?uko2fTQ3odjFp3h6mpn/HvbOInAcVzkgj4H+2SsdYQoAHdUIEnt2ksA5YFwA?=
 =?us-ascii?Q?bEdExOwDVX29OTdk45w/f0Cdf/XS5SvkM9pViDbUMdvXsDOCVu2nZrEBhLNx?=
 =?us-ascii?Q?V2DsxOU/TZThYV7gJQuDwNWD3lTM2H6deJRyZR9WpcBqAXOs5DROmTr/sTPb?=
 =?us-ascii?Q?Zt4C3ndOKZE9k+7wSV5csrpiw2k1RwK9bX+HVeYQeFdv3vPnW6uhI51bUjG4?=
 =?us-ascii?Q?VgPSIB2i9ruxYLcVjlqQiWIKIyGKkb014dQMA0OPygbKar4rLJstvSt/DPlD?=
 =?us-ascii?Q?MvbtrS5Nw8D+mNdtQG36NiLmF4JktYYKji3KnFhnikofLv2X1KgMSgNewjLw?=
 =?us-ascii?Q?1AtjLI2kyf2abIkheDl4H32vw2Bsh4oLiOC7rMWpl4kasOw37B3jShF69l5F?=
 =?us-ascii?Q?vCYkAw9h4AeR/n6OARdjLhVlerC/n4xyHfi3bv2gUCeU8jL4amMH/ztb1rOw?=
 =?us-ascii?Q?MI52LBDzBe/n6pToqhLMUdYm5HVnWjr8IwLr3hueJcdSr30f6kvACJZhl7tJ?=
 =?us-ascii?Q?ABZcihnwue5tffkiv30DKHKtvaiq5efS+F/T6cuQ2Edux9L5rPXLdQgzTdtC?=
 =?us-ascii?Q?55P8uIOqbnql8e2n6PcTXXMBnn3WXg0HUbz622NponbwE7DcZlQqd5GnlCCf?=
 =?us-ascii?Q?8JN/5luvjkoGEPA6OjujN3J/xJnKFZNyVOSuf3KnLIZykZNN/97bEc8AnI8K?=
 =?us-ascii?Q?bWFY9GcBzrB7wGjjlMotpsABGD/LtAaT432WkH7akAeU58VltnrI0XZr+eUT?=
 =?us-ascii?Q?9KdyS503IHwX4VmEpsnGcZptpE8X30ybtpZjFE5r8w41i3s+vzwd+HQVIP80?=
 =?us-ascii?Q?YU77YHzJBeLRvb5YmkSMY/XzTkr6qnbK/vM1Y05i3xuVCpoGT7dtAwAHhcT5?=
 =?us-ascii?Q?PIazQ6BAdvr5cPcLSDTvBSpab45Ai7Y7oq2Lk63xaXf34/zzgGHXhBmZUZuO?=
 =?us-ascii?Q?jc5UI2D/ZRYy50wqtT2BcpNEbyY88mfzF8j7hqPbtVl+6lFhXB33swvNvWQp?=
 =?us-ascii?Q?7Hz8QDcEFFw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Aq/PNNBruJjYh82X6u3jr+d/Z0x8euH44F5+Yx5k1HrfBVIh5BiwOM/HG7S0?=
 =?us-ascii?Q?cAXvXZg82KslL8YPdoYPJYgo6E4x+63wsqO7K8te9Rv/TTwPU5bB8ax8zj5b?=
 =?us-ascii?Q?rQuyeMEtHWQ3kZAt8MWFRO5NJWKFEZmffzWKYGXIMEso1nITBonCGbYaxio7?=
 =?us-ascii?Q?4JWxz3xDfbuOxInOxIJIInBw1Zg2aQYMLGZCf0xugIyacJSD5L5VNLnJIoqu?=
 =?us-ascii?Q?ZDLTS0Ctmr79UPG2V8CwEN3XD4sdZQvv+1PN/8LX85VCW2Q+mYxZlowD65Kp?=
 =?us-ascii?Q?9gaCnnM4XxCBWtoDO8R6oC7HcAY0kBQ6dSQFR18cElm134hwpOEJe4uWr68/?=
 =?us-ascii?Q?SXgS3HKOXC1o7jpTOjM7nMPneDWrDqS8MfxBNLYIHeBjw2F51QpO9f8E6rRn?=
 =?us-ascii?Q?BviS3kJ/HdmuDNNtEyeDIg0CEnMiTqmBicyy9kSMeLnZSZK2PbxXBH70EqKe?=
 =?us-ascii?Q?zarLBNaVB7vvqSo+DlxvBYmtJtc4RtvMdZunY9YVCLw2xtqLaDD+P/06ZykY?=
 =?us-ascii?Q?kpA1Iq3+zhBjsjFYEreKL+m7S2wZit3AkEAdq7LHk4r2woZ9di6RmifOmYYR?=
 =?us-ascii?Q?etgihK/YAZLTiUdBtWjrHy2dAMqWNbSokCVj1ufbhd93HM9Zdwh8hfXy402R?=
 =?us-ascii?Q?dUoHNLS+C9mzi7i9EX9CnNeorU1LyRZ1FxohHyUoKWHM70ZeeidDcawjYhK3?=
 =?us-ascii?Q?LYR6GdkLYSaKDiZ/U3t+G6noXDtvfxux4Yo/rVSw7NnGKMSmAmQPWtrkBrMB?=
 =?us-ascii?Q?VBQiClqDjAxLe7u45gmq4pwiSF8tebShL1ey7R1zRYttOEPqMKguyYSYhO5P?=
 =?us-ascii?Q?Ck3a6FL/23dW6SsRuBl6Ev/dfHDNiYbfSPU0ydv/Hez4w/KBcYUO26CIldU+?=
 =?us-ascii?Q?LF+jeDWAVzNzqdNxvOuN018tSivFA6cmZVPEB7IHLRWiFjxklqYfWYeRHWYN?=
 =?us-ascii?Q?4u+VpACCO+Q1qxROiyRCwkEYgLmRz7h8vQ80UunQpG6i3bGBlh95qt1jD2Qt?=
 =?us-ascii?Q?wuBemuL4mjfSmCL5oiorOM6tklu8lh5LhkXXszC7WGLE3gx2rkFAGRvAmvoM?=
 =?us-ascii?Q?yNuCNkC+QXO0sjZvrrnw5zzbgDygCK1RtyMwMwL4nEhpmPFnsa7NWOwNuN2K?=
 =?us-ascii?Q?S44TgFb9hznDEwWJsKAlpFAG6vkvJPUWI3IPsQa2oRMGe7R20WGFHW03uEOW?=
 =?us-ascii?Q?QTx2TnIvCzynNzdMVtugSMBeDChB39zK1fLaDrbaBxrBBS6gzXI2ZtGSHKJa?=
 =?us-ascii?Q?vMF4NE6DPWXQv9dvxipF/18Uq/yZ1Rwy1O1Qgjx/lBE7YCBAnF/0jAMB8Q19?=
 =?us-ascii?Q?1xzuBODB9tlQqG3mK/1ITtLEIC4Wc+MZ9eJujkTxZvsp5/H8AbkM/mRuBGFr?=
 =?us-ascii?Q?/KUwBhbcGqMymDXohsO809gTTPuioF5ri4nUq8j7McPZWGOuN5ZIWK+6+B1z?=
 =?us-ascii?Q?0g3OKZuzNIL0nQI+QCOys+WiGPTP3U569pGaXJBCki06OMyW8Ju089HCtMFH?=
 =?us-ascii?Q?M/L2fwMfWs0vR33kx9OmjoTsbeFmcABgtk2wLBanvT6MkvFgo8HbN0xOc+Ia?=
 =?us-ascii?Q?pGPkGgXtz3YzfW1N7AShmhDL3yQzqUGhUuKLayvyA6ZsGAaREGsURX4x/5h1?=
 =?us-ascii?Q?BgEnidIeYMQzhyaQ4nP+yMRXocd3N4DUJcJeNMOKUEDn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 305781e7-7e84-4f7a-cb48-08ddc84b9d6f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 11:42:04.7487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nv2nR2ZjmttMD3FSCkkwm/1NYREeBYj2dLiCBATY6GKj3JODcPFP2X3BzWfZ2w25CKSr42sRIbZGWWLGWDfkaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
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

On Mon, Jul 21, 2025 at 02:45:22PM +0530, Ankit Nautiyal wrote:
> The hardware cannot support DisplayPort configurations where the
> ceiling of the Link M/Link N ratio exceeds 10. This limitation has
> always existed, but it typically wasn't encountered without the use of
> joiners and DSC.
> 
> With higher resolutions and combinations involving joiners and DSC,
> this constraint can now be hit in certain scenarios.
> 
> Introduce a check during link rate configuration to ensure
> the computed M/N ratio does not exceed the hardware limit. If no valid
> link rate satisfies this constraint, the mode will be rejected.
> 
> Note: This change applies the check only for SST. Support for MST will
> be added in a subsequent commit.
> 
> v2:
> -Move the M/N ratio check to the link rate configuration phase instead
> of during M/N computation. (Ville)
> -Prune modes that cannot be supported even with highest link rate due to
> M/N ratio restriction.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  1 -
>  drivers/gpu/drm/i915/display/intel_display.h |  3 ++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 33 +++++++++++++++++++-
>  3 files changed, 35 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 671491a2a3b6..f32a4956c926 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2506,7 +2506,6 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
>  	intel_reduce_m_n_ratio(ret_m, ret_n);
>  }
>  
> -static
>  void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
>  				u32 pixel_clock,
>  				u32 link_clock)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 37e2ab301a80..bfa3db219b9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -559,5 +559,8 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>  
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>  int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> +void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
> +				u32 pixel_clock,
> +				u32 link_clock);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b689..4245dd65b2af 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1407,6 +1407,28 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> +static int
> +intel_dp_get_max_m_n_ratio(void)
> +{
> +	return 10;
> +}
> +
> +static bool
> +intel_dp_can_support_m_n(int pixel_clock,
> +			 int link_rate)
> +{
> +	int max_m_n_ratio = intel_dp_get_max_m_n_ratio();
> +	u32 link_m, link_n;
> +	int m_n_ratio;
> +
> +	intel_display_get_link_m_n(&link_m, &link_n,
> +				   pixel_clock, link_rate);
> +
> +	m_n_ratio = DIV_ROUND_UP(link_m, link_n);
> +
> +	return m_n_ratio <= max_m_n_ratio;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    const struct drm_display_mode *mode)
> @@ -1518,6 +1540,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (status != MODE_OK)
>  		return status;
>  
> +	if (!intel_dp_can_support_m_n(target_clock, max_rate))
> +		return MODE_CLOCK_HIGH;
> +
>  	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>  }
>  
> @@ -1789,6 +1814,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  			    link_rate > limits->max_rate)
>  				continue;
>  
> +			if (!intel_dp_can_support_m_n(clock, link_rate))
> +				continue;

Could this limit be set in limits->min_rate, computed already in
intel_dp_compute_config_limits()? (And fail already there if this is
bigger than limits->max_rate.)

> +
>  			for (lane_count = limits->min_lane_count;
>  			     lane_count <= limits->max_lane_count;
>  			     lane_count <<= 1) {
> @@ -1796,7 +1824,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  									 link_rate,
>  									 lane_count);
>  
> -
>  				if (mode_rate <= link_avail) {
>  					pipe_config->lane_count = lane_count;
>  					pipe_config->pipe_bpp = bpp;
> @@ -1983,6 +2010,10 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>  		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
>  			continue;
>  
> +		if (!intel_dp_can_support_m_n(adjusted_mode->clock,
> +					      link_rate))
> +			continue;
> +
>  		for (lane_count = limits->min_lane_count;
>  		     lane_count <= limits->max_lane_count;
>  		     lane_count <<= 1) {
> -- 
> 2.45.2
> 
