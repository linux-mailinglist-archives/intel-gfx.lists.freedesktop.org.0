Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9549BF381
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D705910E0AD;
	Wed,  6 Nov 2024 16:44:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSyyyklA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5D210E0AD;
 Wed,  6 Nov 2024 16:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730911459; x=1762447459;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mdbrGlcQkGSkSTIHkatEoqwqaiIrWGT1wgL6ZFn3gq4=;
 b=CSyyyklA4wIQbG1hkNC/1NJgCVMdQr/H0OWUeH5o3c2p/kWGJDCPBxjP
 oIQCIjCBk7WvWzseRdhTzqNJhZis2kJWl6gi00h229jB+ykl1wkRL33yt
 2M36pNft6SOrMpkGJUKmSRHr83G9woHQMAcTqTw6YUalF3CxIfZAE8yrO
 ll4NP+88gvwOc9e+QL4L7PLFtlzegG4vdc+Ey5l+vx+Oude2c4pGzxFIA
 QOMfOkVcIbnHRWK8+WeeP5lqe54IaTNg/hkC4J83pCLLbq0rDWA+Q+zva
 VxFvdt4hd+X6Yhb6yl/npCC8lz1cPIICn3Aj//Dqpk6dE5OIlpQChrFTz Q==;
X-CSE-ConnectionGUID: Ne0TBoHrSICJMQExKPfjVQ==
X-CSE-MsgGUID: ExqPfHBJSMCLlXvQx/hG1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41341277"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="41341277"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:44:18 -0800
X-CSE-ConnectionGUID: qIHwYFUXSTyvov3Bwqj2oA==
X-CSE-MsgGUID: tHInm15qSEmsrTp0McNfcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89498817"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:44:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:44:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:44:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:44:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DTFeR6ywiY8TK8F43oDV98MqqvGtz2vrGtuqk4qV2IS7v4Eu1VvjCuQxBPpgA6zeeroMzoW3muZRRYF5sPnHAjSN3D0/aYI3bSkWUJ3XTJrJVOlopaFiH6BiXcvJ+uTbZnWVDhphtRJtszF1o0VCzfq9c9ctpTzTZqT3kWxTD0pnzI7w0+SDeiwznB9BjbI22aFGo/t22rveCEdzWEuxDpiGxtypID2sgHkvEuLaMxirjrDWr5H9Irw7jCXKzcVwBpi421EOwJrZh+/d84DDR2yLLEKTgOQHHxqxJUAmV8RpR6dDAn/781uZe9bi+pRdevXRKc7yJr978JniO16Y2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RqG2OF1VCPTq3invPap4k2zWMHyix2NS8e5uPWhsaAg=;
 b=JYgQfvi26ojnKiNC2/NdAiUil5KAFps78ju6asZ8jH0N1jjP4dpx6ZWTGIkMl3GPw0i/9mZtItYaxcA+R6euyfiQE9/wD6hsNp3PDoFQGI0QVnfeYTNMPqeNpsWfYga2ffRxlUPgMcUgW/YcsE1qmOirT/FUZIaJSB93HUYGSc1SALxl2lOjw+kRyFoFk+3w/cN0IyrPyM5K4Ovtjgav+Z+xIeAYLU3hk6sulEyu3uaqNjeHwl/2het3stoSB5NnOj+jUrFYaArmvZL1BZGm1U1GjkH0majHOxsn/JkvMeQhBdKSJvcfkHCpJCKE4RL4AkX3Mi/4iR/aTtzmF8Zk4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB8225.namprd11.prod.outlook.com (2603:10b6:8:188::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 16:44:13 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 16:44:11 +0000
Date: Wed, 6 Nov 2024 11:44:08 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/15] drm/i915/display: convert
 HAS_D12_PLANE_MINIMIZATION() to struct intel_display
