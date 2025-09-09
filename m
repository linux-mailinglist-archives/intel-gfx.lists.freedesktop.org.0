Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B122B4FD4F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A8F10E2DE;
	Tue,  9 Sep 2025 13:36:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONYRp5dT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6970F10E23F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757424996; x=1788960996;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yaofs8D+CS0seznsGo9SwbHu4T+SJG1QqOaS0faU710=;
 b=ONYRp5dTcXeBdura+yEX8w2daeWZsFdaK4nVXPnpR1SPRSpveJr54Q8M
 ysDv+Z8hEhUO4QBzOnM8aG9f31gVNsv+j5dYEBsk0pKeqTu7vXXRG3ohG
 MLjZz1V/7iYJOOKGzL7D1PEBoXHTc93Xudt+b/ORqUv3Cb5180DBiF4iL
 Ilm8cJ2uPsiPOVuCUt7h1TQKcuZFSzq3FGBxCn9NW/0wZQLRx74TVR7Ek
 JMWQOuVu5nrFkQr8NW/8Jd1PHWvAGZ2hjyyDbdYnF1ZAleLviPo7MGnPg
 53o7JE+Peu/HudTcieOiwz8XmjqN/A30OgxU2rK/7MkFosB1LgUJRGsvi g==;
X-CSE-ConnectionGUID: If0471IcQtOdUWdnRrr4Cw==
X-CSE-MsgGUID: lfYRFtfySHS2BXw7OGqtVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59659413"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59659413"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:36:36 -0700
X-CSE-ConnectionGUID: XkfvHJLZTKq8xyIpHR2OKw==
X-CSE-MsgGUID: z4+7G1FDQ0+YkH+9DmTodA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172256456"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:36:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:36:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 06:36:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.72)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:36:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O56/OxVZUPZBBCkMEGIkMB6Q2Ewda8cqoVKyUMKHUVPa15/d9hUIvYD4hYuc/uTR+rwwzJZOVvmRCCZF5Gb8Z+DFL4a4mO+eT1hRfXwH91BK06qaHtcAa7YYRPqjkbzNR2YlUUjH7PByZYDRihJZKiCXxi7luPFcMAFaVjz1KApnpss6LPZPviBQs3tIXqvEPFqa4LnkvGafGi3NrO8UlyzblgiZiZdKjATYCjGT9FOTQxBi0Ko3b+qswB1DR5wD+G+kL4BpW2HLnhZeqBQKlb9gdDYgCVdc44HPUKklkZOacY9ga5RoBRjruat2Bn9hOLivZlF0SXPLGmRsCeyYPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uL6Hc8qJ2lYZLccdZNKyehAYeXt1f61/dZyKiLQXEQI=;
 b=Zdvpg1DFm0IBi2h3oW/xaWG3QucA5ZIMZW5Lv7vt1Fi2BTPfRMM8VdrDGkZbiyArXSOmXWhH40l/HLIskbjWc46IqIObtxmcneYPrVi9zm8b94hIpsvcjXgDkzjcVEF+rdh+T8HdQ3AENf1+GHMJsin4lYB2RDDm8+S6VpWTRfuluPRf1AYVde6GY+zk1i0eA8On/82pLfDxplvCWxJwIY4GGJq+IDkM/BaweNmxIa/rbp4QNj2rTy3uu04CUO0JvPtbhsDHu6+J4WKxN0F21mh5AYOwrvp/IlAcKjiUww9OlpoFQLL9/RulWRPr2sCpL0uw9P6IY+hjXcgr6Z6piw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM4PR11MB6453.namprd11.prod.outlook.com (2603:10b6:8:b6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 9 Sep
 2025 13:36:32 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 13:36:32 +0000
Date: Tue, 9 Sep 2025 09:36:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915: redundant i915_utils.h includes
Message-ID: <aMAtXFhE35I5Jn3H@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
 <29b4e07f3a3ada70a989679fdb55b84b049a933e.1757340520.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <29b4e07f3a3ada70a989679fdb55b84b049a933e.1757340520.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0218.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM4PR11MB6453:EE_
X-MS-Office365-Filtering-Correlation-Id: c500f42e-f944-4c6a-6035-08ddefa5e33c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+cAFCFO7Z1bN7sKYEaiFAXB4B6zaiyAXVauOeaWjtNJlDhBHbKkiUhKIpiWv?=
 =?us-ascii?Q?6FL5hPky4Y28wxnRdc/H81kIOeaaTRvGd1PVv8zH+oPGoENezjcFeUT89Lgy?=
 =?us-ascii?Q?urWfQ8bdG/w2Fxc35aa6ZdlnibNGeLVbmGNr7ZuXHk8A7Qfrs+wQLaKG7sA1?=
 =?us-ascii?Q?ka+khPn6yk0t3wlAfqZzpzbu77VpYVq1e8vj/CRKFr0VExT6XEfc6pgz0Kxk?=
 =?us-ascii?Q?ihKqrdbngMFJM/VOqtjT2cAYJ41jgQmPp0bpchrAPNdbyE705OoJ7nQ8ayNU?=
 =?us-ascii?Q?Dmj84T81gAaTEiR4Cmss1vmY8lBw4osucnuwtdsbVtyJWHoCIwBdTw0b+QrR?=
 =?us-ascii?Q?aLN5nSM3AwGZjIoB0ZYcukQGnA8B4WS8zKioutnM/k/wZuhfAtX3mVLzisDi?=
 =?us-ascii?Q?tqcL1y44XA/AihPdq+tnzB3PZU0a+VtxKn9gL4v6UG/3PLNZbRTI6ttc9lcO?=
 =?us-ascii?Q?NOaXN+so0r8mJxxPW5cLguJJXDDRs99pu1shKEnlt1M0vQj6+9/qDWqqehrb?=
 =?us-ascii?Q?UI5ScOnoepjbLvSBKpYjMJEJHqPqrYb3QCc8RmEipeY4sRuLX3bTQV+LGvUS?=
 =?us-ascii?Q?ISQ+NllcbxmHmiuSjZPpx9XGtoSPeYqmaxBqnpBMiaiIzVtPO+5xfaDCubju?=
 =?us-ascii?Q?DCRPD0shKOVqVbyN07EM+Pj0uS1bO46JDMrTy3qJhAs7f0fWARwUF4cNotEJ?=
 =?us-ascii?Q?BrHSiuJiGhK398ZEKIwtdFfrEJMKAJaskoYbTDlty1hQItKt48aDW+WTq3jl?=
 =?us-ascii?Q?6Gf8R4U2I/aYZDm33Ygopz2Ssha6VGe/WWW54UQcXAozTaSuDUJ+5xuOgyaY?=
 =?us-ascii?Q?wT8EnFNMVqKarHOv3wZfQ2tkipsMx90fmtyqUeBzZT3SqBkGkpA5PWhwnW3l?=
 =?us-ascii?Q?8xIcS8S4NvLBrUaStqcrB74Qk0pJAuOXyJuej1xYWnY8WIqG81uKdLsS+h3c?=
 =?us-ascii?Q?wHYZChbvsj4DHEVXi2dfwQPdbzhlXUDU0S6cB/CnJ4mSQNjZh9ulwvRKXRjl?=
 =?us-ascii?Q?v06OGMCyT3fVfTGhUkYDGpVNkPeabEvG80IWxJuTelJ08GfJCA5aMSdimAIj?=
 =?us-ascii?Q?beJamhvHdiaCMSKqVKzged/qxzYEgKFVQHLvMnKVNNuUgdPLK0/vSR0ScnL3?=
 =?us-ascii?Q?DU1Y6Ga2DTrAW6SKm3Gw0eCzLZSB+lu+ezARhbUH/c4O+gBcfvgzi1+3o10F?=
 =?us-ascii?Q?hpdn1ewPuy2PHt0BTn5ROnlsP3yi0cT57oyopeq6IOE0I9fJGmYMy1sLoC5M?=
 =?us-ascii?Q?REOMChkI5uv1XdV57RfE8dAABZlsJIHgSaNIjWhfiO3x6vG40C4YXgMI1HwA?=
 =?us-ascii?Q?c2+rjcueS/l5hVsE6bO7Xuuyj/bXQZagRTsb8bGTktno+MZA+7os9SGmrL86?=
 =?us-ascii?Q?kVzsVMwxRHCq3B3gFHsFYCvSj/oACMyaZreLsY5Wlq4p7iqx/EdFqc8mOB0Y?=
 =?us-ascii?Q?LHWMrYeTzrg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?78i42nT/CbKrqr34+RAvpqQ5ruAjrtOpHUpLiO/b2RJleifxW3MAEm1/ReXB?=
 =?us-ascii?Q?BhGj1gCPwaXJFiReYOvuQRl2Gmy4Ir376N1cnCaCByzyVXV0hE2YlXGGEfSU?=
 =?us-ascii?Q?HKygWjKRDGmrXHoOobPsSHxDjjPbNVwzkc6eqUPxwLBfdzV3OP3ytBhdtE7f?=
 =?us-ascii?Q?D/Hege3dd2h6hmH5wFCv1d3qKEztB0eA8h4ZT/6Tjj0pDzGu8W24YpDrt3H+?=
 =?us-ascii?Q?8elfTTv+REMUw/c2DVvZYvgrxX/F+n/E70fSXyone/UWC6A1j/PwBsFyXNqN?=
 =?us-ascii?Q?t/yIKibnJih3+HzKAID0F0w1GNr7Elf25rvAfmIxjCyEJy6vgcNLOet5H0P4?=
 =?us-ascii?Q?sFHU89kfE5sIL+DL5sw132NJLqRonpRxnnv/BJqgwG4dULOJF4P2oTVqxaaA?=
 =?us-ascii?Q?IUsSK/dmxxelynIxZeF99GQpt+F9Tso9xsBsqeoXQLy0VpTbJwOtrKRzagLa?=
 =?us-ascii?Q?yNnT6rS8kRszrVxumV2jnFBOOUEmeK55Hfkjb5FEAXlPoGKnA+jjzoJy7kej?=
 =?us-ascii?Q?jtoMtdrtx5jhUPJ2WhkB4agrSmHX64w7dU/TUEEOuFEwMCkn0CJxCnoeZ7dG?=
 =?us-ascii?Q?TkYthgdRoyYBAPNF/KTcfhzR2N+1QfKJmZ4Hv7IcGO7P5MwJ85ZdcbyczEwQ?=
 =?us-ascii?Q?DN48ahmW6am/IEnGUnZZ1LP55ZiliMDbgQPDTEIEQ5e9KT+L5gbnS1mrRMeA?=
 =?us-ascii?Q?dmae6Nx5MB4/46CNetbLganTR43pQixq5v8EpQkNhpLdGqVYWxkt66P9yaI6?=
 =?us-ascii?Q?+ASx9TBYivk4PVrp6VWGIUMlzbodUYCN0XvmYdzf/tHOY1yzF6ZDZctAOIs6?=
 =?us-ascii?Q?jlkamrkQKFh2GDEf2J3Wot20XoaMRMQp4Z3Dem0vO4GjqUh6syIXWyD/MjqS?=
 =?us-ascii?Q?6YAeLXzgKBzkoMCJh3qOnsCL4SzNw4D5Yg1+iCTfQtV1MIT6x4Bbbj1HtUvC?=
 =?us-ascii?Q?W+ygo1SAtc5OT0hlBoC8ufL8tsJct1Ly+s5eXy7uFByZGOlNWom1EZNHSFo/?=
 =?us-ascii?Q?8A8f7mjfgVmY5+OZSX65dSOYa/V+HSkGb2giR06kdf/PWKCJw/b/s0ZpVAeV?=
 =?us-ascii?Q?gBQqun/0F3gpSJ1pzaMKQz88IjT3EQLesXEvTeW0iqTrre9P4yBbTmwogZx8?=
 =?us-ascii?Q?xbnTYn3hbqRfK7gPqdtzzLrOcXl5ISroqOaPfhkB/VFEj45k5Pi/SPovCifY?=
 =?us-ascii?Q?/UgGhBKLQ6jNeYoGEDukvMEDliVzxSQCV7llUsXw1ICnEVFQUfFJBnSTcke5?=
 =?us-ascii?Q?rBqKuPHCz6WrGyjU1pW8vyFB/jE87X+AcFY/7WvYooHcx2Yf6oGmboZ0HrX3?=
 =?us-ascii?Q?aRnJySByN7/iyrlJGr8GhQM/kzJK8NsuLPeGh7M4vERsunOQSWhCBS5myLv0?=
 =?us-ascii?Q?MBWZTZg60AOC4I0S8lZwAqPjD1AGWiYSgAV6H+qD1BdmvbJYSiqRO4XByGe1?=
 =?us-ascii?Q?d3MV1GwalAm/13+pPmBWQ/YUFWxcuEJaGH39nE6sBSZtK+wZlZKcqIETnIsD?=
 =?us-ascii?Q?hRBMw5e0DoHD0vK0nu4/7s82920h6h4h2u+CGbsVJHSVlFmjgOuys3AiSemt?=
 =?us-ascii?Q?zPJM8iO7WNj00SJB5Y3fsz0SoSvv7UwtpGJIphH0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c500f42e-f944-4c6a-6035-08ddefa5e33c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 13:36:31.9725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KqQ5/7cxW1ea5yrBD56qY1wGE03aAyqhTVBIcQZibuKVx/G61eYpd8s+CW2Umjr131vKRT72xfNURFJpWjDHyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6453
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

On Mon, Sep 08, 2025 at 05:11:45PM +0300, Jani Nikula wrote:
> Neither intel_guc.h nor i915_gem.h need i915_utils.h anymore. Just drop
> the includes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h | 1 -
>  drivers/gpu/drm/i915/i915_gem.h        | 2 --
>  2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 053780f562c1..ce766f558ce5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -18,7 +18,6 @@
>  #include "intel_guc_slpc_types.h"
>  #include "intel_uc_fw.h"
>  #include "intel_uncore.h"
> -#include "i915_utils.h"
>  #include "i915_vma.h"
>  
>  struct __guc_ads_blob;
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index 20b3cb29cfff..cd7114002944 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -30,8 +30,6 @@
>  
>  #include <drm/drm_drv.h>
>  
> -#include "i915_utils.h"
> -
>  struct drm_file;
>  struct drm_i915_gem_object;
>  struct drm_i915_private;
> -- 
> 2.47.3
> 
