Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF02E8CDA11
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EC510EF2D;
	Thu, 23 May 2024 18:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TPsc+bQR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9989810EE11;
 Thu, 23 May 2024 18:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716489518; x=1748025518;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vmTMbgNts3u/ZdcUS2d0zJPvu9swowKKGu9ww44jBh4=;
 b=TPsc+bQRsIrYnqpfO9Vb6W/XVV7MjsSiSCfMcv9uG0J9FhwRW+KDuvil
 6HKsw0//cmyyv2vOuu88z0NjlD4y0+uct11OgZVbJmBX9zBjgFBnSJf94
 HwOUd9Ye01UqUPdM2JZLwRvDcjYbfdtkjg9yac+nG8z3jCk1KVflin+xW
 xdncd7zzeEkTm8rgJwq3HoTlmyUeGx8YiD9vhQhYe8jLKf2iwd6QTtst+
 z6qmezOIqej5J6wHRHbeeNMeVanhmMeCTewQKkALLv74sFXb4b+WhyTrf
 SnBy7zGKUI3MuHY6U+8hvdCyKVJ3q9tytzL6ppF4KVD8tc/mi3082X8rG g==;
X-CSE-ConnectionGUID: hiVCQXGbTMajwcMC8p1dRw==
X-CSE-MsgGUID: oVP+dDKHSl2GP/B3T93dpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12953812"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12953812"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:38:38 -0700
X-CSE-ConnectionGUID: G/oN/+v3TPK+hNAzP5f+ZQ==
X-CSE-MsgGUID: MSLv/mYmSuuY/yycAx8oKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="38548819"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:38:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:38:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:38:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:38:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mCuY+AexOEvBpeUfc1RPTBtGysauukZ0P2mgIW15TDU7i43pWhTCBQ2tSakp04r5rtEvCwtvQBt7t/3y5QKzBAnwNT3YxYHHtFLoqs0EuqKyod6we2VjHNGeTq8SIR5ifrRWM35s80bGmF+/Nd3BP79r6adBGZTyHii0GF4ipMStIfEunUa+XqHN/skcQIMpoGuN1ZM71g/HfhZmTbUWQR7vijdtCuVQ9CVT2VN7vhJme0MPXk68upmgkmCmvbhr5dVHuoitbnEuU/AiHBEpR+z3XIkwJrVJbVsr0tw+sJRVPmTvpmhVXQc7MGGli9Yn4RX/49QejiEAJniD2gJe2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCwrH+tZ/NPBdDtdlmszf1zRKvg57EhjEMbPr3LzolQ=;
 b=a7l32sGMfaaJ8xd2LAi/46XDUU7CcmJkuWItx1tzVm97/ATBGav9VDTqOHPATtKJRMz28ImWMJDu5sjDxze/juU/VlF497nyCwbpUCiPpTwj8zbJKUnIT9+DAAVs2cCWWNTVrivYzYkXhkdqlK+4Z0dPMAl0n+vy3asn7z1Luwo0VnluIfR5pzGHLmGNtQSz7C8OoDs+1JhRr+/AKfBj/9ZalP8+6PFMwAE3JYJIesYGKQcG8+AuSOd/G6esftDdigjMADzqzMJafncBtXpxOe6rG49K7oMdBB4cZ4uqhGwNSc5+zLH+yqPVq0NnHztL0nriizyQlR5aN1x6Etru/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by LV8PR11MB8770.namprd11.prod.outlook.com (2603:10b6:408:202::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Thu, 23 May
 2024 18:38:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 18:38:31 +0000
Date: Thu, 23 May 2024 14:38:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/display: identify platforms with enum and
 name
Message-ID: <Zk-NJDykWv4fvsBA@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <5dec70931217cd93e3ef34f7a57f949f6683f048.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5dec70931217cd93e3ef34f7a57f949f6683f048.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0222.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|LV8PR11MB8770:EE_
X-MS-Office365-Filtering-Correlation-Id: 779331ce-a522-464f-c429-08dc7b578bc0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9kqPJXyoxJCga1Wv9hidvZXwmEgOIo0wYeKw+Mmdj9O2CahH1YPA1MxxaCPV?=
 =?us-ascii?Q?x5B95e+VsTtXqJWyhE+yFoEq+dSVXY1PHZhGiQoApkZI6Ez3P5EMP/hoGYe7?=
 =?us-ascii?Q?y5ZjCFudQV/d0wrkyeI1WIZleiEeSBVwU9SFkAX4CQriLtSOlLlkjs308ik6?=
 =?us-ascii?Q?KPM5PbWU7eg0ohBc15kbbcKyUPrb5NDRgNVf7mp9oBrGBciDMqEiPlnVUA+n?=
 =?us-ascii?Q?KVRSX3ds0H2aNfse9rkN+sqDXrTYJ/3Rh3aRAaY8knp38seQfd/tlyaZXg1f?=
 =?us-ascii?Q?Ke4UkBrq7rsVkuIGD2aMGZJiwM+23+PUw3rWrx62PgqLt+V/pmk6Pqks+pcj?=
 =?us-ascii?Q?1BCOWIDLV4nBGKCQt/xa2cjs+SxLWCHz2yXg920buBXyo+pMRbMHxWNwUCQ/?=
 =?us-ascii?Q?hIy011NdmGpWb0F4uokHpE1GZIiMIoTHudLCjupUJN/zLRTm/Qah1NiWRcVS?=
 =?us-ascii?Q?YU74AEZL0tuf0wMZfqaEJQ6aUuI52oOpyWbMWFz1jXF+yRq5f0vb7Ck2a3CQ?=
 =?us-ascii?Q?yc/lIXONFn/1Jb+Ma3Xkiepg8Miads72ULSbJNaTwpfbuQb7u2YT3ZkcVCIT?=
 =?us-ascii?Q?yrkqC8sKzGcxDdJHJqmDU9qpQmV7mYiyc9PDcQLZy/iIdh+Jh/FUniispcJA?=
 =?us-ascii?Q?sTg30UhfU6dlAG0+saPIJg1VzyZ+D+nnmu6NUO8PBnVYfVSqkgkmpvCMtVU3?=
 =?us-ascii?Q?LFLEiGkot7WZD0nfNio8sLrRau2l1GaI6m64Ab8k3LdYXMgYStxm6Nt+etkR?=
 =?us-ascii?Q?EmLglarOPogNlECFmBQMa6+Uj4a6fH1kUEqU6jnLPn1iYBhqHcxPG1sJfBwo?=
 =?us-ascii?Q?XTi/HQ3g2jRpKGz3X7Q+u3vWLqVhm81dnUCNX3a3X4UbeesVR2lCdauXABpr?=
 =?us-ascii?Q?kvInYO3d+sYMXJUYLJ1vm4SlZ+zU2Wxl6WfnKI08oWUjwFBNIgikA7GmAKiv?=
 =?us-ascii?Q?WaXGe9VLQwEyPiQCm8L5Xp2Mgus1iHLn8VNKs4AhujnMy1eR1bDpVBxz1cvD?=
 =?us-ascii?Q?JM/tluIjWlZpuI6y3v2U3j5efDWrRSSNG+bCiJO6B6NhHS9wxZl7n4Sz+dAJ?=
 =?us-ascii?Q?rk6ZXRitVN+sEyAOA6pGSyq+tDlXTujSEkr9gULCTpiu+fEFNbXqq0BEVm4U?=
 =?us-ascii?Q?tdEKwt0ViOVRSeWLmIeeS2ueycXR2ffmOuuQxX+aQ59si7oH+9fk78onLH2i?=
 =?us-ascii?Q?h/oB8Nle6gYNY5AA5dlWTRPhsmTO/iNkS68Hwm5mqVNNqZVtUEHYnCl3fuyy?=
 =?us-ascii?Q?w0f335dCoQOhMikuW1jhFtVdaLl9DIqUO4HvXI0y1A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5slahypGQrJuf/u17F96QFRBDNspKrXILHRZW2hz8NYbcsHDhRBzGAM4AY65?=
 =?us-ascii?Q?d/pntSt7hu+K//L7upxgQvZoMs4HiiEvjoOKUlzI+LH3GdZysdZYeaS8l5/S?=
 =?us-ascii?Q?6vJ5DXYIdDPLKi5UDHsCCQf2nkAUPLWk0/KF44PQjCCfBUZKpNHv7eYTLg7h?=
 =?us-ascii?Q?6xyYBZP7J0bmjVZNYPlKmKbXLglywUfgbp/Gv6xgdoAH6vuaKc6x1EQjE0dt?=
 =?us-ascii?Q?lHi1eu28qAogweviYoE6YV8SGTozjPROur+V/c+X0IoOlJQl7RkP183B94PO?=
 =?us-ascii?Q?B1iTLSP/UtUK9J49ynSMXUHEJYJ+jzB31oowfBHxAlUE1pcrWspKUx58Yk7E?=
 =?us-ascii?Q?GzeXhbJP8kcr6q1pUU/ZoIJt2UBqB6snNukKu16DDmy7bPBLDe9Vkd10/SbX?=
 =?us-ascii?Q?qe6XXbMMb8SswvHMpdI2sS9B0BwFXGbxtsoSwByHIdCnqAEyt4BsZ2i3hIMy?=
 =?us-ascii?Q?8Sikc5MIopOHYP/Ej6LdwJB0+tfOBCV3Pp6fGNixAo129H4yPqI0KJ4RCivI?=
 =?us-ascii?Q?2xJWTvUFtOhQu7tK/7lRkOjHBdaA6QkDxC2fsSF4uDJb3y12Jq0+7cdYbZWe?=
 =?us-ascii?Q?HKg8qy1RwXo1cQYodjP+6TGgRsKf5XoeE1t26NtgqismCOO65wLZkRmgS3sJ?=
 =?us-ascii?Q?y/iqYsMOHZsBGeVzdxLoEmojU/WIr/tfqyjYW4GtaCwX0aGHRVy7SlYhJ4jP?=
 =?us-ascii?Q?TaHzDNWni9LliSiqpcRokftx/wXB/I7IxSRJII2Q0+jqp/qJZTxAtyZL6rI+?=
 =?us-ascii?Q?1tKCfEELkirOAXrjoG7ejEayW8x0zBSDpY5uhmHUos2MKU2Qk+5hVKSXeBUR?=
 =?us-ascii?Q?TopLs8d18OYaIwppao/titIoVQucW/OdIJ1yiFC8JYL4cDuximJnSB2+aweA?=
 =?us-ascii?Q?CDl1dlITIt8eLBSgq9laojUnh54mOOGH4P0dBAa896tHvg6Y3N8GwR+nmaQZ?=
 =?us-ascii?Q?hbv0RX65mpCnx0TQxNiFWWM5Lfaps3B2x3J++eAPr3v/d43h+EnbyE+gevxC?=
 =?us-ascii?Q?5PkyJZUrCRUdZIYbV6EsqkRPUbz21tAmFNDf6WyVkQvITvT6RYQXHaTYHIPf?=
 =?us-ascii?Q?ivo2nXrR4k9Ga1GPNKn3EMN/B33ElhU3wja7DSFC0EoUmZakRrq+849G9i74?=
 =?us-ascii?Q?DoCQa3Ba0c48bC0MqqsHEkMq/JGE+3EdRuR9t+5Ga9tJ4suipE7T1HDZ18Zv?=
 =?us-ascii?Q?MOLG9AquvADdzFqSzkd/yoG631S5ywzHf4l7KWuIQl/BO9onOoAUDafGpbkm?=
 =?us-ascii?Q?LELXrIIxir6VqQ0Pm5B6u8tRyCdFh5OGokZh9u9CSyvRM5w19anvx1bDB9mA?=
 =?us-ascii?Q?aN21a2SEpCT4TPiXdqAm/h0e78G2HEzZIBwKrDqe+PZTAa58rlrTxoPTqCo3?=
 =?us-ascii?Q?ud3ql9CKyVrLBhq1XSoSl9RzBblB4s0B6dKpNHtFe2/L8uKyoqS8ZOtkjthr?=
 =?us-ascii?Q?J1FWlMLvXX+w7TmRjLsODaRXzMh2FXsE4E5Q2SpeqgeIm6I/r7M7k0L3eL1X?=
 =?us-ascii?Q?8uVHoqc+QWYcFRUpCFa9L7liMrRrC4hGJKtOsxY889JDTM/gC+zfsKTh8h8n?=
 =?us-ascii?Q?g1lLwrnhCXwJNRtLMKR2DfxE4p2LmE4bC5dcwrSVf7w5RU6Aiw9fLdLuPF/i?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 779331ce-a522-464f-c429-08dc7b578bc0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:38:31.8704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fC6YG95Qy3bKlB6uMBbfyWmthbi3oNdjZS2ZNI2gepA5DyG4ieb0axiMTRNsM6P4N74CmyGzYli3+8390VEcAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8770
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

On Wed, May 22, 2024 at 08:33:45PM +0300, Jani Nikula wrote:
> Add enum intel_display_platform and add that and name to all platform
> descriptors.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 48 +++++++++++++++
>  .../drm/i915/display/intel_display_device.h   | 58 +++++++++++++++++++
>  2 files changed, 106 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 416853ed50df..7c5cead1fe15 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -21,9 +21,15 @@ __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
>  struct platform_desc {
> +	enum intel_display_platform platform;
> +	const char *name;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
>  };
>  
> +#define PLATFORM(_platform)			 \
> +	.platform = (INTEL_DISPLAY_##_platform), \
> +	.name = #_platform
> +
>  static const struct intel_display_device_info no_display = {};
>  
>  #define PIPE_A_OFFSET		0x70000
> @@ -205,6 +211,7 @@ static const struct intel_display_device_info no_display = {};
>  	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
>  
>  static const struct platform_desc i830_desc = {
> +	PLATFORM(I830),
>  	.info = &(const struct intel_display_device_info) {
>  		I830_DISPLAY,
>  
> @@ -213,6 +220,7 @@ static const struct platform_desc i830_desc = {
>  };
>  
>  static const struct platform_desc i845_desc = {
> +	PLATFORM(I845G),
>  	.info = &(const struct intel_display_device_info) {
>  		I845_DISPLAY,
>  
> @@ -221,6 +229,7 @@ static const struct platform_desc i845_desc = {
>  };
>  
>  static const struct platform_desc i85x_desc = {
> +	PLATFORM(I85X),
>  	.info = &(const struct intel_display_device_info) {
>  		I830_DISPLAY,
>  
> @@ -230,6 +239,7 @@ static const struct platform_desc i85x_desc = {
>  };
>  
>  static const struct platform_desc i865g_desc = {
> +	PLATFORM(I865G),
>  	.info = &(const struct intel_display_device_info) {
>  		I845_DISPLAY,
>  
> @@ -251,6 +261,7 @@ static const struct platform_desc i865g_desc = {
>  	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
>  
>  static const struct platform_desc i915g_desc = {
> +	PLATFORM(I915G),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I845_COLORS,
> @@ -260,6 +271,7 @@ static const struct platform_desc i915g_desc = {
>  };
>  
>  static const struct platform_desc i915gm_desc = {
> +	PLATFORM(I915GM),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -272,6 +284,7 @@ static const struct platform_desc i915gm_desc = {
>  };
>  
>  static const struct platform_desc i945g_desc = {
> +	PLATFORM(I945G),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I845_COLORS,
> @@ -282,6 +295,7 @@ static const struct platform_desc i945g_desc = {
>  };
>  
>  static const struct platform_desc i945gm_desc = {
> +	PLATFORM(I915GM),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -295,6 +309,7 @@ static const struct platform_desc i945gm_desc = {
>  };
>  
>  static const struct platform_desc g33_desc = {
> +	PLATFORM(G33),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I845_COLORS,
> @@ -303,6 +318,7 @@ static const struct platform_desc g33_desc = {
>  };
>  
>  static const struct platform_desc pnv_desc = {
> +	PLATFORM(PINEVIEW),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -323,6 +339,7 @@ static const struct platform_desc pnv_desc = {
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
>  
>  static const struct platform_desc i965g_desc = {
> +	PLATFORM(I965G),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.has_overlay = 1,
> @@ -332,6 +349,7 @@ static const struct platform_desc i965g_desc = {
>  };
>  
>  static const struct platform_desc i965gm_desc = {
> +	PLATFORM(I965GM),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.has_overlay = 1,
> @@ -343,6 +361,7 @@ static const struct platform_desc i965gm_desc = {
>  };
>  
>  static const struct platform_desc g45_desc = {
> +	PLATFORM(G45),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  
> @@ -351,6 +370,7 @@ static const struct platform_desc g45_desc = {
>  };
>  
>  static const struct platform_desc gm45_desc = {
> +	PLATFORM(GM45),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.supports_tv = 1,
> @@ -373,12 +393,14 @@ static const struct platform_desc gm45_desc = {
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>  
>  static const struct platform_desc ilk_d_desc = {
> +	PLATFORM(IRONLAKE),
>  	.info = &(const struct intel_display_device_info) {
>  		ILK_DISPLAY,
>  	},
>  };
>  
>  static const struct platform_desc ilk_m_desc = {
> +	PLATFORM(IRONLAKE),
>  	.info = &(const struct intel_display_device_info) {
>  		ILK_DISPLAY,
>  
> @@ -387,6 +409,7 @@ static const struct platform_desc ilk_m_desc = {
>  };
>  
>  static const struct platform_desc snb_desc = {
> +	PLATFORM(SANDYBRIDGE),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_hotplug = 1,
>  		I9XX_PIPE_OFFSETS,
> @@ -403,6 +426,7 @@ static const struct platform_desc snb_desc = {
>  };
>  
>  static const struct platform_desc ivb_desc = {
> +	PLATFORM(IVYBRIDGE),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_hotplug = 1,
>  		IVB_PIPE_OFFSETS,
> @@ -419,6 +443,7 @@ static const struct platform_desc ivb_desc = {
>  };
>  
>  static const struct platform_desc vlv_desc = {
> +	PLATFORM(VALLEYVIEW),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_gmch = 1,
>  		.has_hotplug = 1,
> @@ -436,6 +461,7 @@ static const struct platform_desc vlv_desc = {
>  };
>  
>  static const struct platform_desc hsw_desc = {
> +	PLATFORM(HASWELL),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_ddi = 1,
>  		.has_dp_mst = 1,
> @@ -458,6 +484,7 @@ static const struct platform_desc hsw_desc = {
>  };
>  
>  static const struct platform_desc bdw_desc = {
> +	PLATFORM(BROADWELL),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_ddi = 1,
>  		.has_dp_mst = 1,
> @@ -480,6 +507,7 @@ static const struct platform_desc bdw_desc = {
>  };
>  
>  static const struct platform_desc chv_desc = {
> +	PLATFORM(CHERRYVIEW),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_hotplug = 1,
>  		.has_gmch = 1,
> @@ -522,18 +550,22 @@ static const struct intel_display_device_info skl_display = {
>  };
>  
>  static const struct platform_desc skl_desc = {
> +	PLATFORM(SKYLAKE),
>  	.info = &skl_display,
>  };
>  
>  static const struct platform_desc kbl_desc = {
> +	PLATFORM(KABYLAKE),
>  	.info = &skl_display,
>  };
>  
>  static const struct platform_desc cfl_desc = {
> +	PLATFORM(COFFEELAKE),
>  	.info = &skl_display,
>  };
>  
>  static const struct platform_desc cml_desc = {
> +	PLATFORM(COMETLAKE),
>  	.info = &skl_display,
>  };
>  
> @@ -561,6 +593,7 @@ static const struct platform_desc cml_desc = {
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
>  
>  static const struct platform_desc bxt_desc = {
> +	PLATFORM(BROXTON),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN9_LP_DISPLAY,
>  		.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
> @@ -570,6 +603,7 @@ static const struct platform_desc bxt_desc = {
>  };
>  
>  static const struct platform_desc glk_desc = {
> +	PLATFORM(GEMINILAKE),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN9_LP_DISPLAY,
>  		.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
> @@ -621,6 +655,7 @@ static const struct platform_desc glk_desc = {
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>  
>  static const struct platform_desc icl_desc = {
> +	PLATFORM(ICELAKE),
>  	.info = &(const struct intel_display_device_info) {
>  		ICL_DISPLAY,
>  
> @@ -635,10 +670,12 @@ static const struct intel_display_device_info jsl_ehl_display = {
>  };
>  
>  static const struct platform_desc jsl_desc = {
> +	PLATFORM(JASPERLAKE),
>  	.info = &jsl_ehl_display,
>  };
>  
>  static const struct platform_desc ehl_desc = {
> +	PLATFORM(ELKHARTLAKE),
>  	.info = &jsl_ehl_display,
>  };
>  
> @@ -686,6 +723,7 @@ static const struct platform_desc ehl_desc = {
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>  
>  static const struct platform_desc tgl_desc = {
> +	PLATFORM(TIGERLAKE),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  
> @@ -699,6 +737,7 @@ static const struct platform_desc tgl_desc = {
>  };
>  
>  static const struct platform_desc dg1_desc = {
> +	PLATFORM(DG1),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  
> @@ -708,6 +747,7 @@ static const struct platform_desc dg1_desc = {
>  };
>  
>  static const struct platform_desc rkl_desc = {
> +	PLATFORM(ROCKETLAKE),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  		.abox_mask = BIT(0),
> @@ -723,6 +763,7 @@ static const struct platform_desc rkl_desc = {
>  };
>  
>  static const struct platform_desc adl_s_desc = {
> +	PLATFORM(ALDERLAKE_S),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  		.has_hti = 1,
> @@ -790,6 +831,7 @@ static const struct intel_display_device_info xe_lpd_display = {
>  };
>  
>  static const struct platform_desc adl_p_desc = {
> +	PLATFORM(ALDERLAKE_P),
>  	.info = &xe_lpd_display,
>  };
>  
> @@ -805,6 +847,7 @@ static const struct intel_display_device_info xe_hpd_display = {
>  };
>  
>  static const struct platform_desc dg2_desc = {
> +	PLATFORM(DG2),
>  	.info = &xe_hpd_display,
>  };
>  
> @@ -877,9 +920,11 @@ static const struct intel_display_device_info xe2_hpd_display = {
>   * reported by the hardware.
>   */
>  static const struct platform_desc mtl_desc = {
> +	PLATFORM(METEORLAKE),
>  };
>  
>  static const struct platform_desc lnl_desc = {
> +	PLATFORM(LUNARLAKE),
>  };
>  
>  __diag_pop();
> @@ -1050,6 +1095,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> +	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> +	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
> +
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>  		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index fd2d03bfe8a6..8accd680a61e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -14,6 +14,62 @@
>  struct drm_i915_private;
>  struct drm_printer;
>  
> +/* Keep in gen based order, and chronological order within a gen */
> +enum intel_display_platform {
> +	INTEL_DISPLAY_PLATFORM_UNINITIALIZED = 0,
> +	/* Display ver 2 */
> +	INTEL_DISPLAY_I830,
> +	INTEL_DISPLAY_I845G,
> +	INTEL_DISPLAY_I85X,
> +	INTEL_DISPLAY_I865G,
> +	/* Display ver 3 */
> +	INTEL_DISPLAY_I915G,
> +	INTEL_DISPLAY_I915GM,
> +	INTEL_DISPLAY_I945G,
> +	INTEL_DISPLAY_I945GM,
> +	INTEL_DISPLAY_G33,
> +	INTEL_DISPLAY_PINEVIEW,
> +	/* Display ver 4 */
> +	INTEL_DISPLAY_I965G,
> +	INTEL_DISPLAY_I965GM,
> +	INTEL_DISPLAY_G45,
> +	INTEL_DISPLAY_GM45,
> +	/* Display ver 5 */
> +	INTEL_DISPLAY_IRONLAKE,
> +	/* Display ver 6 */
> +	INTEL_DISPLAY_SANDYBRIDGE,
> +	/* Display ver 7 */
> +	INTEL_DISPLAY_IVYBRIDGE,
> +	INTEL_DISPLAY_VALLEYVIEW,
> +	INTEL_DISPLAY_HASWELL,
> +	/* Display ver 8 */
> +	INTEL_DISPLAY_BROADWELL,
> +	INTEL_DISPLAY_CHERRYVIEW,
> +	/* Display ver 9 */
> +	INTEL_DISPLAY_SKYLAKE,
> +	INTEL_DISPLAY_BROXTON,
> +	INTEL_DISPLAY_KABYLAKE,
> +	INTEL_DISPLAY_GEMINILAKE,
> +	INTEL_DISPLAY_COFFEELAKE,
> +	INTEL_DISPLAY_COMETLAKE,
> +	/* Display ver 11 */
> +	INTEL_DISPLAY_ICELAKE,
> +	INTEL_DISPLAY_JASPERLAKE,
> +	INTEL_DISPLAY_ELKHARTLAKE,
> +	/* Display ver 12 */
> +	INTEL_DISPLAY_TIGERLAKE,
> +	INTEL_DISPLAY_ROCKETLAKE,
> +	INTEL_DISPLAY_DG1,
> +	INTEL_DISPLAY_ALDERLAKE_S,
> +	/* Display ver 13 */
> +	INTEL_DISPLAY_ALDERLAKE_P,
> +	INTEL_DISPLAY_DG2,
> +	/* Display ver 14 (based on GMD ID) */
> +	INTEL_DISPLAY_METEORLAKE,
> +	/* Display ver 20 (based on GMD ID) */
> +	INTEL_DISPLAY_LUNARLAKE,
> +};
> +
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> @@ -111,6 +167,8 @@ struct drm_printer;
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  
>  struct intel_display_runtime_info {
> +	enum intel_display_platform platform;
> +
>  	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
> -- 
> 2.39.2
> 
