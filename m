Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A80DEADEE57
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F8010E847;
	Wed, 18 Jun 2025 13:50:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kvga/t5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FEF710E847;
 Wed, 18 Jun 2025 13:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750254599; x=1781790599;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=puzfUCPKIsQpmLUsAYRbfPwKhXUxamiIcfvRKEyIjFs=;
 b=kvga/t5TIBHIl/ieOlvLvBtp974O2j+zuUUyj8maIlx4+GRd/WUVQz+D
 1cRzC3Og5lj84u5QAxARSB3kFmhgIHa1ExIWg6Qcgkv++RhoDnHaoLwnp
 2+SMZ9XTw/sS+xDtXT6AsdMWzYAF0HMiAp0huwrjPTzqCackINhmwWwsZ
 j9QTWgPqY2DEIRr0C1JeN6XyX1+bceNWqMuPmAGKXZRJZz7ZmpGzDF9B7
 AVnWL2rpt8+iqKg4kSAbg8QYQLvf8a4WQlJH3e7dFbomSLIqw8bIFA9MA
 6K6t240yGWdkWqEqRTNtPVJiU+55G82ziVYdc/PzLGNEWOVkEIx5vwmxQ w==;
X-CSE-ConnectionGUID: dpWTj9d/TJmM+2Sx6rNyrg==
X-CSE-MsgGUID: QxdWrmtIRz2e2Ro/xztzBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63080566"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="63080566"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:49:59 -0700
X-CSE-ConnectionGUID: sbiS6sImQLqxHTxd5UWQpg==
X-CSE-MsgGUID: G3FvslYITAG41GXzZcXmxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="155051101"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:49:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:49:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:49:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:49:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QiSI4dxXn5TAgtu9hX4+DDEUjeXBg7Hb1WQWjennLcjl2byydoC3GAr1Tqn0vt56e6XfsK03KXlUpYiz7SeyRpMfLjpnGuQAwQWsshDYo1Yxnkspx328SP9eKZUOKS/Tw9QgSeVeZxYvLKHBvmx6zIcEiMsmDEbmj/kIc4/mRc/Pi7DAuB3bE0FKaViw29LZ78dB/tonIy86n3oRT7k1QxWTo7LexgIqWLN4XbLVYBaXIpNw91lxWV3bZMra33WnuGM/fGOsPbB4yG+u8IoKBA3tywUNZSaqLKao/C8o5npPFVCxUgU4E65X86GlWcLUsegPFkrq3d0EhqOstXt/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPiZTdLWfCIIOFdO1bIo8eK5icQnSgEkLOLUMF/XTVY=;
 b=qmHdeAWVaryx/UP+a029Pd248MrrWYifY72ZziWp2W+rufLrFPjY017IyUFA9M6x9OcoP8ROoadwIIB7eHOnkphJRfjJUIJZOswJlw5/+MwRhQYQ5wbhAKbrRGYpxme/I5lTmYVNKn2M3V+UGitlGwYpyX6JFTlZ3sZuPcc+nIaJFlglUvVrqY/eBTcNrR+/tg18xOOj36rUCtOZgD0i19TqJ9/JxOsw04eklw1TjsyFshdzVk06DLE62vM6f/CCIsq5LGowojNvtgyq216Mfx/ErFAUQ3sRKEaHwMCLIBTZHQHCM1SgsZ2k6T85NGmv1ccnPGC8ApRNDL/N/psd1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB7819.namprd11.prod.outlook.com (2603:10b6:610:125::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.27; Wed, 18 Jun
 2025 13:49:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 13:49:55 +0000
Date: Wed, 18 Jun 2025 09:49:53 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 6/6] drm/xe/compat: remove old pcode compat interface
Message-ID: <aFLEAb67myg7H8GX@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <57462ce3cf27610907ebe4cf8ba5bbfc63c765a2.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <57462ce3cf27610907ebe4cf8ba5bbfc63c765a2.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR10CA0027.namprd10.prod.outlook.com
 (2603:10b6:a03:255::32) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB7819:EE_
