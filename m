Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B26D8FF1D3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C550C10E105;
	Thu,  6 Jun 2024 16:12:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WifRZaSc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA2010E9FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690360; x=1749226360;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eaj/iuXqQbSI/f55YdPUvBnIn3aozKGMvAoxVHUYCvk=;
 b=WifRZaSc+mdkUJTsyBKKm288BbD9QJrTXsowK59i5fWfqObT0H8WxW08
 guZYJ9xkNCvwbdCUVInxDsxDay9OYPOr5jcG7OMcpCtP5sTyJ7vnuOCZy
 Ep4+T4yR1Gu1nOxvTJLq3veJEe3CIeXu61o6x1WcpYtmvclsmWzooSxZO
 DTm9WOXhlTTI0/yWobNA6FGUKmFLbceURFd+toXtNVePB/qyXd2bYKeO+
 dbaDxVuvVhbnUt6NJ90ku4s+Yd0BAvrmysXnB8M1nmxmY8QFS8aVHqIMI
 rv1ElOLkutp749EUd78RSu8EqbPPyEk9JKlQyt7V1Qb9vONvtn2tr/i5Y Q==;
X-CSE-ConnectionGUID: TSZEyZnNRE2eu5fri7ryig==
X-CSE-MsgGUID: 1bDs2uqDQ3+dMWyh5MEkRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14493357"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14493357"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:12:40 -0700
X-CSE-ConnectionGUID: 9ElM93vPSnSiqlT0rv0rOw==
X-CSE-MsgGUID: tNyTe2fpTmK3X3ZaLociyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42945132"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:12:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:12:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDBKpMcaYs4Bml/2ApplPYP7nOiUu1EaQ58hSUEOaNdgmcWSvDYONHdA9U3uQjjXuqdDHFdl5ME90asI56bfS8F2hsRcZzWyStWTJlw1i7akBbszkV3B8kndybv0mh3oRsu0lkmgMfePxoxd1EPQsYiaw1zn1aQbI4ndLmPEtgvulNypxV25bcXBkD/JQ253oUMXiA4KS9t8K2visSsgQaVur+GagDJXCiGdkCrWBtiaeAZbfS/NNAOsnVnQOIyFbthx+xOvqYXDcKgJDBTHr+B+S0yiKPRFW3TL+JpS2yt5VuYjAeWXeiZafpQ2Bp8HjvZcbJo3xEvBu1mXK40Jqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hnOUspdfQIVv0tZwjVY7KL62Q86cCuFstiU+M8voXpQ=;
 b=QSDcqDmewRgAlcHW1ImUGmBVSX949HHZtKfxXgpim52gfmovKUR675bpiS/hMT+zB1fPyd35cDa9D01kRYWLd0toIGHSLs8fX8JAplvvdMQNheG3a/RPAf2HOP7GD9m+yZvLxL1U1kzoYxHsNiZwibhi26AJdiPF5l14hSRFUpYLKWHpoA5Nl3u4r7n9qhjfE1Y+PqTQ/+R8H1gr3JaP44sewcz1ULtIofc6X4tiX2uykZkZ94SnAkKOlNunSiOxqnWGgwR3bnvSaTciWTpYv6qoEuR/nlkKd0JOF/5VpG2NCRuThJ0ghqI8vyp4ibJillZN2xwVl/kc04aZvDzlCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:12:35 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:12:35 +0000
