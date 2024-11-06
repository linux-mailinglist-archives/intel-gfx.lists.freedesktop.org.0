Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2105C9BF3F1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B138E10E73C;
	Wed,  6 Nov 2024 17:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pr2XPXeh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85F410E73C;
 Wed,  6 Nov 2024 17:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730912852; x=1762448852;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oKupAkal90ceh+mqg4UPAMWHNlUkywm/aNQ6WJSYjrg=;
 b=Pr2XPXehBALr4CYVGmau2iF/8GnBCvg7i5qqQdbIyNTu+lZBvqXMsATv
 LUoa3NBdE5X9lkrTejes2W96Gl7hlqGRekkHFpZ/GlQ5dHnTtGS8scG2C
 ogM24kxLAMk2Z7Dopxuvjnk16gVQa7ew7NAYQThV9dKbNJwn9Rg8nuKoH
 sZljxIxEF6IZYqrG7QE8+7QpAUxwmSpJ51LOw/U7EeCMecN987JIDR3To
 QYfJU+z0mLMc6P/23gqxTmfCmEx7kewZY9DvNmsPGKjx0RAiBGyFdkTmV
 bNCp/JVF7GOSNwgBdi8MINEW6U1Zrdm9LAl3iZW3Thvs9IA5cqEpE8fB5 Q==;
X-CSE-ConnectionGUID: XWpO2S0USUCjD8uLVi3gAw==
X-CSE-MsgGUID: XP5+gqj5QHyc2fxUuhsbDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42102039"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="42102039"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:07:30 -0800
X-CSE-ConnectionGUID: iIHj/u0yTaSNGc7cokDqwQ==
X-CSE-MsgGUID: hlIH8/DJSNK6aldNBiFhVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="85463666"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:06:41 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:06:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:06:40 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:06:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aMP6j/NYCxUUpPfmToySH+9z2ZTQZcy+5FaA2waBYFgiZpb5dvT9Q3a3KhZPQw2MOJvyNu524IMUk3cVKY9FgYZbapWVPyuxlnGkZfE1RqR07RklKH/URrQIETzBrwFmR1laectL5mIojos3Gxf4DFFc0ZrnRj0fqUuYxYnnvkyJuYafSs6Itd81O3n3sL8yKd/IcyvI32m5eRfEphS3VAuRE4qEZShk/2UR3NfgSXW/crtYMOF97/oIoKWyT0ohzUfuq7lsiB0UKK//vWFF+Y87FFV09mzK4Yumk5s7QqXEUGHLjBH65aj9i2zTENgSiRLvPyxqLNP6gLonhKIPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5R23xjuQYIYeWH3aIlfFeBibC9VZR9uhnxF6KSK2Lw0=;
 b=JQ9iEa6ZabeUaX6UKu6xzJly7ZoIyN6CpCZmCxYWdYoOKopgw8Q8DNQBaUAcJsS3m/2jREVqN+Kjl9blRYORA6V2mnlkULTzp0uhR5pM2XhxNQfn+vJgfvCzH6KTEMQFgMWkmLSTteNsJXWE4h6JZ0m4jojNvUnVz+KZCoYhNl72T+//yo7rzOWzOiaH7B6AJfLk8c5L44nNXX+UHuPkju6GeF7uQ7yWpFBhSV30mBz1TF9I5iYlGcl8HfDP2LP5c+dhK1ki637cDQDidnchfldjcaoStni51A1RAT+RKDoncq2hIaNBE537pmmjj5puSmgWtr/WtfcTg9Sqq9sJSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6749.namprd11.prod.outlook.com (2603:10b6:806:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Wed, 6 Nov
 2024 17:06:31 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 17:06:31 +0000
Date: Wed, 6 Nov 2024 12:06:27 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 09/15] drm/i915/display: convert HAS_SAGV() to struct
 intel_display
