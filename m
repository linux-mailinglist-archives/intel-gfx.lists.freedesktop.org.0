Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DC7C988A3
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 18:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B6710E155;
	Mon,  1 Dec 2025 17:35:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTjxfPKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FCC10E155;
 Mon,  1 Dec 2025 17:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764610505; x=1796146505;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2PHAKZZ7thiuSHvG5dtzcqi8kCi8EZOenZlfnKnC+Ek=;
 b=CTjxfPKYznG6d4fRjzcVKNWwyFw8BL5IL24qSXnka9CGVtXbHLUT8B5H
 +d2RfMjNYOgNnRkyBLbEfYv4IlOfZoNgVvNq4G8deCs5sw4QPKsrQc3RT
 /CDRSmmC+kRvRWHysfH/gCZOjU4ezo3USyahXq8Cfq5mKZPpxpQNbCiwR
 Z9/5eqY4omZsTnk2WgKYs4dOPRrCKRcPSw7oAYcUkRS9RCHKD/UCvvIDz
 V0oeG9APorYQxRfCeOG6zdMlgM+JBN+EZ0F5BTIYH2IIf764hxw7xa49P
 WAa+qieKJMFDbV5gHtdTPJhVzVph0CFfldGm633o+Y45iBS46btPQaKts A==;
X-CSE-ConnectionGUID: 8CAqU7bTQwe5c79nTb2mFw==
X-CSE-MsgGUID: tTSDLr4DSKGhUf+dp/9UDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="89205681"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="89205681"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:35:04 -0800
X-CSE-ConnectionGUID: /p3FuDQWR3Ow7EwGd0zFiQ==
X-CSE-MsgGUID: G9EHsLzDR9+1nR3ayzZ5UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="193249047"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:35:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 09:35:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 09:35:03 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.44) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 09:35:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WlylSUYZKP8NbTGKKSnMHMn7Nty13mdeJtCTpv5dybnZXe8+BP7qEHCSgoukJ5vYjjxuXPA8eWYm+mLQokqX4opXAEbAalmzgB+mTu+PWHTyKqWZPeHuzcs2ezSGnODtuA1wYGMt0AGNyCgWL/CXABCMy7tMRcWxUpC8jNzQydWoGs6yDOiIkg7Cw8cvTx6X6UDJCDegfVCxfonaQS8e1PnEpgn8LEDiOiZaEeVucQoDTNW3U5hDfuUbEDlZyjd8aES2UtLTp6IVI1FyegMX0x9ZHn7kR6+WHDSDZnwyHI+0BPTNr40BnaaWBVCbLXv2QG7iKAkB63eOMqfN7IsrCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mv4co7hUDIOB5jA4ZqrGPyYxB3N+Bce3FPfXFDetIlE=;
 b=tlhHIEKHQafy/LS2OwQrXciqsem7RdqPlKDkU50i6Blcf4iTzca4/jDNWfjdIRv9Xvjn5DejkYsPrd2a5b+wqvwvkZVhbrscueh2GKn1MVKX6os1rfWrKh4S4U5yyxgqF2PJIYmocdFfQoJrE0eOst7g7j2fUXuoCQ7e9PvBGPDVdR9Dhjpdb45aWQfLSZG6+eiVMdBdkEveKuag5ZP+cSctSYm46n+BDfPEwuyhBV09/gDR5U26NT9uZdUNq0Pr8WJJVC3dZ5TzguAtaQ9CEuZ3U2tVDWfz0AbE0jTtNUWBV2ob7dPVEgPE7DC5gKhvDqet/mYunc7XaXC/EgFq/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH2PR11MB8813.namprd11.prod.outlook.com (2603:10b6:610:282::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 17:35:01 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 17:35:00 +0000
Date: Mon, 1 Dec 2025 12:34:57 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/{i915, xe}/display: make pxp key check part of bo
 interface
Message-ID: <aS3RwWnBy2nHtLLo@intel.com>
References: <20251201172730.2154668-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251201172730.2154668-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0071.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::16) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH2PR11MB8813:EE_
X-MS-Office365-Filtering-Correlation-Id: bfc2cb56-ee2b-4e51-96e4-08de30fff437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?JLpjBqUY6KXnrh+ZbKOzaCNlzOQE39kiEYYhsjG42KJWpD5d2Tlw0Oj6LO?=
 =?iso-8859-1?Q?JDKppmzwetcihG8kKRHcdWcYeUpo4KcJNPn8wGf9AbAZuddyqHhvOFgMex?=
 =?iso-8859-1?Q?mJVV2UC2iSMSdmP0SOQ6poDsxq2OfJ0Re2hyCte4f6NM8CrEkNGZuOoeP9?=
 =?iso-8859-1?Q?uqV5jxCS6nfmJPqUxiUYaDvbnbPN/Shre59tPKPC1QfpdyEdCXOt48Ws7H?=
 =?iso-8859-1?Q?hlWmgQ9NXaR8Ah2HzVVV5l7FgM4SO64N0rbIBablN+k2UxywUryaCbsVIw?=
 =?iso-8859-1?Q?VxQ5QAJCTceJVKU/tF66t37fA5QkeXWDUHpzcGGkkKDEVFiFGvmZSTeciD?=
 =?iso-8859-1?Q?LtOq9Gxw1ZS5Gcik7hWsSH+XIwZNK1doMJlpQmVFwr0cH8Kyhs6QaeEKzI?=
 =?iso-8859-1?Q?dH4DIjADQ2F4GIsQ+LSji/YonpZgaKKb2NOOzeZVj4ZSRTITNv1X8c5zKz?=
 =?iso-8859-1?Q?YOsTHgMza9Tc9dfIwSvLftQSPV7kGrYC2hX8Gr2FSAnEDFykePYps38H/i?=
 =?iso-8859-1?Q?k5J0zSu/juzFUknJqB7PUHKsHsHm13R+RxEMBikHK+6E3oTohCRj88hiei?=
 =?iso-8859-1?Q?yaBzvUquc4z9YVS0q/UilidFt9A1rn/Xl8L+d/uQr9COBTME3GkIA/dHaI?=
 =?iso-8859-1?Q?WFkaTFHId+x0tUSpAlOjfI1W/f7G65xgAzoQ9YQ2iF3r4khs8SMck7rR5i?=
 =?iso-8859-1?Q?UZ2gbl6qPiAIvX/p3KSxKfLTXdmkveYnvJbBtfNN+9WV52Ps0vraniRcMX?=
 =?iso-8859-1?Q?naRdXNJPGEbRjSTU1bvoPHLL+6orUKi/mL4IBhtAupjJvHhSdnHol7XvwQ?=
 =?iso-8859-1?Q?Og1/Y4jjY1RZjfYaL29uxzmQj4Vm+zvkyyZ/0Uk5WimxKUEWOFyn5BGr/Y?=
 =?iso-8859-1?Q?4o11bXpXbjNCW2bkE9lWe9jr/16KpVnrzCN8p4SHfGedcp5HRLdmJ4OnTK?=
 =?iso-8859-1?Q?1HH3Igi9T9u/b5RmHdUUbgoYTuakDECcTmBUa/14j+Puid21omEvSuWuZX?=
 =?iso-8859-1?Q?PAZEX+gq4tW50Tr0Y8kd46k5X4lgXUUMxfpIZ9GDWAjOHx+XXbmrMNgDQW?=
 =?iso-8859-1?Q?rr1CZ2yYifV/6wnx4IyFY4rMJeR39SPkYwqImfy1NEKXD2+kgKs3mcqw8s?=
 =?iso-8859-1?Q?f6Nz7mreNJUj8qG9Xfpb3NGxPxuNhJob1/sHrmavdiSQ5gEJehTZssvoPn?=
 =?iso-8859-1?Q?4A1cUligdzrO0zfdKqDaEsSiq2ywvFT/OfevWodYE/6uHV2JC0IZizJ2tc?=
 =?iso-8859-1?Q?LEm4tXzXjHg0cgEZUGpeQF5op2UYJdOYDtSYoUQufzSZInzirtYSzmgkqI?=
 =?iso-8859-1?Q?lSjMVH9X8zsH0Kg7Yo+vy1CcewUkRjOXv96Fgm8lOsLR7qSPd4DScoMo0G?=
 =?iso-8859-1?Q?1dqoxxOP//ztOsoSTa2pF57DHvUlup1c8KLfE3VYGujk8Ajjmee0wTp3zH?=
 =?iso-8859-1?Q?Z8ZeAOM8IuA4H0GkTDD7U5lFK9AqcwyBOlUUeIuVtJaHQFAYMa3RZxVf0W?=
 =?iso-8859-1?Q?DSNRc9+9H1pBKj4j2HCPwy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?WEYvcA3q2su0nnlxTRf/8xFzX7uBaf7Q1Ir7N/9bk4dKWYeA/wcQK1/mfO?=
 =?iso-8859-1?Q?wGWEecWxRhAdGWy1hJfOopWr6OQ8lsq9X+RObYR/ASSOyTrJMXzHBY/RNG?=
 =?iso-8859-1?Q?l00s2qBr9DUQwTkc+u5DXquF2VLgRFnxQZrjnenqLuZTBsZBvQc9/67eGU?=
 =?iso-8859-1?Q?KL8TUpen09yVfU9Msov/VVCCeH5iKQj14hcSutgF8AC2OTtSkXQHGFkgjm?=
 =?iso-8859-1?Q?KHiZO+is8x5up7pfbDq4fNmcQRcwBMFVuCitD3Fz71AV+ACbtq/tqAsWnF?=
 =?iso-8859-1?Q?VKZBC9kJU/6fFWI79ZIdb/RMfnwIUmeMD+WQpMKdThtmf498/4vqthLf6+?=
 =?iso-8859-1?Q?wPoMyXmkrLSyO+IIJiU25zLQyE8V+FzqSQR+cXJAz+vMlWYqZT7VFpWO9L?=
 =?iso-8859-1?Q?mW9JNtjT3iDBzKiM4bPSWBle24oR69FAf+cruQ8dFbesoEgV/ncfJqnbcy?=
 =?iso-8859-1?Q?GHSyz9nzJg14SlUclfDkkx1LVnFtQ5RlebXV6yGzSnTB7l36x8uCzxj4h9?=
 =?iso-8859-1?Q?2FdctdthqNkXDVwQKaQ9476fpjAXtRrAu/u/WKp9Qhco/vJ+J7v0jnqITa?=
 =?iso-8859-1?Q?EtpLPlW4/wMNyw9IEBSonHBoMGIKt3fAa+HD0B6BNAE7n4gwMsSD9prLP/?=
 =?iso-8859-1?Q?xLAD4sewLkkbydv7/xycNgJjAnMDYWRFVHxMWqRNFtaFddqPN+kYK0V2WR?=
 =?iso-8859-1?Q?ertQja+rhBS8soYwfvGyVITmfOQk3NF43HrJzgFT29TwzKsEjyQPAEeZJ5?=
 =?iso-8859-1?Q?7nMLaN1VQqEGairthzZ2kS7D7m+YD49oSR+1Lxu7HIZNgi/EoYf69Jfq9c?=
 =?iso-8859-1?Q?60Ro7B9bSd8uaHN0dntcjqqwI3/MzhW82VmYnVx3azTxxDEyxW9IUVP3tT?=
 =?iso-8859-1?Q?K4yoAQuwTiHFKGcyYHaN073mcN/Xk7tjloD2ZM/XrcmB6ZPj7JWf3LaYKa?=
 =?iso-8859-1?Q?9fzIqxEZ7Uim7czSR6tD6yvBW5U8aG3QSozhLsJRukT/8KhEf2tKP+59fg?=
 =?iso-8859-1?Q?Uot5MuC4UpRgy/rqeqJcicGDJSyLpWoLT1iTsjXyOwoLNl/8berG4pYm/R?=
 =?iso-8859-1?Q?IGK2Y5dTs2ZEiDIxKO2G7qoALH+pC8OZ2cw5bgVGpZE2XU+zMC2WKTjFc/?=
 =?iso-8859-1?Q?ncbu0NY1jKYxURSpdYtejVXaNygdBFlyvmk2sbJw09IJ5E4REN6BflpK7S?=
 =?iso-8859-1?Q?zZQKQ8mgCWitqEnhEMksl4dnL/E8eC+eF5U8pGZ1+rHxU2mxELjnIk6D+V?=
 =?iso-8859-1?Q?27MtMDoZtCivcW3eWvbgIPio/LeBjVWT7JhGymboaf8A1PZBrbLiO1bZKz?=
 =?iso-8859-1?Q?LoH4BoyC7xFcSRCjrVSiDOGQ3tnwZBmC5tDzS7kgTPv05DeHv4jkOFLbGo?=
 =?iso-8859-1?Q?4Z2x8kIEc9PhzV4DH3PkzbkwYQfHuwLJB07+IXbYHMmrm7A/vdOOulPkyb?=
 =?iso-8859-1?Q?f7lDjW5l3VRLXXzUZfmebgM3JO33Cs4jcLeLciycxkgQjfIEURWMIOJly9?=
 =?iso-8859-1?Q?WdwZr/MO9dOHYu+xpc534RuOK9ThzEzKrxL7igVWaEGjyTMsw3aEr7fS2T?=
 =?iso-8859-1?Q?bE+W7N3KtQFAPVNdLLWoyNr+9OYEvuw1FlBrjpQD679GHy4I3hjudWeYHY?=
 =?iso-8859-1?Q?xBoqXm7zFktwwmYcqo1JDP5wkMVf1ZpeGA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc2cb56-ee2b-4e51-96e4-08de30fff437
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 17:35:00.7484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2cBhKB9ETGQwo8W6uZWBIsE2bGx9OEkrHiwNyOESUxYKF79wJjHWVaB8CUEAifd9dgscjyhntNkkhbRC5+lj+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8813
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

