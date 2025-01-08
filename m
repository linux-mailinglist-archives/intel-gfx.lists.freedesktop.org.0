Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78EAA06733
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 22:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F34D10E067;
	Wed,  8 Jan 2025 21:31:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6y4nNam";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20C410E067
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 21:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736371875; x=1767907875;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=PU8A0Qz22FV6V4mJcEfJuiRp4h/8NCrGMYWJRpR+ftU=;
 b=E6y4nNam1szDvgSXUw6R56cgSUy7fQU+YVjoHknYTj6n4CsY2X0bKvoG
 NO2cYscLXZ1csZZBhSXfs0kkDPULHkRkj+KoPsNI4d6gek7LmJxTeA2h6
 ZjOEKftNK5crDGrgxQD/Fd89O9JSc20SG4gjdJ1Fm+yi2QNo/EOBd4AFw
 1bvNFIPs2rHSOcxFsqgSHs7PSmgikm2Y7DVWuPW1QS90U1Jc9onoIPnAm
 N38AAH/Au4w3gDbic+tcZdFu/Q/p/RVPzfBMhsAZNn40kZETJHwXT2EGg
 LCO667+mwwNIEkgaI6JOdB6O4OaGC5UtL2bV0t2o2dls6oPIhTtjeSZ9P A==;
X-CSE-ConnectionGUID: 94VgnYFYQESOV08xWNS+og==
X-CSE-MsgGUID: G1f/kDSWTKycdvQ2ALAPMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36838410"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="36838410"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:31:09 -0800
X-CSE-ConnectionGUID: dYNX2gvUT4ueDpCcySeLZw==
X-CSE-MsgGUID: KUFmXH1bSLqB58XEAfaBGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107258037"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:31:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:31:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:31:09 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:31:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H9w8lIDpowN+W9hDE24StdXqC4tbOoQv27XX10AClkYJ8MvqaEsxSL6Zc3rOFSrGJObbHTXMqukocndfMG9xKEGvOM6pjyq2L7Q9CMihbPc9JrfgfpWIYysXVui9oQYrSjhF8N2Y1Ffpgyc7pYDNFBRR342R1WZfbhcRJC+x3RzB2juqqTgfDXSHY6I/Pj9n/K6GTXBJMt6NrK/6h/NE+/6G5jEFEpOGIEE/jSMRjlx3FH2mu5e57tIX3rBFmXbipe/ctk8BcjN0Ij8weh6IltiLFsQeg01EZyd5YVq/rc5k854IiIESo/I4DTC6HqYNFZ+CJ1oL/XfgAYUpAeTjIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=scC1MKNuJ55o/vW+PQbrnT7pP7CzI285g6pjbU9LJKY=;
 b=F+41hmUQ+sXJWsqvdW1PLaqPMLiZ5rQwTG2V2AiwwjP/x5cZwu5VNRNYz+OS2LdThqVdQ//XyU5SPHXMhetHx97rsZXR4ztnH2b8OtX4xpGKSXKyHH7OneuvIsm++thkO+7TXeWAgyEZIKijTyw9TxM3BBS/bjknjmKtu9V0e3xsQIZ9lakc9Svw2S0haXj8kz/KE6pHEZrxR/Eq2TQEM/jSqSYIsRPajt6OI9+KtFBwTdF06Qjljhinz9P1epx1qmh8rwwM6cLP2I765nY7vjlg2CSkcIV2fxknlgbU46fhBVgpUTHCGpED1RJBAkC2BnPgKp6Zj0h7QbnMDiiVEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Wed, 8 Jan
 2025 21:30:24 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 21:30:24 +0000
Date: Wed, 8 Jan 2025 13:30:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/6] drm/i915/display: convert intel_ddi_buf_trans.c to
 struct intel_display