Message-ID: <ZyuiE3VbGIHERbPT@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <2341a40233a1e14a445f6cacd318521d6308cd12.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2341a40233a1e14a445f6cacd318521d6308cd12.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0093.namprd04.prod.outlook.com
 (2603:10b6:303:83::8) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: a0739594-a101-4227-4ddb-08dcfe855c21
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ypw4Ruocjc4y/UjOZMjp3XSl3JgMXh1H9lGOpXRsCwyjP+ZL3kW8jcZwjxkz?=
 =?us-ascii?Q?+zeOKGxQmxzoLYBc9C3H9B2Xy9Tgd0m/XjQKNFuMToRzyTxvsCEdvVxeIYLS?=
 =?us-ascii?Q?0omTJRvXNsFKkEf6K0TeETgdo3sqzTriplZzJ0MyRbLn6bp75F0/xNfBMSbk?=
 =?us-ascii?Q?SGzXANHG+AlVwgmqBnNBnDnI06NH8tNSluBs9kgRHjgsJg419FZHxh/Pm5YN?=
 =?us-ascii?Q?os6mPnYEvtWZg3SnJsOW7HWGue+aP0fjMZMTRmtlEQ35dDoF9x8S8OC+6CkP?=
 =?us-ascii?Q?9CqozliCYGASVMf1dYsSdreCSt0r3Ju638GTear9VC0F4Az1NrOk2fvoARXc?=
 =?us-ascii?Q?V5loYH+KecNWAEFKl6QLXQmL+dqKs6n3AW8m665zEaFsnY73F5UFpZwKUexo?=
 =?us-ascii?Q?5/AQ9zGTN72aA8VlfFnfzz6YiVcRIBIQpYSq31d1RDrvLmBvAoVtj9Sottwo?=
 =?us-ascii?Q?KF3TDNqvYOHdVzMrN/9qCQg8xmtOtnaj5cvjuwZTPGGnVyIO1lVVpcKqk18G?=
 =?us-ascii?Q?/6ru9MYwsZzAZVJlvPGWPOmFcB3Ib0JmkXrKBgCmxeXqpD10ktOlh7RSDIXa?=
 =?us-ascii?Q?AH9goiZRDSc+vD8f+5XPADlxN5FdnowWy27DxZ7wom0Lk8okAeW8SUwhAWhL?=
 =?us-ascii?Q?4MUO23pdwV6RmpNaPtLAbnuuSu9yrIJ0Jf5mnWJZf8TNnLRvf81ohjeDVQGK?=
 =?us-ascii?Q?IngH9g/bwn+FdPxZW5KWzRzkc6pNac22g2DlppRLyY17hIavMmgwg+XoRl36?=
 =?us-ascii?Q?8mvKEwwbkjP+yHUQHnVJtA5f7z/+UniV+G/M5hMBi7FEGyqaOo1qkMI3k3hR?=
 =?us-ascii?Q?EUoPy2bdi7Pslz05924j3PacTCf+mmhtXkzWOVlsYaRZsfDBvINDg4IE1MVK?=
 =?us-ascii?Q?DjW5BRShmCkMCCnyCf7h3FoWDqxijaLIGSee/Uz1U19/RF47QhHPo4OIZEmU?=
 =?us-ascii?Q?zTSMDR7RF8T812hPC+T+vvMgxLQE7ZQjJ3r7SgIhKozJnftj8REZXAtQ4a74?=
 =?us-ascii?Q?N1zi+X9MMMj++nNbI6wf63lrgwN5Fo1J3zAOg0ov7gEkHc4F35leotPaW8oI?=
 =?us-ascii?Q?RaUE6QANr/R92wPe3vLNkUxsXCeCSIGL7uBRj6RDhoVuFtUyDqilJZznKtHf?=
 =?us-ascii?Q?MYcPkQTQheCyB+52j7YFr/em2Z2dYApoz9kFM4tjAVAaxnirM9meoTHNlyvb?=
 =?us-ascii?Q?qBefPwVfws8JAGRDGELEMaGASu/ZwkU6If1MNPq4X56r/C6zpZj9Gnsol3gn?=
 =?us-ascii?Q?bkcBmWv1Z1P3EsbtifKfwkouGIHF3zTUpk6IZYMvfFFvxqb0rINclou9/7m9?=
 =?us-ascii?Q?5nk+/Y3MEWOXYiDkKF3MFVmU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NqVWvyaPZBgfJtqfs4nfxj35EuYcoCc035GmJjMTm1YV8Lrqgswl+2tG3iDx?=
 =?us-ascii?Q?ZJ7I6XN47kWQ4MAz5Sq+L+YQzBjpLb832O1vVBtNraAxYatuOTpgJlczGI54?=
 =?us-ascii?Q?T0NcLnvk4HqOpe2qkfkZ+fWO5uY10zdZwyXs2w0x7Snh81orvq5tZ8RYJaF9?=
 =?us-ascii?Q?punzjTQVyfJ2SoTGEavWIl+TPUXsmH/8jxO+NnL8dbQ/TvdZ5sGiqU3toLvI?=
 =?us-ascii?Q?nhJRtaoO4WeQvJufiKRQ/wi5RNHIroGz6U99H5ypu8wvunUpiAD41lK5/ovL?=
 =?us-ascii?Q?DMCSr4ReEI0DjskAtjwkmpAeffbyMzSyohLFgDjTBBdx1U0CcJsc63jWtzYP?=
 =?us-ascii?Q?Z4g3tutFQqyEYVF4ITuu1Qx+j9+OkKdNnz99nGm1ZImQnY3KVcycOmO/B7Tw?=
 =?us-ascii?Q?mTFIXMinmBi6asnIze1rf6899UAfKH9Rt4jLK9y4nZ9LuQzKIlqZYi4DyoQp?=
 =?us-ascii?Q?WgQVsfa9tZAglGHjk1YfBqSQFEp4jDQxlOjDSi45Q6hVSXSpis+cRateprpg?=
 =?us-ascii?Q?9ezo8JPeLnoaED8twJKoHQLRE4IK+tvLFSuJyigKVpDh/U/tehd6Z114LiVC?=
 =?us-ascii?Q?vdzB829YFbQNO/5kCkXwafbZ6DTpnG0Cus3P5QvsAafVQ80+BMLu8odD4FeF?=
 =?us-ascii?Q?IpGhg9wfLk25Zn5AELoIS0h43LwnaHQZwdFwsBGAyVgqQKHYJvieK+v7fsXc?=
 =?us-ascii?Q?324d2V3DCEjwzZttSkRyg4sZnBPuMF08KhbRYlMI4EpCzl1sHiaHjQfaQasW?=
 =?us-ascii?Q?1bAsm7AkJmeq8bTIKLG78yT4d2ndhwf++epI4mCI6JDGqut7BUW7BwGe8X7F?=
 =?us-ascii?Q?IXv3aiOXrPIrXwuxpgeCQEn0aHx6qMsvZoswzsib0hBAWLVjfCyDSzDXi4S0?=
 =?us-ascii?Q?TJmkcYKG9wbPLO0GVbOutwPdRUoSvSinCteGEoRBLEjTYf7kn2o16Yd0KZz2?=
 =?us-ascii?Q?ji6/b+MqMhRkbZOL+TvdHu/Q69fvgajseI7qBzLYbXswE351aIo0USqy856w?=
 =?us-ascii?Q?BL5xcSpjXWEZSvFd+bbdVr+1m3Ddzow8IjIZHUQdc/QQXOjtmhDyKJBj/Aa+?=
 =?us-ascii?Q?ZR1PMg5UNXcpcHXAwGn7rg6emAzOLkZMqgyN6q79Fw953f8IaRoHDloKCtwB?=
 =?us-ascii?Q?OYWAL0g1Cx2hJZDUL7uKuTRjoI8xvJ51FMHmTBqA2r/a1wlIJENO5DZToSLv?=
 =?us-ascii?Q?Ss+VV6tAu24TVnT/djMojfxu+rE4sQeg92/BF28h3Ax5HLzPP1yNWcpQaZ9P?=
 =?us-ascii?Q?+BH6Yi6Ck+2YdOvBQPQUA/7fLqo2uYuoCh04ToskSN5NlgfsU9P3ugVYQ636?=
 =?us-ascii?Q?DFDbjphNz3fi+sRfD60TBN03HJ4W+LjDbYkfmIiDweQTSbYLk6zeqo/UkKjr?=
 =?us-ascii?Q?c7x9IzgaZljzL8n7Y6xu9P9PaXVxl5CfdpemYLASDEINO0IuDsngZc5vLAE1?=
 =?us-ascii?Q?QtIlJivgRZ9MBaK9BXrC5ZeC3Q1IsA2mf6eM9hZw4nYGS6XUWI2yuKHWE1I3?=
 =?us-ascii?Q?lZ4ZHsp39q0cX5MmucWKckl6yRn82npsYMgFYiLwDeFxOhgpcOqYDZje/FWW?=
 =?us-ascii?Q?49SU5HczXyHOgfpxIbQmNhyBSrhR/Oho1F7MhkaaHvdrzKJrJIeRDjmNpOHs?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0739594-a101-4227-4ddb-08dcfe855c21
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:06:31.1435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MysxjuUm7Jhf2oVe/wMZn8MDx9lYwp81e2r7JrMme1wPTq4ADidpAQ6ZQgEEwNIAa54CqhbeWNpqJ2iCaBbcZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6749
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

