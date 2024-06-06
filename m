Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122328FF190
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF3E10E9EC;
	Thu,  6 Jun 2024 16:06:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RWT7irem";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4C910E9EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689980; x=1749225980;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WlfhwxQOUibFbJHPpSKN6pFGVkGFEpKO5RnMsHoBGKc=;
 b=RWT7irem9q7VZdAVtQAVRMBuSEKWv3ifaw27i6A8pdZ+MJ9SPY6dFc2f
 edlMuRNMH5wEk3m475Zeja1Msbz7BcFdxODIYNNmW/K1D9hkgje9tzy+6
 cyMq/GVfgi5mh1RXGP8Q8qqwRhiXBXHmsu0kOOdycKkJLGNoqr6Tk+tSJ
 bKUJCtOTqzmDg5n4A7y2QsGJY9xphHb8j364mUeXX8mEqSBgmEkt0L1y4
 0MnhA5As3ePqjMVGZCJ+drSjeFD9F+resiuQK+QITgsocCdl2zUFKxCwf
 oNRx+GrBn17O4voCRXE0B43fXuVVW35tKi5b1Uoy0HjOnL5oVcjVxivtt g==;
X-CSE-ConnectionGUID: ck6dmyW4SEacfe78qyxvaA==
X-CSE-MsgGUID: 94i1JJiATtyVQ1VidQZYtQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14179322"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14179322"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:05:54 -0700
X-CSE-ConnectionGUID: VOJl3xrySBe90P6gjTCfcg==
X-CSE-MsgGUID: gCg2atAWRf6DQzU2bAlbNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="68807030"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:05:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:05:53 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLSDltSkKyQfk047riUhg27uTjeZYC+SGq39R3V/eto0782g4zxBbsSttQmgJZFx6UvY+PwllZ6GDlbF5nzJxaC8Mq2JaGaxmoRCbSubNYTr2QyUgdPqWEo/h+d/b6Yqp1PpdsdzY3IxIVKAaY3bpBmSHaDsSQV6oOz0lloGD0w68/GWH45pc7Di0d/iCZyULa9RRf7GIzjQaivT2LF3rGvyy5mIjHCPqibu/5Q4BpkMwn3c1RfP6Je8bnS9G6Ye2qgSc7lmT4i7CxdJOgOm9HlotPh8SJQC4dAtYPf4jZoiQIaq/sCzsqHJAWGcJ4ztusoDKNqtajl4FZnGJNaTHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/raOsGaIUpE03JwFjtok85av+r9rVk22UPeW0mgNN+s=;
 b=bzpbty9aG5UbjzewuBLem6/mHoZA/t1qA2uZQ+bomG7mQgnA1rAAK3mrdrttWiE+8bWcrgXCUbntSrceT2umSYIfoxzvx6UcyP6SfrDteKvcF9lpqflGR8QZ6s5HCONNSslDgP3VQutaiurjSCMb27AUroaakkzsxLX+2mdbVql2+KS+qC8UC5xBaM60vZQPxDpWEF4MrhD7f8m8wqlBzZ0Y4HCnB0O0+IMTFZBemya9XFblgJXYIk/4L/N6pN8OQMoHKh89XvTslbS7ryO/LkvY1za3xA7YCmSUPcBqFzqJOTcq85gkqcF70Jyt05fzX2teagzdjqJFDppVO8fXng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:05:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:05:50 +0000
Date: Thu, 6 Jun 2024 12:05:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 39/65] drm/i915: pass dev_priv explicitly to
 _PIPEB_FRMCOUNT_G4X