Date: Thu, 6 Jun 2024 12:12:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 52/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_M2
Message-ID: <ZmHf8Di9UC80HVch@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <1fda9b8cd446727845089844a1c8eeb5c8ae7b5a.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1fda9b8cd446727845089844a1c8eeb5c8ae7b5a.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: 747fa059-d2ec-4630-1aad-08dc86437a0b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Fki/SD/d5imcn2dZP1lx8tUe5AmPmE4dR5/rvs0QIFFDM0JQmIy07AhZZn+L?=
 =?us-ascii?Q?Vu5DYtTSL137CCVxLvksmQm5jfXJ345B5qOYizOij2xlf9TQyU/4EJ3PeKN6?=
 =?us-ascii?Q?P+/eDCnoJXbuL3jA8GhWsAHtItUzYumEU6OZtlNUa5vrpnD47dhkr9Cj8wNO?=
 =?us-ascii?Q?jh+PfYUXH+lnNjlq7aDSl7guvD9WG6lrrRAYMrByefbVjZk/7RBVscoPbLAk?=
 =?us-ascii?Q?4n9nsGHxCUhuB0zICZp4BnC0o2LjGHzJ8KB35x5fyDS0t0DT1AVZezQrVKM8?=
 =?us-ascii?Q?SAdo6ItcvCXvNhVRX0T+b6sOIXsPjRwLauJK8rxrXiDeYkTGurLbUeMlQ0/L?=
 =?us-ascii?Q?7WtLKz7yVYqm9GgB7SCqQu32tsvgLb43Aq6iaNpB+fysns+WMm1S6ZEjYbeo?=
 =?us-ascii?Q?+Eakp66ZwWRz+Xvqr5xRJ/ch1qBTN159qEui2TKavrESZKV4yby6IgixZoJy?=
 =?us-ascii?Q?Ag0OfSX10LvXAFxw82bd61bX/7TgayzodVmnxsbD9ub7fYC2YoUoN32KJhr0?=
 =?us-ascii?Q?Il/Eq7SUCAZlYp/kLID5SocqkX4amTH58n+hr09aTSI9RX8jKJbKiYP90GLm?=
 =?us-ascii?Q?eXGz0M43Z17Ag+r0m2FnsYpZo6BhSyY+07/X0q6Auomi2yLlXC96jwVXai8H?=
 =?us-ascii?Q?6pKy+cCDu9VFcnJvfwnZSTpQ5myrVwId3+uW2qlUUiSwmmjfKVsKaMYzkTlL?=
 =?us-ascii?Q?EFB/zGUvFvxX8nO2uMraUiBYKf6K3zTuDyYk0egFndqRKZB14GZY6UjeNiQa?=
 =?us-ascii?Q?Mm12EnaNq5/+/QFNMP/t5SW0WhrD3a3XiFrFFzvyfKEIXTsPF9fsCvVdPF6Z?=
 =?us-ascii?Q?WfDCObVpLOOBdhPjlEVU5J3NPk93CCGCyxc2SkU6E3HDgFbYde/vRqXVU4CY?=
 =?us-ascii?Q?wb2nyc1TRNH1hEcW316fdTACZAHP+kIgELWoUVrt1z9xpXVjBZIQzirboDoZ?=
 =?us-ascii?Q?LByAC4K5L8yREbPRqwu25R6PjNhK4kaJIRIv6zQ5T4TmIZPT0YdTWVeszPv8?=
 =?us-ascii?Q?CEiw4LpFB14q+VJt4OqOdZUOU36/q/Of4R+DbXoVhRDPzx7d1+sCfVzjlIsX?=
 =?us-ascii?Q?EQxgMIw89IYxkfagWSJ8iMCMPUKGoD/mkwWQYMlfrRpJMzYZ25uyjKZv4ZJA?=
 =?us-ascii?Q?aCr/rGJin7UORjvGt8/wgfI+lBJLeEuH/xsvRMQ5XKgM6ZYPMYdufV3lH0cf?=
 =?us-ascii?Q?GQS/Wva3PjekrtNFQml0HmjsIgm8+RLFfX77uzu3dGWfWUgXXUFrt+ujNO3o?=
 =?us-ascii?Q?VcTtzuJJ/5sCwl+OKzPPZsmvnqUAtD98b2VfiqOTplcH5u9rEunZNc1m760L?=
 =?us-ascii?Q?4xf9NciZstOYtEk1WE4ucIkm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TFeVm8EAKFX3hh7Lm/tlNgu/GZSwvIwfBkSXy1yVY+PIYi1uuKcDkg4u3u8U?=
 =?us-ascii?Q?eZXaVhyKYLam3ij0lbrV+NDeH6bAe20zenHU4mN3TYKEDbmYSvWeqqk4Cn7C?=
 =?us-ascii?Q?tyERE+3wrurrZcs/STdWc84Ds8oQsCkIlmEvonsWKpdSvOnV6T7CA3Y3FdWh?=
 =?us-ascii?Q?c2PwkY7nQNGOROhpdqkZzfFb+v316VffW6f2jLAOhRntoBGPh/ypkbT7E2+Z?=
 =?us-ascii?Q?XSr+z6Jdiv9lYuUf7NuRqThuRDKmzbHqnGI2IjOohmPs3bshtinZF5piIzU6?=
 =?us-ascii?Q?l8+bCKoa/44x30J0aZI3LZA9AP7GB20tZbveq4JijM1CbNyJm1pXC5fE1Iky?=
 =?us-ascii?Q?SFJLWzJ3CTPmJUVwUQ3geH3fWeb8v1BrIpmygepTN2KLzIoe0FN6I2H2MRgp?=
 =?us-ascii?Q?bjHHzsZfv/XqRNEzVGLRiYwaB5tcGOBQYH/lHtpx7sooXLHhdin//rr++iD1?=
 =?us-ascii?Q?G+CNGHMDwVi0hkFeonZKwvClENeSHTc90NiBbquqTR+83d94wV9l87wUuzVd?=
 =?us-ascii?Q?SgwA4jAdeiPKpYPi+OFD6Yxe4gYT/W2KFnE2vvwbZanylTZxrJZiMrtiH/77?=
 =?us-ascii?Q?2+L0+NEIiVU94Yy9YTW/9k18tM8peN/i7txQnJkpBKN/RCwNShv6FnT4NZGs?=
 =?us-ascii?Q?ioeOsaoFHqsmESpsYf+VEzFuxLgGnQ0Ry4oEBzPb4VdNbkUuWyrKynw4aAMt?=
 =?us-ascii?Q?3coobzQV7TfJhzRyE/rGkh4qNgvlEVlzBz2jQEjzZCtuuhClOsQKmFKYLhRA?=
 =?us-ascii?Q?UTlkiKlC+TL3i92uS56waUWDakkWt3Zc65a7tteW3r2zJezv/79FOeuxHYVF?=
 =?us-ascii?Q?7gXEWFhk+KZaICT4C6DJSbjFyyDckNgScFAyXyluqKIMfPimDju+2MrYpU36?=
 =?us-ascii?Q?w2d391WeG5mjj9A+2QmcqLnrOQgAluaKhfP4nWG+bf65JPFnNxFX1zTg/huU?=
 =?us-ascii?Q?jTHOnjjGp4zqxL7/bfKQOtRY+TKcw55FfzMckAwWzGjI7F7X5gr6qjeDfMFT?=
 =?us-ascii?Q?GXluSwKL3PaHN6jHGw0UmphI7CFuyNU4fzOR+6ocdoX7xfaVYnf7dPQzwnDG?=
 =?us-ascii?Q?O4tiikMyJyQO44eLz9Yr+AOkwuNssbH4t3kdfdQZKcdfIKQBBwDmHxD0zvPg?=
 =?us-ascii?Q?wbJaiRwNitCrN1+gk0ynyOHEXRjBbT5kmOHIWj71TaOxujqEdvQ2WpOGhchM?=
 =?us-ascii?Q?KtILp+kR9R5hhjhfyGUjkDOzYxkITAhJMusjCGokf9tBYlC12saHhVFI1TQs?=
 =?us-ascii?Q?F5I5PNLb+xUkAVtp2gZtNwzT4V2yEdTrvHynVNiyCslaKuO2KYtmPSeQZslV?=
 =?us-ascii?Q?XfBtMdas7esCg1gdxkZyjUeO5vWtItNw736iMwlTpcdVIv2zxuSuRkdvJ95s?=
 =?us-ascii?Q?dhc8+giPKRgfAdiQniV8aWCn6ZqCs+5isH45mfnm4HEJokKM2LqYkCm7Juje?=
 =?us-ascii?Q?9E2Z7oDLbvniJvmD3sN+geeCMtSqMBv4+kA46LOn8Usww2Wu71Qfcjrjj0ZO?=
 =?us-ascii?Q?O4OvEszLNhMqMdt/goXUMacLHE8uzsKHfDAnMSos6GweilamM9uAztACJGC1?=
 =?us-ascii?Q?EqxwqXNWdNpDU58q0sb+ZNXqV+5UjM1DJAtU53kM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 747fa059-d2ec-4630-1aad-08dc86437a0b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:12:35.0270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3mC3b8R7FBKziRZgyrPtEN7xwDbZFNrZG/BVl2w3ed/e/KJnRKl3DSlkzR61Mi538IwZNSliJZc6zNoqzhjvGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:10PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_DATA_M2 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  3 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5eb4ad261c21..c2a2061a467d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2660,7 +2660,8 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  		return;
>  
>  	intel_set_m_n(dev_priv, m_n,
> -		      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
> +		      PIPE_DATA_M2(dev_priv, transcoder),
> +		      PIPE_DATA_N2(transcoder),
>  		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  }
>  
> @@ -3357,7 +3358,8 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  		return;
>  
>  	intel_get_m_n(dev_priv, m_n,
> -		      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
> +		      PIPE_DATA_M2(dev_priv, transcoder),
> +		      PIPE_DATA_N2(transcoder),
>  		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 70c5fe687254..9c56df4c1f9f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2381,7 +2381,7 @@
>  
>  #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
>  #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
> -#define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
> +#define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
>  #define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
>  #define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
>  #define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index b9ad4eec4740..4199106f7202 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -268,7 +268,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
> +	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
> @@ -276,7 +276,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
> +	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
> @@ -284,7 +284,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
> +	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
> @@ -292,7 +292,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
> +	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
