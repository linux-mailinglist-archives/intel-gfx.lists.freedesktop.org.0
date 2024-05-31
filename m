Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D658D604A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B769C10E1D2;
	Fri, 31 May 2024 11:08:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nPTEzxpY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2981210E332;
 Fri, 31 May 2024 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717153691; x=1748689691;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xqXfuRVCBryOmq5CTrMal0RHaZv55P3dLpb3vhFnNxo=;
 b=nPTEzxpYGN8JDodOP9jYaqD6KCY5GWJYFOCPo2L/0lIBcFaea7M/GMPl
 mVd6S0XVs+90X/DGuXuft0NpBfg3wdzehtDWvbMvwl+Q7wLQvilicPGFr
 noDERoTnzyAVSHFlV81TOoZJOI7lX8dFKKRA/4YzyoPe++JgdtHEnqKGq
 IivTBR6qhDH9QZV8vkX7qV8dy6V4RE7110yzNcMhQjnsEAb1rEZv/2iL2
 Ai/Fs1wELGBMRkNMJ44txJbI90mWrnx8G3FyeZnGDROzkyEzYxC4sJ/Lz
 ps8Si7Z0owvW9Y31lP5zU5nKVgPklRxZ9p5mHDfC+y+iZnVv6uwkEugoG w==;
X-CSE-ConnectionGUID: MZNrTYQoQaOzAqU8dPk93g==
X-CSE-MsgGUID: eCsx8A8/RhW20HgnBtuETw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="17522476"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="17522476"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:08:10 -0700
X-CSE-ConnectionGUID: bOC0ZakqQrygpbRe3MqRRA==
X-CSE-MsgGUID: DJaWLGxgS+iZdml5V029yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="40690350"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 04:08:11 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 04:08:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 04:08:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 04:08:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jswdzBSsH1wjBvx/myZOqWNbL4Up9abRePz4B6XavdhK/9fUaS0CK9V9NhH3qXvnZr5S+ZDfz3Roa5LrTC5jXuqOD4tz0DfpoSB0ynRf0S1NifqnOIl2DKOyUc+n2UFcumrLuylhkYhdzqYJo6txzC7BApNYURRGjTAEnZy1z/JvbRLkDZoRAnqaZJVrYIFEh3Go9B7NHH4TFitafP1BnsHQ+v1eoPniV92mRR24ctRiXCT5MKDh2jYTklIU7T+WPd8nmqnJZCKemdl6Tw7nbahWANKZrPG+iEDO7R30j+ttqdceBUhlnDdAxcsQBHWkPLG1EdfyR/h8CX8DR7TWYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I2JGMS8Ru61mqQ3FwU3QwlOxF4TsnOAnmWVHAwSwk2E=;
 b=jhmAlq6KBag229NG7SXnDOT/xXibW9QSkJdV8rqzwz0+JjKB5w9W25EY+smXHHFt+f3NHXoflWNJw0cb6/XyKAbKdSs/f0TRYV1Lmx8Bu4mv7mkX0COTxh8aHTuJWXYOIfxqsX0ZcvV33XGismnFSpisUJVKcmTNIoww+SA8vBaWemBgNYYrU26qbmGDnOmSm2rMN4RxHCIxcNBHF6MWc/NBfMhfsqlNy4G3AgfldSD2+hUnatsPO9mTfOZ0fqB7DPq4cZlmoVa9iwu2d95x2o57lWoc4lQuZNFkFqpUMXEj2TfHExjVUq4sUgdtRtEHsW8tGvpTnC7jbdg4ik3bYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Fri, 31 May
 2024 11:08:02 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 11:08:02 +0000
Date: Fri, 31 May 2024 07:07:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 04/10] drm/i915/display: include intel_uncore.h where
 needed
