Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C29C542CD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 20:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4113210E799;
	Wed, 12 Nov 2025 19:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CeVundBx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE8E510E1D2;
 Wed, 12 Nov 2025 19:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762976299; x=1794512299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TATSQwzb9cuisZS76k5TekAGq2l3Nh/gOIVxi96TS9I=;
 b=CeVundBx4zOukM3BYqvsCE4SAgVA7GbfOnaO1tJwH94LRu6geBHrmo2l
 niK4kjbY5MW2xKtfsHtPKIFrArNsi7z483m3HQoIl4FtPCF/P778nRxyj
 wiOD66tOnlDRln9/uhU67BydnvNLgswxs0YY4Kxq1cyvCDfnZdvNJv/+1
 2lfnoa2FyyUEdXH35qsMp3Ixy7mN9dCyOXJHKn4ONRv+Vk2Pel9MJfmiW
 zc6WEApmnz+B/ZS25Edy2YRQnGqMYxM1y68yu+9HtlCZmVzBS6JSds9gz
 Nx+ln/J6LlW85RCsxmMRHP6OXIqfdLdq5p1hZ14RnvZz8HMt60DYLyXv2 g==;
X-CSE-ConnectionGUID: V0gdvhjkSACHKZuDJ8CSJQ==
X-CSE-MsgGUID: nkEqoarYQjaM+gDzqPiCRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="68912885"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="68912885"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 11:38:18 -0800
X-CSE-ConnectionGUID: PfPfxGoSQGuql6AbvF38kA==
X-CSE-MsgGUID: nmIE5wdBReW/m4ujqSO79A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="194288924"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 11:38:18 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 11:38:18 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 11:38:18 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 11:38:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cWiK3lTvLjIUFaalABYEeb6h4Af0IvJ+O4TD5YWtHIdlSGRfKTUvdwS+jkUJjQK5GqJ2FIj4DYtWL9BQ13QHX7MVUvdmsHN0qgrvb0XbzmVjnxQRDYFF5BR73bmykxwhKAxlWYc86k/TaGzb+EQ+bPpqZO391MLhX7vVuFIrDQestgzt5MC0DEeNvw8Bhgch1qS9/WW6XIzl7JfW5Gh3JyxFLZNB7HWYHhX3QMhs+OjtFOO6hR5DI2S5tQ8AEkf1O3ryo4znJCWkCuDquKX4x35pvbnLcQUTHL1dfvxTaEtMCusKkvxYPOi5DtfQwhtV+mNZ3sGO47Ldn9vz6wLM6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0jOiXC0oX6UIu9HdWi47tnsJi94P3eR7/uAx9qT2680=;
 b=ITQQoq5AwfSHY+CVe3c1z60MG6LpbAFaLqaE6/6+AvgOVRwkbryUkLV3Q9iW25Q8k4Ppg8H7Uyh4SxKJqJexwOnnzQpHqw9MTqUjOSh1Llp25DVMM4sTOI0r2qHe5ll0uRj/diuzfr+1zCsBDB/mJ032nNhdKj5XhfNRoE02mmD5dPvEesFgToh/1HjseccpfXhUVCHIkDSrPdOjY2ao+7FaitTDT9alekmO6q1WLb8PXhOMGxfebzprDxkavcXvFVogwYkTUFtrE11xz/rEu7PIEgzANMXEKyzxc/gIlo8juEeYm4kMmo/3JiIazDCN15D8mPpslYIMqNZZVRyQ0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM4PR11MB6239.namprd11.prod.outlook.com (2603:10b6:8:a7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 19:38:16 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 19:38:16 +0000
Date: Wed, 12 Nov 2025 14:38:13 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/ltphy: include intel_display_utils.h instead of
 i915_utils.h
Message-ID: <aRTiJdbO8fnW8cIv@intel.com>
References: <20251112181342.107911-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251112181342.107911-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0058.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::33) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM4PR11MB6239:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c3297ca-1a1a-45ce-0f12-08de22230659
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bMfeuk2PdYFbfXm3++vXXJ7MnQDOz/oLiTvMhRqys5XWBKaZ3ftIZ/t9G7qL?=
 =?us-ascii?Q?PR2r+FsO7NV1AznWfMpmiqgmh0xlsOecOda+k7uIar3WNQ6OlOzO6yTLFXwI?=
 =?us-ascii?Q?NbDiwGJdLdcCGweUoSViqMvQqK8O0iKXXmaG1ay2pwDvQ0rljpp0ZSOTpjAC?=
 =?us-ascii?Q?+15NCvzqzhq1/SI/42R/JRgKgn77xUhzbokLvLaJ6JnWZGgkIRPSpxA3OlKp?=
 =?us-ascii?Q?BcY0dMEoTWQdTjUOoxan11GAZSeIQ0Nwj7iXGfK8nozVRs5RgAM5dSa+y1+e?=
 =?us-ascii?Q?nrF7tVUfYJ9crjLV/ZoVChUwj68aKrSUYra51g2t+tdtc1hpniUNkNT1zGoM?=
 =?us-ascii?Q?5z/Obu+/Mjq9b3ydbt5oMqgwOctGqOYGztrF+EAPL+ORdz4DSmQm7OqXCfcX?=
 =?us-ascii?Q?JLrb0ZgQeRMYf5Ce3h2fR1bwuYhU60wSR8fPTME9GZDSNeNF7fwqHS2pmqY5?=
 =?us-ascii?Q?vfS+nhxJYYdSHKxDGwo1SCNkLWg3nmphBUw55x/wMzvIJS841Q3C3DB3Jpqi?=
 =?us-ascii?Q?JMpIYN2fy4ZqYwqX3aeVP7+Rv58V20b4C0K0alarIqst/LbPFlQmm7ulcvq9?=
 =?us-ascii?Q?9x7brT6WKv6g/R1SD132jDHGu35mUeF5fhWxcKvwWJMHy7MqW4wP0J0DyX3V?=
 =?us-ascii?Q?z2UGb2cIlwsA3Sj76vJB1r5zqmzbEJmikSF/XgY6Ds3B9ZbQEmBi/E0YUB9X?=
 =?us-ascii?Q?CMQV/TFXOP10oQxQWx+zLaKqT+RvkLnSO/LOm8/DbVgKL0ieHaLfLM06RjiD?=
 =?us-ascii?Q?Ivxvdtl+nvge+Ej/FgDcnhdy3l3pj5rY7UG69+XV52OY15np1nFgrvt3d2hh?=
 =?us-ascii?Q?fqNaqV6W08Ye33A2HZdeSWZhqaLclFVNxEo0VNTLlnJDejjVTj9VQAKeIFjV?=
 =?us-ascii?Q?x72pMAer0wTbNYGVNf+GSVO6fv3j9rOuRd/ApTz704wnr1Gv7XNOEqbFhE7m?=
 =?us-ascii?Q?TwbSVlq9JaSBHewdE4ywfodFqj3r1koXrPXphRL3+tngQzTAVHMrokgcPD77?=
 =?us-ascii?Q?FhjJkpezMlyfP/nVXmALBNZC8D1iAx3z+KQA2HJ3DnFelXifzXo57F6ZlZAT?=
 =?us-ascii?Q?Nc2Djyw2R7jLXRZuCmolZiJNLdMMKK3sTFAta8qgBdJWGkHUk0RU/ZmD/me1?=
 =?us-ascii?Q?Z/TPUF3uH3siNkP0p6nHU/eLhdOcnVgGhT4kggrAIiOGb08U8qJr+sQJwk0x?=
 =?us-ascii?Q?gpxZs88Wu2F8Xe992aO6YnIUbpdY3TfItLboI4d3nZXFGXpT4mSGgW1H5e0g?=
 =?us-ascii?Q?QYhidSpiSXJrYJ7XLdONXKybOu6gXvqPFUMjlHF+Tv94BETsYGwoDDrv8Ui5?=
 =?us-ascii?Q?12Kj/xpfENhe0C4daxphBvk4sW2YWlF7mNDR4NIBwPX85ztHsdwn151yCL1M?=
 =?us-ascii?Q?/R+r/rCwDdYjKMcbzb6jgrm5wEOpsqGd37HOKIBI/nf1CTJjMrDYKQUY+8lx?=
 =?us-ascii?Q?Cs+REUNB1rnvSHN2VeoKXqi8Y157T5Nm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?af7qLgHzxJnTsjeQxvCzkWd/mVtzTtkRuHRBuZxA5XywTvokir+o4VIBrlqY?=
 =?us-ascii?Q?2fTVotP+jhlmpRZm5YfqyThY7O71uEkZBUSTr4zpdJTIwruZGrTBNlyy2UD+?=
 =?us-ascii?Q?xNE0HDsgYJSMdYBQC2+Wi49Zt2e4lH6KKNqWCABy/99h3gwlqly0dQuvbad7?=
 =?us-ascii?Q?u44dWGB2sp5K4IHYH+uewipPqn/uX0yQAf7JDM6WXefgAk7ktyf+CW7Q+kX7?=
 =?us-ascii?Q?eGrMGOvLQHEbN0PhAiaP1LFiveYyo4K0gkTHYtYCRYuxCGoLH1h8CiH/94hU?=
 =?us-ascii?Q?H9IpWNxPGPBMf17R4zQdnLhdjLqTTCXCoDUv0qoxjn1ca3uQ16YIuaBANt+R?=
 =?us-ascii?Q?tRhFL6uYRVNNtq5QeHK3A7FabKLWw6jDcAwc7LvCAPz65ByJSi98vc0qpHte?=
 =?us-ascii?Q?vngK0DuMCcxodulLtWRSLUWzu++7Bship4H9OKsep1ZEFtbq7qYHcUcmIT6U?=
 =?us-ascii?Q?ff4Ww5MDOJJj9hasEIdBhg/egR3j31a3uA36JBUOzjNCh7Z8o+CFlw236EJ6?=
 =?us-ascii?Q?aTzbmNsNc8FQ5aUIwJ0ycInvcHow236KXVhaMuCWzEWlsfE39yU4iIpr2PCS?=
 =?us-ascii?Q?Uh/13BeR9LcA/7JuUOjwXcOVe+OpbxTUYKGBg8d8Dar4C3joskjg20AQczXh?=
 =?us-ascii?Q?AlIv3Oh6RqdrUPI53u+6GsgDnnOk9gJFvcLCVc6HpyQoETqRsFDeHdHPF5vT?=
 =?us-ascii?Q?ophYqQaQy1XCV1uDnPAl014uytQEsAKncR1EsRw7iz1mwCbZ0ecUcN2keQ5z?=
 =?us-ascii?Q?Ale6KMcWfCn0Chc2e9fqGFBdTUM9T/TEOiPBlZsjGQ4igZ3UdG+ZQENy5j/D?=
 =?us-ascii?Q?twT1JGiboT7QWz1IxuP/AJUOO+t7KqYGeb25+l6H88wHcxmeLiEWBhlcIx/Q?=
 =?us-ascii?Q?n66EfHCkfl0dRKC0ETmHqQXt/Pqx56ZPlcxJmFFobRYHuBOCjgcBbMdyQDuH?=
 =?us-ascii?Q?djQFP9f0bneAhlTYCnalnq5pS5yQjHTZVgfH26+blfIUKKTg3N382Bw6ujPD?=
 =?us-ascii?Q?4oKrRcQhfxsUFX2Uiq4v5R16ZoCLn0jPlG/iJUQ/I/Mel0JujoFuVnwgzYMZ?=
 =?us-ascii?Q?VQWMjxqL9GI4I2by9apaXxSn+Wecl1E4p57u9EvmyaorkQeQ9yXFx7iaUkUE?=
 =?us-ascii?Q?nN99LSzZ9mKuN4I4VDO9dn5iOh8tBjS8xav/XXcrOgcQFoatv0swtQ695tDs?=
 =?us-ascii?Q?P1+REZi2J021SLDBvvFiPbcfEDYM46oS2O6geQc80WTa9outua3eWLv3Qe6v?=
 =?us-ascii?Q?zG7oYtoSuQdP1YTg0FmuY26ju2xQ9MuHxe+gAerma/oTf11xUxfpvAXtLY1+?=
 =?us-ascii?Q?br2QbHSDZAaHCNI8NcQB4l3mVFGa8t9B4FPLyPvm2h31SYaBeqrS4q9eyQJe?=
 =?us-ascii?Q?zB3Vv9SseLrLa96hUyslrhzJ4Cln6JdcArB/yzt3bAkDzS5zIVhErxBibrsB?=
 =?us-ascii?Q?qt++ZWgMtAPRMEdmL/qLCfEQTr1Sue2EdvPC+Y5Gj+ZCnAtnfNMXq1dCr1Em?=
 =?us-ascii?Q?ShD11WxbKoQ4rtVvT8UKHGkuJc0/ZzFRFo9O0BNj8HbgBFjmkWnutn19ctSx?=
 =?us-ascii?Q?JWxRjgc9P1HyO88T35ttf5v6J6nX1RJ+vh5S3I2hKcjPUNt/hvwx65oAudER?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3297ca-1a1a-45ce-0f12-08de22230659
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 19:38:16.1227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J5a3rvusMk51X8OT/JudSDwVRyy5OmsJV9gi/gVphxEj6jezXK6h3t6dK0At0scHchDLlnfjscYF8dBch8YSZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6239
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

On Wed, Nov 12, 2025 at 08:13:42PM +0200, Jani Nikula wrote:
> Display code stopped using i915_utils.h in favour of
> intel_display_utils.h. Fix recent additions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index bebd7488aab9..a67eb4f7f897 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -6,7 +6,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "i915_reg.h"
> -#include "i915_utils.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> @@ -14,6 +13,7 @@
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_hdmi.h"
>  #include "intel_lt_phy.h"
> -- 
> 2.47.3
> 
