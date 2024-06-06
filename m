Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10A28FF1C2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BFF10E9FB;
	Thu,  6 Jun 2024 16:11:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FHu9x3tP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E2410E9FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690287; x=1749226287;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZOzFkbmPuwo9uL5jTRll8hmMcGEM0swE5GL35RV0PXM=;
 b=FHu9x3tPBzhbkv6ZKxzbwQSG12lS9HR4INLL8hbtjSSbzzWjnk0mz9y4
 IBLtLXnInei2a18aaf73voMUW2thQ4SohLEYjRrCz1u6pUYq5zm7bpGnf
 Z1HImoLyLR6khD+Ucy6+aL4DnY40yN2XxINC7sFhh4CE8fwueHS7FBgk9
 k/ohl2tuTIdWSYCcmVInJxcZfF9v1pBYoCAA0c1xOL3fUTYMX2a9kzE00
 LwgMuwMKaNp2nKplWbAsJ3e4jVP+qpHY2/vjC5T4Fcz9mvaFLbJiI5e/N
 7dNCkQo7tUT1oJ/du5arQoFI2VchM/k+x+PtPFBULAcG6EE8nQ1mNellD Q==;
X-CSE-ConnectionGUID: H2jZj7DzSb2PZXF+8MEQaw==
X-CSE-MsgGUID: KRcGMbyrRXqFKyeEumFaGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14493153"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14493153"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:11:26 -0700
X-CSE-ConnectionGUID: 3ahxMKJeTyGL4AgA2G8/KQ==
X-CSE-MsgGUID: cYgAONj5Qw2F6L8PmANcGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43109466"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:11:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:11:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:11:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:11:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k75sCz7fnG/TcXXyjkAbkG5EVpPm8gr7XlDILcAe/VTWo+zfh2eXizE82QsKCq+Mlx8g1BTyL+btaAxRr2I3B6U5IL8jCwNzMh1WQIf3bMF6TS+E5eSiVkx3HFUWTxvS7HQBXkonXnZieM4Slq/zhiELUZPkP4ddDdJ+ZvG7KMszzdz8b49XIW3KpPHtrfwQAIZkJrqspSoxu/Jwu2mhSgDYs7UNFBht6eLsqtrWmTqmqQR+K++CXBg+fFEak7jak2F26O9OtDUNTcSeTln9vKgifrGSMLnFrMAMERIkV0w3vswZFV7A6ZFcxK76MQCu/cHnzt2/iGRvGoVxTu1gVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IE31+5hfor9nOEUd6Y0iS1g6p0y5pHB8yUln7yRBukU=;
 b=Lny2NLQ9ocl5Pt0MtyEqLpVDVDAZJS6d8s2hLTGRjoljMMa7/PjDRQChNUMiRFOt2SUwYLe0u+YFlo0JQPwvf3ZiRosWsHwVT0VI6dCUkxnaYRvkNP/J3DG4vY/cmuJCqNe5VAtiRfTkXarF04WgdIbiqInSlHEEPRM4HYWtJigRW7K3CvacClOhAYUJtZZPI68IPIYuc1osyjZRL1Qd1p5EmD93bNT6CBGfRjZtjisQM/UXNc3njqYkngLpBKS48KWb0RIVwmVMpYjfERCglwOJJ/Kr/AB3leNN0JeGmQIjnvDm68iYfxL7CKWFxu6YsCHjwKIlTVnuVhbFDxYdKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:11:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:11:22 +0000