Message-ID: <20250108213021.GL3224633@mdroper-desk1.amr.corp.intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
 <89471eb566ac2d73520124b9bcb36550234d5a03.1736332802.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <89471eb566ac2d73520124b9bcb36550234d5a03.1736332802.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::40) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: 7481c8ee-fec4-4682-d348-08dd302ba949
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?sga1DYuD9epdYBNZ5swOCEMzM02kXcejxdwno2ls/lpC2dNFOR4jNcni6x?=
 =?iso-8859-1?Q?x1fvY5LtCO4MwSog7nOvCTOTMkMw97wqAtJlRc8IpcZfNq8xK/2AG/wB1v?=
 =?iso-8859-1?Q?9Iwk1o69Mu4rMDquZ3NBnjjw+8GU/bxb3uIsQmcG1sE+PW8vUNJ9AfoOgT?=
 =?iso-8859-1?Q?rPjPB7U+tcHd9Osivy3cEvTAJrre0Dx8rTYFjuqr2xKRDqWl8PGJpl/4DJ?=
 =?iso-8859-1?Q?7ZiO3DIb36kkoVxkCdvDcLY59RoICOnRo/ELMNNbyN/DDrFbk3Z7v0mUkh?=
 =?iso-8859-1?Q?uCglha5oUaeOxm6/vXLaJC+dkUPrp1jv4cowxNs+sV0C8SUYCJIkNNmVXY?=
 =?iso-8859-1?Q?rA004pCJnBgD0QbFi1CeC9mqvsEUWwq1hSGuEicdqqV7PsuATMHJfKjWtY?=
 =?iso-8859-1?Q?9omyNra4iuBF2Im0DVpWqJwNeFwn09i4lJ5MGP3iq2K4Kv0A0wMdlACE7A?=
 =?iso-8859-1?Q?uUmxpoZ5l6Rlaz//NJiKB6GGOuMd/APriNtd/MjfnkGn1IBRX+ga/1/poe?=
 =?iso-8859-1?Q?JEYpYSxO8gYH5BZ3y2W83MqJ+rqXW2XVenSN9lfFEdBeMUx3O6ypLebZuP?=
 =?iso-8859-1?Q?bvXSbIMp2bRisTaNM6PycTrP9s04Ao3iAI5CP83aPDeuizTFiWC3amwWEo?=
 =?iso-8859-1?Q?yW79Qml0W2IX9A7XRV0xjve5njA49rb9fOpyzxfMY1dAQuffMYgU+EWCE5?=
 =?iso-8859-1?Q?IoY8v5YJkOZ3Fluz9qogVGqextzHURjIIWOah+5YGYEk+Obd5XUtb99wkK?=
 =?iso-8859-1?Q?KpKYGM2cCpm07OFyfRNWqLo0UsmoV/q3XwgRYPkoBUcGRDWP4aHHZcC+X7?=
 =?iso-8859-1?Q?39OsKCvECACRElmo700PhLp6gG5YFs5kfms9F2hi3ztNrMYtlxhr/oB6ff?=
 =?iso-8859-1?Q?3PmBoMibwGvahcnchakmKHPLNgKZP6dkd2i7NScsfeUk2+nsf33wigJMOR?=
 =?iso-8859-1?Q?InuTQVmW4zBg7kTLFfpRW/uVhGfz37A66/zGr4uH6CpTI39oVJ9uF8CKdS?=
 =?iso-8859-1?Q?ZnCbMQmS2ygKEdVubb45HeKcWBp6MqD7zmBrPoABhUObrfpCLb1c1HvKs+?=
 =?iso-8859-1?Q?o62sE7Et5/NQkcevQFUpGtw+UiWGtRbxW9IRXdKEq4HE+CbIYa1JcgEzAo?=
 =?iso-8859-1?Q?3mWlPdvbDPGKwvsmL7/BkndclSchmSgUXKNqCkmdTHsq308GDELgCIr6kB?=
 =?iso-8859-1?Q?j/W0D2xLZk6lDwg0N+oXnze4vcpyLp1OXgi0nc1I+/95dOVSdfUORyNWKm?=
 =?iso-8859-1?Q?wBXexI8vml2W5Cns9Lfklt0XBeVIlB1xFWsD/ALMUFFge6F888JOEYwsQu?=
 =?iso-8859-1?Q?CIvDwa0MHMNOXfP2GBWqyRelDtt1JSx2HObEl8+sTnx/Jky8AldXqPidAz?=
 =?iso-8859-1?Q?2dlnrg72QP0x4tH0Qedr71ZaWxdKGfWKIck5xT65iIwPIDI05H+597nsE/?=
 =?iso-8859-1?Q?onHTSvYxtpnoCZMZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?QjcAAfilEIXVF9AtraA4THlnULuVdD5S2eK9RqUZ9ObZ0CRMCS8XyZTtYR?=
 =?iso-8859-1?Q?vFNxuS5qJFdnyYCszNCp40ljXzshoxs9RwuJnMVtis4MV5nn2F/SES+Cg/?=
 =?iso-8859-1?Q?aOa0rnWvAHs8D5JlWiE42EXjr1zRywrVSg75OISgIp/epQhoBc4J/dcpMV?=
 =?iso-8859-1?Q?/5aWOf+9xm38ln7wJpAvlcbKCjYbPJ44iET9r0cwK22gueL5RhJLJHi8oq?=
 =?iso-8859-1?Q?UwASZm1wHgbZ0ytJAk0DzIX1yijQiW48as6uh10inHEDgYbDQL1KBKj9bk?=
 =?iso-8859-1?Q?YfWOzuSooLv1kz9YC84KWsSXwFagfGAuSTfBpZ8HwA3p5ebtsfWlg/AMzI?=
 =?iso-8859-1?Q?egVXuZnVS3tdV1Yo45c7VyEd/637vGaQKVyFZxsl79E98tuI+XKhGggnbB?=
 =?iso-8859-1?Q?+WVBGGXEBWEQlw1T835/0XXDa39OCYQ+ZSWt07frLaqhomNQEC5nL4lGYi?=
 =?iso-8859-1?Q?56jle7sbggFpP94CRFgJeWuFBUgeWPd/b1vXrpsqyHRSh8KBsqufDRZxK+?=
 =?iso-8859-1?Q?eWF1/kinhSjQP/UIfpsqBSH1By9f7AKYITDM+6QZAuMCRE637MGYoY/8Sv?=
 =?iso-8859-1?Q?PN/ncuTgRly8R498Sq0fZRr8uerkIj/S8+blEIwPPWimBZddDWJI75rTS6?=
 =?iso-8859-1?Q?3FqhjoEYysjKSIRdDzL9PoKDnPbmDwgBT7tcfHgk7Q0D3EgQFawLl+D3bV?=
 =?iso-8859-1?Q?GmdESeOpTPAN8N7JhbefvWlFC0qP+BNF6e5daUcEtBAXpPlR52cINBkaAI?=
 =?iso-8859-1?Q?zO+aCNr7GOq6MHPmJuCelKXkIApBfCiyCoxRiZtIiYfbbaPOLDTB3rAb8n?=
 =?iso-8859-1?Q?WhsUQCBKuJn8x2Yt//qMj7G5xXwwE42WC2TIFmMoWkBG758xEn+Cq86fIh?=
 =?iso-8859-1?Q?nrvNqKmi15M0vQKrEfzmVXvZSf74q1lVBGXCB9SGQG0yj7wBAee2tCufl5?=
 =?iso-8859-1?Q?zLsh0pEeex1su9Z2yZn5szsT8e4sR7P02mf4tGIRsjaSl45D/kBp255DUJ?=
 =?iso-8859-1?Q?SERqKXq3qRHe/x+BRsp01fuy03W01NAGUKUxgMpqPnLF1wIQFl/XoDeMWB?=
 =?iso-8859-1?Q?ElsxWqd+Au7rhF5XtthzXtiPykv04jmfMVFBWGQLUaHW9tA2H9f0J63i3l?=
 =?iso-8859-1?Q?WOHe1TxyA9wOksOKuSVOZqZexRkAhK6qSoftcC0ZVueWRXaKmJKN7fZ164?=
 =?iso-8859-1?Q?yMMHjiDlfvldroWI35WE49aT1sBburCiBiYHzuhmKOpZlRjrruZYQPxlAn?=
 =?iso-8859-1?Q?m00SEz7Wc163+QoJCm/36eDrIShY4+xCOXCPvsfqqSoRoBsupmg7uZDdzz?=
 =?iso-8859-1?Q?Edw5j+Bq5LrWn4qYGqQcp4k5yRH1DFrsJ75iz96ZGFaLIyz324JC7k3UnN?=
 =?iso-8859-1?Q?oW2BbHzfx2tp0UxB0O+BFnNMWxLoMAc9HT7HUonqc8dOZIxYRLCpBjp+r4?=
 =?iso-8859-1?Q?vIDDU6SCJ9I+OBMnSKAgpSn4FnkgXKJy2w79DWw2px1jNvDU+F+WvEf374?=
 =?iso-8859-1?Q?EcnFq+NzSRFfVOMaMTF3xMDA3wdr+DpDc+0wU9zOcpV74dLCOCfaQ/sA1v?=
 =?iso-8859-1?Q?SzIZAu9+JxpFgHtux/pqy/v3+YLjr1QPkyfFzZc6IeBxbpjB6FYknLojLI?=
 =?iso-8859-1?Q?ZzF+37Z/jH0L+LzTHn2nrNk65CfD6x0/vUW06FNb4/MqkXnSVY09/0Xw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7481c8ee-fec4-4682-d348-08dd302ba949
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:30:24.0083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bp98vkFOmIBKdw1ekFhdRMo3JgSmppycBfLB0a1dVAtmtm3cLA0ydV2wEQj7NQ9YBkN6qL32pVsSeSDJXvRubwmUVRklUtT2wQgtqsZsY64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
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

On Wed, Jan 08, 2025 at 12:41:21PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display is the main device data structure
> for display. Switch to it.
> 
> For MISSING_CASE(), log the PCI ID instead of the platform. This removes
> the final INTEL_INFO() usage from display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This patch doesn't appear to be related to reset so I'm not sure if you
intended to include it in the "display reset cleanups" series.  But it
looks fine as well.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

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

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
