Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF61A27F36
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 00:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B5310E70B;
	Tue,  4 Feb 2025 23:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FCUYuOTn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653E110E70B;
 Tue,  4 Feb 2025 23:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738710121; x=1770246121;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VOxI4DeBmTJ97imngBqfVsDyBWS5lRVqMs3V0vtXJUQ=;
 b=FCUYuOTnal7vz8E7P7eZKEMviVAJvXVp4KWKCnG6O9+m/fWj42cxck1c
 OnkaUDL+nVCIidIcrTKg06crgSrqJQY9O73eC3ewZzXbT9e8UUWKd0y+z
 LkZUc4Zp97YM3yty0sebLai2TO0TU2lOVxuSjENgYj7/P/mNRBT+/OalW
 AOL5PEcxBNdD/miynQK0e8r5fwUA2AbGn+5b+WXHeWi44jsxeXpmG+pU9
 oPaL75C8GMsKbJEynVrF0+A+9n5H3ffvuhakGGMExn7myFyfMnJHP2SIW
 jnTVx1C1CcC3ROcOAyp4LJxiPwBMDF722VocsIVF8wnY1EI+oKnMzL5P+ g==;
X-CSE-ConnectionGUID: tz9syVDGTa+2xUR0LZ8cqQ==
X-CSE-MsgGUID: E1VeosjvQc62oGYz4VoY7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42096566"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="42096566"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 15:02:00 -0800
X-CSE-ConnectionGUID: EURBedXBTZyExbSKfcHPfA==
X-CSE-MsgGUID: lrKXXT3iTNGZf0xQvUQRdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110568059"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 15:01:59 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 15:01:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 15:01:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 15:01:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F341AttJu2VAw3L3pkLUGnuvYut7mo72zmbTA2FxtVblfwM99akf2mI0KQFPYNKplKV2rGkav9P4LLYjpYm/rGrav/ztT4nq0ra83m+z7R7aF4OemL7eheS6vHPeDa6ixZMOKJMDmfJSgaxKDzlsnq9aDyLjHnadqIGYS4+pXnT9KXNJSypuiBe6koCULedCXFsB7LOV8pZIGyQA78FgpiIEzGHAgpPW5RCJzPzz3QE83qM0pUCkA20sng3/2xX113As/yKIDiy7K6bNhueOfQXr0XOtOzS/h7JGzlDz/VtFjBccSr/Em+ULa+Fb0eZG4pOnr9vZJT6gJSGGtGjnlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=txZHszOFRBvxNaLtlJW0/MV4RqCmLfBHA2US+GmeERs=;
 b=S+yn8FHj/zn9j0n12gYyjywRT+y45DhskA3fAj59X3uJ2XGNmU/hECEKAr+MBD1RbJ0TZmvS5fAJg42MV9FKrq5+tMUN8yd6xGeq8RVU/n7ksF7u3Y7XfXj5FqEtGnuoyNagD9va1AyiA13ECUga57e3dfItIFShLAuSXU9yhUCV9VDM/ok3g4agME/ueTY1q+Z0OoIhW+ypANcWnCBzJPhm4lZqypNnHpy7mpv1xf5jO2H18Z32BNn7edi011jWlBOAK5A3D+ZGNTP3etTmjfHRWYclp06aH8Tny+wetHtJQULr0isbT9tymS5qHN/05ofMV025HqgJczj658jqcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Tue, 4 Feb
 2025 23:01:35 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 23:01:35 +0000
Date: Tue, 4 Feb 2025 18:01:31 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/display: convert intel_ddi_buf_trans.c to
 struct intel_display