Date: Thu, 6 Jun 2024 12:11:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 50/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_M1
Message-ID: <ZmHfqBCq5rfoDOFD@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <aa87444d7b2c0c695729c15730bb11aa922b7561.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aa87444d7b2c0c695729c15730bb11aa922b7561.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0096.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::37) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ddd036a-254a-4680-1945-08dc86434ef7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?t4pQMqbK5cuckUaYtso/jekCdtHi6KRMx22y3ke5qkvOqZ4ONC+ej/6bOsR3?=
 =?us-ascii?Q?QWos0bFSEnQGphfTykjDO+MwxnbHxY5E8RGLysX0nGX1u4HCfCPqzvxtUIc9?=
 =?us-ascii?Q?djDAvjjOvNxCvFjiYgWg8nTyRtFgKid2P+Fwd+Xdfm/64HNSZT8UKVm2jJG3?=
 =?us-ascii?Q?t1lLlg4gT4pX1ooQJdk1eAerpdiXF0cMfhK7d5kK6LIrZd72QFjVnmjJbDDm?=
 =?us-ascii?Q?oBby0c4Q+fo3FYZ3HuSOvbtGMEwQ6QodvyFOhCanTQtK3SxBrZgL7QQtP9qK?=
 =?us-ascii?Q?cNw1YNKiIkUYmum7C3BgU5S7BBc7R13tQfc/oi4gFI8ALoisEt9lCy9TmZFo?=
 =?us-ascii?Q?LRyyBHzTS8uY5IYb09AB1AfXK3eVJZaou7MBptbbMB5z5HEE4mcOBjm1pjQo?=
 =?us-ascii?Q?PcNTVa3C+ArxtuIpNVKsfX2QSWRl123NJPCEmm327se+rrJNHDPE3fS36mGG?=
 =?us-ascii?Q?X06ShoEf672rKlQBRsISqAw2dTq9qrTmq6DhUOI8+q3Pk/ALGEuPOL/R+Kxo?=
 =?us-ascii?Q?WB/2XZNfC/byVXlkP1dsKwRipoSlLhpORrZRQ2HmssKcR0b1ETtsQt5QIUF9?=
 =?us-ascii?Q?8xq3jCJAvbbLrK/v/7dGBDj9gt8V9ri+sv9Fe4STfUIlc1fbPfxpFfIid0oS?=
 =?us-ascii?Q?2U575RaWzn8Yi9AZFh1WVmA9v9L4mNiVr8K4rglRqDIptjWBOV+8KFNVA2uv?=
 =?us-ascii?Q?HF5DQRoc2puCBstuW3BNDZsvdGRWohF3S0h/AGJ3ghPsfNz4H1as83Im1MFn?=
 =?us-ascii?Q?npEKQi4q8THKEXm0IXp3PGc+fdd9+KQJhcetqWiDU5JwR9snxyeGVzytiibO?=
 =?us-ascii?Q?oGissA27iifNNXsAycK9aBrN7wgw99Ohr00Wg1JmxbuMo4kb+m+Cz92r7VG1?=
 =?us-ascii?Q?B8QPQzH+KbFidbVGaNNSA8MpWbHJ8LtZeJm5PHRRRs6YWqs85WRlW1/z7zRa?=
 =?us-ascii?Q?CtzIYv10fvlciHp9ONTCHCTpWk1NNVi/BTJRLUX37cdoMepcBcFdUG3rmbKu?=
 =?us-ascii?Q?iNwlNcfk1kvpUoc947Fp7LWq1m2v/WCHHNC0bzt5PnBQk/4W8I/HQgL+LXvj?=
 =?us-ascii?Q?f0xXCWylhrr4/dfI2hatqMXOJJ8AV7GxxA/5Cr3Nbu9zrrU9XrMiEcDIuOD/?=
 =?us-ascii?Q?zYteTAoJqznwjQOohCMiYDYso2zaT5vXAiwmRMjt+k9pSY0x5DAhUPEjLaS1?=
 =?us-ascii?Q?TdL46jOHmRL80AwX4iJbhbdIb9it0esf/DT0bc6fOBP0RxCBLPGaPYGQCnot?=
 =?us-ascii?Q?IPJtUFGRI0I5f1O8K68fD40/16lcEq73Tq4p8YfYaIN1H6mlLOk6GSGRNgne?=
 =?us-ascii?Q?0xH5JCszskYlEaroCHVPpTRA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2YBvgNslu6xQRembaEyJBc3iiZk/IUd8Gt/AH8dF8qVd0mLuldZ6rD4Qvolw?=
 =?us-ascii?Q?HDEhn9N6sC7TsqErD+sBp2GRW4KmPk4rUBtjJBX9e2FfebmI7Qi4RHzCUtp9?=
 =?us-ascii?Q?FDOb4wI77GhC3c68IoSddBItTBcdqoPsP2f3a4pQYu0IHepVhn0p1yu4xhUl?=
 =?us-ascii?Q?fTMijZ2N7FHWkiRodge6xdT5JKVxhdf1M79jYK/QOSW1KHPwpNXeYK9UA4XJ?=
 =?us-ascii?Q?RBccCYu7xYO2K7AZeqTgFMpHdESVp9do9FN0Ldk9Hvwzj6vlczEnXR13bRXu?=
 =?us-ascii?Q?NKHw3ptRJ1yQfKVAYKhmdO3Kdp/Vh0SGLRciur0uximKa1dtECA3uRhmiD/J?=
 =?us-ascii?Q?683jKyPYNSyk+E9yZXZhX8MMk0rCXL9wX+IinjvzTRQM/exjJ4Fq0hZ0pdlR?=
 =?us-ascii?Q?ikhGpaNPv33rLysWV+Pbp7VKdc4JOFF9VzaWL4oLjdxDnxXk5hsMRa9CXM4A?=
 =?us-ascii?Q?1ZAHpURCYzwYeCHU65tHz83Fbz89TpatNRyPmz+8fkj6p44jtvACitkUr9gK?=
 =?us-ascii?Q?T86xM0mV/jZf+mcPd5LdG4BLtL5t2VoCsjpxzzYyufrcRZP7c98Abs9uABOd?=
 =?us-ascii?Q?TqQt6NbutUFvnTyc0d5miaNI3CbpQQVBLW+XtWOQXn/x78TmZ2OhbxbtB0oL?=
 =?us-ascii?Q?Sv11BkeTqSQeFhJE//lNZkbexcWm+dYyT4Lx+32/55cI3pa33qJIMuyiTacX?=
 =?us-ascii?Q?vCHWTJ/ABARXS7fDfHy01WSrfp8TjV9PWU7RsHnVnxeYL6IIBWv1A+LjWtuX?=
 =?us-ascii?Q?aY1PsUtyULwPkwZR/hYZ1l0X9IKUZpOXdo4zUXUTSwdG8RS8FZT+X2B+nkf0?=
 =?us-ascii?Q?iBy5FuBZ3EPq0FBmmM0vwJPyxF9a0mexJsIGSOED6jYeM4Wu4jWuYtJDu7eF?=
 =?us-ascii?Q?fNZnDdjSKRJEcPWt4ogGYbvMZG9+KuLAH4bqBD9udgCPCk0xh4NfwIvKmqul?=
 =?us-ascii?Q?M7wHL+KQARZlw4N7FZvPU6reoSU9ugBziQdAryw1aQKOYueoJGAiTg0Zs5yJ?=
 =?us-ascii?Q?tIij91Z0coYxKs1v+kVbgZa5g3WCtUBfJAH56HJblB9Rpx35pRSPz4U4i8FY?=
 =?us-ascii?Q?OPyKW5Xdw4OUDKu+MtqrB74Meoq3L0u00PNmXds63t0hfuNsGST98mmNVd+4?=
 =?us-ascii?Q?+8truBmd+T+PvwIGU3cIibKmz7iDhB0qRlj01+rxdxnrdsfKwSmKKiV57nMt?=
 =?us-ascii?Q?ahMI2/k1U64RPhrvyRHMSGSYEh1XhLJ8ow11KgHEx9F7/SOc0gFzPJk8fkf6?=
 =?us-ascii?Q?etXCKAPoYKsDWMC63kXj4TKpxB++G7+3oJP4DDob9z0nh06PiL9aXTVZEsJL?=
 =?us-ascii?Q?CqvA++HBU9BxEiVnCRLoe8TXk2GVb2o0bZ/CJkG54fqLHT6meR4CKywuLB/M?=
 =?us-ascii?Q?s+P5bz3oKezZzm+y/eDZjv24UVNfFmf7KLvfvp7HDEiFNTifIJQ1PE/gk1Wv?=
 =?us-ascii?Q?Gur6RjzVKiE6TrxeG0Xm6KiiD7XMHgwBt80PBiTrXgodz2FxW5fCRxWNlE4a?=
 =?us-ascii?Q?IhqK/YTVx9TdBKzS4vgQIwoOtYyaBFS6c09u+K2tYWD/xrzESAFbvHH+lQHk?=
 =?us-ascii?Q?CBi9JfXbWpgN5JqBXq5DcIUPoatkcVhimCv7lTJN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ddd036a-254a-4680-1945-08dc86434ef7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:11:22.7616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3C4c/9eXF2vgvDGcLWx5YGOcElNUtqdrBcF4Z/g2XITSMaO4xVtJElaxZnhARsBWzLcymX3qiwswCR0Nx3cTMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:26:08PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_DATA_M1 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 6 +++---
