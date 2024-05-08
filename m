Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE278BFD90
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 14:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59E51122DB;
	Wed,  8 May 2024 12:46:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvR/jPb1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DFA1128A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 12:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715172406; x=1746708406;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hz/T8UdMwfbnV7I2s2HTZHd3ZauPo4dxXMHUxKfWiyI=;
 b=HvR/jPb19L33hlCMecE8CHaP5lKFngW33RnJsWIA7nCFxo7PClmlC1Qc
 4B1mrUls9TejpHU/OTATWh6zYm64YVcHY8CR2/gVdm1rCw/xZY3AGghkh
 P7dmnCVV86NEYXd6+l8ISfOt6BRmRBEQY8mD5PabHucatYR2LICNQI0AK
 cBRtTCTpgoISPTNE4CzLL+74ViNdujdOPhCI5iMuCvyb9YN09oS9Nf9cx
 RCWallJL2BRAPugo55/wuMOq13kQTtPJHdaVkwgAX3GSFG5WM581D6dVt
 cv6SxoLD4JMDWWaB4pYBQxBjg3rXl4hKEjQQSFUSjnNp80IPtedPnZcbH g==;
X-CSE-ConnectionGUID: uHhoXirlTkK293hHfPGoYw==
X-CSE-MsgGUID: 2HiiNvMCTHCDTBrbyxorQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="11152572"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11152572"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 05:46:45 -0700
X-CSE-ConnectionGUID: tdHMuGu/T7KKYWJdU/uHfA==
X-CSE-MsgGUID: WhTc+zylRFincogouMftfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28849356"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 05:46:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 05:46:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 05:46:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 05:46:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 05:46:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dZuDzZZKy3p+E+KWJCI03ymqNQvZv61X2nBdOD/khe9LB0VlsIICaKaMP6/bcnfUWyMcE9WkdjMbSSRKx4Ogl/ztrg/z0du2Xv0I73+3evBeUo7ijzMzCDI9d5aBsKMhArKVFmNp+nnwlaH/XbsFTnaoDRsktVQq2jzIdExFRhoNXGJ84T1zgyIBjA1+Slw7Nh7dttzIGi6hyJP03euPGa7DYSa+gdlzMH0v1+8x99jI3z0xkKOsgWru04GQI7uyb7RXfAopADjATkN3QI112tBGhKtTEnX4Yrc9O95v9pqjBCmqf//evMF479Gh3qsWWNoC3QnKVyKXOLc/sc4FOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vG/V/BRDqthiZ6iA+rXF6xfs6tEmEJJHg/JyyUBz9DE=;
 b=g7DplrMCEfuZW8iVuRFHaejT0TMeUaL+/QqYMi2vM0MNidvTMUBIIiBmK1RxK3koe++JFaU2iGUM/rNeYWP54f+egvuqe0sESeFs9v1JTdmk/MT1CaFFHf6u9oGkq2TyDLcNmhZe7xoBIeuDv8ppJhALfCHGD8xcqIl5wssuJrhVwJDmWdzntBwmqQPOI0EzRj5KjoA5v+QiHwqAj76yZhTlGRwOesHkFmtFF1FieMr4vQH1B3QwI+GXOOSZzIfqn4PF2raClHQlT2W93VJUSp9SSv7ZZFd32dfNjQOGMcscUXc24yBuxuyFwqK3HMT41ikk1wqvA+ramjaJKAxB+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8363.namprd11.prod.outlook.com (2603:10b6:610:177::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 12:46:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 12:46:25 +0000
Date: Wed, 8 May 2024 08:46:21 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <lucas.demarchi@intel.com>
Subject: Re: [PATCH 3/5] drm/i915: separate RPL-U from RPL-P
Message-ID: <Zjt0HZW9hwfRZ87m@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
 <b598eef5a8de6ed1936b04b002a8db786741cf5b.1715086509.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b598eef5a8de6ed1936b04b002a8db786741cf5b.1715086509.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0100.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::41) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8363:EE_