X-MS-Office365-Filtering-Correlation-Id: 11ede3e0-f68e-44cf-fa0d-08ddae6f021c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2nz8vpxX4tu0dKUpythH72zxy/ySculnFiFRen1fQ+PqVf4NkntP4Qlmjy8j?=
 =?us-ascii?Q?av9wmfpnX/Tu6lzkMUCzKGYY64SPxz3CK3V0e8H35hSganrZP+7JqONC4epl?=
 =?us-ascii?Q?OcZXSmRedmaQbFlatjrmAlHkBr6PvP0qaUiNDAZh1+yRZ207f+J3keWNeV0o?=
 =?us-ascii?Q?PylMPitcB4TH4RppVhoti0wsbM+/lvHUFGPnK7mEDvdl6AJnmOA95pnF/yom?=
 =?us-ascii?Q?3Q44t9rS0HNhPSD+ehTG8fZPD04ez8ADuXG+Gt4rmzu5GRKt/GMUM0vPfEVz?=
 =?us-ascii?Q?o1IqVBJi86HPtzcraeg8cI+sL5/oanmLgPVfy/gtI5CVeiOwBOKsnyiTscbS?=
 =?us-ascii?Q?8ZxX6FawdFU7EjJKGa4RvSXVW+ZGoVCUEgeS2uJVaDoPow5AIZ18NErtmhli?=
 =?us-ascii?Q?VUclxH7WSLIP2OApj2Ut0xLrXqz0Ja+976k6gLvlHDLWE/vDBMYqbd5m2q3Y?=
 =?us-ascii?Q?m8Cuzj0BiwvIHmJ72A8tBZl8q0G6bJQu3QiIsAvlxv876e2zvHdl/TRLIhOd?=
 =?us-ascii?Q?oh6g6IZMeoIBkqsrZLuU5TYh1dEfHpd9SMYDGywv4FNJ9eAcXNGojiBsds/t?=
 =?us-ascii?Q?tMbcmq6Kekg33mTw6qOqxUqS40f+AC/m2F3VfFMNYs+rdAxx70sUWcCxek0y?=
 =?us-ascii?Q?Qami6U0OIiwe/d+ccUlfpXZU0ScgFKch/agwZZsQ3vsnVkO1MNIzUijomqIU?=
 =?us-ascii?Q?5RGA/NttTmPL1hkGuFtSsaAo2IRqWKCwoe5fHs9EuiNOnnhD2I6+ozxEW9md?=
 =?us-ascii?Q?f3JkMhsxEHCahmFHu6F7mP1HgzhU1TjiPMxXXPS0F3Ts4ioCSkrCUkhGBEcC?=
 =?us-ascii?Q?rqGeseyyrcr9dy9lz7SGWzgLjcw0n7ymLMMLOmo+YsZWZ9cJV4IxxBwtrkUI?=
 =?us-ascii?Q?t1Tfrtq2lVwWIgl7SLRXISEeyMyCUYR0DI73kJcutiZzY2BWi/NV0pVA3OAu?=
 =?us-ascii?Q?yWBpMlV1o8CRCh4jOsuw9yASWNTJ38oKg9imGwAMKpb9DfzVaIZVReun3ZHG?=
 =?us-ascii?Q?954NegznMgkLp1laQonS2+QYPt54Unt1uqgB9jwdbaOl7PERi9D34K+7YEWw?=
 =?us-ascii?Q?T+OFsOmDLRfnTx8tuiYZvDCvwemXCoaAEouueHj9Iy/RsOAL7HH83e6V3KWk?=
 =?us-ascii?Q?sPSkt8tclaEsf3MXwWfH+gdA4Fgu2ziHWUh4rknV/D/QJFkY6Es9iUVOTrX5?=
 =?us-ascii?Q?pqq0/XXOWSDsP7G7+Embu5odP7pi5wLnb7AcaIXtOvIqLVVIbLI+Epzsqsc6?=
 =?us-ascii?Q?M+KHqLZPjo0gd4/eeVPEslsJ21gX8ARZcfUl365cfrb3v09FopjO5MtlVsJk?=
 =?us-ascii?Q?QAE9sgDD/7OhLbFRRzGmQ7jSkbwhbE9BO8d4JF5HB8qLO7JyM1GtIULcIAQh?=
 =?us-ascii?Q?GLzB38sH6hr4lUO2FEuc98vX/uqxDD3hot/W/b00X3haX8XtlTnct8319yQe?=
 =?us-ascii?Q?xE4GlaSqnvg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TWfzyGISWjrZPCeRFLpMorTbGmvdMMiztmrQKARt49VB09ubIgQI+0uceZyO?=
 =?us-ascii?Q?nBzBeC0fZ+G+uHILJYQ3fIbgQC5Osmg/6cTNofTUuqqUgIFPkCC4BatPfSK8?=
 =?us-ascii?Q?na7/oV4uNQgvsoyyI27/uF/CB/RHvspEC5ksYUA6kNMddZGzLJv3qmMbbxRD?=
 =?us-ascii?Q?tY4mH4pLV3k/Ibzq18mxl+eMvey2cPKARfqxk79LU4yTzsD3Z7W3IDNKNsa/?=
 =?us-ascii?Q?Z7TvknlmFGxhe6h/F0YtGdkMNFyc68i+bCJ6XA5H1G1PHeIylXrAxKk+zYBx?=
 =?us-ascii?Q?lw2EkbpHpe6+HVYghIQ5VXdg3BnSnuA4Tj14ojac4LPA3WIDhUwkpSZl9pT6?=
 =?us-ascii?Q?6wTU43Ww5jKm62w7464Emti1paoBEVi3Ldtj5sRkJzVUsz6vbP3T1V+tTSCJ?=
 =?us-ascii?Q?hZM762GyMDoOv0iPdSxepIfr9umeMBEJ2ImngCgxJ7+dYwmf7th5sf0r8bh9?=
 =?us-ascii?Q?rxpsHy/OObd8vrfdnc8QLeAB2aS5RDUcXxKFD/qjzjzrKHdIc64/LYQo6AUT?=
 =?us-ascii?Q?0DbYHrwwMc+uLnJfoNXhobe9KryxUrgSOC46M31/UjdyhoyXv3uubzeMPPfV?=
 =?us-ascii?Q?lO/1v8PSSGiOdKIZNWuR5LlttNdWFwzLXcKCjamo2ytdhML2TGU7KAqG3I3o?=
 =?us-ascii?Q?u8tMHxClwrlswTuR0BS8pDSHF83fju6SP4HlLt8ENwKgOSpauYeKpoUoylNj?=
 =?us-ascii?Q?ClrGswbU1BDV8IerB5A70+oQeQkNI1kvG10zsUGkWXTZWqirzK1B/cC9OIjj?=
 =?us-ascii?Q?1/NkiLuZ48zZ3Eqs/LmgL1Cs5o7cmPv3lFxaQqfshge/5Pf09pteoQW242RK?=
 =?us-ascii?Q?tEouPjMQqWNDzo1bK2jYOngrJ9CCDXtvpZPHtUcxzhDOaOVzLMwC4JmIRp0q?=
 =?us-ascii?Q?aM/nNUQ3I/ID7d0PEtw65AIOXBdjn96YqfimWJr8IIZn7ot4rMc3TPe/jm5t?=
 =?us-ascii?Q?Y+xgiAWUS3+8WIYz9NNK3LsMknrFYcrH0CQn6fl8b3mZFsIh+n0hBvg7dJaJ?=
 =?us-ascii?Q?rJ36Hzd1iZoFVQhiKKDZLnl/HWChIXNgUVSRM9JLJLkWHHv0u5dXIdj7CmsX?=
 =?us-ascii?Q?DXTU/Le6NQOrizZP0ZyeY01UWtn92SVV659sQeOUD7o2prRtt0oPyHOKM2bz?=
 =?us-ascii?Q?5H0ywaIjjvz69JArsvqcUNqrJlJDtvgYY6KIk1bkTFSr16tpMASvkXP0s4dh?=
 =?us-ascii?Q?Mo/R1CUjwqbEwfSBq3iUdI+Hmieq7A4y07DM6qtk0nQZWroaiQbhF4lzNclT?=
 =?us-ascii?Q?cP+Guma9r9BFEgwGJtE6wMaOlyoUfstAnpzZyrFhdv60ej9yzQBCmg0v7T5h?=
 =?us-ascii?Q?nQ8iRIB9+iZNtl5XS9L/zXkLXOzovS+wG9fm3TYEcZx20TX83BieruZD72FU?=
 =?us-ascii?Q?5Y+LOyuUzHkX+vsXtHWd7oHDPSAc7bawBZ4kBG4rIylE7FKFL2H8JpMz6zT+?=
 =?us-ascii?Q?OBdC/tci46K4VPf+mNk27v2z14eKMe5UvS/kdhQ7tixcbMwQ7vyGGUkEq+Ei?=
 =?us-ascii?Q?68cQaPhGmQoIuoBMU/ZgULfFSVOMPNcALAwVxHJA7CjPGx3ljH4Ffw1zDA1K?=
 =?us-ascii?Q?TAtF7Mg5tnelQWNN5TgkTe7jQO9VLPE6vCiSXDSC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ede3e0-f68e-44cf-fa0d-08ddae6f021c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:49:55.8993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gOTwOcbCUWJXcmDmmeyxhiyGEgH/jFKPEimu+yFGqc1VjzqnX2J57lT5iMRL+1j/Q8rDaftdFeVGHEPolLgTvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7819
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

