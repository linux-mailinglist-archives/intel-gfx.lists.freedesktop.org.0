Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFB19632BD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4139E10E5BB;
	Wed, 28 Aug 2024 20:48:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJ70G7Oa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197A810E5BB;
 Wed, 28 Aug 2024 20:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878129; x=1756414129;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mo2lM2B4wSBQa+QQjLjxODu54I55arepjBZpreJkBZQ=;
 b=hJ70G7OaoGfhNm9xpiDxQRa6L2tybeGBa1w9LfzyKDNKcMVNXXla9bYV
 SZdCxcmO8CV2Q1/Qj+EgEcu73WeTyUDIcTdOOMfYEAJpZQdP1C9FmT9V6
 7dvhH9xSeVyC7UF8Ny/s9DvVBA3o9yu3jZuefGYq6a2hPZRv5eaDVkrDV
 /X9/r8jm08KZN0Ya04pupsyPZpBgphQhbLoDE6v0rKEpp1/bU0dlM48ss
 /I115vA6tOv8/AzsxXzTHNVVXDK/1olzrUZMuKIsvtovwozmYCl9LkGQ1
 YbRRdkTQH+Wh+fODQuT9R+eApb9GtxTW3EhTVJutiJJCZrVB9twlvqkg1 Q==;
X-CSE-ConnectionGUID: EzPB4Sc5RMu5rEl1ltCxIw==
X-CSE-MsgGUID: kZk2zIQmSnSbhiQ7Yqjt3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34009863"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34009863"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:48:49 -0700
X-CSE-ConnectionGUID: EEgJzt3ERbqt60iytwcH9A==
X-CSE-MsgGUID: 5idlQkZ8Rdq/Rsl2hOcYuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="68023468"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:48:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:48:48 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:48:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:48:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:48:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yGumAeL2TwbZvvQkQP+TaweeYd8XcrV6j005odX3KiWJ3XxI+Y7clSWbOIy4oFobexCoRTrhhLy5eJDbU0bF4TC7QPgVA7pu0MM0jV5AMZKCGEaPDHF+LTFKS2jNf7S7nMfclKW22uT9LUQjpFv9A8WwZMLIhkuMyTpDFdhG30VxvDduW2Aufmewandt/xxpdJyXGmoYbJUVnvRNPbUAyF8M6uA1Gnz9qwGw8Cr52D+b2OnZXI3+LBgHHqzcgPdBi+a9b2jog5jfG2HaLInLPDbKP/Jg4sZuSpHCBKfYUqQqGECRkSe0CH4XSopYYF+VRn36dGMLi1zJN7ACICUhaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJNmCko59efeai83L8akuNKzC4QMolOTc0s/I47UUyM=;
 b=V+wskt/+etVBO0j9kokHw2/GymdprhKsFO66NRjeBnrkWrBYcZenLkMrs+K1J1UXWEEwpd7nDLsf8kvNvBzGgHFfiD81UAte915kDLJEb3h0JVK8CcVE1W4GOzPikz+Fuo2pNpI3inS3+EHklVnEKFNFokAKZ2ehBYzZt/FSuvSGbXZgmR0pHv5ozDD0svF5WfO/hxPvUGq+YOFR3LoX0sZnJ9c07mYcbtIG4TswZOJjmu/Vyp+X8anCUpV6K/J8RCoo9Ch1Ka5i2R1wlupP8XBzPIDeif5pEvmfArG/VLvGbMFIGr2d10dpwZDhkm7JhbyfLeg9fJj2ynAIQR8tbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7416.namprd11.prod.outlook.com (2603:10b6:806:316::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 20:48:45 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:48:45 +0000
Date: Wed, 28 Aug 2024 16:48:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/display: add platforms "is" member to struct
 intel_display
Message-ID: <Zs-NKRXpZhD5yNnk@intel.com>
References: <7219e172b99401458ef6783c67b0b47115c6e772.1724092799.git.jani.nikula@intel.com>
 <20240819184840.1264011-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240819184840.1264011-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0340.namprd03.prod.outlook.com
 (2603:10b6:303:dc::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7416:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d7c3110-3e91-4e80-3044-08dcc7a2ceed
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XlVeo5A95ukBC5sp4JS0MMA+6rDEvev4fx/scIDySMqWFfKPBOABEd3P7tZS?=
 =?us-ascii?Q?6q/8+2PlJRU3XW3rdIRtllA75AvsxQl9VQ3nmIuls7uBm0zN5lZSBOrBpid7?=
 =?us-ascii?Q?MxRmh8VmN13Se6YLNWuBJNsbaB1OHA+P32KBPBVIYrA5SJcT/3hEQXNktTre?=
 =?us-ascii?Q?Q7LXjYos76FQrfPc1I0xWQz++hQRwNG0b032UCdjFiNZXsGDjpGeO1vIReet?=
 =?us-ascii?Q?QstUQHt3QpNt+LaGgcjb9PBI2pNEFf4SzhT8eIzZSxDnNyZybw+kPIN2AcCF?=
 =?us-ascii?Q?AAyNbwjzGN6+xf4+pLsvzwbHG0V6yg1MYH5tVTTDJPsr6coCl4p9bx01zijd?=
 =?us-ascii?Q?Ej+11tsqtnTPw5kxQ5Kjw+cbLn0wrFKIK/1fJLCte6W1oP4RcjXkG/QqE41i?=
 =?us-ascii?Q?CSmUBTvBEJmKYxT/wvOcP9U9l8H67umf9MRpsZPJs6984DEExoF2CN49qdT+?=
 =?us-ascii?Q?aAZEY2CAHCPZDounFoVa+r11DyNn/wdxwyTK8tUTOhcZ7oCS/ShFaba67pXp?=
 =?us-ascii?Q?mtzRCrrgpLpslCeAZris5c5hKtDlA+DQKme+L/NfQPmcTsa41r0PQx7MQ+lt?=
 =?us-ascii?Q?2WqywxDpgHCdYBhWnU8TxO2Bf+9jbFbmpl9Iosi/YIM8qDAn5qeX1k02OBXN?=
 =?us-ascii?Q?2I0ExQukn8W1nvE+my84OzoOPJTYkvZbp3c5s/U+Q/IerspunniQkVpYFWMF?=
 =?us-ascii?Q?K5DFqmVGk6F6WOgYh88guqn9UEMzpccK0FwA2migRgtcZb7L4Rb+pyllMaJ7?=
 =?us-ascii?Q?k+I7+miQMz4Q587uAMpNF+nO96T8AqqqioiCYaeUvMUoDPzhxzn/GGkfOcMA?=
 =?us-ascii?Q?f+ntHvH+sSNrClZU8bB1gShkj7McUeoSp6yXwO/a5iodimB7nS1BeFAFGUbA?=
 =?us-ascii?Q?ePHt1SaDWifc50zxlghecCIibQ4ZR6SpnquRXzSa2qsr6A1jIYDoCSx/0TNB?=
 =?us-ascii?Q?A7k4Xzsf/Eq/AOBcYMFGtCOkmcLPjHbvzjqOMb9pk8SDCS4EKBkipgKpNdTW?=
 =?us-ascii?Q?fn0nb2zHUg08Fmgiicu7gQSct424Uq379Op8pMX8yKR38Psq3h+twOxb3hFq?=
 =?us-ascii?Q?S/DYR1Sm1uGxD5b4r9e02wmfivP4TeJCgC1smgNtU7an2FbEeXlD+9OIcR/r?=
 =?us-ascii?Q?a4NEmxpv/rzR53C/VC8IGK3J1acUTb+wdsGUbxOg2CuASr3znBd6Nqm6WcYy?=
 =?us-ascii?Q?fh22O/ceEN0gZibQ7i8dTK5Qwj2Dl+j+qM+Lb7iMwPYcAlCYIHiv4oG9c8fE?=
 =?us-ascii?Q?SpPjiKvdzNNG3O1y/AgDiFvlUjHnUI49oRUBbdVc8F+Lz8bIHSetHIbVaF8L?=
 =?us-ascii?Q?knAI018mC6TVKXCA4KDhCMMV3OzSKBjkulq0VMHsfvwKrg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?az2Ds7vdwUOizLiBdVwYE+tjtvL/jyRivcai1dVfLcPqDcZyWzU4RziCcdBa?=
 =?us-ascii?Q?cqM4n4RAXJBkjlyFryqugWQ10L2T+J5PB1VgE4lpI/n5v+9GoO/XSBS2WzOb?=
 =?us-ascii?Q?CPJWw7tILlBJ5cADku8dAEJ0OqvBFwRrU6tMxC672ewnM+0ppOw3jrMTlPux?=
 =?us-ascii?Q?pfICI4VJd9Or27RdqNKhGKseKG5q1KtM7dmELZhk1OR23EY/QxGRtaKzCMIR?=
 =?us-ascii?Q?DNkrsgtTZavLhsySdgptsz5eU9lw34e2Zn329pOkFVCxBVhynvbfvwSBYUax?=
 =?us-ascii?Q?l0A9cdZv9pDDErlhycAJiG3T98EvKKpIdQnGNhqCP0Cb6s1rqapthkSKX0M7?=
 =?us-ascii?Q?dY83L9LDCq/nNWzVemoLSFaySssJzZdcYOpoyPH5HjnJ1Cd/Hwxs416yjgs+?=
 =?us-ascii?Q?yWdlfI4BYOcORomyh6gBrH6AVLDM4RBCsq7zorKy8wfJWNONGRkf/A8jaOLC?=
 =?us-ascii?Q?YdtT0l5M6fJai9kPw3+1xGOBFfaBOD2y4rYQYYNYhGw5JEQ2jUQjboiRgGTj?=
 =?us-ascii?Q?EMvHRXbSKxOk356giZnUHVhdNt9M2DT4YOnxMFNphbvAmEhr7k/m0vETmyNp?=
 =?us-ascii?Q?3iwT/6WPyyDAOLv/1aY4sckF46uBbNtMdpIYFfnqc+Z8HYBcd5oqnAu6xWUh?=
 =?us-ascii?Q?0B/nl9eEXU2zHRZxOFgHZ+wuXG9dMh9MNUpqurW4GRxeYSIRbz0uFJoYWiUt?=
 =?us-ascii?Q?UhrUl8XmKrixIYvcb0LCwVbKDmtsoyLgQ3tM1IGPVkVV0BQS176ZmaOt2abX?=
 =?us-ascii?Q?7w9PtSPv2uySMflvqKDKbINnfXlKcQunXvX6YZ2+rh6dRABu5/IFBJeDjKt7?=
 =?us-ascii?Q?IyhqXxBxF7ORJr/SDzaBbtSn/zGxGEurO3/96p4j4SWhc+W5PX+BxYeqgLTG?=
 =?us-ascii?Q?OAicuQbjQpA4EhM94Wyr708VHFDW9Zr2o5Zpw+avN4lbQgLT8+NdtowCqMK2?=
 =?us-ascii?Q?wu/wddgzxAFT/DMl3JFia5bDH0S2Nv6tY6e11xSd1n7r2cvUo3KyVrrVpqqi?=
 =?us-ascii?Q?3Dl1QSVP5nAJ6tN94Qy2ggas7Clb1j9mhWwyZ5sXrxfEyzdepoRtzzzs1lq/?=
 =?us-ascii?Q?jgItvvWxJxRRwIu8HXEadGefxThVWzN5abYICutM9lrROyMk1mn/t9+VnoB5?=
 =?us-ascii?Q?ntDI2eAiGtXt0pEBMBGGGeaq9e6BtXCS7C53QGfkGBINSmZrFonQBoj4+byk?=
 =?us-ascii?Q?qDnAVd64iy6YxBRT2TU2Zd05pLyu9eLjN1pRBKUMBsriud8tK2Kye+mhh6vR?=
 =?us-ascii?Q?yGdaWGtFwJ03Lv7djPovA9zO6jiN2zmkDlawdcFGL30fkujzHggJc2HLtizh?=
 =?us-ascii?Q?MByKzFvpqzrBtGad46KGOwUEBGNZ3frSqD1L40avPUmRaufIg6rJL5AE10te?=
 =?us-ascii?Q?a2Ep6NnkS+Gb2R8Jg+THwPz4RoKST5dnYII9ZccG9p26JUvpKl/WGk/ZGpUQ?=
 =?us-ascii?Q?dSvVx6TKlLn3r/Tgk0ksZIyHQJ/ZeWISoZUwQ3a/IxYeAvA6SExV3rq0aXQR?=
 =?us-ascii?Q?cBAmp7dzK/CPMtKvClBTitUtp1KN8Vc2+3srPed8rvEQT616QoSwj1XBlI5O?=
 =?us-ascii?Q?Bvq2jtsvdLU1uYn3O5QRz8+smZHwGR4eTU2KIpSvUQXWfnHi2y7eb9+TtHjE?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d7c3110-3e91-4e80-3044-08dcc7a2ceed
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:48:45.3145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5j/gwFjMINuHIY/uGricewfRwy6kBjPciZTftChg+l72BbcoAHGMkDhXEgwfufnLZriL3czoLt0GKhToUJzaKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7416
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

On Mon, Aug 19, 2024 at 09:48:40PM +0300, Jani Nikula wrote:
> Facilitate using display->is.HASWELL and display->is.HASWELL_ULT
> etc. for identifying platforms and subplatforms. Merge platform and
> subplatform members together.
> 
> v3:
> - Fix sanity check on display->is after merging subplatform members

ops, add my rv-b here instead of v2

> 
> v2:
> - Use bitmap ops
> - Add some sanity checks with warnings
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 ++
>  .../drm/i915/display/intel_display_device.c   | 31 +++++++++++++++++--
>  2 files changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 0a711114ff2b..b2907894fa28 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -286,6 +286,9 @@ struct intel_display {
>  	/* drm device backpointer */
>  	struct drm_device *drm;
>  
> +	/* Platform (and subplatform, if any) identification */
> +	struct intel_display_platforms is;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 55ab1923c8b3..d0b7cf63bc9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1269,8 +1269,28 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	return NULL;
>  }
>  
> +/* Size of the entire bitmap, not the number of platforms */
> +static unsigned int display_platforms_num_bits(void)
> +{
> +	return sizeof(((struct intel_display_platforms *)0)->bitmap) * BITS_PER_BYTE;
> +}
> +
> +/* Number of platform bits set */
> +static unsigned int display_platforms_weight(const struct intel_display_platforms *p)
> +{
> +	return bitmap_weight(p->bitmap, display_platforms_num_bits());
> +}
> +
> +/* Merge the subplatform information from src to dst */
> +static void display_platforms_or(struct intel_display_platforms *dst,
> +				 const struct intel_display_platforms *src)
> +{
> +	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
> @@ -1306,13 +1326,20 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> +	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
> +		    display_platforms_weight(&desc->platforms) != 1);
>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
> +	display->is = desc->platforms;
>  
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
> -		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> +		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
> +			    display_platforms_weight(&subdesc->platforms) != 1);
>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> +		display_platforms_or(&display->is, &subdesc->platforms);
> +
> +		/* Ensure platform and subplatform are distinct */
> +		drm_WARN_ON(&i915->drm, display_platforms_weight(&display->is) == 1);
>  	}
>  
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> -- 
> 2.39.2
> 