Message-ID: <Zlmvj8h_IJ28CdOn@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <bc3a722413e20db905671e58627ba6d757f41c63.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bc3a722413e20db905671e58627ba6d757f41c63.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0165.namprd05.prod.outlook.com
 (2603:10b6:a03:339::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB8283:EE_
X-MS-Office365-Filtering-Correlation-Id: f5d5e5e1-231b-4ff1-f294-08dc8161f068
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?chXrsd7X0kZ5gLr0hAf/o3X4DA3Yg/6nJ87mrRNjcx+ClBk4QGLBsQhC6McX?=
 =?us-ascii?Q?7bANtAvOc0EjhSUqRJjmwoysMyohN44lpmU+aYLZoDSNtMYRivdsN+eB+DKr?=
 =?us-ascii?Q?4WvDSNM8gdcKRCf8QY3hO1QDDfiDEjE7lqS4yOnuKYl8N3OI/KQUN8bj3nVw?=
 =?us-ascii?Q?SN+BIPABlShuTyy3nzi5big9RNcZEBbRe7a3p7VvQP7tEIvypaxuqaVyTDhp?=
 =?us-ascii?Q?zljicUDII6lUDrOF1ADRXkAzoOZVMvXkoAthfMLEPxtxaSaLrWpKBDH4pbn0?=
 =?us-ascii?Q?Hg8sg3oKDsM9tFh7ZHvRoZ49bSvNqKuUrdTRbDxclwtDyuO/B3apOZyWV6sB?=
 =?us-ascii?Q?v/E5jYECq+J7IxmWZn+iergQmMyfKqC7wHQ6xqgkA+Uo7Mt8TipuSM62aRTi?=
 =?us-ascii?Q?NRlfDhSaBQgRPMF9xePK/cdZXqGqP381jKPhiLP5/oGFAtZ0gmvJMw4jFbnt?=
 =?us-ascii?Q?C4o+E/bj/X8frgeKzIhaGcaSP26fdbSeB2WA6ny16Ti4xVlH5/KbfH9yDe+R?=
 =?us-ascii?Q?TGuAsNT3YF7ohMpwOJWbtshgfAcri2SA01IYTSUJufpj3hC82ds5rZgv5D2Q?=
 =?us-ascii?Q?94yw0RZYzzfFMO2HgWgowuTMEuFyLTqJpnqO+L+Ru8Z53nFtqcPYPuaZy3fN?=
 =?us-ascii?Q?UxgKJMgHxjqVQpKSp7QR5flsTnstLvIIberio2dWk5yj5v8DlwxqE87EKLVj?=
 =?us-ascii?Q?KiA3ZtoC2wH3jagGURAjwXoCgJnjReyOlI2KVkIoixgy7nMbFelzUjGRTLlo?=
 =?us-ascii?Q?R1ddj0ieAMxkD14d9IjVaRevZ/Ug8aP8Av0Chup7MPiBB3rUY7QtviOkN3Q9?=
 =?us-ascii?Q?yr4qcJqy60z0ZUMbztIOS77Pn95mk6qiZV9PFQM+/Fl66b1C/zllv6e6Y5iP?=
 =?us-ascii?Q?0b7kd4rM/CBVGTZlLBKEsvay2wZP0Rdyq53mceanU9CjVzf4NlDMEyxGJ/Z5?=
 =?us-ascii?Q?GZfm9ihHuLzn10weGkUG4EQO/QcrXGJGNKz3RROmZwrMJp26GkjQrxLHegpj?=
 =?us-ascii?Q?7xh0Qv6Jarbw8AT86T7OzfBpsk2QVg/ez/q8XN5CosEdelDAJHHTXM/B22xt?=
 =?us-ascii?Q?DvoU+fWg7GG/wMENf/hHlpV+Lnv0ZqqPLpbU5xPquBD029nN82fnbMEHwnMK?=
 =?us-ascii?Q?DM4vtQjXyN5XVena3rQVm94gkk1oNMyUQvNt8BQDWqfvjQ7Zw7gjq5CmPFPC?=
 =?us-ascii?Q?r/n4SCwOUjKqhuivzvlMvL1PeG4b18b3tAwLihELesFzS2AkvrYfWBbjLXAN?=
 =?us-ascii?Q?WXlbRpxeJsvK++08q082CjNY8YbbRdVd7cNr0laPTg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KDepycvWq0XSUP6cGoN98FST9CnxueqUOWIkPWpe793osoRQw4smovzobYkx?=
 =?us-ascii?Q?wMtQI91j69HFGVeIwRLTJ0PmkjXi7oZozxsDoDi4YsqBn44Z+Fe2Zr/qnIeu?=
 =?us-ascii?Q?5uhkRx22KHMJ6ZwtImzo39ISlqqOQKjWIETstyXjofVC0oxL01agOYm8CPy8?=
 =?us-ascii?Q?EGpia3hpzYb3MRKp1h/ZUPOpLzxmDU4jLiq+K1woeg1Mb1YrsSO6xjcQK0zh?=
 =?us-ascii?Q?A3vqoqvtdsF8lCmgiDFfbOdtqbFtsyDNZAOPAHtjky/u5F6adSXu28tuEm1P?=
 =?us-ascii?Q?M4/6B+d9q+sG+1p3Zjaj9EXlizqwlfIgGH3o0A/2bzm0Rl/ukIaSnvSS8p8i?=
 =?us-ascii?Q?ClWZXnEMwO7+C4mFWqMCyqY+9sDUhAsB9XfU3l81qR3f5sgWzcK9wa/qHF1q?=
 =?us-ascii?Q?mStsl270PjEBwzYGzixKB+en3cQTutay44OQZARKgoUTFiK/XcJI3J6bm48R?=
 =?us-ascii?Q?P/yNh5Tss/ckgI2iLicwfkAfLmTj0ym3SL75zpjQfZ6C6UoXewsmmTQFNMQ8?=
 =?us-ascii?Q?M2mdboRb291nObHf1TU/j0hc7VSML1rgd5NjSt9piTu7nOT2aS0sxWRKYP43?=
 =?us-ascii?Q?oMRCEJuKJlGSuLNny5XtcNqcktvnXZoNA6V88lv4k2fSpynrsahNpCoby5BB?=
 =?us-ascii?Q?HGGlZKza1r0ejFCXeGbKWlLakOCb2/dk1JO518sH7lwJvuZLQShU8RQy/r3i?=
 =?us-ascii?Q?QJh4sb79iRKgvmgK11CF7Y9AG3nAtxtG0/vVfZMTt85TfvLWxK/IXbL6TBpw?=
 =?us-ascii?Q?GYpC9DUReAi4QVSJ46vRkv/qdQreXYtsWmYeqHd8gXLk4BttM0wUZFkqP6hn?=
 =?us-ascii?Q?5ppjtXrthrIqnwq8ncTzM21ZUM6rGMR6jhkaI+GAQFUbMTuX/VlxpgsnmB2i?=
 =?us-ascii?Q?A/bZdptZB0LcJGGT7H51LUi3e3FI8vjK9RJLtGDfH+Cnky3iq5hQbgVOvbe7?=
 =?us-ascii?Q?8Vsti6BneXBkX3Jtzd6JjXTmI3Aa7Scr/96E/4fgMUVa2JU9534jmlTAJVOn?=
 =?us-ascii?Q?n1y+3iNvaJdlbRZsvvLW3G1XrtRaPDd6sFYrLulJFIONWGyV+BqWFHG25IVr?=
 =?us-ascii?Q?mb/s2vKiAXjh/0x3Za5mp0KyI0YxQurhTToVM4qEhlOVMlgUBJFrntLkR6Dl?=
 =?us-ascii?Q?BQqbvYnq9Tk1ukyTDxp3Bhta7AYAlZNg3TxzlO0KakH1yAVehjQNJlLcszm+?=
 =?us-ascii?Q?6yP43QOS0v7uTwNNbVJBMmtsEqbHyK01inmCIeis40M4vHxK9QMiOyGQFcyu?=
 =?us-ascii?Q?96pSwxEzlAow1G6qjPy0rkcA1HvPuMrzOUiEjVnxQX8OKdM52YNGsZweh7Yv?=
 =?us-ascii?Q?oqDjv94ewSHo2qf8B+6HPqyl8PRwwjPU5Cicu2IEJZT2AgmTxQBy0Rc+12QZ?=
 =?us-ascii?Q?WAwQW4Da4Xd3xl6F0oePy9I/X1bfw9lHnYLgOi2s+JTLlSPkr7slEPAd86mG?=
 =?us-ascii?Q?7o41dzKamfggrXOSdSUBybLLQKE0A+fcdhQUGk92CTh0hrnngKilFqhfJa/h?=
 =?us-ascii?Q?RmyDNXn/ImWZMGAfEGxIEQcGRwyBRT9rh1/xp+zozhlcS3r95XTeSCJ6xFpx?=
 =?us-ascii?Q?XSVHvTZT63YmPM7cx6mArPl7BczHnQ6LL1TzhdxS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5d5e5e1-231b-4ff1-f294-08dc8161f068
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 11:08:02.6780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zcMeph8V/8GE6wxArp0DEAYSsXesPLlwN9cJJiwVKxbglLQTK2ZmfxcVz+XOmSQqpplBtZ/SvpzADovcDv0CBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8283
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

On Wed, May 29, 2024 at 08:48:08PM +0300, Jani Nikula wrote:
> Include what you use. With this, we can drop the include from xe compat
> i915_drv.h.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c         | 1 +
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index b0a49b2f957f..e53a789e3170 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -36,6 +36,7 @@
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_gmbus.h"
> +#include "intel_uncore.h"
>  
>  #define _INTEL_BIOS_PRIVATE
>  #include "intel_vbt_defs.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 9776cc3332fe..e5966f07a924 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -22,7 +22,6 @@
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
>  #include "intel_step.h"
> -#include "intel_uncore.h"
>  #include "intel_runtime_pm.h"
>  #include <linux/pm_runtime.h>
>  
> -- 
> 2.39.2
> 
