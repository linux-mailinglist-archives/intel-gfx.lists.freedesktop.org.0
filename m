Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9E9ABF973
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 17:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E7E10E806;
	Wed, 21 May 2025 15:34:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RfvEjoc7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB4488DE5;
 Wed, 21 May 2025 15:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747841664; x=1779377664;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OpVEGhi3kdPKZ+Xc8iPuyDnZdM5dUa3zYE9RcF7cxoQ=;
 b=RfvEjoc7jNqQPjZPCC+IsSbgqfjecJxb7LIftaDHLtbSCV3LbzoRWBns
 5rTN9YUSGQmIvhC/HN8sUlRdaW3j6EEb9wP/0dDJfNIlY7Q8EbJebxPbt
 kL9yoMRVCj980zz9/2vKqh9moT5/lAV4G3gVR7oYXiLRkRH9K+MInhsRI
 RdlPKdSxxgOPIMgRQrogFfqi/JEJzRtXLswX2E39ZHab9Vm2B2EJDhZy1
 yU37SRzxY8SCNRv7xmyibNct6kOYGB8Wrbmo3p9qTvexoCYM4fJLeXpsS
 Q1/90RXo4cUFPDqHNKRneSRSqA7dc6RA9RpK3iYt75XZDLsSwKVBJ3jVD A==;