Message-ID: <Z6KcSyFiarCRpLIG@intel.com>
References: <20250204134228.2934744-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250204134228.2934744-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:303:2a::23) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|BL1PR11MB5223:EE_
X-MS-Office365-Filtering-Correlation-Id: f8a9d9bb-e315-47b9-0590-08dd456fdf4c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?yeZ7hbYAPiNwXWsW8qNJC2sXAGM2FAdJdnEZe3ft7rLxPpKn018vF1yOrd?=
 =?iso-8859-1?Q?wDtCkv7ixnjZkQfN31dk/WnJ3Ayaw1ROk8cpMvGNI31AynQYpH/3gnic1W?=
 =?iso-8859-1?Q?CAQCk2mDp7XVwUx1EdIExEKWuq2UqBpSrRcf38UrZ1JY1FIKH53EhMNo0o?=
 =?iso-8859-1?Q?lgKpEZc5+s8k9eshbciHZmxlqkr0/cDjQKzq9Orn2kDB7Zw4NgfexY0Fba?=
 =?iso-8859-1?Q?SKOCmdmbcfXUZSEhK6uV1fO0d03UEcP/ptb1iwQm1bjTn2KpxMVH/vFn/p?=
 =?iso-8859-1?Q?ehAN7hLNS/+E6phMp0v9H2ox4PyLnLEjxQ/kP4srKJjA5UA9VJ3svkwCXP?=
 =?iso-8859-1?Q?4gxWZ2yg2Y13bLaBRP3FhRjutmHIzbFDfb2kHqql99G51jRrdJmKXXrvDo?=
 =?iso-8859-1?Q?jDmhEEHfHpjpMXnEB9wOYJERPT02vj990FUMymeys2WvP5KSGj/GLTXt0S?=
 =?iso-8859-1?Q?ZoVYJsjf7GuQ3BqoiEGOgGJ9Ln+sL7dgSZ5FRCbggPjiw2EOTPINthf2E2?=
 =?iso-8859-1?Q?O971HrUP3w+KbU1VCg33U2zJhsiSNECZuz12XbtBc0+V+bS1Qm/uFjt1Kl?=
 =?iso-8859-1?Q?BqTvSyXl1j5fhMf3ctgsw+UFtYtR97DhAOQBeJuFIVPuwcOvjNXCDOH/fU?=
 =?iso-8859-1?Q?+SZM6Roo/01PXji0IVWyIlVkzB8f39xjGWR+tcudLBEgGnHGiulmGuCb1q?=
 =?iso-8859-1?Q?mdGWU5lw8KqelwV+UCkDUP6uBY9fRJYV0Lf58P43PlEnr6q3WCHxknGarX?=
 =?iso-8859-1?Q?g+dFG6yc+WQx+pmfCuoQ86McLLit0NGgmlG9McmuFZxg0X2RIHndSW2pu+?=
 =?iso-8859-1?Q?zNoTDZlipeeOfwv3QiWb9SGDs6s/owpD1N9kdcH8S8OtSQn+N7abIkylTH?=
 =?iso-8859-1?Q?xnliYaXwhXcie3rctigfZq+FVjtRkhNzdBJCjiQGSBS6xJbJnWZvdFCq+/?=
 =?iso-8859-1?Q?+tLJQfBEoIKynKGoANsKxqp29GVx8N6i7vrCes5pF7Vt14iIom7IsjoPDa?=
 =?iso-8859-1?Q?IFTtaLkACLmSTqUGocvnsfnbcuAITsFUllt/RXlV970KCx4O91ntc6hSwp?=
 =?iso-8859-1?Q?0qs86+T7sTQG2MQDjOHJjrBSFSz4IDT/z8y9R6RrmB8eo+Fp7KiWAxFpHh?=
 =?iso-8859-1?Q?7Seccm8kUFuy4GL17fumJf5Jqeoppzsl6P4pbT+Mel/LsYehnYkg65N4dm?=
 =?iso-8859-1?Q?Yb6HihxcuvajfIswKYpbZPCxTkomeHhlAQMfUqYmivov1B7ELeOj1J7l9D?=
 =?iso-8859-1?Q?utYXQQW2pWe+v7El4p0+0O/rnAy5LF76UCh7sSB/EIdfxxoi0ZSo8lcRqx?=
 =?iso-8859-1?Q?W/BWuaiTP1zMUYY5JI99AGr64Ogk1i7gZdwF0j+RMbQ9D6PLGjWpUmxGBe?=
 =?iso-8859-1?Q?boezFeSHMiS3qpdb8ENWrWoWGRO78lKLKgDDTHC2OXnDZu70wCIaduY1ls?=
 =?iso-8859-1?Q?WT7mCGUOGnsUZf06?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qqMObJhaylAIxHij6j5vuBaboyn8JyQ3TcN/o7NpCs0qgyAW01Hv66D2SA?=
 =?iso-8859-1?Q?giiyGFABc2bdUeVFUc/BXJEbwtQwrfPtwmmXAKvLO/3Y11L0N7rQ+uOiZq?=
 =?iso-8859-1?Q?xJ6XBtD604ijy7f7mIxg3FA/7Qs/SH+ef8Ya262crvNknPyD3rUM26Ih9t?=
 =?iso-8859-1?Q?RgokLLvbleUOTGdaZKILIYipht+aXut4Cr8jD/HDP7xbAquv8dZSiMJ/AI?=
 =?iso-8859-1?Q?7pXwSeBRFmF5WbeepsJg8o7hvGwG9tQd8EO/GDEdJaG7AIbGSB8ldj5IO1?=
 =?iso-8859-1?Q?Jzf214l3hyJemHiU+bNoPzB/fzLRfT7U8ENqwubsocNnWio0vPlEkUgWdJ?=
 =?iso-8859-1?Q?NW4vPgIptdeC+gh4/G5t5NUHxiar/mZDU4usGADDFrWvwXf0bJWvJLdlMj?=
 =?iso-8859-1?Q?LZbIpQ2bNtTn0Rxhqh5y15Zd7CU0AzNcpA4bErty6cvSNtVbe70v+tbxrd?=
 =?iso-8859-1?Q?j2cCKAS1qW2eh3asuh8/AIiBq2O+4il888noQjGa/vdiq6N/0hI4iMfBxb?=
 =?iso-8859-1?Q?SEPlouzyRDLTcqKaja3xhOnHIY+un2oZ3s/7IpeBDo5HGO/b+A3nko4hKM?=
 =?iso-8859-1?Q?PLuXRg7FD7UWCkAo+06doURch1iRwIjDY9w96Gh1CFz9Q2VKLnOeAFc1sn?=
 =?iso-8859-1?Q?JbXwZ5yRAhoV8XkhinQjUGL01AtbmadJX4StWWM/JENML9UJwgsAyYqNZE?=
 =?iso-8859-1?Q?KEAt4tlDgKEEjjdSD5L4I209qAgMMInXL1F5AuH84UlgLpKNCTiDoNV4Z3?=
 =?iso-8859-1?Q?cBw104U4lK0iOtv2eprrtyn4R/uJuVYwmmnd84UnH403IssrbQwA2ZjTKx?=
 =?iso-8859-1?Q?gkjcR5Omka1dyLmLy/wTa+4fBsOxoP3D1FDSP6j/odm0510a2Myq7L0vrp?=
 =?iso-8859-1?Q?gbDCqBE+PHoUa8Yrc/huavypSAvdWI5St+4Cbi4/1BIzn3wDA5qPtozL9U?=
 =?iso-8859-1?Q?c160knGwljhrx12rAKSpTIcU1ZrykhQzXyjLKo+aCYsRHQla/he14FLnC3?=
 =?iso-8859-1?Q?dcAKd6rJEduuKuRAY1NnV7Z7O7MKIds6OoP3Io0Bfa/InKN1x3o9tZbqui?=
 =?iso-8859-1?Q?nVNo0izLnwZPtxBWMGfk7bZm8fD2ZpgpF75SzyuL0qAvPcin7ctac1ApGB?=
 =?iso-8859-1?Q?wLu/QUfBKcT/8DK/sS2K/NgJz3SE/yFCqqRz2tHA0g3P70skK2iJaCs/XZ?=
 =?iso-8859-1?Q?0+yxictuchCE+KpTgmTisN/b8fHx0EXeI6z6opCFJTqOPtj/xvfW5rxfCU?=
 =?iso-8859-1?Q?VhViBiIj6c+zOzh4gVhP+vKPoekDj4oGcc4aHiIt0fjEkjb4Pplhj2Cjm3?=
 =?iso-8859-1?Q?U3ReYZ6+uWdh8xb1J61zn8Oey1VEzdBxloTHym7m1RV+TL6WtDkFIcVfWX?=
 =?iso-8859-1?Q?ISYTDQeFAwcC9x2nm8v5fAzWxPjoBGGKWqcnK7ulcMI1lVWwfUu4h/MiW+?=
 =?iso-8859-1?Q?sqJuxpEvu6kH30zpPlmOsJ+LS9Ahbeq6JhdXp6kHd+rJy92l2niXXhYwdD?=
 =?iso-8859-1?Q?4Se1OheH+nVpjCGNc4oe3lYDakp0GCH66UzelYYjyOPZJYWiFOKIwz3+uN?=
 =?iso-8859-1?Q?h7Ps+91Poqt4Ty/fKSH+SXt9XLnDmsMMaUT2vOfhe4P4pAOtXzm2I/EmjN?=
 =?iso-8859-1?Q?9OmVEMCgvah7h9Ew0cd7hdWPQtKs0WDlbbX5UwqI/GMNJnI2U2IMwMMg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8a9d9bb-e315-47b9-0590-08dd456fdf4c
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 23:01:35.5637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T4EY0BOW0/6YbbS4FBqwv9ha/crone/a07pAenewKYbaXUvlH71B7e46X9wsrGKCtDvzmV2w7Qsho9nX93vsdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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