On Mon, Nov 04, 2024 at 07:19:23PM +0200, Jani Nikula wrote:
> Convert HAS_SAGV() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   |  3 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 50 +++++++++++--------
>  2 files changed, 30 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index a0fed40b7779..c23823769911 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -173,7 +173,8 @@ struct intel_display_platforms {
>  #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
>  #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
>  #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
> -#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915) && !IS_GEMINILAKE(i915))
> +#define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
> +					 !(__display)->platform.broxton && !(__display)->platform.geminilake)
>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>  					  BIT(trans)) != 0)
>  #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 83e2cbbfcaf0..09af693da586 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -77,20 +77,23 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
>  bool
>  intel_has_sagv(struct drm_i915_private *i915)
>  {
> -	return HAS_SAGV(i915) &&
> -		i915->display.sagv.status != I915_SAGV_NOT_CONTROLLED;
> +	struct intel_display *display = &i915->display;
> +
> +	return HAS_SAGV(display) && display->sagv.status != I915_SAGV_NOT_CONTROLLED;
>  }
>  
>  static u32
>  intel_sagv_block_time(struct drm_i915_private *i915)
>  {
> -	if (DISPLAY_VER(i915) >= 14) {
> +	struct intel_display *display = &i915->display;
> +
> +	if (DISPLAY_VER(display) >= 14) {
>  		u32 val;
>  
> -		val = intel_de_read(i915, MTL_LATENCY_SAGV);
> +		val = intel_de_read(display, MTL_LATENCY_SAGV);
>  
>  		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
> -	} else if (DISPLAY_VER(i915) >= 12) {
> +	} else if (DISPLAY_VER(display) >= 12) {
>  		u32 val = 0;
>  		int ret;
>  
> @@ -98,14 +101,14 @@ intel_sagv_block_time(struct drm_i915_private *i915)
>  				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
>  				     &val, NULL);
>  		if (ret) {
> -			drm_dbg_kms(&i915->drm, "Couldn't read SAGV block time!\n");
> +			drm_dbg_kms(display->drm, "Couldn't read SAGV block time!\n");
>  			return 0;
>  		}
>  
>  		return val;
> -	} else if (DISPLAY_VER(i915) == 11) {
> +	} else if (DISPLAY_VER(display) == 11) {
>  		return 10;
> -	} else if (HAS_SAGV(i915)) {
> +	} else if (HAS_SAGV(display)) {
>  		return 30;
>  	} else {
>  		return 0;
> @@ -114,31 +117,33 @@ intel_sagv_block_time(struct drm_i915_private *i915)
>  
>  static void intel_sagv_init(struct drm_i915_private *i915)
>  {
> -	if (!HAS_SAGV(i915))
> -		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
> +	struct intel_display *display = &i915->display;
> +
> +	if (!HAS_SAGV(display))
> +		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
>  
>  	/*
>  	 * Probe to see if we have working SAGV control.
>  	 * For icl+ this was already determined by intel_bw_init_hw().
>  	 */
> -	if (DISPLAY_VER(i915) < 11)
> +	if (DISPLAY_VER(display) < 11)
>  		skl_sagv_disable(i915);
>  
> -	drm_WARN_ON(&i915->drm, i915->display.sagv.status == I915_SAGV_UNKNOWN);
> +	drm_WARN_ON(display->drm, display->sagv.status == I915_SAGV_UNKNOWN);
>  
> -	i915->display.sagv.block_time_us = intel_sagv_block_time(i915);
> +	display->sagv.block_time_us = intel_sagv_block_time(i915);
>  
> -	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
> -		    str_yes_no(intel_has_sagv(i915)), i915->display.sagv.block_time_us);
> +	drm_dbg_kms(display->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
> +		    str_yes_no(intel_has_sagv(i915)), display->sagv.block_time_us);
>  
>  	/* avoid overflow when adding with wm0 latency/etc. */
> -	if (drm_WARN(&i915->drm, i915->display.sagv.block_time_us > U16_MAX,
> +	if (drm_WARN(display->drm, display->sagv.block_time_us > U16_MAX,
>  		     "Excessive SAGV block time %u, ignoring\n",
> -		     i915->display.sagv.block_time_us))
> -		i915->display.sagv.block_time_us = 0;
> +		     display->sagv.block_time_us))
> +		display->sagv.block_time_us = 0;
>  
>  	if (!intel_has_sagv(i915))
> -		i915->display.sagv.block_time_us = 0;
> +		display->sagv.block_time_us = 0;
>  }
>  
>  /*
> @@ -3832,13 +3837,14 @@ DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
>  
>  void skl_watermark_debugfs_register(struct drm_i915_private *i915)
>  {
> -	struct drm_minor *minor = i915->drm.primary;
> +	struct intel_display *display = &i915->display;
> +	struct drm_minor *minor = display->drm->primary;
>  
> -	if (HAS_IPC(i915))
> +	if (HAS_IPC(display))
>  		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
>  				    &skl_watermark_ipc_status_fops);
>  
> -	if (HAS_SAGV(i915))
> +	if (HAS_SAGV(display))
>  		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root, i915,
>  				    &intel_sagv_status_fops);
>  }
> -- 
> 2.39.5
> 