On Thu, Jun 05, 2025 at 01:29:38PM +0300, Jani Nikula wrote:
> With display code using the struct drm_device based pcode interface, we
> can drop the old pcode compat interface.
> 
> We can also drop the __compat_uncore_to_tile() helper from
> intel_uncore.h compat header.
> 
> Turns out a couple of headers depended on the intel_uncore.h include via
> intel_pcode.h. Fix them.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       |  1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c         |  1 +
>  .../drm/xe/compat-i915-headers/intel_pcode.h  | 29 -------------------
>  .../drm/xe/compat-i915-headers/intel_uncore.h |  7 -----
>  4 files changed, 2 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 82f131c3f8d3..205069257b3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_types.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
> +#include "intel_uncore.h"
>  #include "skl_watermark.h"
>  
>  /* Parameters for Qclk Geyserville (QGV) */
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 5d43042b0fb5..deb159548a09 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -14,6 +14,7 @@
>  #include "intel_dram.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
> +#include "intel_uncore.h"
>  #include "vlv_iosf_sb.h"
>  
>  struct dram_dimm_info {
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> index 32da708680c2..4fcd3bf6b76f 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> @@ -6,35 +6,6 @@
>  #ifndef __INTEL_PCODE_H__
>  #define __INTEL_PCODE_H__
>  
> -#include "intel_uncore.h"
>  #include "xe_pcode.h"
>  
> -static inline int
> -snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms)
> -{
> -	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val, timeout_ms);
> -}
> -
> -static inline int
> -snb_pcode_write(struct intel_uncore *uncore, u32 mbox, u32 val)
> -{
> -
> -	return xe_pcode_write(__compat_uncore_to_tile(uncore), mbox, val);
> -}
> -
> -static inline int
> -snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
> -{
> -	return xe_pcode_read(__compat_uncore_to_tile(uncore), mbox, val, val1);
> -}
> -
> -static inline int
> -skl_pcode_request(struct intel_uncore *uncore, u32 mbox,
> -		  u32 request, u32 reply_mask, u32 reply,
> -		  int timeout_base_ms)
> -{
> -	return xe_pcode_request(__compat_uncore_to_tile(uncore), mbox, request, reply_mask, reply,
> -				timeout_base_ms);
> -}
> -
>  #endif /* __INTEL_PCODE_H__ */
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index 797091cf1c99..d012f02bc84f 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -24,13 +24,6 @@ static inline struct xe_mmio *__compat_uncore_to_mmio(struct intel_uncore *uncor
>  	return xe_root_tile_mmio(xe);
>  }
>  
> -static inline struct xe_tile *__compat_uncore_to_tile(struct intel_uncore *uncore)
> -{
> -	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
> -
> -	return xe_device_get_root_tile(xe);
> -}
> -
>  static inline u32 intel_uncore_read(struct intel_uncore *uncore,
>  				    i915_reg_t i915_reg)
>  {
> -- 
> 2.39.5
> 