>  drivers/gpu/drm/i915/gvt/display.c           | 8 ++++----
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  5 files changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 241121b0b3ff..7fd65e3b018d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2641,7 +2641,8 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
>  
>  	if (DISPLAY_VER(dev_priv) >= 5)
>  		intel_set_m_n(dev_priv, m_n,
> -			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
> +			      PIPE_DATA_M1(dev_priv, transcoder),
> +			      PIPE_DATA_N1(transcoder),
>  			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
>  	else
>  		intel_set_m_n(dev_priv, m_n,
> @@ -3337,7 +3338,8 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
>  
>  	if (DISPLAY_VER(dev_priv) >= 5)
>  		intel_get_m_n(dev_priv, m_n,
> -			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
> +			      PIPE_DATA_M1(dev_priv, transcoder),
> +			      PIPE_DATA_N1(transcoder),
>  			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
>  	else
>  		intel_get_m_n(dev_priv, m_n,
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 8b17b8ad71c3..007e0f9e9304 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -514,7 +514,7 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
>  	 * detection works.
>  	 */
>  	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
> -		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
> +		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
>  
>  	/* FDI needs bits from pipe first */
>  	assert_transcoder_enabled(dev_priv, crtc_state->cpu_transcoder);
> @@ -616,7 +616,7 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
>  	 * detection works.
>  	 */
>  	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
> -		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
> +		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
>  
>  	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
>  	   for train result */
> @@ -754,7 +754,7 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
>  	 * detection works.
>  	 */
>  	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
> -		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
> +		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
>  
>  	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
>  	   for train result */
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index 3681dca165c6..ce6f20b1dabc 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -261,8 +261,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		 *   DP link clk 1620 MHz and non-constant_n.
>  		 * TODO: calculate DP link symbol clk and stream clk m/n.
>  		 */
> -		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = TU_SIZE(64);
> -		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
> +		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
> +		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
>  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
> @@ -395,8 +395,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		 *   DP link clk 1620 MHz and non-constant_n.
>  		 * TODO: calculate DP link symbol clk and stream clk m/n.
>  		 */
> -		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = TU_SIZE(64);
> -		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
> +		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
> +		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
>  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 62cb456568e5..96bfa5620989 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2379,7 +2379,7 @@
>  #define _PIPEB_LINK_M2		0x61048
>  #define _PIPEB_LINK_N2		0x6104c
>  
> -#define PIPE_DATA_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
> +#define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
>  #define PIPE_DATA_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
>  #define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
>  #define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index ba3f734ced0b..977d695fbdff 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -266,7 +266,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
> +	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
> @@ -274,7 +274,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
> -	MMIO_D(PIPE_DATA_M1(TRANSCODER_B));
> +	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N1(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
> @@ -282,7 +282,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
> -	MMIO_D(PIPE_DATA_M1(TRANSCODER_C));
> +	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N1(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
> @@ -290,7 +290,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
> -	MMIO_D(PIPE_DATA_M1(TRANSCODER_EDP));
> +	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N1(TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
