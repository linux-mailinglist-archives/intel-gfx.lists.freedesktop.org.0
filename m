Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601178B8447
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBD5112FEF;
	Wed,  1 May 2024 02:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WMYmUUss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A2D112FEF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529956; x=1746065956;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=e/hRLCag0NCXY5pOTKSXyxXV6Ffhe38WE6l6QHwRlDs=;
 b=WMYmUUsstu9zK+7R7LGo/eg+xZwgGffTGVdAKrdgz3Z6h1Q0EYY4DChB
 9ZIpjiFXXjpWLbtmzZ0Obv0pqQVTXyEFhd5K24ysTe5RM5Zi3yIxscRtS
 PAwx0SHoXc2Fb4rFBnjCoddIO0hFNI/AAkPq1e8TDHwgzr/IGQj5ZBXnZ
 84Fsp/7bhmfaiinYh6yWFrUM6ZoqYpLPqVzLnOrC5dEr9OZfmjMKTXGML
 b1Ns2LWUaEQaKHvLfWm3jGMDbRWUrSqqagkdXaYD0V780XM7kgEpdahkW
 v1z7HcU0zdc7w+E7jGGFtgvddaJYdMSRoOy+POpkMv7GPkAuwW1UmJx0Y w==;
X-CSE-ConnectionGUID: IwZQgeIOQKO5thvGIabOMg==
X-CSE-MsgGUID: 6VAOu3HmRgqDz0iy/iWpbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14058624"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="14058624"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:19:16 -0700
X-CSE-ConnectionGUID: Jb6qScMMRpGxXRe02gRGYg==
X-CSE-MsgGUID: OEqtNDZFTlqqrRdu9z4tmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="27155448"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:19:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:19:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:19:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhJvVt/aYqXeGVzcVz4WfyA03GYZj5rzDyT+Di8mY+KW1+sONd7eiv2HynQOK4tj5B7z8A1TWlOwZaH9cgKkUT510OAjftKn0omknbKKRX5/Pq/MuC98XdBnZ0QY4RbCknGmBXd82Ggs7iGk/C/cBfYhQ+MpYBg9clWjbGatJovXwxlRFgRWQQTNIhKEICSTO4/TQDIxxoCgmmECu1D7xjKK0TRd59bTOblhLIR/N9sOR/asluuIwbuuTUCmfpu45f5DvMEfFCwjq4CxOlgc7mJvBKmjSRAip9lkTwRzwj17Kj6kCrTmfFQSd47RhFiy0/rXixYLEuV/GJYthmDVWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oiWWYJzakX6pC/4XW7wHcCvU+GSRQd6oPRl6jC5BHiM=;
 b=gNt0Hc012AOZ1et4LCwdqGqU0zXqXTYla9ms23XL0wkXJgpmDYhqyBJpEi7BRgtpuV1/vYz9VK6d07bnfhKiD1Yh+XDzDG3XTgsV18BeRqDEfnJ3NY71JMmagmnEhJ6x9FMH/TWRKSLN9EBMcQ8lkzh8etIO0Xjbi36os36S06cSY8pyF46J4/u2kdeiHNYuRS2DvIaIChCPLg86V4m1DyZ2D3H6KR9+I09tASTQA3Y/Vl8SzHjxrIiGLzzSXawXskRCBnLRZ7pmAstUojYrCoGdSb8xr9eucKp9KOdGpCKVD8MOUm8qERql0WkvMb9vtgXmI2EhVXISVDUImcQanw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:19:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:19:13 +0000