On Mon, Dec 01, 2025 at 07:27:30PM +0200, Jani Nikula wrote:
> Add intel_bo_key_check() next to intel_bo_is_protected() where it feels
> like it belongs, and drop the extra pxp compat header.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bo.c       |  6 ++++
>  drivers/gpu/drm/i915/display/intel_bo.h       |  1 +
>  .../drm/i915/display/skl_universal_plane.c    |  3 +-
>  .../xe/compat-i915-headers/pxp/intel_pxp.h    | 29 -------------------
>  drivers/gpu/drm/xe/display/intel_bo.c         |  8 ++++-
>  5 files changed, 15 insertions(+), 32 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
> index f3687eb63467..8f372b33d48b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.c
> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
> @@ -6,6 +6,7 @@
>  #include "gem/i915_gem_mman.h"
>  #include "gem/i915_gem_object.h"
>  #include "gem/i915_gem_object_frontbuffer.h"
> +#include "pxp/intel_pxp.h"
>  #include "i915_debugfs.h"
>  #include "intel_bo.h"
>  
> @@ -29,6 +30,11 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
>  	return i915_gem_object_is_protected(to_intel_bo(obj));
>  }
>  
> +int intel_bo_key_check(struct drm_gem_object *obj)
> +{
> +	return intel_pxp_key_check(obj, false);
> +}
> +
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
>  {
>  	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
> index fc05f680dc76..516a3836a6bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.h
> +++ b/drivers/gpu/drm/i915/display/intel_bo.h
> @@ -16,6 +16,7 @@ bool intel_bo_is_tiled(struct drm_gem_object *obj);
>  bool intel_bo_is_userptr(struct drm_gem_object *obj);
>  bool intel_bo_is_shmem(struct drm_gem_object *obj);
>  bool intel_bo_is_protected(struct drm_gem_object *obj);
> +int intel_bo_key_check(struct drm_gem_object *obj);
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
>  int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 6880f9d89a4e..d38582af6b39 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -9,7 +9,6 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
>  
> -#include "pxp/intel_pxp.h"
>  #include "intel_bo.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> @@ -2290,7 +2289,7 @@ static void check_protection(struct intel_plane_state *plane_state)
>  	if (DISPLAY_VER(display) < 11)
>  		return;
>  
> -	plane_state->decrypt = intel_pxp_key_check(obj, false) == 0;
> +	plane_state->decrypt = intel_bo_key_check(obj) == 0;
>  	plane_state->force_black = intel_bo_is_protected(obj) &&
>  		!plane_state->decrypt;
>  }
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
> deleted file mode 100644
> index 97fd0ddf0b3a..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#ifndef __INTEL_PXP_H__
> -#define __INTEL_PXP_H__
> -
> -#include <linux/errno.h>
> -#include <linux/types.h>
> -
> -#include "xe_pxp.h"
> -
> -struct drm_gem_object;
> -
> -static inline int intel_pxp_key_check(struct drm_gem_object *obj, bool assign)
> -{
> -	/*
> -	 * The assign variable is used in i915 to assign the key to the BO at
> -	 * first submission time. In Xe the key is instead assigned at BO
> -	 * creation time, so the assign variable must always be false.
> -	 */
> -	if (assign)
> -		return -EINVAL;
> -
> -	return xe_pxp_obj_key_check(obj);
> -}
> -
> -#endif
> diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
> index bad2243b9114..e8049a255d21 100644
> --- a/drivers/gpu/drm/xe/display/intel_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_bo.c
> @@ -3,9 +3,10 @@
>  
>  #include <drm/drm_gem.h>
>  
> -#include "xe_bo.h"
>  #include "intel_bo.h"
>  #include "intel_frontbuffer.h"
> +#include "xe_bo.h"
> +#include "xe_pxp.h"
>  
>  bool intel_bo_is_tiled(struct drm_gem_object *obj)
>  {
> @@ -29,6 +30,11 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
>  	return xe_bo_is_protected(gem_to_xe_bo(obj));
>  }
>  
> +int intel_bo_key_check(struct drm_gem_object *obj)
> +{
> +	return xe_pxp_obj_key_check(obj);
> +}
> +
>  int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
>  {
>  	return drm_gem_prime_mmap(obj, vma);
> -- 
> 2.47.3
> 