Message-ID: <ZmHeWw5Bi1_rYsov@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <b0a9c0728ac988f69f220dc2c1b9c77ac11d17aa.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b0a9c0728ac988f69f220dc2c1b9c77ac11d17aa.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0193.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: e55e9de9-9b56-461c-faac-08dc8642889d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/oZJ91kW4eDg+U7PBF9QY5J550Ri1+Jio2kKNV1ZMc1rUH96WQ4DiyF8ZTUG?=
 =?us-ascii?Q?YXQoghZ+Ayk/ImVanJcWBgCeKZ7b7AHMhJCdW0QMfSpdTOwksqfseCVZvVIl?=
 =?us-ascii?Q?RBFEBpLGoA1m+BO4gQ+aT6Qu24fh4rmSqY6UyFmndng7g01wJHH97AW2g2Ym?=
 =?us-ascii?Q?lkZpt0oOe+2yH6evo6V7wjG47GAWF/5HflALs6bLlh8lgaHH/0ElD1BqqbT5?=
 =?us-ascii?Q?Vd5em8wK3Mijk//SmD8yeI/PCvCW7fM/oQPhSZ/DkyfV2aTLt1xFqdWA0i4q?=
 =?us-ascii?Q?Hmok8NkvxNuT4m2RfPV93kihY95UFDZT0F31+Wnh2aUAlue32d5x5VEur6y1?=
 =?us-ascii?Q?WK0dy0TIiEhyVbkg4An9HJ4eqBk44QejPMvJ+eS59QGI9SFpcRtl7J9MmwVS?=
 =?us-ascii?Q?dUrnUS2z+fXPkZ8Hf1FYK5cYC1u+FN7iODZVMtaE0o84nyltU+seUyfIUVkw?=
 =?us-ascii?Q?nIStUnz79BFuBIq/LuSx+rsr4+LKBzu8MYe7YPNrv1uqvd2sFOdeCol7kX/3?=
 =?us-ascii?Q?IQAVsPwKUdiFOb3hoaw/lhgzQB6PcLvMfxClk1ucPm+ovMaCZw5ncKXiyaNm?=
 =?us-ascii?Q?omSD51862W+debSEElglU6qc17T8de7wLtwHkyZ/rhrR1M688UjDZHs7iZHD?=
 =?us-ascii?Q?gbEUqrl3Qbv0/gvcidRgVQW1ywwWTx5E3mDJPyP/UR1JcpOTdC3jhc4hyqHl?=
 =?us-ascii?Q?MZvUXjbOQjgcX0L9Osrx9pEqvt8D3d0j1YwarQ1Uj30k/4B6eJuFywfykU2+?=
 =?us-ascii?Q?UJPtUpXTewEjOGf78cgWpR1MFYyhUB9ocq4Q69J1artbHbzsk7oLbcrHjoay?=
 =?us-ascii?Q?jhG1ecBWxJq2P5D1gNCe3AKnCleq+UrqkyQjpFS9RkVKH9ccKzvImgbnRDja?=
 =?us-ascii?Q?a9UheZ2uAWoii8dtmBjp8iVRDPd/HUlkkBqpN75niN8HRqyioBaBKkqHm43A?=
 =?us-ascii?Q?+mW7GT3ntKiG4hHS3xsXgK8qPnmlHiRo9k1W6mAWiEXpzyQNUDFks7ZekX/B?=
 =?us-ascii?Q?iK0kP+Kxj41QQq2l5nbQDIAZmtJs6WETVR82oR5zdQvB2W9U+HLoLGj0izw5?=
 =?us-ascii?Q?CI2WgLgXDkUkeaCU0/uapZJjKRFzTp4xh0gyV7fiqUsHow8sj8u8v+q+FAzQ?=
 =?us-ascii?Q?UUrMh04uCwCIsxuDxaW/jgoXiKAgoE5FznAWcZC/BtXHUKvQ6hpWeYyzxXWp?=
 =?us-ascii?Q?XMVmPocJqUhY2aYOhU/1U9UjLMuNiBmfj6agRMZqqMC6FniNAqLLRmWBt2n1?=
 =?us-ascii?Q?2t0S7aAg969XtO8QDEgbo37jhY8CcTkX9354XygCx4vqnhZWPVclbXD8fO0y?=
 =?us-ascii?Q?+QwekiwsIrIl9VUvrWr50E3E?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?opdDuidxSONm2ByUDOo/8H7qTBWZLtoNgpd0g/6U7z6ULoEVFyEQLvIDIDea?=
 =?us-ascii?Q?2xI1yDKMSTi2hawY4AvP+Y6GIhz5B0ONdR017VEp4ifDRGnJBhNfZVWWYguf?=
 =?us-ascii?Q?LN+DOHgBzM5OM+ugsjolvDf77ehayEXMNw6Drwe7M30UoCtlKuBnSjKSuQMj?=
 =?us-ascii?Q?Nf1bKroygSy00pCb1x0ieTsbKWQnOWw19GQMRZbjRsz1fIojudRu+3hLoPVf?=
 =?us-ascii?Q?rIU/crz4na3jjlDgENeoHuZuaTJ2NDPR6NIbMS/O3f2+OCjr6tBHUW/idc4I?=
 =?us-ascii?Q?rZfRJr8KCreRsMvKw1+cm0Xuo7vsFF/nQa6rXgT+UTkBOlEsTyWmJJK/krHs?=
 =?us-ascii?Q?34BwWC35WiI4lJ3A6etEB4hm7b8Y6ubDUBDJUG7xlVaCf8qjlchHtqJLrMJp?=
 =?us-ascii?Q?vjhnkrJXTxefogYRF6dItUV+Vu29MlMhduKwe7Px2F+LPDOy6hgyZXvuJxBH?=
 =?us-ascii?Q?YOfNXNf16aLXwEFhAouh1ydb4IR2dFaojSTXLneGJlNWzNsJYCbfRStHZ+ys?=
 =?us-ascii?Q?3TPg8jxIEsrrzU8UbMA9Fqz5Fw7ZHiVvdWeSmcnCTNLB+Xmgm5yQTu6pSY7J?=
 =?us-ascii?Q?dOOCY0Kbq/Xn12/0Is6MViRYpSs7CFDmKkxZSIgtbPxYqpiQrFKpxuqqEBgC?=
 =?us-ascii?Q?+D7/TDvMbl46UZjSrvEVtarLrqnNDB/bqFwnvaL8tW050v8gODXE0L69zHD1?=
 =?us-ascii?Q?BzJ64liH1VNYP1KMuaxA0oXPIc/WQby/HcfBCdZ5IWhcGJRekofYJbXWyr2Y?=
 =?us-ascii?Q?/BpJO3Zu9klSAUGIvPk1QkcVmyUKvH3l3CLQ+muAb31EKZuH0OkajarEkCE1?=
 =?us-ascii?Q?M6Lppl6eHfTFKkyi/YywhX3xaTCqhQ9Pvm1JcHaIu1VuZjcRL7CISxQmFgvS?=
 =?us-ascii?Q?gomy2dwHT6bCNopn2DxmEvFKh45Z7hJ0RGtcNBqFtf2a5I61oKf7fShRh9bb?=
 =?us-ascii?Q?Wq6ryVZNI8KcfHzDhctv5uqAnKzNZFby1/xfC0Kep5jheeAWPQvobM+hJ7x9?=
 =?us-ascii?Q?7Sj9+yt7yaREJmYeZ+3qGUfBH5FQEfMYdtAR/gAoprM9farPeoS2VkEfKnDo?=
 =?us-ascii?Q?ZIcRZM2uhOHhYlexDtGgkH4D2EzyI0zzo5V+gfPtVecU3/t5B1oNXRSZ3Rni?=
 =?us-ascii?Q?N4lzVxAbZAvTTm8pcMTB+EZHsq0x+XgbmLjzftRDxsgXPhXe/sHf4HI1CBxL?=
 =?us-ascii?Q?7iZvoGdSUMUMCLHmBnQt+HJTyJyCQLGrFLlWzRu8oOMODR/IO4Lm5hnPP1Tg?=
 =?us-ascii?Q?kKT8x3kKlEJoYmMmo5trCvRMnQ0oBrUm/J+vnkrB9APhgcblPXPUIPW0ZfEs?=
 =?us-ascii?Q?otoPmpsVyo9qOChx13gJBJx4zlveLepbOb2DD/IOO3FVzu+JpF70FdWKjzGl?=
 =?us-ascii?Q?iIdTbeX8xxzEF4a6hpQF2g1/CcYdSuA86xtoGcElOgGqctXYeCrFx/q2GGMW?=
 =?us-ascii?Q?P9PazmjreBaQwoG9qoYf9uC4Z8rD+kRwwMDusytCh4a4ID7771CURB1Xxkc0?=
 =?us-ascii?Q?Cnxjap+kq6xP9fBImwPrtLAG+h/hQIkJU0QftRyH6jxrgnNF5OZ+QLlahsEC?=
 =?us-ascii?Q?JjGkytKbCXSxYme8N6qTzkensKecdXFRzHnyoj+Y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e55e9de9-9b56-461c-faac-08dc8642889d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:05:49.9736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dFPQ10ly+PHZmhEC+Ov3RwWg5AENMKzOYJg64t6ynNmo/lz+wWiaujDuuk8gzKXEg1YB7oDEai0056V3dWrJSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:25:57PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _PIPEB_FRMCOUNT_G4X register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0bbe2f8aff4b..f5367ec58400 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2301,7 +2301,7 @@
>  #define _PIPEBSTAT(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
>  #define _PIPEBFRAMEHIGH		0x71040
>  #define _PIPEBFRAMEPIXEL	0x71044
> -#define _PIPEB_FRMCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
> +#define _PIPEB_FRMCOUNT_G4X(dev_priv)	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define _PIPEB_FLIPCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)
>  
>  
> -- 
> 2.39.2
> 