X-MS-Office365-Filtering-Correlation-Id: 3786a0bd-e62c-4c6f-bd4f-08dc6f5cdeee
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/UqkBdq+5IRPqxqRIprx/RUrnnbizDToDbHJ77GXE91BT2Z8g18jestdbJzN?=
 =?us-ascii?Q?KfPAnjHNTXqT0tlCo5EHGrqMveAgn1mgVqOR24tB7+Gui2RF0Qz4+jVhGIOR?=
 =?us-ascii?Q?tXv2E0/e+XWp5lh5LtacoT+xIam5KnN56o/PscjSOw7M3np599D/94WLl6FQ?=
 =?us-ascii?Q?+aJK/mswpSPouCmfxZFz2KrnOpQEPvvbWSD2vmRbdN6tt+pCkQlR/CH+dhba?=
 =?us-ascii?Q?9M4D7kKO/Wrmwgg9uOSeKUKXRE5od9u8thBN69QW36mAxem1OjWfD6ROfpNs?=
 =?us-ascii?Q?sGMZKtuspdNiTjAH81AXT8+c0AQmB1cLb0qreIK/gtRoQSKC8W9s7hpDMqnt?=
 =?us-ascii?Q?KoJtwjcvIfF1YYcXZgyXZ1qvpFkSbMJhLX8ROYbqZ28wCF2dDcf+c1I1siLc?=
 =?us-ascii?Q?W6ahzfTNBZtsmsYEEvEdqBHhMv1fZROhlIi7mpj9YfxOkgbRdr0TFe18nktr?=
 =?us-ascii?Q?Ivfqt2fwbEBqXgJpWnpIuYS5DfjvzUEMGIXulCD6EuTIRMjke2IMQAqWhhoC?=
 =?us-ascii?Q?aDzyxBr9s9SbphOfrFIqhHeDWdtDJoaBZkWYm7UaCPG6E8svy+vaoSDc7uzI?=
 =?us-ascii?Q?xNuD+mpbbwjTA0jIR5cSbb7uEpbzJafNqdcesaJuP8+aI9u2luXXUCbrv3+A?=
 =?us-ascii?Q?Mh5cHYwKbt6pxkFNnvdX7yR2jWRzYH7TWvFVurg3TIBF/hbri8PGVh7yqLRU?=
 =?us-ascii?Q?PZYQrxv2QgdhuhV+nKn9Ri5iI3BWX1qPkkPqL05M/afOX0tXHNbkoN8fYwI6?=
 =?us-ascii?Q?ArSo6zKstLjONcjmeSxFov69MOxKtlXqN8Dw4swfk5eD09Zf/Q+p0mXBA5ie?=
 =?us-ascii?Q?gVIDnOQ2Ar7jPepv8hgyI7YVrlVQLCiSTwO61OaRgMhoYccfNYGDz8Vn2d/b?=
 =?us-ascii?Q?W3WGVdGb9FmCVqD7VN2dm8yLdnbe2yKYlK78Ygg/bia469jAtYmT7TOQMlGO?=
 =?us-ascii?Q?9gbEG6pxqulgqSGYTS17xswGo4Tba+CBkJP2/9OzZGbKZQ+Jd7l8ZPUz4Fos?=
 =?us-ascii?Q?6ZfVcZ8OdTmowVaIeiwSvWdIljlC8X7uE4xh40Z0QNS+phre6ScZtJewTxT4?=
 =?us-ascii?Q?Hxx1fxuhKzX2wSKpXHI/SJhhKBGs/l96V9GEunlHWglbGeBxFXw203ugvDXj?=
 =?us-ascii?Q?I3MFI1yLsbu2b7tyf5wAJDqxDKLYiov2h2EYMKa1licRmeEomRp2Eemxrqky?=
 =?us-ascii?Q?fsLS2QO2cpdhW94tuwhqZPP45Dsbvk67D7eBJ8Uy6nvhiBdYI0ZHZy4kQedB?=
 =?us-ascii?Q?q4nT8dAhqQJrIY5yhpH4kQ+DPP2wDAVwCMGT3Uu9Gg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BS2PNoLJ6oc89+KI/Fi9BAxiYXss/cbsgQJKzXrAQPQJZP/eTFkN1WzzLtUo?=
 =?us-ascii?Q?WJXyFBjO4JvEMSVZvUU5miwGoA9ckiLGSYA7d6y5v8qAeAL3dv2Qv56qMN97?=
 =?us-ascii?Q?s/5MtU0zwqpw2LpIACvSvg5A5Cm9E766Q+/NjHSzC2GvTpJqzpDQLSiziZGI?=
 =?us-ascii?Q?ndI5h0Y/2muiRaNBpmp35DpLcNKU3hDmUKsf+hDibJSMCr4OpvFjp3FsR208?=
 =?us-ascii?Q?P6d9fOtapCy9uUNX3avlmR8YzzOnTbMMjqSDsr7POmQWbeYQcJZOiorrAY2i?=
 =?us-ascii?Q?Fqk2Qt8XsmVzdzxmQd8zv/5vaGTf6EDc44IsNe9HBJ1ZPkJX5ABD0tD63SU9?=
 =?us-ascii?Q?Umi16pVzC+faSMC4NxhP7ZbpTrgTw9cKWXjqZe5CjF6M5gJesWYNdcbLD+5+?=
 =?us-ascii?Q?/lVH+IyrFp8weTSX4IWvTu/gwSTc3FX9fPnOtJhYCytAmM7MtKWceioCD1Gu?=
 =?us-ascii?Q?HM3kR1O4BS5wqgDCkja7ls18yQNSGr63Kgs4U7tE4iAPqKRFTm7opoa14D5P?=
 =?us-ascii?Q?s1qSpK9sf0aqzPtYzdhATFz356aftoZuc43LXaQH/80Ykx1NQVBeFsTdszWr?=
 =?us-ascii?Q?Kgju71ubVNcIXTeNiIbKJUYcEAzeyolXer1RMCgw0jfsb8jsyF30R/yrsa7f?=
 =?us-ascii?Q?9nXqc2RsyUGqtuIxLFL8q/ip24Ysy9oTLFJU4j8p1/aBLyI8HWykk0lI3/+N?=
 =?us-ascii?Q?qMEfX88xLj2Ttz83XzK5J3I3C5/qHPZi6YEos/mGJyicvOg2H3nQj1y77SXd?=
 =?us-ascii?Q?ZrkFqN2KaSR2ebokbt5Zv7CH3M63Ug3PMLQgmT4U6E5qFg5dmqDxAnvKtpz9?=
 =?us-ascii?Q?+SrN4YIsV/ZjrIQVYPiQsRFm6/D6TpnMvxBiojFEil6tn3itigu3XKEm/IGN?=
 =?us-ascii?Q?uwlRYDinR2pzyCTeCfph1ZB293iZT8fE9xqfbrlLx8819rVjR0X2mywtb+Pu?=
 =?us-ascii?Q?aNSQUCVb2UpCaveyHrRcay8tYuBU6EfVPamH0xgcOs2aC6Dd4JEGw8F5+i5o?=
 =?us-ascii?Q?3nY9lHSVZDmOOKZxo8IdrchXaBK5d7XdFtUDdMKvOrXJGgi9xYf1k2dkz+D2?=
 =?us-ascii?Q?X3X7/6fNzFpXDsk8cntiOnfibD713N0aJULeHH97YybI3IunGBvqzTu6p3J3?=
 =?us-ascii?Q?FShZcMaP/dr8Pozj0TbPZukJRKhWh6p9sysexAjvEBSHXUFC7y1QLud4fyXM?=
 =?us-ascii?Q?45eJ0OVv5e3reJuMSVCDCp65IkKbufYyyNIcYOA7BYPInSTE/3/hUVJ3OKb/?=
 =?us-ascii?Q?QUT5vs3oWBNSy4Uo0TIStOiPYAbxFZpHKeoJO4sTt5eSpo0fXeUN9BXptIOz?=
 =?us-ascii?Q?kt0btXZErJhFbnrflLba3UTpF9GG5aS3RtRE0wLTF2Iq746sLvlBsni0K6sZ?=
 =?us-ascii?Q?IKdziNHmfHlGaTbBSCDRp1DNLtZGe8yvIbO1U2zS662EZTkLw1a0t7vZ5NNp?=
 =?us-ascii?Q?AbjplbnQHjsrYj5ftiEC7uNfLumVghgRW9XzeQvVMK/5GePl4Rxsf2cDrSJe?=
 =?us-ascii?Q?BECXfqAQJCV3KsmsYIXPqJenDUc7eV/c8Q2snKaGEDH0oJl7ifh7ulxvwRZ2?=
 =?us-ascii?Q?w8ivlnp0JA68B9BaSVNi/MEmaG0QrOaNUYpewD0hoZVIFN/FOOL7Kz5nquOD?=
 =?us-ascii?Q?fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3786a0bd-e62c-4c6f-bd4f-08dc6f5cdeee
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 12:46:24.9828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h59hdJqpjJOGx5Rqo0RjxEQqZddhoa8VzmoS/tB16LQrSzOl1lMNQJwADxoVgxUF491KEeEWrbBN+10QOSUGCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8363
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