On Tue, Feb 04, 2025 at 03:42:26PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display is the main device data structure
> for display. Switch to it.
> 
> For MISSING_CASE(), log the PCI ID instead of the platform to get rid of
> the i915_drv.h dependency.

good idea!

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 58 +++++++++++--------
>  1 file changed, 33 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 9389b295036e..a238be5bc455 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -3,13 +3,13 @@
>   * Copyright © 2020 Intel Corporation
>   */
>  
> -#include "i915_drv.h"

\o/

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +#include "i915_utils.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> -#include "intel_cx0_phy.h"
>  
>  /* HDMI/DVI modes ignore everything but the last 2 items. So we share
>   * them for both DP and FDI transports, allowing those ports to
> @@ -1407,10 +1407,10 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  
>  	if (crtc_state->port_clock > 270000) {
> -		if (IS_TIGERLAKE_UY(dev_priv)) {
> +		if (display->platform.tigerlake_uy) {
>  			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
>  						   n_entries);
>  		} else {
> @@ -1709,59 +1709,67 @@ mtl_get_c20_buf_trans(struct intel_encoder *encoder,
>  
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  
> -	if (DISPLAY_VER(i915) >= 14) {
> +	if (DISPLAY_VER(display) >= 14) {
>  		if (intel_encoder_is_c10phy(encoder))
>  			encoder->get_buf_trans = mtl_get_c10_buf_trans;
>  		else
>  			encoder->get_buf_trans = mtl_get_c20_buf_trans;
> -	} else if (IS_DG2(i915)) {
> +	} else if (display->platform.dg2) {
>  		encoder->get_buf_trans = dg2_get_snps_buf_trans;
> -	} else if (IS_ALDERLAKE_P(i915)) {
> +	} else if (display->platform.alderlake_p) {
>  		if (intel_encoder_is_combo(encoder))
>  			encoder->get_buf_trans = adlp_get_combo_buf_trans;
>  		else
>  			encoder->get_buf_trans = adlp_get_dkl_buf_trans;
> -	} else if (IS_ALDERLAKE_S(i915)) {
> +	} else if (display->platform.alderlake_s) {
>  		encoder->get_buf_trans = adls_get_combo_buf_trans;
> -	} else if (IS_ROCKETLAKE(i915)) {
> +	} else if (display->platform.rocketlake) {
>  		encoder->get_buf_trans = rkl_get_combo_buf_trans;
> -	} else if (IS_DG1(i915)) {
> +	} else if (display->platform.dg1) {
>  		encoder->get_buf_trans = dg1_get_combo_buf_trans;
> -	} else if (DISPLAY_VER(i915) >= 12) {
> +	} else if (DISPLAY_VER(display) >= 12) {
>  		if (intel_encoder_is_combo(encoder))
>  			encoder->get_buf_trans = tgl_get_combo_buf_trans;
>  		else
>  			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
> -	} else if (DISPLAY_VER(i915) == 11) {
> -		if (IS_JASPERLAKE(i915))
> +	} else if (DISPLAY_VER(display) == 11) {
> +		if (display->platform.jasperlake)
>  			encoder->get_buf_trans = jsl_get_combo_buf_trans;
> -		else if (IS_ELKHARTLAKE(i915))
> +		else if (display->platform.elkhartlake)
>  			encoder->get_buf_trans = ehl_get_combo_buf_trans;
>  		else if (intel_encoder_is_combo(encoder))
>  			encoder->get_buf_trans = icl_get_combo_buf_trans;
>  		else
>  			encoder->get_buf_trans = icl_get_mg_buf_trans;
> -	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> +	} else if (display->platform.geminilake || display->platform.broxton) {
>  		encoder->get_buf_trans = bxt_get_buf_trans;
> -	} else if (IS_COMETLAKE_ULX(i915) || IS_COFFEELAKE_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
> +	} else if (display->platform.cometlake_ulx ||
> +		   display->platform.coffeelake_ulx ||
> +		   display->platform.kabylake_ulx) {
>  		encoder->get_buf_trans = kbl_y_get_buf_trans;
> -	} else if (IS_COMETLAKE_ULT(i915) || IS_COFFEELAKE_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
> +	} else if (display->platform.cometlake_ult ||
> +		   display->platform.coffeelake_ult ||
> +		   display->platform.kabylake_ult) {
>  		encoder->get_buf_trans = kbl_u_get_buf_trans;
> -	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
> +	} else if (display->platform.cometlake ||
> +		   display->platform.coffeelake ||
> +		   display->platform.kabylake) {
>  		encoder->get_buf_trans = kbl_get_buf_trans;
> -	} else if (IS_SKYLAKE_ULX(i915)) {
> +	} else if (display->platform.skylake_ulx) {
>  		encoder->get_buf_trans = skl_y_get_buf_trans;
> -	} else if (IS_SKYLAKE_ULT(i915)) {
> +	} else if (display->platform.skylake_ult) {
>  		encoder->get_buf_trans = skl_u_get_buf_trans;
> -	} else if (IS_SKYLAKE(i915)) {
> +	} else if (display->platform.skylake) {
>  		encoder->get_buf_trans = skl_get_buf_trans;
> -	} else if (IS_BROADWELL(i915)) {
> +	} else if (display->platform.broadwell) {
>  		encoder->get_buf_trans = bdw_get_buf_trans;
> -	} else if (IS_HASWELL(i915)) {
> +	} else if (display->platform.haswell) {
>  		encoder->get_buf_trans = hsw_get_buf_trans;
>  	} else {
> -		MISSING_CASE(INTEL_INFO(i915)->platform);
> +		struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> +
> +		MISSING_CASE(pdev->device);
>  	}
>  }
> -- 
> 2.39.5
> 