X-CSE-ConnectionGUID: DIs/vodkQmaecUVwjd90xA==
X-CSE-MsgGUID: OQexF69qQhehl+OsKSuq6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="61232742"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="61232742"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 08:34:24 -0700
X-CSE-ConnectionGUID: 5ijk4YDrQ6Cc0QVuWfnooQ==
X-CSE-MsgGUID: /aKG2HPeSFSziaWursKYJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="140025250"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 08:34:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 08:34:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 08:34:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 08:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C82EgTczjA+kr07wRcVTyrHqFf9Vnv6siE7vRWugfV7PmKesSuq90D0g+db606gcs8XdnO4uh3PuZihkpqAC989+c2VWdStWDSYVBdfFBnIQCkLm+dvfe14S+Vy9oX2T7aov7J9TjVAYDv4FAIYOHSv/pi3yX20EmAXPJ9/e9+9550/JUfsP2GP+lKoeUyRDTRz//JlZ8eEKPAZkvtT0CMo+hVfDU6kL0oW1171VTht6mVTcpRodAGnmms+sIbwEKKRzmJe8vntXa0QYWnbohafmlvhrG+IA+zPFO0IjjFJwJ8+hvLr+eceMBeTbl3wbma91U4uiYdJ7yUpgBxlblA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SuA21MXhhlselc2Q9Q+0cDQpRIgUku34DHMQs4preew=;
 b=hMqWZDdy1crSXsWnkOpsdT2INMqCDaOXdyn8uMBYAEA3jbwTmswwRJi5lSGQKVXf9gd6C3vHxHcDQLRtbL2o9i2sOnE0fpOL2OzTIvyfuGeRsfTtxOcU3oIo3COwsJRC0venzkH/IpNQ5C5kF3FY8ibeEs3DlMwEqTszycdKE6BgwUf7WUWKrGy/2GDMtmwt/SKFQcepgJtH/RTkRVDF8oTI+XMxQf8IqWo3SaTPP0eYYI1zTQuKZX/bQZB4eDiouVOqRozbXOYtr4AQqhE+9dursbgAUz5o9fCdR/JKJkzbNgFQh5u8uAMABeucWLcn3KDXMgqEQzinQwIZ76YNgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4668.namprd11.prod.outlook.com (2603:10b6:303:54::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 15:33:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8746.029; Wed, 21 May 2025
 15:33:58 +0000
Date: Wed, 21 May 2025 10:33:52 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: allocate struct intel_display
 dynamically
Message-ID: <v56ijsr6ofmsh2xfflhhvtetpcp2axkl7swf7ipckudfdblc43@4i7ab5fsew5i>
References: <cover.1747822630.git.jani.nikula@intel.com>
 <8828decba861006fdb10171c5e83c6d898ce0a52.1747822630.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <8828decba861006fdb10171c5e83c6d898ce0a52.1747822630.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0043.namprd05.prod.outlook.com
 (2603:10b6:a03:74::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4668:EE_
X-MS-Office365-Filtering-Correlation-Id: 77beeb5b-a79d-423e-a91c-08dd987ce7b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MjYamubpBid285tuGtHNUYP4Q0dq4xdwIe/Y3gyQTx8NFS7w58MDvNjTE39n?=
 =?us-ascii?Q?fvBWPQu4pXUigXiC/qTEio/N6FOOamDVSU2e1EvWfcm+Oc/6AQ7IXHhGTmTY?=
 =?us-ascii?Q?djMl+p1Nf38UvghXUnh5avFsqLYtshBS7Ux2xY7ncns3EV+qIgHtewYiLHqj?=
 =?us-ascii?Q?1l5il+buxADyTqfuj5X/4cT/FmRLt6/Pycx6PZSdCqkrEwUhnzRy7J2LgfaL?=
 =?us-ascii?Q?tT/VVitPqt7o53BQ/WtYhW+GZIDLkf8FHih/MnJzKluec8U7mdLkvosHFE0m?=
 =?us-ascii?Q?CscYhaOoWGyH1rMpqqAhRAoHSdg21CuM9iTcuhXZSAK4uy0Ud5unO9IpvZSC?=
 =?us-ascii?Q?G5DbbkXoJiFSOYULDJVyuwCbV91j5jniUWztRnYaU0wvSBrKGbbVlCS4PUMS?=
 =?us-ascii?Q?iTFLgJvB9x368JUVcEJQImqpBtr9B5tuy+X47XXqFxWIwWjyyRM9v9pNcgcP?=
 =?us-ascii?Q?6Tpo7E2AT0OZNBFhxw2fzPcKT88ADu2QOS1O8wEFcjrPkyQ7jwZ60BdH/lOn?=
 =?us-ascii?Q?kShPilxDVqKZnpmAa/mNPGnm2V8bQEqmwTsJmmWYr8goesVIbK8fcWJKHpg6?=
 =?us-ascii?Q?EK195ObiAT/TOLL1QIxdCXlCAx/rXSdzvrM+yxHyypMNDbNuOlBTJaDQlTst?=
 =?us-ascii?Q?Ka9R+FU8bVXfmuRpUreFfa+ge/KVZmjAvwu0l0kSVUUYOIi8fefBOfzh5ROB?=
 =?us-ascii?Q?3rkhHKK/xVRrHk5nv2B1tIxG+Rt4CdFop2/QSMq/tcPNwWtTekITDYOzKPaW?=
 =?us-ascii?Q?939ACfmbgYeICGIdpCzDTFYRpeadEq4XlrORxO93IoxCXjhkybAUo86w7rlw?=
 =?us-ascii?Q?/xofOyf5Iadhtfh4wbahmKqtXie6bYk0ubjEzlGNBoRKAAI4lpRRnKuccZ4s?=
 =?us-ascii?Q?8DMtVEHWxiBDMb0/tj5q6JgjCPBnWCU9y8i3T4xVb0v5fI6bogyaIQkccMBE?=
 =?us-ascii?Q?IYYKj3uNhGC6RXZIWqlQMYE1Q8kIAfish0lPYEvobcqhlrh9Xhq/ghgtmVST?=
 =?us-ascii?Q?51ybb9KPZqVMCml1BjRvBgZSOpV0APg8dvbKH2QF0KWJbZU/Y926t8WCSUUt?=
 =?us-ascii?Q?gpXiCoB4OV3Q6i3zyQGOlHBO+TunGfV3IIB8EwPfnICdZZprGhxSla/hD1m4?=
 =?us-ascii?Q?Q7pHvnUuyV0u64s8esuKO34w6HTpFZbG1kI7WG2i9rP0pptwhIaynO/yhKZv?=
 =?us-ascii?Q?r+pHwJC2HiR1UQyz8V9+VyowVrs3RnYMF6I88VLa/bCwwXJXhYebZxOaFmlC?=
 =?us-ascii?Q?xW7ENK95p2BS7IqICERnSdzFjyqt4zVdu5h/Uh/9rCeb00BYip2RnNvDuyAb?=
 =?us-ascii?Q?129PIk7/ZXHYcTytbOwTnMjZm+ueeiOWabpNuiGz7Xa4/9o7rUKKDZEaqPis?=
 =?us-ascii?Q?Jpv9BqZttzbK2Yx6VGdCJUouRMKjVNg5j+CieP/9NKfS/OMBpWVVFIvQjZdE?=
 =?us-ascii?Q?Xg4+bUgFME4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wD9gnUpyYJU5FzZS5mxjbO5aJ9HSr/rA4JF0VX4ahmX0RAg+wousF6AtfCwQ?=
 =?us-ascii?Q?GgmDthUznDdi3vV8XgKU8IpeCovsH0WHPY35GxXr0U1rLYctbtsGAHAHl+jX?=
 =?us-ascii?Q?YL6UHE6SHB8U6JqRcRXj3gIY7tQb9MVx83H2CmyjGjoGUORQahIHm0RaaSTB?=
 =?us-ascii?Q?kr2G0hox52YqDPTno1ApGMT3dbHAh6p4pHbmoS8boWtXECXYdxDRKdlJFgxg?=
 =?us-ascii?Q?8YFj742gsKzXOCX8G1iRfticJ2h07+axd3vKEkdYIS2KOIIsHDAG0N3gXtNz?=
 =?us-ascii?Q?HSPAUyopMrRFhv5lm1k9urMKYr+7SjKF6XgZQqbvM7kU0MNzmfnPG5XQUsqo?=
 =?us-ascii?Q?+vzA5vbRZ415+g/GkJgG3ur7/uK+K+SebiDcLDZsEEVWr60ky1KigT9m9HxR?=
 =?us-ascii?Q?FFqPAzVH+3MkPbvkCAdjLtHFeAZClAjqvkWecUN6zxXJfnvM2fNQsoVai13/?=
 =?us-ascii?Q?wLHummlSH7guomkcuk9XV/vn/eRpwPAWRSLpVHwXpHAmfFi+GUW7pO3Nm4db?=
 =?us-ascii?Q?34xj1Do5Z3/DnqZmBnb+l0J2LH2FSoEz9gw+UUDmEK0RliQ0KWTxlx3Fu26C?=
 =?us-ascii?Q?F3Z1lqRzMTTpXPBvU8U51ApXJLfc/s0BSQLpmSEnJmdiAMxXqjucB9/N/KlX?=
 =?us-ascii?Q?Ts2DAIAB4t6UJhdVvfRokmFLAuH19VnFxqjn7VZXfdUM1k6wsIOdr0/y9eMo?=
 =?us-ascii?Q?VeQcmY4r945v981T10kpi8ODWG2SUFd6Jjvof4hIxIC3fY33B8qXaN+djMR4?=
 =?us-ascii?Q?pful+hqMlNuLClpq+5Bp9ypwhPn87jqsUK+V/AaxCPl8yiDsxEaX0REwmIyF?=
 =?us-ascii?Q?ModuV10YIqHt+skkMmvBVlZ9+5b/bdj1pu0y3SOOqZufONksdweXxNAjdj5D?=
 =?us-ascii?Q?D6J4wa3m5nhaEvzh8GHgjwNjXvUs1iASPpq1xVLsyX4doxZ4oJOy0QHivrcB?=
 =?us-ascii?Q?2j9u8JGumDCtgxGkPabTUzkDLLL2YD9dV0VWTsBN263izo2fAvZEomaaTHXv?=
 =?us-ascii?Q?r39K89kH7/1KGrzL/SBGtL1ViqMeaH5eS7Hnb87+jIC8eTDJ5/p1PfTS2Cu+?=
 =?us-ascii?Q?lK56tFjNL7tHy1ugEnjtHbpEDCa2/SUpnn7xQZKm1VPIhGhUcKI93HzGzyOw?=
 =?us-ascii?Q?QZm4guNp0EVKuJjGoYDWAbZWI2dy1aHOpCVI87zxm0u86Zc2KLjcRaBewx7Q?=
 =?us-ascii?Q?Tq71mr7+HW0IxYuu8wqE5Sh9FIpqUEGrwDG8PGfLYcR8vHD+gPGmWEYGCI8x?=
 =?us-ascii?Q?kCusLNkokVEWOQ0M/aSYMtWOMyFxGVIxJ+vpru/gXcYLLXDzxmxNFdnUXXOJ?=
 =?us-ascii?Q?5jUIkK6nukvLGAxMkeZHk2HoSGuRG2/LkbIpPpRgotOqZFInUCwxSkJ5+Wcf?=
 =?us-ascii?Q?gVdSgJDXn2f7EuKjCj2ADQxSw62eZb4QY4hYF7Xwn7HuNy3dPcqJmsRJiiPa?=
 =?us-ascii?Q?EZqC1xH51YMKpnZHe9Xmz1hQsInqASc4cotejIqrvYGEadnkJvZgBKlI4mxi?=
 =?us-ascii?Q?X0zOvil3EIv8nQbywX56nJi5uUsV5+y7+rQgudq5XIfMiouCHyJalkwy9XWJ?=
 =?us-ascii?Q?0jzdi0jUf1LAhKqXcUdrPFzg1J96WdnwiQdo3K2gdHpLOsqnnf+wun9FeIau?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77beeb5b-a79d-423e-a91c-08dd987ce7b7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 15:33:58.8751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nE/rfverM7B8n+0PXsWnCtQxJyhVDv+D6zHknFXlFwwFyGEqtS+2FWzxksWZhk95z3+JhZi8FcKFzDUec1kmtIkI6bfacnPFFCgwbfcYOUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4668
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

On Wed, May 21, 2025 at 01:21:46PM +0300, Jani Nikula wrote:
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index 1e59b6dd2c3b..e3e5d41db29d 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -529,14 +529,17 @@ int xe_display_probe(struct xe_device *xe)
> 	if (!xe->info.probe_display)
> 		goto no_display;
>
>-	/* TODO: Allocate display dynamically. */
>-	xe->display = &xe->__display;
>-
> 	display = intel_display_device_probe(pdev);
>+	if (IS_ERR(display))
>+		return PTR_ERR(display);
>
> 	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
>-	if (err)
>+	if (err) {
>+		intel_display_device_remove(display);

_or_reset() means that if there's a failure adding the action it will
call the cb, so intel_display_device_remove() was already
called at this point. Just return err.

Other than that, lgtm.  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