Message-ID: <Zyuc2O_uJZowkj24@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <3f7b119ce893194eb50b652c6e6a9050d0d3c2a9.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3f7b119ce893194eb50b652c6e6a9050d0d3c2a9.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0298.namprd03.prod.outlook.com
 (2603:10b6:303:b5::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB8225:EE_
X-MS-Office365-Filtering-Correlation-Id: 39485df1-2b60-48ad-f9e9-08dcfe823daf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Dkc23W3Rr/QZqklOaYNILvR8JFcvLlzRM4OYnJwaEuDNtHfXJBXqG8V148Ww?=
 =?us-ascii?Q?yXVfJhK2+3EGbLfOaI/fx5Fj5OOoY43hNWOYcCSiPdbAZ2YTRqxvWF1KpdDK?=
 =?us-ascii?Q?Hibkoa2OiSd3BwUkU48L8OrZ1nnz9ro1qeQEqH+KpPnBWQ6onRWdNVebxl/H?=
 =?us-ascii?Q?b4XvklEBE3rZYXpdPgEiFE/IzrD+ZbjdgdlcYhFXdjR/lj6GVp3xcbpm/NlM?=
 =?us-ascii?Q?U2cqs4imtRPlXGJRnN7ce/FoeE04yHlhcM3QfyK6h4IDH+pHtVjR0xBQt/BP?=
 =?us-ascii?Q?XgRtOQolfPfV/3BTTwKc5Wi3M2jAmjCT2/TO7LlVLmNhTegpHrsO8WJudImG?=
 =?us-ascii?Q?S1hDnxVVBm0PYdMhMa9rEuTjGxUAO3T8gAeiAQ+odyLg0q8f0spLaG89GVJU?=
 =?us-ascii?Q?3Qb597Q6cY0WPzWRWBfvxlyUntRxb5zA9MedCEut5DE/5ollJdRoLYOzXViq?=
 =?us-ascii?Q?Ef83/RW4PBlk3RS52lNIZa47LaMlDto1QmkSNajnGC1JTF0Ln2SrtguZjndz?=
 =?us-ascii?Q?beWGoouBh4sWk9tFRyH+rBNr1kfmDNFWhXKPBeQaaqNye0kd8OANjqVB2Emm?=
 =?us-ascii?Q?124Ar9h3gCCLOpxZcz26GR1tmB7CvPOQFt+PaGQ6OIyi+q+16d16dOFtyR9a?=
 =?us-ascii?Q?qnnQwh8LZ2zcGWt9WKS93lF/PGwQqzEdTBrgNSxQlNA/8j5jqBuocfypPfhD?=
 =?us-ascii?Q?aIuDue27lkEGEqNn+QBV1ZEPmSE2XMvW0mDiih8ihaXaQFdpCMLisRZgPMVu?=
 =?us-ascii?Q?VBxIzdUf3lfxB72NENMb0WCx+b9F8CzkFPRf2HZ7s3ZNhATC+Zl1PpCXZYUf?=
 =?us-ascii?Q?Tm1IQ8CyMHEFUNATSVB1aSJIObwmb7Mj8jiFTLXSFUsSBhkjOTLNYGzEHABg?=
 =?us-ascii?Q?YQ4BxIGeLugsC1djsjlU4aDzkKOsiPQKJ6Vh/+0d8VVA5Yjbos68+9LmCTT+?=
 =?us-ascii?Q?CgRxWMMtqaUK+7eBbzsxBw5xKpJZzPl83Piuo1a6ypQu1QjaaGbGQWevqo/4?=
 =?us-ascii?Q?5PkeTHHmNk+FUIWtP5zEtuCLQ/4v+EqPm1cSv1nybyjW+9EaqxCFhvunt/KV?=
 =?us-ascii?Q?TVez7y1FdiGc9A9JKMwXKgSB90/XFcfI8mvbAeOeaqIR8SARtWF9uQazq+yv?=
 =?us-ascii?Q?4byj8v6ViKVboMKthPJ8DRGaInJJIRM+S4nzS/mro/tCc1RJL3S4GxVw+vov?=
 =?us-ascii?Q?Pm9tk4BXXgmu4nY1yHPqc3q+4r1qD5nGAWGq5BdRq2nJlPf5NcUBDqFtNhc5?=
 =?us-ascii?Q?YGUi3n4kng3QRIa6UfJtAdxbKQaT06p3T7AR9/VA41RExBKDQJeFya8qDm8E?=
 =?us-ascii?Q?fL7L6jcd2RYtpBo80Lw01WPg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wi2C4dzC+DJmDBO4rp5zxqmuOVpFridU3axEuaZCI5pPxTHV9kLJJdefTuQS?=
 =?us-ascii?Q?eQGtjcE7hMBFLDcp3/KwxBSWqluAIbe8H6/otDVsX7ZtNONpVFWtnag/jVEC?=
 =?us-ascii?Q?XPogVccwIzZ/PvZ6lzYi5u2toizdFWUHIEKvHAfkc5uzbHnJawYLMPOlk/fy?=
 =?us-ascii?Q?8ZCrYK4pPT8x6jN0Z7c+1D37aL5rS3c9G8eh0SmRgjmySwPH5Ux8lJKFhrNe?=
 =?us-ascii?Q?2GudMJUB+ZqJXuT1CW1gFQuxPKx5A6TNhqZgqMBZ6jHyeTOgYAqNNMBHw8JS?=
 =?us-ascii?Q?El251DMIyU1847s5KnmrJ9Q2ue4n5CsMPR24CaRBGg8Lza7WgQfpjBuV5T8I?=
 =?us-ascii?Q?tiI6huYSoZcT3il1oCyUSAJVUyzgvTPyPdh+V2yG+D7lvfUBDnIkg2AMgNVl?=
 =?us-ascii?Q?oIQoRIMp/yF9HQop3/lQgNM8ZLJ+XEL21l6vUnllM5/jrZ6Fig8V4PXDO9fF?=
 =?us-ascii?Q?2zPP9yqGqeCpqZIb23gROAlrMvCC1cwQ5JiWv3O2N+UuVKNWIk9X6T6LqxfI?=
 =?us-ascii?Q?I47YtLmGZRzv69/DlKjDL+X6Px6IOm5yP58X6gpti1tvuJYD1+Mc5CYf/IXQ?=
 =?us-ascii?Q?96J+SOEkvA/9IN4FWWipRPgUsco9Yk0Tr+Gc3NBfsfYrbD1PbXQOGiDf0CW9?=
 =?us-ascii?Q?DsjWRyGao++cLAnldoG+AwAdnaij/oZSkYIubNXLnSjA2WOMA6rAtjInwVmV?=
 =?us-ascii?Q?epsf8e90Y4BmOpdPU6NCfi9MB6UK1plODqfWjtiEogO0QskP+6u8rrI8mbdI?=
 =?us-ascii?Q?g7lkaMEzu/wJa+RAcc7vAKdg6nfnw/UXr5hVBRJ7RbBv+QMkTIo7ECkHPzP6?=
 =?us-ascii?Q?4FV9DQlV9VphmaEdWswXIoVZi+jrEhFWpDEhSIbiZY3p93LiMbAyZwWjho5z?=
 =?us-ascii?Q?SCfkvHI8IcY3m6LCDxFiifInXViFUcLMD9pHYUFOjCLCSyxJvTFRADxRt9zG?=
 =?us-ascii?Q?rrExXqN0vTNjrAWnvjucwLMzK/B6j1eb1EXsBGCXGoZIT9YgOBftp9H4B8Jw?=
 =?us-ascii?Q?eTk8HJgcdYFAgKPa/YBvp2aE1nqmOyKdON1R+jdYleL4NuQ0o68DurGNbQRh?=
 =?us-ascii?Q?/l34+LyJsiqXFqZqnLbM05/tazPH4ivaxGWHO0o51vXZk2wviXHRBYJHLYgi?=
 =?us-ascii?Q?8oyA2YjO0EtWnx1sbCt27FMAr0dfqkL4PJUJ3SFhTiqtV3mne3bHmIhIRUHT?=
 =?us-ascii?Q?hrhDx3EOHB2WhOHBgZwAd7uBJuXvqoo5meMdDQ2AlfQCP11wZ7Cl0AdOpWWH?=
 =?us-ascii?Q?6Rxv5uv+le1kbNqLTPCZq8l3SPek7+bp+KWNMBUFKJ6PauU9x73GrRDLsaim?=
 =?us-ascii?Q?Q5K2ZDMKjFy8mESRPMe8Jz5GzXXX87t6z1YDSnR5l0AhvDUeeWIj7kcILLYE?=
 =?us-ascii?Q?x8GhEC3D6XZtRfqbw1Jhlym/zJK+cTljuW2Lds6TZanZ3+hikETobyo3XPZE?=
 =?us-ascii?Q?iJNw1vzLpsJulYnkOdHEhH16Qttrv7M2ZRzyHkIRjI5sc7kPaKoRiol6ztaJ?=
 =?us-ascii?Q?z9JRB+uh8cK4jspqNfpk5yX3jitetZrIdoDIqrvxmjdaFvpdHjfSCL/aYXDG?=
 =?us-ascii?Q?UhmnmrSXxb6Hw5aWOa64dKx5IWsWvX5OE6ETJITGWibpuyJBlKw2P4G+yYEN?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39485df1-2b60-48ad-f9e9-08dcfe823daf
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 16:44:11.6112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RNUKj/Yhv2zMy2j569x2M5FE3L4MMKb1s6iMezbOmxm0qQE9Eq3xEeeuVxz859bG0AqNEHxSECGZlHzT6oEifQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8225
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

On Mon, Nov 04, 2024 at 07:19:16PM +0200, Jani Nikula wrote:
> Convert HAS_D12_PLANE_MINIMIZATION() to struct intel_display. Do minimal
> drive-by conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_irq.c    | 12 +++++++-----
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  |  4 +++-
>  4 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 47957384d56d..1e561df02751 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1687,7 +1687,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		display_runtime->num_scalers[PIPE_C] = 1;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> +	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
>  		for_each_pipe(i915, pipe)
>  			display_runtime->num_sprites[pipe] = 4;
>  	else if (DISPLAY_VER(i915) >= 11)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 392fbe29e974..e45ba21166d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -144,7 +144,7 @@ struct intel_display_platforms {
>  #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
>  #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
> -#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
> +#define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>  #define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
>  #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
>  #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index e1547ebce60e..f0d3bdb5fc60 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -843,7 +843,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>  
>  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >= 14)
> +	struct intel_display *display = &dev_priv->display;
> +
> +	if (DISPLAY_VER(display) >= 14)
>  		return MTL_PIPEDMC_ATS_FAULT |
>  			MTL_PLANE_ATS_FAULT |
>  			GEN12_PIPEDMC_FAULT |
> @@ -853,7 +855,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  			GEN9_PIPE_PLANE3_FAULT |
>  			GEN9_PIPE_PLANE2_FAULT |
>  			GEN9_PIPE_PLANE1_FAULT;
> -	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> +	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
>  		return GEN12_PIPEDMC_FAULT |
>  			GEN9_PIPE_CURSOR_FAULT |
>  			GEN11_PIPE_PLANE5_FAULT |
> @@ -861,7 +863,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  			GEN9_PIPE_PLANE3_FAULT |
>  			GEN9_PIPE_PLANE2_FAULT |
>  			GEN9_PIPE_PLANE1_FAULT;
> -	else if (DISPLAY_VER(dev_priv) == 12)
> +	else if (DISPLAY_VER(display) == 12)
>  		return GEN12_PIPEDMC_FAULT |
>  			GEN9_PIPE_CURSOR_FAULT |
>  			GEN11_PIPE_PLANE7_FAULT |
> @@ -871,7 +873,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  			GEN9_PIPE_PLANE3_FAULT |
>  			GEN9_PIPE_PLANE2_FAULT |
>  			GEN9_PIPE_PLANE1_FAULT;
> -	else if (DISPLAY_VER(dev_priv) == 11)
> +	else if (DISPLAY_VER(display) == 11)
>  		return GEN9_PIPE_CURSOR_FAULT |
>  			GEN11_PIPE_PLANE7_FAULT |
>  			GEN11_PIPE_PLANE6_FAULT |
> @@ -880,7 +882,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  			GEN9_PIPE_PLANE3_FAULT |
>  			GEN9_PIPE_PLANE2_FAULT |
>  			GEN9_PIPE_PLANE1_FAULT;
> -	else if (DISPLAY_VER(dev_priv) >= 9)
> +	else if (DISPLAY_VER(display) >= 9)
>  		return GEN9_PIPE_CURSOR_FAULT |
>  			GEN9_PIPE_PLANE4_FAULT |
>  			GEN9_PIPE_PLANE3_FAULT |
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 038ca2ec5d7a..c6e464d70cc7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -239,7 +239,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  
>  static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
>  {
> -	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> +	struct intel_display *display = &i915->display;
> +
> +	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
>  		return BIT(PLANE_4) | BIT(PLANE_5);
>  	else
>  		return BIT(PLANE_6) | BIT(PLANE_7);
> -- 
> 2.39.5
> 