On Tue, May 07, 2024 at 03:56:50PM +0300, Jani Nikula wrote:
> RPL-S is a subplatform of ADL-S and RPL-P is a subplatform of
> ADL-P. It's a bit much that RPL-P also matches RPL-U. Separate RPL-U
> from RPL-P, and make RPL-U a standalone subplatform of ADL-P.

Now I confess I got lost. And I cannot remember the actual derivation
of these SKUs, besides that it is a complicated beast.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 7 +++----
>  drivers/gpu/drm/i915/intel_step.c        | 2 +-
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index b119923f8be2..27b4a5882be3 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -182,7 +182,6 @@ static const u16 subplatform_n_ids[] = {
>  
>  static const u16 subplatform_rpl_ids[] = {
>  	INTEL_RPLS_IDS(0),
> -	INTEL_RPLU_IDS(0),
>  	INTEL_RPLP_IDS(0),
>  };
>  
> @@ -249,9 +248,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_rpl_ids,
>  			      ARRAY_SIZE(subplatform_rpl_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> -		if (find_devid(devid, subplatform_rplu_ids,
> -			       ARRAY_SIZE(subplatform_rplu_ids)))
> -			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
> +	} else if (find_devid(devid, subplatform_rplu_ids,
> +			      ARRAY_SIZE(subplatform_rplu_ids))) {
> +		mask |= BIT(INTEL_SUBPLATFORM_RPLU);
>  	} else if (find_devid(devid, subplatform_g10_ids,
>  			      ARRAY_SIZE(subplatform_g10_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G10);
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index a5adfb5d8fd2..cf27e118ab08 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -181,7 +181,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ALDERLAKE_P_N(i915)) {
>  		revids = adlp_n_revids;
>  		size = ARRAY_SIZE(adlp_n_revids);
> -	} else if (IS_RAPTORLAKE_P(i915)) {
> +	} else if (IS_RAPTORLAKE_P(i915) || IS_RAPTORLAKE_U(i915)) {
>  		revids = adlp_rplp_revids;
>  		size = ARRAY_SIZE(adlp_rplp_revids);
>  	} else if (IS_ALDERLAKE_P(i915)) {
> -- 
> 2.39.2
> 