Date: Tue, 30 Apr 2024 22:19:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 07/19] drm/i915: pass dev_priv explicitly to EDP_PSR_STATUS
Message-ID: <ZjGmmyQmDk2EDME-@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <4aaa0187b16d2b96b5b4b1d775d7349c9fc28c7c.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4aaa0187b16d2b96b5b4b1d775d7349c9fc28c7c.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::38) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 89ad1311-9a92-4aa8-c0b9-08dc698517b7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xDiQ2tcWkwMVfp6RXIpbpUU96zYvOy8ig2TmtRGrt5W5Aca1kvVpjwXrlZag?=
 =?us-ascii?Q?9gFO+J6mfRwXmL8LEyHzu46oWceXz4CRaTwenV/fh5uCBNqMx+X5PQXA4Jrs?=
 =?us-ascii?Q?DuBRQZoWixHLKKTMO6fO7cD3WeHa6MFomvc9oHSZEVqiNsfdqEDAe+ZdEMns?=
 =?us-ascii?Q?p6y0cxLd+xIp5gSmqva99ND0n47q1FtuFTwUQB8Fud0alXeUBkuhv5Bfhu1i?=
 =?us-ascii?Q?HNlNzgqW/tlFhgat5PCLOeagvENRue7AMBrFYjcA8XjWWgjk51950v+tWb20?=
 =?us-ascii?Q?d5Wxxy3YYYsJPxCgg4IQGmsz24WKTxOBc6it0lNbGxpQqy63yFmXoxcmnEg0?=
 =?us-ascii?Q?BuEGlHvKuNZojIQs+xtbhvWwAPFscI7VK96YW//2Dzog+pIZ9WEIHagTG32S?=
 =?us-ascii?Q?NlDNvRIPF0gFRAadK8o7CqTHn4O+nlFC49FcDW5Ey+LKrSyTR/Z91yMYsqwd?=
 =?us-ascii?Q?IbmRwPbup7qKHs6TxaLniJum3oTOisZDf9JiRyk91nyytdU8050XoShBF5we?=
 =?us-ascii?Q?vgTRUvSS+YLKdVJkIIhV+ZZIaQxAOqIOviX4/btdF4AYtrrtSrhZ4STB/6eB?=
 =?us-ascii?Q?glkwozRvAebzpRleOkWTab/Eg8YTpxgiUi28EwuNkeJAWe8ridCho+KIRZlh?=
 =?us-ascii?Q?cv0GVtydAMN5Ft130nCTjd5KzuTwEosjXJ7UYPL2oG8pvYIhEkmAgRuhnJ66?=
 =?us-ascii?Q?xy17jPVOqOSvX+WCJn+Lkq4OrSP2OSkx2ApGfqsZx59OwkqlcDSyTeI9Ly0l?=
 =?us-ascii?Q?fd6ZTktUDOFWqUisvpw9J8PhuLz7pMNo1Sl/HKMWsHMS55iFzFVKdqmp0IUi?=
 =?us-ascii?Q?d4Z66vuLz17ayoV5pdmjrjoJTfgL4db48exBJIc/GGl+sjxSxO52xw16IfBO?=
 =?us-ascii?Q?WulPYl3z8Zm1Ppw/jOFcQ/zRdIxLroqiup8xOgqK24z7hiNhCg7U0qpf65lM?=
 =?us-ascii?Q?cM6vpowzY7QnFcp3taxi/9ZCQ+EiMJiciT06lAK7+U1dvmVdyCn9r9KNWiXV?=
 =?us-ascii?Q?9IA1b2YiK4QJAutd69xKui81Hqu6vrna5qlgoGuunPEtmlWUpsL2CsKYidvt?=
 =?us-ascii?Q?3FtEy/bMWyL71WyA153EDwZ176kojitcegttQ7R1Qrv8Av5JdWIrMzmwJHYA?=
 =?us-ascii?Q?j/Yn35gJp9RdxSWIWIvE7qSAprqqTR329NJlrqM+dm1UXl5jLeeRdj00749w?=
 =?us-ascii?Q?sfRuhJZL03ItmGUlhtvaeejXscmaaLif6lIh7lste+NmUUgqZWeKK3oHujEw?=
 =?us-ascii?Q?M06FLTIWo2WYm5VIlHwVZr2IWDhSsNMhBRq3YnUg1A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+u55+3BIrJ1+jLeJU4l/5P+aIVGgW7LN+NmQO0866hoQIuOybOVR1Z7nZjW1?=
 =?us-ascii?Q?L5pb1WX5DOoQzwK33dYXQSdZydZ1g9OkhujS5sjsc2JcabB3ooNc8u9kDG0y?=
 =?us-ascii?Q?SEqpoYtHJq0tSw0Af8LpumWGXppDIgZn5lTei32c/YX2g6DBucB6+4ym5rcN?=
 =?us-ascii?Q?pVogeAd2drLB8ZutGTe78MhhHkHaOSQy2zph6TjPmL9uwch9HcXBynPGuq/n?=
 =?us-ascii?Q?KC+8hJmZ6oTbI9kUU36EL4FFiCl8TJVhuj6B6CKDoMZJDjhyQuszQxEtG05f?=
 =?us-ascii?Q?3dkL6mvWAwQeHITN9OxRZ4FJsWD21/ens6blNbTw0er1iVP1t6lOEuHXz2rG?=
 =?us-ascii?Q?wYChyb2JrpAfjGIVRnXSmp+HD/RIzoL87icPvopGiKf4gFGTVzJQptpuTsam?=
 =?us-ascii?Q?cRl6NqzyD49ODE1K6Z2qpk7F788vGvpfTjgsON1IaK8AmzQZvP25ngATijBu?=
 =?us-ascii?Q?UPe8yYz6Hzb4obTwIiaBDGDK56KkjlrlI053Yha95RkxqubiSJLsYICasEtK?=
 =?us-ascii?Q?M2yXgvTFyizFcGdtcUQlkc1r+UY1uzIJfNlepeBpnE2JBGzM/IQ3Hfz3QjL/?=
 =?us-ascii?Q?a2J4mTSqptWo2EA+brgOut4FhgO9wC/+qYiapmHIZc7LJO/pAAM2E3a0ywr+?=
 =?us-ascii?Q?01qqnZsoYelTKLrnNwGIA+e2c5xnU+2znv8rnf/8QDBvLQK4spd5z9puDIWI?=
 =?us-ascii?Q?MqHG0R4sk1awqMSLaUcxKPskXrdgt3mmrWYalzWtGN5Spsd37D5NMsmBpxyT?=
 =?us-ascii?Q?YbjrJ78MpumPhnh3rs8XD08/HG0PeXPbOXq8ovuZ8rZ0SdAOIWUf7GgW1Enz?=
 =?us-ascii?Q?edno0dt9IpYAY3Qg3VCXJcS0ykyvDt8iTX4vkiesaopmS1yc04MqDdUCxG5f?=
 =?us-ascii?Q?fHHk/PPqz4/tQT+Jb7wFmfl5cTvjUatTnWgNssFfVOmnEGbbJQHpLww5Cz9P?=
 =?us-ascii?Q?yEJFx/4ygrhbghm+/Z+m6vRtlQ+x5E6hESTiSccy2xtZ24YvKxJtegZVJhE1?=
 =?us-ascii?Q?qRztExcyyTfrugRoxwro/BGvfgrcOjuJ8a+FBu3CXTaNCb+4U0JF8sju6OJX?=
 =?us-ascii?Q?yBrPUDrmUvz6m2KHornvc9eDx2qcwwfL9lbprWzG+gtf+BFcnqM0teI3rVuZ?=
 =?us-ascii?Q?MvDK7I3XiqxUlSeSJHFq9z6a3rPjYOqhqVeyVFZT0zPV3KNJ4SjD4NmCvSsB?=
 =?us-ascii?Q?ljo/NliD3WNNzKXWlqTBPK+WhtafhAmTwZpAs5x/zejsNzpcof6rTU7Nwitm?=
 =?us-ascii?Q?YLQM+THwx6kR4uRDIkHCqFcLHj8h0+I62Ldbx6JwUiqp4qS07mLizLsJx6oC?=
 =?us-ascii?Q?FSNj15J3U2v2J5wKEyTwg/Bc+ppP4+0iIssoVRnEdmEL1vrkH/nJyG9VYSTm?=
 =?us-ascii?Q?Rc5XWEEbJ2wh57kDMVC4VbMk+4kEcp501mcEIK6vmoA7CUoEIbBkSpivDvMF?=
 =?us-ascii?Q?xZaUdm0yKkrNQtT9Y1sbSfWdHHr5xcIm0zyc13lOtqJUNG+HgRzDJjXgUlSu?=
 =?us-ascii?Q?mp6AGMxbWxBXy6ZJzbNUI+ZpmOUpnboZF7tKpnt5Trpb/J+eEcuKoiaytV/f?=
 =?us-ascii?Q?tPchh/W+IGe2sYQQZXQGHuoFdzNxHH+3nOa9iwfCL6DTOs0cODlWF19/v7uQ?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89ad1311-9a92-4aa8-c0b9-08dc698517b7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:19:13.1210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6IGacB3zYBUETaYwCzsHOpl1raHjKL4BCdv2VYhHsK7pB2sicXB7iPUcQ6bmseEM9fZzx30rvj2rZXv2RHv0LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:01PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR_STATUS register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5fe9feddc0e0..1a52a69e1906 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -296,7 +296,7 @@ static i915_reg_t psr_status_reg(struct drm_i915_private *dev_priv,
>  				 enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 8)
> -		return EDP_PSR_STATUS(cpu_transcoder);
> +		return EDP_PSR_STATUS(dev_priv, cpu_transcoder);
>  	else
>  		return HSW_SRD_STATUS;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 6a6d7de901bc..4f3e58076a48 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -101,7 +101,7 @@
>  #define HSW_SRD_STATUS				_MMIO(0x64840)
>  #define _SRD_STATUS_A				0x60840
>  #define _SRD_STATUS_EDP				0x6f840
> -#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_STATUS_A)
> +#define EDP_PSR_STATUS(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_STATUS_A)
>  #define   EDP_PSR_STATUS_STATE_MASK		REG_GENMASK(31, 29)
>  #define   EDP_PSR_STATUS_STATE_IDLE		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 0)
>  #define   EDP_PSR_STATUS_STATE_SRDONACK		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 1)
> -- 
> 2.39.2
> 
