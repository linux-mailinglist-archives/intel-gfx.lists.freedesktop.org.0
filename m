Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94F68AD67A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 23:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360E4112D99;
	Mon, 22 Apr 2024 21:21:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QfqfU+4J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F1B112D99
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 21:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713820905; x=1745356905;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=j5rmsVSfm6AMRxAaJdBokEHLVfNZOv8jYakAZ/tYAyw=;
 b=QfqfU+4JLxkNdb8apjWPO4fgTiVTkN8zlDgDih9UKpZPx0PGOA81FtE/
 gWZF3voyMms83X34RwfBxSm4igrbHC1xvcTN/L58FMrG/yx339vj6VZDE
 AIEQ94K8gUh6tScsXOacolkYvB0Y4yy1xeu5RtwGWKC5m3VjtyajSc6e2
 FLnRdGUbhGeif9/+iVM5v6dJwTmkUZFvwG/chZ9KIy7BF0M4zHhyRuYR0
 m+9MGQj9LKT+QQp7zT9hxxJnU77O0UKz3cvjOqIAdxUXsBdEhfYkXB4K6
 cupwz91KOPz5e53jLpoLUOJltOGoCgGcTbQqRRpeXas0nIceEzHedNozx A==;
X-CSE-ConnectionGUID: Zv5nSOSfQFuZBRFbCpDneA==
X-CSE-MsgGUID: 2ZyWqlsoR3WXVHXjWqNb9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="19991842"
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="19991842"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 14:21:44 -0700
X-CSE-ConnectionGUID: DvxOUgHhQo+lYo/ZGftgDg==
X-CSE-MsgGUID: fxo0PBtjSiSVTapsSm246g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="24119466"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 14:21:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 14:21:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 14:21:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 14:21:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 14:21:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnQOI/sp2paY/ZmZ1x2R00y6yApkr0DWiDJotBy8a5NWMKhsqH2+VETuxKyAtg60j7ex7vGeAa2QO2wcYUvOy6gfUh8W2/0jVSAKPZiFPQR83ci9Rju68OKFOeP2PcqvpRV38zE4TTOnlp3uU2E2zoS1dNrvQyMyxOGjabQ3SxikQLeRV+1O8U9y58Zx0odeUPLZSxSh/Jrdz/WOjXi2yjs5kpbPXNXZpT8cMl9hwVW/F1yz2w1ikjSbaoG5Xh5yltDMSUmHv9zGPnC4kEslT8SYZJE9QqSmWRoywU/2GXpfJbn3E6qPjFgUdrv7WRyT5zGHWXcvZ7X1AZMQA767ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8iPDuXHeAcZ8TulCQ/IcE+OqJb6vvY5hMwmO1Qx6Ug=;
 b=TOWkYvp/etpwsSbxBErsHTmR3iK7Sgl1AMkfgUVlVWVFU6py7U2poRZADf26G6dr0kV/xpguZsUbd8fUNAdpVWZkZPcpKxjG+bzhFyTbyB5eWKbVv6GVhrQpFu1zSIVGkrjyYZYQn7odLaTAoJLAGGbu7nWjQ8scoaJv48kl6E9DL83qMBLBj9D8jB+0bKuLyvB+IBPP47NVXQHh4BvNHvDtv1C/3GkBEX7o5hQQK7oqDVqd7F82Sz+QcMDpYIxQh9pFgb5sT+gDN0J8SNq/vEM5hkokkOGryD7TTXwrTiJ/MN+rGUrnlFSs/E2tJyoUcn3sF3VOh5IXdo97k/+h3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Mon, 22 Apr
 2024 21:21:35 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 21:21:34 +0000
Date: Mon, 22 Apr 2024 17:21:31 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/dsi: pass display to register macros
 instead of implicit variable
Message-ID: <ZibU22wc6OB73Xz4@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
 <6dd52f3fce3527242479aadc276d05de74ceae5d.1713520813.git.jani.nikula@intel.com>
 <ZibSWldpXDRtgkhc@intel.com>
 <171382061951.135083.8834293148344873194@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <171382061951.135083.8834293148344873194@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ2PR11MB7455:EE_
X-MS-Office365-Filtering-Correlation-Id: 6048a0ef-d3eb-4b99-6cd2-08dc63122ffb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?alG9xKogWOimiPCwNNDDaK1eIfl04/yVaZo8Mpm4UOJ7vVsextz8d/wAaln0?=
 =?us-ascii?Q?cna9DLtnoAIERj+bOv1jHc/4CBGmuyWQod0AgT5nDrHz1QK8ZF/1ZGej+9f7?=
 =?us-ascii?Q?TFpH4ryGHDN+co019frjAU3ot6PkGNxIcqIa+C7FecipuHF3E0ECrpvRCs+g?=
 =?us-ascii?Q?+SaFHGZgSaEDRp8J/bM6XW2yuBqdB5s+imhdxHzGz2bn5LuJkxXWwNFX1s/N?=
 =?us-ascii?Q?fX+3DUDnMozcZHBrgT6uxGqx09QyEFajOTgzuwn0CulaquH6F4yLSbrg7atJ?=
 =?us-ascii?Q?6uu4gjvAPKPcxlZVGJilxR7U9LXb62zM8l6hxSwSQPPEawmQ842y5A5frF/C?=
 =?us-ascii?Q?7kiH4VXcv9afDrH/N7oXAH+lxPHW2nLmGzd7m0j6Xzqnt6nNVrH8yI8ghRdO?=
 =?us-ascii?Q?J0EFTMcb4WZNQHXwaYRfSzsF2EtXfHd8t1aIz46oiA3fEB74PD0M44fNeCiG?=
 =?us-ascii?Q?a4tJPXmwiQ8RG3Ne926xcC68PBoG75IIs97i1LDIE7P4btEacedJBJfVEBun?=
 =?us-ascii?Q?543AHjlBtTilGyrtBwMWLOL9BMthD4TRPA2TOlYfwsACJp1f/VOWxs0ZMT43?=
 =?us-ascii?Q?qNAmgoHlak5OUrD2AWy3wNIRY+2EgajxgTGY4PGycHGgQ88fBSGTT7CENwj9?=
 =?us-ascii?Q?KAmmCYA85crc9wajDLwmxHsKfVMiothG22GBoRfdhDBlbgxBAYSV0k27AGwo?=
 =?us-ascii?Q?vCi2HaMnvpB24kq+NOSIuM7IV7QqHBERdj3zxunf/cgPJM8dN0RCMzg5mYbJ?=
 =?us-ascii?Q?yGCfLmDaRjLi00U0V2VllevelHbInZMPp1LzKmPkyKWyqOQNZ1BY9xQv9XSP?=
 =?us-ascii?Q?8dYxMT7hyxb4kuoE1UE4RXmCcII5MNXTwUYv8nwkq592f8F5LWHBtbs8Og/4?=
 =?us-ascii?Q?CcaODUB4BMOM+H1ALxvUgOYrvVypUVGtuCdqw8198DBz0dil0h8ZVNK3agdS?=
 =?us-ascii?Q?tlg3ajdyaWqcR1De0iu6xgHjgADRctq9+S4OCM4PRMJK64oJbcbDjXlZ/QQl?=
 =?us-ascii?Q?LwsVkGTINTUOFv6iSUOwbyS9vLX98wZF+ZmeHIbQgFmWffRNHH2WVz3579rf?=
 =?us-ascii?Q?x5nBk1xeTet6NgWjS2O578fi5V6rnt49HPIAOEyS7S0KSfKwA1Kcbsu79G5m?=
 =?us-ascii?Q?VWC5it3+HBg6A4541k/3fcJWRUMWrww9H1H1rzyVeU4Infv23MkpRPGstsyi?=
 =?us-ascii?Q?euIx7og7oB0KhUSYClWGCl7sQMNhR1W1sFm8RKxWWW6RQB3wZUW8JDcdlTnT?=
 =?us-ascii?Q?2BFKNsjMow/Lu/B9m5q8//B+CobG+bVsGI0u0Jaueg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?48jMCSoVHR3kCX4BAuIaW85lJvQELpj9mLQtUEIwX+yyaekZpWu6SgSHrmmq?=
 =?us-ascii?Q?nr2X6M5vAQqt3ur7aDmzvPewd9JYzhL3h46O82A5ei31L4ZKbzOvvETkt1o/?=
 =?us-ascii?Q?3OpOg+PB5RdupdWkeu0a7DZ1r8657dnimkaTSbUjlOgGEO+HGCYeB2ebrIPw?=
 =?us-ascii?Q?SPae/cBwWwc9OxLp8aZ0nFjbFHpkSYetAU03i+EfsEvhgyq1rpDK1Tzacq/N?=
 =?us-ascii?Q?V1pMZxFQiZ2rEmn4hLUGJIuj7ngGBSCgqqulbH0yz418cTJlxtYURfVg23QA?=
 =?us-ascii?Q?fhL5428uyioohoKjtedErbeNYs6nPzNPY2bN5SB5AHI/azNE058CiyJVPYEH?=
 =?us-ascii?Q?Nf7bDj50XM5YLN3HTS1pv5h9Rlc+LYvYW97PXtspVW1iZ4/jz8MZRut9zijd?=
 =?us-ascii?Q?/MJ5DcJQ3mpolGcOpjU/fbnjeAOGWNSl7W6kPLckq3wkGm2Ff+MvMbo1pf7N?=
 =?us-ascii?Q?v7g9ljjk5vl0ryLEIghIElBEz2VnL6katIuAbL2HxijYuCWREA5z5vK50vDy?=
 =?us-ascii?Q?jt4UllkT+GyeC4WoTodIHhTTfy6FInq8tXcS2/vb6ZxF2HDRj+V5JyD/pCRH?=
 =?us-ascii?Q?0D4LtPTo5Av89XvgYca77rlicqxaMeyivNkB9O7gpHx2vmarCw1wsqfdY3Zc?=
 =?us-ascii?Q?psKxe6oNDrGYWvNV9P/bhnbgypmj8I8fk/wpVsQz+vPHf9N7u5vqnDFlJAzy?=
 =?us-ascii?Q?rQ/T1nJKJMXqsHy9t9TKpyYlCgVXDHiIat8vQ6RbG6PtWWFkN2yYoTk1tl5d?=
 =?us-ascii?Q?lX4yYjBFka8LAlrn7Q0NePfti2X5bfLtn8WhpfhBI9FCRVu8DGz91FghVZHk?=
 =?us-ascii?Q?XJQmtuIOnqaqmKMPpleuUvdw964rW19eFevXbVGJNf2bkboYBm+9E9MWUU84?=
 =?us-ascii?Q?v/v8EFtAeZhwlkurXsA08XVvIOsoAWASxYFCjYZIeQk8ndd0TFqYOnD3yLlS?=
 =?us-ascii?Q?T4S25VhQOklIg7jaYrOxJTIxmGNewYufV+Yvy5jRH3Xdib8z+bYLkz7k3pgw?=
 =?us-ascii?Q?1HFUw43yAsYIubVaqp6gqffX+J5u10Qxldyc0S5TRrztHfP6Z2nPpnj0y6QZ?=
 =?us-ascii?Q?5/1xI6PxWpbKPtDpy1K7UcBwRjc4yHOgxMCoD/nO60Z6NJG5ovNfmD8qKPHS?=
 =?us-ascii?Q?1hj70uHvxr0Soatu+aO3PUMFObaIYUYr+ppgsmmLokl059t1+vQbU4wbDR9A?=
 =?us-ascii?Q?Y1H4knC/dycqAlI9kXVvZENWurzm+oIoCaRkIVeRfAnStriYcUJjnVysrF5O?=
 =?us-ascii?Q?R1CwY7AlFRM9Jb/ZEmpQJOX/wLQEr3UNuNLavi9AUAdmexHOyf/bSB57Pt+V?=
 =?us-ascii?Q?XElP9vu7YMlCTSlLjfa2umeLmotquOQELUsh2EcV/AP7WQwjcxgt9oNFN/C6?=
 =?us-ascii?Q?aWB58sqxcb4v0Qi0MCI6PnFxqjjDzsJCkUWzQZFnX/7MeIZZpIgXLrywti5G?=
 =?us-ascii?Q?0rcsQDMCFSf7wMp/HbtLaPy2txi9t5gQSVXXFdeCo9JIbcBJqVVy1XIJh7DQ?=
 =?us-ascii?Q?dTYLp6ez9yiGXLb6Pgl3BoidOsA2r9Kr57/Kg+l76U+aRB26axupcyq2cn3G?=
 =?us-ascii?Q?0k9wB+YRa9atSPgODzhlPKFlOI4uyBKRV6eZzT0L7+0roxEIAHE66VGdtcfe?=
 =?us-ascii?Q?Xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6048a0ef-d3eb-4b99-6cd2-08dc63122ffb
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 21:21:34.9136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VPrazEJQVkakWzUSfME01IvHASBMTCpVKedT8+6mc6VwsMuYWmtPioK2IvIL9LTTuSOfkuuRsUfhqv6q0e6h0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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

On Mon, Apr 22, 2024 at 06:16:59PM -0300, Gustavo Sousa wrote:
> Quoting Rodrigo Vivi (2024-04-22 18:10:50-03:00)
> >On Fri, Apr 19, 2024 at 01:04:06PM +0300, Jani Nikula wrote:
> >> Stop relying on the dev_priv local variable in the DSI register
> >> macros. Pass struct intel_display pointer to the macros. Move the MIPI
> >> DSI MMIO base selection to a different level, passing it to _MMIO_MIPI()
> >> and doing the addition there.
> >> 
> >> Start using the local display variable for all intel_de_* usage, and
> >> opportunistically use it for other things than display registers as
> >> well.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> 
> >> ---
> >> 
> >> Tip: Applying the patch and using 'git show --color-words' is probably
> >> the easiest way to review.
> >
> >wow! this is indeed a nice feature for this case. I had never tried it before.
> >Thanks for showing that.
> >
> >But the registers changes were easier to review the old way. ;)
> 
> What about --word-diff for those? :-)

this is overall better indeed! Thanks

although for the registers the full context was more clear... but maybe
it is just a matter of getting used to it...
nowadays with the b4 in place these small/smart diffs might help the
reviews

Thank you so much

> 
> --
> Gustavo Sousa
> 
> >
> >Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c |   8 +-
> >>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 337 ++++++++++---------
> >>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c   |  22 +-
> >>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h  | 324 +++++++++---------
> >>  4 files changed, 349 insertions(+), 342 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 96ed1490fec7..b9434465d3a7 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -3722,8 +3722,8 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
> >>                                           struct intel_crtc_state *pipe_config,
> >>                                           struct intel_display_power_domain_set *power_domain_set)
> >>  {
> >> -        struct drm_device *dev = crtc->base.dev;
> >> -        struct drm_i915_private *dev_priv = to_i915(dev);
> >> +        struct intel_display *display = to_intel_display(crtc);
> >> +        struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >>          enum transcoder cpu_transcoder;
> >>          enum port port;
> >>          u32 tmp;
> >> @@ -3749,11 +3749,11 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
> >>                          break;
> >>  
> >>                  /* XXX: this works for video mode only */
> >> -                tmp = intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port));
> >> +                tmp = intel_de_read(display, BXT_MIPI_PORT_CTRL(port));
> >>                  if (!(tmp & DPI_ENABLE))
> >>                          continue;
> >>  
> >> -                tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
> >> +                tmp = intel_de_read(display, MIPI_CTRL(display, port));
> >>                  if ((tmp & BXT_PIPE_SELECT_MASK) != BXT_PIPE_SELECT(crtc->pipe))
> >>                          continue;
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> index 9967ef58f1ec..ee9923c7b115 100644
> >> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> @@ -85,18 +85,18 @@ enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
> >>  
> >>  void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
> >> +        struct intel_display *display = to_intel_display(&intel_dsi->base);
> >>          u32 mask;
> >>  
> >>          mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
> >>                  LP_DATA_FIFO_EMPTY | HS_DATA_FIFO_EMPTY;
> >>  
> >> -        if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(port),
> >> +        if (intel_de_wait_for_set(display, MIPI_GEN_FIFO_STAT(display, port),
> >>                                    mask, 100))
> >> -                drm_err(&dev_priv->drm, "DPI FIFOs are not empty\n");
> >> +                drm_err(display->drm, "DPI FIFOs are not empty\n");
> >>  }
> >>  
> >> -static void write_data(struct drm_i915_private *dev_priv,
> >> +static void write_data(struct intel_display *display,
> >>                         i915_reg_t reg,
> >>                         const u8 *data, u32 len)
> >>  {
> >> @@ -108,18 +108,18 @@ static void write_data(struct drm_i915_private *dev_priv,
> >>                  for (j = 0; j < min_t(u32, len - i, 4); j++)
> >>                          val |= *data++ << 8 * j;
> >>  
> >> -                intel_de_write(dev_priv, reg, val);
> >> +                intel_de_write(display, reg, val);
> >>          }
> >>  }
> >>  
> >> -static void read_data(struct drm_i915_private *dev_priv,
> >> +static void read_data(struct intel_display *display,
> >>                        i915_reg_t reg,
> >>                        u8 *data, u32 len)
> >>  {
> >>          u32 i, j;
> >>  
> >>          for (i = 0; i < len; i += 4) {
> >> -                u32 val = intel_de_read(dev_priv, reg);
> >> +                u32 val = intel_de_read(display, reg);
> >>  
> >>                  for (j = 0; j < min_t(u32, len - i, 4); j++)
> >>                          *data++ = val >> 8 * j;
> >> @@ -131,7 +131,7 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
> >>  {
> >>          struct intel_dsi_host *intel_dsi_host = to_intel_dsi_host(host);
> >>          struct intel_dsi *intel_dsi = intel_dsi_host->intel_dsi;
> >> -        struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
> >> +        struct intel_display *display = to_intel_display(&intel_dsi->base);
> >>          enum port port = intel_dsi_host->port;
> >>          struct mipi_dsi_packet packet;
> >>          ssize_t ret;
> >> @@ -146,51 +146,51 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
> >>          header = packet.header;
> >>  
> >>          if (msg->flags & MIPI_DSI_MSG_USE_LPM) {
> >> -                data_reg = MIPI_LP_GEN_DATA(port);
> >> +                data_reg = MIPI_LP_GEN_DATA(display, port);
> >>                  data_mask = LP_DATA_FIFO_FULL;
> >> -                ctrl_reg = MIPI_LP_GEN_CTRL(port);
> >> +                ctrl_reg = MIPI_LP_GEN_CTRL(display, port);
> >>                  ctrl_mask = LP_CTRL_FIFO_FULL;
> >>          } else {
> >> -                data_reg = MIPI_HS_GEN_DATA(port);
> >> +                data_reg = MIPI_HS_GEN_DATA(display, port);
> >>                  data_mask = HS_DATA_FIFO_FULL;
> >> -                ctrl_reg = MIPI_HS_GEN_CTRL(port);
> >> +                ctrl_reg = MIPI_HS_GEN_CTRL(display, port);
> >>                  ctrl_mask = HS_CTRL_FIFO_FULL;
> >>          }
> >>  
> >>          /* note: this is never true for reads */
> >>          if (packet.payload_length) {
> >> -                if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
> >> +                if (intel_de_wait_for_clear(display, MIPI_GEN_FIFO_STAT(display, port),
> >>                                              data_mask, 50))
> >> -                        drm_err(&dev_priv->drm,
> >> +                        drm_err(display->drm,
> >>                                  "Timeout waiting for HS/LP DATA FIFO !full\n");
> >>  
> >> -                write_data(dev_priv, data_reg, packet.payload,
> >> +                write_data(display, data_reg, packet.payload,
> >>                             packet.payload_length);
> >>          }
> >>  
> >>          if (msg->rx_len) {
> >> -                intel_de_write(dev_priv, MIPI_INTR_STAT(port),
> >> +                intel_de_write(display, MIPI_INTR_STAT(display, port),
> >>                                 GEN_READ_DATA_AVAIL);
> >>          }
> >>  
> >> -        if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
> >> +        if (intel_de_wait_for_clear(display, MIPI_GEN_FIFO_STAT(display, port),
> >>                                      ctrl_mask, 50)) {
> >> -                drm_err(&dev_priv->drm,
> >> +                drm_err(display->drm,
> >>                          "Timeout waiting for HS/LP CTRL FIFO !full\n");
> >>          }
> >>  
> >> -        intel_de_write(dev_priv, ctrl_reg,
> >> +        intel_de_write(display, ctrl_reg,
> >>                         header[2] << 16 | header[1] << 8 | header[0]);
> >>  
> >>          /* ->rx_len is set only for reads */
> >>          if (msg->rx_len) {
> >>                  data_mask = GEN_READ_DATA_AVAIL;
> >> -                if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port),
> >> +                if (intel_de_wait_for_set(display, MIPI_INTR_STAT(display, port),
> >>                                            data_mask, 50))
> >> -                        drm_err(&dev_priv->drm,
> >> +                        drm_err(display->drm,
> >>                                  "Timeout waiting for read data.\n");
> >>  
> >> -                read_data(dev_priv, data_reg, msg->rx_buf, msg->rx_len);
> >> +                read_data(display, data_reg, msg->rx_buf, msg->rx_len);
> >>          }
> >>  
> >>          /* XXX: fix for reads and writes */
> >> @@ -223,7 +223,7 @@ static const struct mipi_dsi_host_ops intel_dsi_host_ops = {
> >>  static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
> >>                          enum port port)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
> >> +        struct intel_display *display = to_intel_display(&intel_dsi->base);
> >>          u32 mask;
> >>  
> >>          /* XXX: pipe, hs */
> >> @@ -233,18 +233,18 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
> >>                  cmd |= DPI_LP_MODE;
> >>  
> >>          /* clear bit */
> >> -        intel_de_write(dev_priv, MIPI_INTR_STAT(port), SPL_PKT_SENT_INTERRUPT);
> >> +        intel_de_write(display, MIPI_INTR_STAT(display, port), SPL_PKT_SENT_INTERRUPT);
> >>  
> >>          /* XXX: old code skips write if control unchanged */
> >> -        if (cmd == intel_de_read(dev_priv, MIPI_DPI_CONTROL(port)))
> >> -                drm_dbg_kms(&dev_priv->drm,
> >> +        if (cmd == intel_de_read(display, MIPI_DPI_CONTROL(display, port)))
> >> +                drm_dbg_kms(display->drm,
> >>                              "Same special packet %02x twice in a row.\n", cmd);
> >>  
> >> -        intel_de_write(dev_priv, MIPI_DPI_CONTROL(port), cmd);
> >> +        intel_de_write(display, MIPI_DPI_CONTROL(display, port), cmd);
> >>  
> >>          mask = SPL_PKT_SENT_INTERRUPT;
> >> -        if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port), mask, 100))
> >> -                drm_err(&dev_priv->drm,
> >> +        if (intel_de_wait_for_set(display, MIPI_INTR_STAT(display, port), mask, 100))
> >> +                drm_err(display->drm,
> >>                          "Video mode command 0x%08x send failed.\n", cmd);
> >>  
> >>          return 0;
> >> @@ -324,7 +324,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
> >>  
> >>  static bool glk_dsi_enable_io(struct intel_encoder *encoder)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>          bool cold_boot = false;
> >> @@ -334,29 +334,30 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
> >>           * Power ON MIPI IO first and then write into IO reset and LP wake bits
> >>           */
> >>          for_each_dsi_port(port, intel_dsi->ports)
> >> -                intel_de_rmw(dev_priv, MIPI_CTRL(port), 0, GLK_MIPIIO_ENABLE);
> >> +                intel_de_rmw(display, MIPI_CTRL(display, port), 0, GLK_MIPIIO_ENABLE);
> >>  
> >>          /* Put the IO into reset */
> >> -        intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
> >> +        intel_de_rmw(display, MIPI_CTRL(display, PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
> >>  
> >>          /* Program LP Wake */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                u32 tmp = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
> >> -                intel_de_rmw(dev_priv, MIPI_CTRL(port),
> >> +                u32 tmp = intel_de_read(display, MIPI_DEVICE_READY(display, port));
> >> +
> >> +                intel_de_rmw(display, MIPI_CTRL(display, port),
> >>                               GLK_LP_WAKE, (tmp & DEVICE_READY) ? GLK_LP_WAKE : 0);
> >>          }
> >>  
> >>          /* Wait for Pwr ACK */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
> >> +                if (intel_de_wait_for_set(display, MIPI_CTRL(display, port),
> >>                                            GLK_MIPIIO_PORT_POWERED, 20))
> >> -                        drm_err(&dev_priv->drm, "MIPIO port is powergated\n");
> >> +                        drm_err(display->drm, "MIPIO port is powergated\n");
> >>          }
> >>  
> >>          /* Check for cold boot scenario */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >>                  cold_boot |=
> >> -                        !(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY);
> >> +                        !(intel_de_read(display, MIPI_DEVICE_READY(display, port)) & DEVICE_READY);
> >>          }
> >>  
> >>          return cold_boot;
> >> @@ -364,99 +365,100 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
> >>  
> >>  static void glk_dsi_device_ready(struct intel_encoder *encoder)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>  
> >>          /* Wait for MIPI PHY status bit to set */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
> >> +                if (intel_de_wait_for_set(display, MIPI_CTRL(display, port),
> >>                                            GLK_PHY_STATUS_PORT_READY, 20))
> >> -                        drm_err(&dev_priv->drm, "PHY is not ON\n");
> >> +                        drm_err(display->drm, "PHY is not ON\n");
> >>          }
> >>  
> >>          /* Get IO out of reset */
> >> -        intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), 0, GLK_MIPIIO_RESET_RELEASED);
> >> +        intel_de_rmw(display, MIPI_CTRL(display, PORT_A), 0, GLK_MIPIIO_RESET_RELEASED);
> >>  
> >>          /* Get IO out of Low power state*/
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY)) {
> >> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
> >> +                if (!(intel_de_read(display, MIPI_DEVICE_READY(display, port)) & DEVICE_READY)) {
> >> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display, port),
> >>                                       ULPS_STATE_MASK, DEVICE_READY);
> >>                          usleep_range(10, 15);
> >>                  } else {
> >>                          /* Enter ULPS */
> >> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
> >> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display, port),
> >>                                       ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE_READY);
> >>  
> >>                          /* Wait for ULPS active */
> >> -                        if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
> >> +                        if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> >>                                                      GLK_ULPS_NOT_ACTIVE, 20))
> >> -                                drm_err(&dev_priv->drm, "ULPS not active\n");
> >> +                                drm_err(display->drm, "ULPS not active\n");
> >>  
> >>                          /* Exit ULPS */
> >> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
> >> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display, port),
> >>                                       ULPS_STATE_MASK, ULPS_STATE_EXIT | DEVICE_READY);
> >>  
> >>                          /* Enter Normal Mode */
> >> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
> >> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display, port),
> >>                                       ULPS_STATE_MASK,
> >>                                       ULPS_STATE_NORMAL_OPERATION | DEVICE_READY);
> >>  
> >> -                        intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_LP_WAKE, 0);
> >> +                        intel_de_rmw(display, MIPI_CTRL(display, port), GLK_LP_WAKE, 0);
> >>                  }
> >>          }
> >>  
> >>          /* Wait for Stop state */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
> >> +                if (intel_de_wait_for_set(display, MIPI_CTRL(display, port),
> >>                                            GLK_DATA_LANE_STOP_STATE, 20))
> >> -                        drm_err(&dev_priv->drm,
> >> +                        drm_err(display->drm,
> >>                                  "Date lane not in STOP state\n");
> >>          }
> >>  
> >>          /* Wait for AFE LATCH */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_set(dev_priv, BXT_MIPI_PORT_CTRL(port),
> >> +                if (intel_de_wait_for_set(display, BXT_MIPI_PORT_CTRL(port),
> >>                                            AFE_LATCHOUT, 20))
> >> -                        drm_err(&dev_priv->drm,
> >> +                        drm_err(display->drm,
> >>                                  "D-PHY not entering LP-11 state\n");
> >>          }
> >>  }
> >>  
> >>  static void bxt_dsi_device_ready(struct intel_encoder *encoder)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>          u32 val;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "\n");
> >> +        drm_dbg_kms(display->drm, "\n");
> >>  
> >>          /* Enable MIPI PHY transparent latch */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                intel_de_rmw(dev_priv, BXT_MIPI_PORT_CTRL(port), 0, LP_OUTPUT_HOLD);
> >> +                intel_de_rmw(display, BXT_MIPI_PORT_CTRL(port), 0, LP_OUTPUT_HOLD);
> >>                  usleep_range(2000, 2500);
> >>          }
> >>  
> >>          /* Clear ULPS and set device ready */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
> >> +                val = intel_de_read(display, MIPI_DEVICE_READY(display, port));
> >>                  val &= ~ULPS_STATE_MASK;
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port), val);
> >>                  usleep_range(2000, 2500);
> >>                  val |= DEVICE_READY;
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port), val);
> >>          }
> >>  }
> >>  
> >>  static void vlv_dsi_device_ready(struct intel_encoder *encoder)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "\n");
> >> +        drm_dbg_kms(display->drm, "\n");
> >>  
> >>          vlv_flisdsi_get(dev_priv);
> >>          /* program rcomp for compliance, reduce from 50 ohms to 45 ohms
> >> @@ -469,7 +471,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
> >>  
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port),
> >>                                 ULPS_STATE_ENTER);
> >>                  usleep_range(2500, 3000);
> >>  
> >> @@ -477,14 +479,14 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
> >>                   * Common bit for both MIPI Port A & MIPI Port C
> >>                   * No similar bit in MIPI Port C reg
> >>                   */
> >> -                intel_de_rmw(dev_priv, VLV_MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
> >> +                intel_de_rmw(display, VLV_MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
> >>                  usleep_range(1000, 1500);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port),
> >>                                 ULPS_STATE_EXIT);
> >>                  usleep_range(2500, 3000);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port),
> >>                                 DEVICE_READY);
> >>                  usleep_range(2500, 3000);
> >>          }
> >> @@ -504,50 +506,50 @@ static void intel_dsi_device_ready(struct intel_encoder *encoder)
> >>  
> >>  static void glk_dsi_enter_low_power_mode(struct intel_encoder *encoder)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>  
> >>          /* Enter ULPS */
> >>          for_each_dsi_port(port, intel_dsi->ports)
> >> -                intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_rmw(display, MIPI_DEVICE_READY(display, port),
> >>                               ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE_READY);
> >>  
> >>          /* Wait for MIPI PHY status bit to unset */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
> >> +                if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> >>                                              GLK_PHY_STATUS_PORT_READY, 20))
> >> -                        drm_err(&dev_priv->drm, "PHY is not turning OFF\n");
> >> +                        drm_err(display->drm, "PHY is not turning OFF\n");
> >>          }
> >>  
> >>          /* Wait for Pwr ACK bit to unset */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
> >> +                if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> >>                                              GLK_MIPIIO_PORT_POWERED, 20))
> >> -                        drm_err(&dev_priv->drm,
> >> +                        drm_err(display->drm,
> >>                                  "MIPI IO Port is not powergated\n");
> >>          }
> >>  }
> >>  
> >>  static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>  
> >>          /* Put the IO into reset */
> >> -        intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
> >> +        intel_de_rmw(display, MIPI_CTRL(display, PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
> >>  
> >>          /* Wait for MIPI PHY status bit to unset */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
> >> +                if (intel_de_wait_for_clear(display, MIPI_CTRL(display, port),
> >>                                              GLK_PHY_STATUS_PORT_READY, 20))
> >> -                        drm_err(&dev_priv->drm, "PHY is not turning OFF\n");
> >> +                        drm_err(display->drm, "PHY is not turning OFF\n");
> >>          }
> >>  
> >>          /* Clear MIPI mode */
> >>          for_each_dsi_port(port, intel_dsi->ports)
> >> -                intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_MIPIIO_ENABLE, 0);
> >> +                intel_de_rmw(display, MIPI_CTRL(display, port), GLK_MIPIIO_ENABLE, 0);
> >>  }
> >>  
> >>  static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
> >> @@ -564,25 +566,26 @@ static i915_reg_t port_ctrl_reg(struct drm_i915_private *i915, enum port port)
> >>  
> >>  static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "\n");
> >> +        drm_dbg_kms(display->drm, "\n");
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >>                  /* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
> >>                  i915_reg_t port_ctrl = IS_BROXTON(dev_priv) ?
> >>                          BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(PORT_A);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port),
> >>                                 DEVICE_READY | ULPS_STATE_ENTER);
> >>                  usleep_range(2000, 2500);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port),
> >>                                 DEVICE_READY | ULPS_STATE_EXIT);
> >>                  usleep_range(2000, 2500);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port),
> >>                                 DEVICE_READY | ULPS_STATE_ENTER);
> >>                  usleep_range(2000, 2500);
> >>  
> >> @@ -591,15 +594,15 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
> >>                   * Port A only. MIPI Port C has no similar bit for checking.
> >>                   */
> >>                  if ((IS_BROXTON(dev_priv) || port == PORT_A) &&
> >> -                    intel_de_wait_for_clear(dev_priv, port_ctrl,
> >> +                    intel_de_wait_for_clear(display, port_ctrl,
> >>                                              AFE_LATCHOUT, 30))
> >> -                        drm_err(&dev_priv->drm, "DSI LP not going Low\n");
> >> +                        drm_err(display->drm, "DSI LP not going Low\n");
> >>  
> >>                  /* Disable MIPI PHY transparent latch */
> >> -                intel_de_rmw(dev_priv, port_ctrl, LP_OUTPUT_HOLD, 0);
> >> +                intel_de_rmw(display, port_ctrl, LP_OUTPUT_HOLD, 0);
> >>                  usleep_range(1000, 1500);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x00);
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port), 0x00);
> >>                  usleep_range(2000, 2500);
> >>          }
> >>  }
> >> @@ -607,6 +610,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
> >>  static void intel_dsi_port_enable(struct intel_encoder *encoder,
> >>                                    const struct intel_crtc_state *crtc_state)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >> @@ -617,11 +621,11 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
> >>  
> >>                  if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >>                          for_each_dsi_port(port, intel_dsi->ports)
> >> -                                intel_de_rmw(dev_priv, MIPI_CTRL(port),
> >> +                                intel_de_rmw(display, MIPI_CTRL(display, port),
> >>                                               BXT_PIXEL_OVERLAP_CNT_MASK,
> >>                                               temp << BXT_PIXEL_OVERLAP_CNT_SHIFT);
> >>                  } else {
> >> -                        intel_de_rmw(dev_priv, VLV_CHICKEN_3,
> >> +                        intel_de_rmw(display, VLV_CHICKEN_3,
> >>                                       PIXEL_OVERLAP_CNT_MASK,
> >>                                       temp << PIXEL_OVERLAP_CNT_SHIFT);
> >>                  }
> >> @@ -631,7 +635,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
> >>                  i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
> >>                  u32 temp;
> >>  
> >> -                temp = intel_de_read(dev_priv, port_ctrl);
> >> +                temp = intel_de_read(display, port_ctrl);
> >>  
> >>                  temp &= ~LANE_CONFIGURATION_MASK;
> >>                  temp &= ~DUAL_LINK_MODE_MASK;
> >> @@ -651,13 +655,14 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
> >>                          temp |= DITHERING_ENABLE;
> >>  
> >>                  /* assert ip_tg_enable signal */
> >> -                intel_de_write(dev_priv, port_ctrl, temp | DPI_ENABLE);
> >> -                intel_de_posting_read(dev_priv, port_ctrl);
> >> +                intel_de_write(display, port_ctrl, temp | DPI_ENABLE);
> >> +                intel_de_posting_read(display, port_ctrl);
> >>          }
> >>  }
> >>  
> >>  static void intel_dsi_port_disable(struct intel_encoder *encoder)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >> @@ -666,8 +671,8 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
> >>                  i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
> >>  
> >>                  /* de-assert ip_tg_enable signal */
> >> -                intel_de_rmw(dev_priv, port_ctrl, DPI_ENABLE, 0);
> >> -                intel_de_posting_read(dev_priv, port_ctrl);
> >> +                intel_de_rmw(display, port_ctrl, DPI_ENABLE, 0);
> >> +                intel_de_posting_read(display, port_ctrl);
> >>          }
> >>  }
> >>  
> >> @@ -721,6 +726,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
> >>                                   const struct intel_crtc_state *pipe_config,
> >>                                   const struct drm_connector_state *conn_state)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >>          struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >> @@ -728,7 +734,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
> >>          enum port port;
> >>          bool glk_cold_boot = false;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "\n");
> >> +        drm_dbg_kms(display->drm, "\n");
> >>  
> >>          intel_dsi_wait_panel_power_cycle(intel_dsi);
> >>  
> >> @@ -748,16 +754,16 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
> >>  
> >>          if (IS_BROXTON(dev_priv)) {
> >>                  /* Add MIPI IO reset programming for modeset */
> >> -                intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, MIPIO_RST_CTRL);
> >> +                intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, 0, MIPIO_RST_CTRL);
> >>  
> >>                  /* Power up DSI regulator */
> >> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
> >> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_TX_CTRL, 0);
> >> +                intel_de_write(display, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
> >> +                intel_de_write(display, BXT_P_DSI_REGULATOR_TX_CTRL, 0);
> >>          }
> >>  
> >>          if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> >>                  /* Disable DPOunit clock gating, can stall pipe */
> >> -                intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
> >> +                intel_de_rmw(display, DSPCLK_GATE_D(dev_priv),
> >>                               0, DPOUNIT_CLOCK_GATE_DISABLE);
> >>          }
> >>  
> >> @@ -793,8 +799,8 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
> >>           */
> >>          if (is_cmd_mode(intel_dsi)) {
> >>                  for_each_dsi_port(port, intel_dsi->ports)
> >> -                        intel_de_write(dev_priv,
> >> -                                       MIPI_MAX_RETURN_PKT_SIZE(port), 8 * 4);
> >> +                        intel_de_write(display,
> >> +                                       MIPI_MAX_RETURN_PKT_SIZE(display, port), 8 * 4);
> >>                  intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_TEAR_ON);
> >>                  intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
> >>          } else {
> >> @@ -866,11 +872,12 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
> >>                                     const struct intel_crtc_state *old_crtc_state,
> >>                                     const struct drm_connector_state *old_conn_state)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "\n");
> >> +        drm_dbg_kms(display->drm, "\n");
> >>  
> >>          if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >>                  intel_crtc_vblank_off(old_crtc_state);
> >> @@ -901,12 +908,12 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
> >>  
> >>          if (IS_BROXTON(dev_priv)) {
> >>                  /* Power down DSI regulator to save power */
> >> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
> >> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_TX_CTRL,
> >> +                intel_de_write(display, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
> >> +                intel_de_write(display, BXT_P_DSI_REGULATOR_TX_CTRL,
> >>                                 HS_IO_CTRL_SELECT);
> >>  
> >>                  /* Add MIPI IO reset programming for modeset */
> >> -                intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, MIPIO_RST_CTRL, 0);
> >> +                intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, MIPIO_RST_CTRL, 0);
> >>          }
> >>  
> >>          if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >> @@ -914,7 +921,7 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
> >>          } else {
> >>                  vlv_dsi_pll_disable(encoder);
> >>  
> >> -                intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
> >> +                intel_de_rmw(display, DSPCLK_GATE_D(dev_priv),
> >>                               DPOUNIT_CLOCK_GATE_DISABLE, 0);
> >>          }
> >>  
> >> @@ -930,13 +937,14 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
> >>  static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
> >>                                     enum pipe *pipe)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          intel_wakeref_t wakeref;
> >>          enum port port;
> >>          bool active = false;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "\n");
> >> +        drm_dbg_kms(display->drm, "\n");
> >>  
> >>          wakeref = intel_display_power_get_if_enabled(dev_priv,
> >>                                                       encoder->power_domain);
> >> @@ -955,7 +963,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
> >>          /* XXX: this only works for one DSI output */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >>                  i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
> >> -                bool enabled = intel_de_read(dev_priv, port_ctrl) & DPI_ENABLE;
> >> +                bool enabled = intel_de_read(display, port_ctrl) & DPI_ENABLE;
> >>  
> >>                  /*
> >>                   * Due to some hardware limitations on VLV/CHV, the DPI enable
> >> @@ -964,27 +972,27 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
> >>                   */
> >>                  if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> >>                      port == PORT_C)
> >> -                        enabled = intel_de_read(dev_priv, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
> >> +                        enabled = intel_de_read(display, TRANSCONF(PIPE_B)) & TRANSCONF_ENABLE;
> >>  
> >>                  /* Try command mode if video mode not enabled */
> >>                  if (!enabled) {
> >> -                        u32 tmp = intel_de_read(dev_priv,
> >> -                                                MIPI_DSI_FUNC_PRG(port));
> >> +                        u32 tmp = intel_de_read(display,
> >> +                                                MIPI_DSI_FUNC_PRG(display, port));
> >>                          enabled = tmp & CMD_MODE_DATA_WIDTH_MASK;
> >>                  }
> >>  
> >>                  if (!enabled)
> >>                          continue;
> >>  
> >> -                if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
> >> +                if (!(intel_de_read(display, MIPI_DEVICE_READY(display, port)) & DEVICE_READY))
> >>                          continue;
> >>  
> >>                  if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >> -                        u32 tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
> >> +                        u32 tmp = intel_de_read(display, MIPI_CTRL(display, port));
> >>                          tmp &= BXT_PIPE_SELECT_MASK;
> >>                          tmp >>= BXT_PIPE_SELECT_SHIFT;
> >>  
> >> -                        if (drm_WARN_ON(&dev_priv->drm, tmp > PIPE_C))
> >> +                        if (drm_WARN_ON(display->drm, tmp > PIPE_C))
> >>                                  continue;
> >>  
> >>                          *pipe = tmp;
> >> @@ -1005,7 +1013,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
> >>  static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
> >>                                      struct intel_crtc_state *pipe_config)
> >>  {
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_display_mode *adjusted_mode =
> >>                                          &pipe_config->hw.adjusted_mode;
> >>          struct drm_display_mode *adjusted_mode_sw;
> >> @@ -1027,11 +1035,11 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
> >>           * encoder->get_hw_state() returns true.
> >>           */
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                if (intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port)) & DPI_ENABLE)
> >> +                if (intel_de_read(display, BXT_MIPI_PORT_CTRL(port)) & DPI_ENABLE)
> >>                          break;
> >>          }
> >>  
> >> -        fmt = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port)) & VID_MODE_FORMAT_MASK;
> >> +        fmt = intel_de_read(display, MIPI_DSI_FUNC_PRG(display, port)) & VID_MODE_FORMAT_MASK;
> >>          bpp = mipi_dsi_pixel_format_to_bpp(
> >>                          pixel_format_from_register_bits(fmt));
> >>  
> >> @@ -1043,24 +1051,24 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
> >>  
> >>          /* In terms of pixels */
> >>          adjusted_mode->crtc_hdisplay =
> >> -                                intel_de_read(dev_priv,
> >> +                                intel_de_read(display,
> >>                                                BXT_MIPI_TRANS_HACTIVE(port));
> >>          adjusted_mode->crtc_vdisplay =
> >> -                                intel_de_read(dev_priv,
> >> +                                intel_de_read(display,
> >>                                                BXT_MIPI_TRANS_VACTIVE(port));
> >>          adjusted_mode->crtc_vtotal =
> >> -                                intel_de_read(dev_priv,
> >> +                                intel_de_read(display,
> >>                                                BXT_MIPI_TRANS_VTOTAL(port));
> >>  
> >>          hactive = adjusted_mode->crtc_hdisplay;
> >> -        hfp = intel_de_read(dev_priv, MIPI_HFP_COUNT(port));
> >> +        hfp = intel_de_read(display, MIPI_HFP_COUNT(display, port));
> >>  
> >>          /*
> >>           * Meaningful for video mode non-burst sync pulse mode only,
> >>           * can be zero for non-burst sync events and burst modes
> >>           */
> >> -        hsync = intel_de_read(dev_priv, MIPI_HSYNC_PADDING_COUNT(port));
> >> -        hbp = intel_de_read(dev_priv, MIPI_HBP_COUNT(port));
> >> +        hsync = intel_de_read(display, MIPI_HSYNC_PADDING_COUNT(display, port));
> >> +        hbp = intel_de_read(display, MIPI_HBP_COUNT(display, port));
> >>  
> >>          /* harizontal values are in terms of high speed byte clock */
> >>          hfp = pixels_from_txbyteclkhs(hfp, bpp, lane_count,
> >> @@ -1077,8 +1085,8 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
> >>          }
> >>  
> >>          /* vertical values are in terms of lines */
> >> -        vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(port));
> >> -        vsync = intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(port));
> >> +        vfp = intel_de_read(display, MIPI_VFP_COUNT(display, port));
> >> +        vsync = intel_de_read(display, MIPI_VSYNC_PADDING_COUNT(display, port));
> >>  
> >>          adjusted_mode->crtc_htotal = hactive + hfp + hsync + hbp;
> >>          adjusted_mode->crtc_hsync_start = hfp + adjusted_mode->crtc_hdisplay;
> >> @@ -1207,6 +1215,7 @@ static u16 txclkesc(u32 divider, unsigned int us)
> >>  static void set_dsi_timings(struct intel_encoder *encoder,
> >>                              const struct drm_display_mode *adjusted_mode)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >> @@ -1249,29 +1258,29 @@ static void set_dsi_timings(struct intel_encoder *encoder,
> >>                           * vactive, as they are calculated per channel basis,
> >>                           * whereas these values should be based on resolution.
> >>                           */
> >> -                        intel_de_write(dev_priv, BXT_MIPI_TRANS_HACTIVE(port),
> >> +                        intel_de_write(display, BXT_MIPI_TRANS_HACTIVE(port),
> >>                                         adjusted_mode->crtc_hdisplay);
> >> -                        intel_de_write(dev_priv, BXT_MIPI_TRANS_VACTIVE(port),
> >> +                        intel_de_write(display, BXT_MIPI_TRANS_VACTIVE(port),
> >>                                         adjusted_mode->crtc_vdisplay);
> >> -                        intel_de_write(dev_priv, BXT_MIPI_TRANS_VTOTAL(port),
> >> +                        intel_de_write(display, BXT_MIPI_TRANS_VTOTAL(port),
> >>                                         adjusted_mode->crtc_vtotal);
> >>                  }
> >>  
> >> -                intel_de_write(dev_priv, MIPI_HACTIVE_AREA_COUNT(port),
> >> +                intel_de_write(display, MIPI_HACTIVE_AREA_COUNT(display, port),
> >>                                 hactive);
> >> -                intel_de_write(dev_priv, MIPI_HFP_COUNT(port), hfp);
> >> +                intel_de_write(display, MIPI_HFP_COUNT(display, port), hfp);
> >>  
> >>                  /* meaningful for video mode non-burst sync pulse mode only,
> >>                   * can be zero for non-burst sync events and burst modes */
> >> -                intel_de_write(dev_priv, MIPI_HSYNC_PADDING_COUNT(port),
> >> +                intel_de_write(display, MIPI_HSYNC_PADDING_COUNT(display, port),
> >>                                 hsync);
> >> -                intel_de_write(dev_priv, MIPI_HBP_COUNT(port), hbp);
> >> +                intel_de_write(display, MIPI_HBP_COUNT(display, port), hbp);
> >>  
> >>                  /* vertical values are in terms of lines */
> >> -                intel_de_write(dev_priv, MIPI_VFP_COUNT(port), vfp);
> >> -                intel_de_write(dev_priv, MIPI_VSYNC_PADDING_COUNT(port),
> >> +                intel_de_write(display, MIPI_VFP_COUNT(display, port), vfp);
> >> +                intel_de_write(display, MIPI_VSYNC_PADDING_COUNT(display, port),
> >>                                 vsync);
> >> -                intel_de_write(dev_priv, MIPI_VBP_COUNT(port), vbp);
> >> +                intel_de_write(display, MIPI_VBP_COUNT(display, port), vbp);
> >>          }
> >>  }
> >>  
> >> @@ -1295,6 +1304,7 @@ static u32 pixel_format_to_reg(enum mipi_dsi_pixel_format fmt)
> >>  static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                                const struct intel_crtc_state *pipe_config)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >> @@ -1304,7 +1314,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>          u32 val, tmp;
> >>          u16 mode_hdisplay;
> >>  
> >> -        drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(crtc->pipe));
> >> +        drm_dbg_kms(display->drm, "pipe %c\n", pipe_name(crtc->pipe));
> >>  
> >>          mode_hdisplay = adjusted_mode->crtc_hdisplay;
> >>  
> >> @@ -1320,31 +1330,31 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                           * escape clock divider, 20MHz, shared for A and C.
> >>                           * device ready must be off when doing this! txclkesc?
> >>                           */
> >> -                        tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
> >> +                        tmp = intel_de_read(display, MIPI_CTRL(display, PORT_A));
> >>                          tmp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
> >> -                        intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
> >> +                        intel_de_write(display, MIPI_CTRL(display, PORT_A),
> >>                                         tmp | ESCAPE_CLOCK_DIVIDER_1);
> >>  
> >>                          /* read request priority is per pipe */
> >> -                        tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
> >> +                        tmp = intel_de_read(display, MIPI_CTRL(display, port));
> >>                          tmp &= ~READ_REQUEST_PRIORITY_MASK;
> >> -                        intel_de_write(dev_priv, MIPI_CTRL(port),
> >> +                        intel_de_write(display, MIPI_CTRL(display, port),
> >>                                         tmp | READ_REQUEST_PRIORITY_HIGH);
> >>                  } else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> >>                          enum pipe pipe = crtc->pipe;
> >>  
> >> -                        intel_de_rmw(dev_priv, MIPI_CTRL(port),
> >> +                        intel_de_rmw(display, MIPI_CTRL(display, port),
> >>                                       BXT_PIPE_SELECT_MASK, BXT_PIPE_SELECT(pipe));
> >>                  }
> >>  
> >>                  /* XXX: why here, why like this? handling in irq handler?! */
> >> -                intel_de_write(dev_priv, MIPI_INTR_STAT(port), 0xffffffff);
> >> -                intel_de_write(dev_priv, MIPI_INTR_EN(port), 0xffffffff);
> >> +                intel_de_write(display, MIPI_INTR_STAT(display, port), 0xffffffff);
> >> +                intel_de_write(display, MIPI_INTR_EN(display, port), 0xffffffff);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DPHY_PARAM(port),
> >> +                intel_de_write(display, MIPI_DPHY_PARAM(display, port),
> >>                                 intel_dsi->dphy_reg);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(port),
> >> +                intel_de_write(display, MIPI_DPI_RESOLUTION(display, port),
> >>                                 adjusted_mode->crtc_vdisplay << VERTICAL_ADDRESS_SHIFT | mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);
> >>          }
> >>  
> >> @@ -1372,7 +1382,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>          }
> >>  
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >> -                intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
> >> +                intel_de_write(display, MIPI_DSI_FUNC_PRG(display, port), val);
> >>  
> >>                  /* timeouts for recovery. one frame IIUC. if counter expires,
> >>                   * EOT and stop state. */
> >> @@ -1393,23 +1403,23 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>  
> >>                  if (is_vid_mode(intel_dsi) &&
> >>                          intel_dsi->video_mode == BURST_MODE) {
> >> -                        intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
> >> +                        intel_de_write(display, MIPI_HS_TX_TIMEOUT(display, port),
> >>                                         txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
> >>                  } else {
> >> -                        intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
> >> +                        intel_de_write(display, MIPI_HS_TX_TIMEOUT(display, port),
> >>                                         txbyteclkhs(adjusted_mode->crtc_vtotal * adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
> >>                  }
> >> -                intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(port),
> >> +                intel_de_write(display, MIPI_LP_RX_TIMEOUT(display, port),
> >>                                 intel_dsi->lp_rx_timeout);
> >> -                intel_de_write(dev_priv, MIPI_TURN_AROUND_TIMEOUT(port),
> >> +                intel_de_write(display, MIPI_TURN_AROUND_TIMEOUT(display, port),
> >>                                 intel_dsi->turn_arnd_val);
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_RESET_TIMER(port),
> >> +                intel_de_write(display, MIPI_DEVICE_RESET_TIMER(display, port),
> >>                                 intel_dsi->rst_timer_val);
> >>  
> >>                  /* dphy stuff */
> >>  
> >>                  /* in terms of low power clock */
> >> -                intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
> >> +                intel_de_write(display, MIPI_INIT_COUNT(display, port),
> >>                                 txclkesc(intel_dsi->escape_clk_div, 100));
> >>  
> >>                  if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> >> @@ -1420,16 +1430,16 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                           * getting used. So write the other port
> >>                           * if not in dual link mode.
> >>                           */
> >> -                        intel_de_write(dev_priv,
> >> -                                       MIPI_INIT_COUNT(port == PORT_A ? PORT_C : PORT_A),
> >> +                        intel_de_write(display,
> >> +                                       MIPI_INIT_COUNT(display, port == PORT_A ? PORT_C : PORT_A),
> >>                                         intel_dsi->init_count);
> >>                  }
> >>  
> >>                  /* recovery disables */
> >> -                intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), tmp);
> >> +                intel_de_write(display, MIPI_EOT_DISABLE(display, port), tmp);
> >>  
> >>                  /* in terms of low power clock */
> >> -                intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
> >> +                intel_de_write(display, MIPI_INIT_COUNT(display, port),
> >>                                 intel_dsi->init_count);
> >>  
> >>                  /* in terms of txbyteclkhs. actual high to low switch +
> >> @@ -1437,7 +1447,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                   *
> >>                   * XXX: write MIPI_STOP_STATE_STALL?
> >>                   */
> >> -                intel_de_write(dev_priv, MIPI_HIGH_LOW_SWITCH_COUNT(port),
> >> +                intel_de_write(display, MIPI_HIGH_LOW_SWITCH_COUNT(display, port),
> >>                                 intel_dsi->hs_to_lp_count);
> >>  
> >>                  /* XXX: low power clock equivalence in terms of byte clock.
> >> @@ -1446,14 +1456,14 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                   * txclkesc time / txbyteclk time * (105 + MIPI_STOP_STATE_STALL
> >>                   * ) / 105.???
> >>                   */
> >> -                intel_de_write(dev_priv, MIPI_LP_BYTECLK(port),
> >> +                intel_de_write(display, MIPI_LP_BYTECLK(display, port),
> >>                                 intel_dsi->lp_byte_clk);
> >>  
> >>                  if (IS_GEMINILAKE(dev_priv)) {
> >> -                        intel_de_write(dev_priv, MIPI_TLPX_TIME_COUNT(port),
> >> +                        intel_de_write(display, MIPI_TLPX_TIME_COUNT(display, port),
> >>                                         intel_dsi->lp_byte_clk);
> >>                          /* Shadow of DPHY reg */
> >> -                        intel_de_write(dev_priv, MIPI_CLK_LANE_TIMING(port),
> >> +                        intel_de_write(display, MIPI_CLK_LANE_TIMING(display, port),
> >>                                         intel_dsi->dphy_reg);
> >>                  }
> >>  
> >> @@ -1462,10 +1472,10 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                   * this register in terms of byte clocks. based on dsi transfer
> >>                   * rate and the number of lanes configured the time taken to
> >>                   * transmit 16 long packets in a dsi stream varies. */
> >> -                intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(port),
> >> +                intel_de_write(display, MIPI_DBI_BW_CTRL(display, port),
> >>                                 intel_dsi->bw_timer);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
> >> +                intel_de_write(display, MIPI_CLK_LANE_SWITCH_TIME_CNT(display, port),
> >>                                 intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
> >>  
> >>                  if (is_vid_mode(intel_dsi)) {
> >> @@ -1493,13 +1503,14 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
> >>                                  break;
> >>                          }
> >>  
> >> -                        intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port), fmt);
> >> +                        intel_de_write(display, MIPI_VIDEO_MODE_FORMAT(display, port), fmt);
> >>                  }
> >>          }
> >>  }
> >>  
> >>  static void intel_dsi_unprepare(struct intel_encoder *encoder)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>          enum port port;
> >> @@ -1509,17 +1520,17 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
> >>  
> >>          for_each_dsi_port(port, intel_dsi->ports) {
> >>                  /* Panel commands can be sent when clock is in LP11 */
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x0);
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port), 0x0);
> >>  
> >>                  if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> >>                          bxt_dsi_reset_clocks(encoder, port);
> >>                  else
> >>                          vlv_dsi_reset_clocks(encoder, port);
> >> -                intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
> >> +                intel_de_write(display, MIPI_EOT_DISABLE(display, port), CLOCKSTOP);
> >>  
> >> -                intel_de_rmw(dev_priv, MIPI_DSI_FUNC_PRG(port), VID_MODE_FORMAT_MASK, 0);
> >> +                intel_de_rmw(display, MIPI_DSI_FUNC_PRG(display, port), VID_MODE_FORMAT_MASK, 0);
> >>  
> >> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x1);
> >> +                intel_de_write(display, MIPI_DEVICE_READY(display, port), 0x1);
> >>          }
> >>  }
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> >> index ae0a0b11bae3..70c5a13a3c75 100644
> >> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> >> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> >> @@ -365,13 +365,13 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
> >>  
> >>  void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
> >>  {
> >> -        u32 temp;
> >> -        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> +        struct intel_display *display = to_intel_display(encoder);
> >>          struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >> +        u32 temp;
> >>  
> >> -        temp = intel_de_read(dev_priv, MIPI_CTRL(port));
> >> +        temp = intel_de_read(display, MIPI_CTRL(display, port));
> >>          temp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
> >> -        intel_de_write(dev_priv, MIPI_CTRL(port),
> >> +        intel_de_write(display, MIPI_CTRL(display, port),
> >>                         temp | intel_dsi->escape_clk_div << ESCAPE_CLOCK_DIVIDER_SHIFT);
> >>  }
> >>  
> >> @@ -570,24 +570,24 @@ void bxt_dsi_pll_enable(struct intel_encoder *encoder,
> >>  
> >>  void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
> >>  {
> >> +        struct intel_display *display = to_intel_display(encoder);
> >> +        struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>          u32 tmp;
> >> -        struct drm_device *dev = encoder->base.dev;
> >> -        struct drm_i915_private *dev_priv = to_i915(dev);
> >>  
> >>          /* Clear old configurations */
> >>          if (IS_BROXTON(dev_priv)) {
> >> -                tmp = intel_de_read(dev_priv, BXT_MIPI_CLOCK_CTL);
> >> +                tmp = intel_de_read(display, BXT_MIPI_CLOCK_CTL);
> >>                  tmp &= ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
> >>                  tmp &= ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
> >>                  tmp &= ~(BXT_MIPI_8X_BY3_DIVIDER_MASK(port));
> >>                  tmp &= ~(BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(port));
> >> -                intel_de_write(dev_priv, BXT_MIPI_CLOCK_CTL, tmp);
> >> +                intel_de_write(display, BXT_MIPI_CLOCK_CTL, tmp);
> >>          } else {
> >> -                intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV1, GLK_TX_ESC_CLK_DIV1_MASK, 0);
> >> +                intel_de_rmw(display, MIPIO_TXESC_CLK_DIV1, GLK_TX_ESC_CLK_DIV1_MASK, 0);
> >>  
> >> -                intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV2, GLK_TX_ESC_CLK_DIV2_MASK, 0);
> >> +                intel_de_rmw(display, MIPIO_TXESC_CLK_DIV2, GLK_TX_ESC_CLK_DIV2_MASK, 0);
> >>          }
> >> -        intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
> >> +        intel_de_write(display, MIPI_EOT_DISABLE(display, port), CLOCKSTOP);
> >>  }
> >>  
> >>  static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
> >> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> >> index 12a608a73720..c1126d170ec6 100644
> >> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> >> @@ -11,26 +11,23 @@
> >>  #define VLV_MIPI_BASE                        VLV_DISPLAY_BASE
> >>  #define BXT_MIPI_BASE                        0x60000
> >>  
> >> -#define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
> >> +#define _MIPI_MMIO_BASE(display)        ((display)->dsi.mmio_base)
> >>  
> >>  #define _MIPI_PORT(port, a, c)        (((port) == PORT_A) ? a : c)        /* ports A and C only */
> >> -#define _MMIO_MIPI(port, a, c)        _MMIO(_MIPI_PORT(port, a, c))
> >> +#define _MMIO_MIPI(base, port, a, c)        _MMIO((base) + _MIPI_PORT(port, a, c))
> >>  
> >>  /* BXT MIPI mode configure */
> >> -#define  _BXT_MIPIA_TRANS_HACTIVE                        0x6B0F8
> >> -#define  _BXT_MIPIC_TRANS_HACTIVE                        0x6B8F8
> >> -#define  BXT_MIPI_TRANS_HACTIVE(tc)        _MMIO_MIPI(tc, \
> >> -                _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)
> >> +#define  _BXT_MIPIA_TRANS_HACTIVE                0xb0f8
> >> +#define  _BXT_MIPIC_TRANS_HACTIVE                0xb8f8
> >> +#define  BXT_MIPI_TRANS_HACTIVE(tc)                _MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)
> >>  
> >> -#define  _BXT_MIPIA_TRANS_VACTIVE                        0x6B0FC
> >> -#define  _BXT_MIPIC_TRANS_VACTIVE                        0x6B8FC
> >> -#define  BXT_MIPI_TRANS_VACTIVE(tc)        _MMIO_MIPI(tc, \
> >> -                _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)
> >> +#define  _BXT_MIPIA_TRANS_VACTIVE                0xb0fc
> >> +#define  _BXT_MIPIC_TRANS_VACTIVE                0xb8fc
> >> +#define  BXT_MIPI_TRANS_VACTIVE(tc)                _MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)
> >>  
> >> -#define  _BXT_MIPIA_TRANS_VTOTAL                        0x6B100
> >> -#define  _BXT_MIPIC_TRANS_VTOTAL                        0x6B900
> >> -#define  BXT_MIPI_TRANS_VTOTAL(tc)        _MMIO_MIPI(tc, \
> >> -                _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)
> >> +#define  _BXT_MIPIA_TRANS_VTOTAL                0xb100
> >> +#define  _BXT_MIPIC_TRANS_VTOTAL                0xb900
> >> +#define  BXT_MIPI_TRANS_VTOTAL(tc)                _MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)
> >>  
> >>  #define BXT_P_DSI_REGULATOR_CFG                        _MMIO(0x160020)
> >>  #define  STAP_SELECT                                        (1 << 0)
> >> @@ -38,14 +35,14 @@
> >>  #define BXT_P_DSI_REGULATOR_TX_CTRL                _MMIO(0x160054)
> >>  #define  HS_IO_CTRL_SELECT                                (1 << 0)
> >>  
> >> -#define _MIPIA_PORT_CTRL                        (VLV_DISPLAY_BASE + 0x61190)
> >> -#define _MIPIC_PORT_CTRL                        (VLV_DISPLAY_BASE + 0x61700)
> >> -#define VLV_MIPI_PORT_CTRL(port)        _MMIO_MIPI(port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
> >> +#define _MIPIA_PORT_CTRL                        0x61190
> >> +#define _MIPIC_PORT_CTRL                        0x61700
> >> +#define VLV_MIPI_PORT_CTRL(port)                _MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
> >>  
> >>   /* BXT port control */
> >> -#define _BXT_MIPIA_PORT_CTRL                                0x6B0C0
> >> -#define _BXT_MIPIC_PORT_CTRL                                0x6B8C0
> >> -#define BXT_MIPI_PORT_CTRL(tc)        _MMIO_MIPI(tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)
> >> +#define _BXT_MIPIA_PORT_CTRL                        0xb0c0
> >> +#define _BXT_MIPIC_PORT_CTRL                        0xb8c0
> >> +#define BXT_MIPI_PORT_CTRL(tc)                        _MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)
> >>  
> >>  #define  DPI_ENABLE                                        (1 << 31) /* A + C */
> >>  #define  MIPIA_MIPI4DPHY_DELAY_COUNT_SHIFT                27
> >> @@ -87,17 +84,17 @@
> >>  #define  LANE_CONFIGURATION_DUAL_LINK_A                        (1 << 0)
> >>  #define  LANE_CONFIGURATION_DUAL_LINK_B                        (2 << 0)
> >>  
> >> -#define _MIPIA_TEARING_CTRL                        (VLV_DISPLAY_BASE + 0x61194)
> >> -#define _MIPIC_TEARING_CTRL                        (VLV_DISPLAY_BASE + 0x61704)
> >> -#define VLV_MIPI_TEARING_CTRL(port)                _MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
> >> +#define _MIPIA_TEARING_CTRL                        0x61194
> >> +#define _MIPIC_TEARING_CTRL                        0x61704
> >> +#define VLV_MIPI_TEARING_CTRL(port)                        _MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
> >>  #define  TEARING_EFFECT_DELAY_SHIFT                        0
> >>  #define  TEARING_EFFECT_DELAY_MASK                        (0xffff << 0)
> >>  
> >>  /* MIPI DSI Controller and D-PHY registers */
> >>  
> >> -#define _MIPIA_DEVICE_READY                (_MIPI_MMIO_BASE(dev_priv) + 0xb000)
> >> -#define _MIPIC_DEVICE_READY                (_MIPI_MMIO_BASE(dev_priv) + 0xb800)
> >> -#define MIPI_DEVICE_READY(port)                _MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
> >> +#define _MIPIA_DEVICE_READY                        0xb000
> >> +#define _MIPIC_DEVICE_READY                        0xb800
> >> +#define MIPI_DEVICE_READY(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
> >>  #define  BUS_POSSESSION                                        (1 << 3) /* set to give bus to receiver */
> >>  #define  ULPS_STATE_MASK                                (3 << 1)
> >>  #define  ULPS_STATE_ENTER                                (2 << 1)
> >> @@ -105,12 +102,12 @@
> >>  #define  ULPS_STATE_NORMAL_OPERATION                        (0 << 1)
> >>  #define  DEVICE_READY                                        (1 << 0)
> >>  
> >> -#define _MIPIA_INTR_STAT                (_MIPI_MMIO_BASE(dev_priv) + 0xb004)
> >> -#define _MIPIC_INTR_STAT                (_MIPI_MMIO_BASE(dev_priv) + 0xb804)
> >> -#define MIPI_INTR_STAT(port)                _MMIO_MIPI(port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
> >> -#define _MIPIA_INTR_EN                        (_MIPI_MMIO_BASE(dev_priv) + 0xb008)
> >> -#define _MIPIC_INTR_EN                        (_MIPI_MMIO_BASE(dev_priv) + 0xb808)
> >> -#define MIPI_INTR_EN(port)                _MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
> >> +#define _MIPIA_INTR_STAT                        0xb004
> >> +#define _MIPIC_INTR_STAT                        0xb804
> >> +#define MIPI_INTR_STAT(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
> >> +#define _MIPIA_INTR_EN                                0xb008
> >> +#define _MIPIC_INTR_EN                                0xb808
> >> +#define MIPI_INTR_EN(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
> >>  #define  TEARING_EFFECT                                        (1 << 31)
> >>  #define  SPL_PKT_SENT_INTERRUPT                                (1 << 30)
> >>  #define  GEN_READ_DATA_AVAIL                                (1 << 29)
> >> @@ -144,9 +141,9 @@
> >>  #define  RXSOT_SYNC_ERROR                                (1 << 1)
> >>  #define  RXSOT_ERROR                                        (1 << 0)
> >>  
> >> -#define _MIPIA_DSI_FUNC_PRG                (_MIPI_MMIO_BASE(dev_priv) + 0xb00c)
> >> -#define _MIPIC_DSI_FUNC_PRG                (_MIPI_MMIO_BASE(dev_priv) + 0xb80c)
> >> -#define MIPI_DSI_FUNC_PRG(port)                _MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
> >> +#define _MIPIA_DSI_FUNC_PRG                        0xb00c
> >> +#define _MIPIC_DSI_FUNC_PRG                        0xb80c
> >> +#define MIPI_DSI_FUNC_PRG(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
> >>  #define  CMD_MODE_DATA_WIDTH_MASK                        (7 << 13)
> >>  #define  CMD_MODE_NOT_SUPPORTED                                (0 << 13)
> >>  #define  CMD_MODE_DATA_WIDTH_16_BIT                        (1 << 13)
> >> @@ -167,77 +164,77 @@
> >>  #define  DATA_LANES_PRG_REG_SHIFT                        0
> >>  #define  DATA_LANES_PRG_REG_MASK                        (7 << 0)
> >>  
> >> -#define _MIPIA_HS_TX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) + 0xb010)
> >> -#define _MIPIC_HS_TX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) + 0xb810)
> >> -#define MIPI_HS_TX_TIMEOUT(port)        _MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
> >> +#define _MIPIA_HS_TX_TIMEOUT                        0xb010
> >> +#define _MIPIC_HS_TX_TIMEOUT                        0xb810
> >> +#define MIPI_HS_TX_TIMEOUT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
> >>  #define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK                0xffffff
> >>  
> >> -#define _MIPIA_LP_RX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) + 0xb014)
> >> -#define _MIPIC_LP_RX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) + 0xb814)
> >> -#define MIPI_LP_RX_TIMEOUT(port)        _MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
> >> +#define _MIPIA_LP_RX_TIMEOUT                        0xb014
> >> +#define _MIPIC_LP_RX_TIMEOUT                        0xb814
> >> +#define MIPI_LP_RX_TIMEOUT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
> >>  #define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK                0xffffff
> >>  
> >> -#define _MIPIA_TURN_AROUND_TIMEOUT        (_MIPI_MMIO_BASE(dev_priv) + 0xb018)
> >> -#define _MIPIC_TURN_AROUND_TIMEOUT        (_MIPI_MMIO_BASE(dev_priv) + 0xb818)
> >> -#define MIPI_TURN_AROUND_TIMEOUT(port)        _MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
> >> +#define _MIPIA_TURN_AROUND_TIMEOUT                0xb018
> >> +#define _MIPIC_TURN_AROUND_TIMEOUT                0xb818
> >> +#define MIPI_TURN_AROUND_TIMEOUT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
> >>  #define  TURN_AROUND_TIMEOUT_MASK                        0x3f
> >>  
> >> -#define _MIPIA_DEVICE_RESET_TIMER        (_MIPI_MMIO_BASE(dev_priv) + 0xb01c)
> >> -#define _MIPIC_DEVICE_RESET_TIMER        (_MIPI_MMIO_BASE(dev_priv) + 0xb81c)
> >> -#define MIPI_DEVICE_RESET_TIMER(port)        _MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
> >> +#define _MIPIA_DEVICE_RESET_TIMER                0xb01c
> >> +#define _MIPIC_DEVICE_RESET_TIMER                0xb81c
> >> +#define MIPI_DEVICE_RESET_TIMER(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
> >>  #define  DEVICE_RESET_TIMER_MASK                        0xffff
> >>  
> >> -#define _MIPIA_DPI_RESOLUTION                (_MIPI_MMIO_BASE(dev_priv) + 0xb020)
> >> -#define _MIPIC_DPI_RESOLUTION                (_MIPI_MMIO_BASE(dev_priv) + 0xb820)
> >> -#define MIPI_DPI_RESOLUTION(port)        _MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
> >> +#define _MIPIA_DPI_RESOLUTION                        0xb020
> >> +#define _MIPIC_DPI_RESOLUTION                        0xb820
> >> +#define MIPI_DPI_RESOLUTION(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
> >>  #define  VERTICAL_ADDRESS_SHIFT                                16
> >>  #define  VERTICAL_ADDRESS_MASK                                (0xffff << 16)
> >>  #define  HORIZONTAL_ADDRESS_SHIFT                        0
> >>  #define  HORIZONTAL_ADDRESS_MASK                        0xffff
> >>  
> >> -#define _MIPIA_DBI_FIFO_THROTTLE        (_MIPI_MMIO_BASE(dev_priv) + 0xb024)
> >> -#define _MIPIC_DBI_FIFO_THROTTLE        (_MIPI_MMIO_BASE(dev_priv) + 0xb824)
> >> -#define MIPI_DBI_FIFO_THROTTLE(port)        _MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
> >> +#define _MIPIA_DBI_FIFO_THROTTLE                0xb024
> >> +#define _MIPIC_DBI_FIFO_THROTTLE                0xb824
> >> +#define MIPI_DBI_FIFO_THROTTLE(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
> >>  #define  DBI_FIFO_EMPTY_HALF                                (0 << 0)
> >>  #define  DBI_FIFO_EMPTY_QUARTER                                (1 << 0)
> >>  #define  DBI_FIFO_EMPTY_7_LOCATIONS                        (2 << 0)
> >>  
> >>  /* regs below are bits 15:0 */
> >> -#define _MIPIA_HSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb028)
> >> -#define _MIPIC_HSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb828)
> >> -#define MIPI_HSYNC_PADDING_COUNT(port)        _MMIO_MIPI(port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
> >> +#define _MIPIA_HSYNC_PADDING_COUNT                0xb028
> >> +#define _MIPIC_HSYNC_PADDING_COUNT                0xb828
> >> +#define MIPI_HSYNC_PADDING_COUNT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
> >>  
> >> -#define _MIPIA_HBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb02c)
> >> -#define _MIPIC_HBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb82c)
> >> -#define MIPI_HBP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
> >> +#define _MIPIA_HBP_COUNT                        0xb02c
> >> +#define _MIPIC_HBP_COUNT                        0xb82c
> >> +#define MIPI_HBP_COUNT(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
> >>  
> >> -#define _MIPIA_HFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb030)
> >> -#define _MIPIC_HFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb830)
> >> -#define MIPI_HFP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
> >> +#define _MIPIA_HFP_COUNT                        0xb030
> >> +#define _MIPIC_HFP_COUNT                        0xb830
> >> +#define MIPI_HFP_COUNT(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
> >>  
> >> -#define _MIPIA_HACTIVE_AREA_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb034)
> >> -#define _MIPIC_HACTIVE_AREA_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb834)
> >> -#define MIPI_HACTIVE_AREA_COUNT(port)        _MMIO_MIPI(port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
> >> +#define _MIPIA_HACTIVE_AREA_COUNT                0xb034
> >> +#define _MIPIC_HACTIVE_AREA_COUNT                0xb834
> >> +#define MIPI_HACTIVE_AREA_COUNT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
> >>  
> >> -#define _MIPIA_VSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb038)
> >> -#define _MIPIC_VSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb838)
> >> -#define MIPI_VSYNC_PADDING_COUNT(port)        _MMIO_MIPI(port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
> >> +#define _MIPIA_VSYNC_PADDING_COUNT                0xb038
> >> +#define _MIPIC_VSYNC_PADDING_COUNT                0xb838
> >> +#define MIPI_VSYNC_PADDING_COUNT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
> >>  
> >> -#define _MIPIA_VBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb03c)
> >> -#define _MIPIC_VBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb83c)
> >> -#define MIPI_VBP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
> >> +#define _MIPIA_VBP_COUNT                        0xb03c
> >> +#define _MIPIC_VBP_COUNT                        0xb83c
> >> +#define MIPI_VBP_COUNT(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
> >>  
> >> -#define _MIPIA_VFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb040)
> >> -#define _MIPIC_VFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb840)
> >> -#define MIPI_VFP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
> >> +#define _MIPIA_VFP_COUNT                        0xb040
> >> +#define _MIPIC_VFP_COUNT                        0xb840
> >> +#define MIPI_VFP_COUNT(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
> >>  
> >> -#define _MIPIA_HIGH_LOW_SWITCH_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb044)
> >> -#define _MIPIC_HIGH_LOW_SWITCH_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0xb844)
> >> -#define MIPI_HIGH_LOW_SWITCH_COUNT(port)        _MMIO_MIPI(port,        _MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
> >> +#define _MIPIA_HIGH_LOW_SWITCH_COUNT                0xb044
> >> +#define _MIPIC_HIGH_LOW_SWITCH_COUNT                0xb844
> >> +#define MIPI_HIGH_LOW_SWITCH_COUNT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port,        _MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
> >>  
> >> -#define _MIPIA_DPI_CONTROL                (_MIPI_MMIO_BASE(dev_priv) + 0xb048)
> >> -#define _MIPIC_DPI_CONTROL                (_MIPI_MMIO_BASE(dev_priv) + 0xb848)
> >> -#define MIPI_DPI_CONTROL(port)                _MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
> >> +#define _MIPIA_DPI_CONTROL                        0xb048
> >> +#define _MIPIC_DPI_CONTROL                        0xb848
> >> +#define MIPI_DPI_CONTROL(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
> >>  #define  DPI_LP_MODE                                        (1 << 6)
> >>  #define  BACKLIGHT_OFF                                        (1 << 5)
> >>  #define  BACKLIGHT_ON                                        (1 << 4)
> >> @@ -246,28 +243,27 @@
> >>  #define  TURN_ON                                        (1 << 1)
> >>  #define  SHUTDOWN                                        (1 << 0)
> >>  
> >> -#define _MIPIA_DPI_DATA                        (_MIPI_MMIO_BASE(dev_priv) + 0xb04c)
> >> -#define _MIPIC_DPI_DATA                        (_MIPI_MMIO_BASE(dev_priv) + 0xb84c)
> >> -#define MIPI_DPI_DATA(port)                _MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
> >> +#define _MIPIA_DPI_DATA                                0xb04c
> >> +#define _MIPIC_DPI_DATA                                0xb84c
> >> +#define MIPI_DPI_DATA(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
> >>  #define  COMMAND_BYTE_SHIFT                                0
> >>  #define  COMMAND_BYTE_MASK                                (0x3f << 0)
> >>  
> >> -#define _MIPIA_INIT_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb050)
> >> -#define _MIPIC_INIT_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb850)
> >> -#define MIPI_INIT_COUNT(port)                _MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
> >> +#define _MIPIA_INIT_COUNT                        0xb050
> >> +#define _MIPIC_INIT_COUNT                        0xb850
> >> +#define MIPI_INIT_COUNT(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
> >>  #define  MASTER_INIT_TIMER_SHIFT                        0
> >>  #define  MASTER_INIT_TIMER_MASK                                (0xffff << 0)
> >>  
> >> -#define _MIPIA_MAX_RETURN_PKT_SIZE        (_MIPI_MMIO_BASE(dev_priv) + 0xb054)
> >> -#define _MIPIC_MAX_RETURN_PKT_SIZE        (_MIPI_MMIO_BASE(dev_priv) + 0xb854)
> >> -#define MIPI_MAX_RETURN_PKT_SIZE(port)        _MMIO_MIPI(port, \
> >> -                        _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
> >> +#define _MIPIA_MAX_RETURN_PKT_SIZE                0xb054
> >> +#define _MIPIC_MAX_RETURN_PKT_SIZE                0xb854
> >> +#define MIPI_MAX_RETURN_PKT_SIZE(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
> >>  #define  MAX_RETURN_PKT_SIZE_SHIFT                        0
> >>  #define  MAX_RETURN_PKT_SIZE_MASK                        (0x3ff << 0)
> >>  
> >> -#define _MIPIA_VIDEO_MODE_FORMAT        (_MIPI_MMIO_BASE(dev_priv) + 0xb058)
> >> -#define _MIPIC_VIDEO_MODE_FORMAT        (_MIPI_MMIO_BASE(dev_priv) + 0xb858)
> >> -#define MIPI_VIDEO_MODE_FORMAT(port)        _MMIO_MIPI(port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
> >> +#define _MIPIA_VIDEO_MODE_FORMAT                0xb058
> >> +#define _MIPIC_VIDEO_MODE_FORMAT                0xb858
> >> +#define MIPI_VIDEO_MODE_FORMAT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
> >>  #define  RANDOM_DPI_DISPLAY_RESOLUTION                        (1 << 4)
> >>  #define  DISABLE_VIDEO_BTA                                (1 << 3)
> >>  #define  IP_TG_CONFIG                                        (1 << 2)
> >> @@ -275,9 +271,9 @@
> >>  #define  VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS                (2 << 0)
> >>  #define  VIDEO_MODE_BURST                                (3 << 0)
> >>  
> >> -#define _MIPIA_EOT_DISABLE                (_MIPI_MMIO_BASE(dev_priv) + 0xb05c)
> >> -#define _MIPIC_EOT_DISABLE                (_MIPI_MMIO_BASE(dev_priv) + 0xb85c)
> >> -#define MIPI_EOT_DISABLE(port)                _MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
> >> +#define _MIPIA_EOT_DISABLE                        0xb05c
> >> +#define _MIPIC_EOT_DISABLE                        0xb85c
> >> +#define MIPI_EOT_DISABLE(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
> >>  #define  BXT_DEFEATURE_DPI_FIFO_CTR                        (1 << 9)
> >>  #define  BXT_DPHY_DEFEATURE_EN                                (1 << 8)
> >>  #define  LP_RX_TIMEOUT_ERROR_RECOVERY_DISABLE                (1 << 7)
> >> @@ -289,36 +285,36 @@
> >>  #define  CLOCKSTOP                                        (1 << 1)
> >>  #define  EOT_DISABLE                                        (1 << 0)
> >>  
> >> -#define _MIPIA_LP_BYTECLK                (_MIPI_MMIO_BASE(dev_priv) + 0xb060)
> >> -#define _MIPIC_LP_BYTECLK                (_MIPI_MMIO_BASE(dev_priv) + 0xb860)
> >> -#define MIPI_LP_BYTECLK(port)                _MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
> >> +#define _MIPIA_LP_BYTECLK                        0xb060
> >> +#define _MIPIC_LP_BYTECLK                        0xb860
> >> +#define MIPI_LP_BYTECLK(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
> >>  #define  LP_BYTECLK_SHIFT                                0
> >>  #define  LP_BYTECLK_MASK                                (0xffff << 0)
> >>  
> >> -#define _MIPIA_TLPX_TIME_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb0a4)
> >> -#define _MIPIC_TLPX_TIME_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb8a4)
> >> -#define MIPI_TLPX_TIME_COUNT(port)         _MMIO_MIPI(port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
> >> +#define _MIPIA_TLPX_TIME_COUNT                        0xb0a4
> >> +#define _MIPIC_TLPX_TIME_COUNT                        0xb8a4
> >> +#define MIPI_TLPX_TIME_COUNT(display, port)         _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
> >>  
> >> -#define _MIPIA_CLK_LANE_TIMING                (_MIPI_MMIO_BASE(dev_priv) + 0xb098)
> >> -#define _MIPIC_CLK_LANE_TIMING                (_MIPI_MMIO_BASE(dev_priv) + 0xb898)
> >> -#define MIPI_CLK_LANE_TIMING(port)         _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
> >> +#define _MIPIA_CLK_LANE_TIMING                        0xb098
> >> +#define _MIPIC_CLK_LANE_TIMING                        0xb898
> >> +#define MIPI_CLK_LANE_TIMING(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
> >>  
> >>  /* bits 31:0 */
> >> -#define _MIPIA_LP_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + 0xb064)
> >> -#define _MIPIC_LP_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + 0xb864)
> >> -#define MIPI_LP_GEN_DATA(port)                _MMIO_MIPI(port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
> >> +#define _MIPIA_LP_GEN_DATA                        0xb064
> >> +#define _MIPIC_LP_GEN_DATA                        0xb864
> >> +#define MIPI_LP_GEN_DATA(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
> >>  
> >>  /* bits 31:0 */
> >> -#define _MIPIA_HS_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + 0xb068)
> >> -#define _MIPIC_HS_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + 0xb868)
> >> -#define MIPI_HS_GEN_DATA(port)                _MMIO_MIPI(port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
> >> -
> >> -#define _MIPIA_LP_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb06c)
> >> -#define _MIPIC_LP_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb86c)
> >> -#define MIPI_LP_GEN_CTRL(port)                _MMIO_MIPI(port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
> >> -#define _MIPIA_HS_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb070)
> >> -#define _MIPIC_HS_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb870)
> >> -#define MIPI_HS_GEN_CTRL(port)                _MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
> >> +#define _MIPIA_HS_GEN_DATA                        0xb068
> >> +#define _MIPIC_HS_GEN_DATA                        0xb868
> >> +#define MIPI_HS_GEN_DATA(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
> >> +
> >> +#define _MIPIA_LP_GEN_CTRL                        0xb06c
> >> +#define _MIPIC_LP_GEN_CTRL                        0xb86c
> >> +#define MIPI_LP_GEN_CTRL(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
> >> +#define _MIPIA_HS_GEN_CTRL                        0xb070
> >> +#define _MIPIC_HS_GEN_CTRL                        0xb870
> >> +#define MIPI_HS_GEN_CTRL(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
> >>  #define  LONG_PACKET_WORD_COUNT_SHIFT                        8
> >>  #define  LONG_PACKET_WORD_COUNT_MASK                        (0xffff << 8)
> >>  #define  SHORT_PACKET_PARAM_SHIFT                        8
> >> @@ -329,9 +325,9 @@
> >>  #define  DATA_TYPE_MASK                                        (0x3f << 0)
> >>  /* data type values, see include/video/mipi_display.h */
> >>  
> >> -#define _MIPIA_GEN_FIFO_STAT                (_MIPI_MMIO_BASE(dev_priv) + 0xb074)
> >> -#define _MIPIC_GEN_FIFO_STAT                (_MIPI_MMIO_BASE(dev_priv) + 0xb874)
> >> -#define MIPI_GEN_FIFO_STAT(port)        _MMIO_MIPI(port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
> >> +#define _MIPIA_GEN_FIFO_STAT                        0xb074
> >> +#define _MIPIC_GEN_FIFO_STAT                        0xb874
> >> +#define MIPI_GEN_FIFO_STAT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
> >>  #define  DPI_FIFO_EMPTY                                        (1 << 28)
> >>  #define  DBI_FIFO_EMPTY                                        (1 << 27)
> >>  #define  LP_CTRL_FIFO_EMPTY                                (1 << 26)
> >> @@ -347,16 +343,16 @@
> >>  #define  HS_DATA_FIFO_HALF_EMPTY                        (1 << 1)
> >>  #define  HS_DATA_FIFO_FULL                                (1 << 0)
> >>  
> >> -#define _MIPIA_HS_LS_DBI_ENABLE                (_MIPI_MMIO_BASE(dev_priv) + 0xb078)
> >> -#define _MIPIC_HS_LS_DBI_ENABLE                (_MIPI_MMIO_BASE(dev_priv) + 0xb878)
> >> -#define MIPI_HS_LP_DBI_ENABLE(port)        _MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
> >> +#define _MIPIA_HS_LS_DBI_ENABLE                        0xb078
> >> +#define _MIPIC_HS_LS_DBI_ENABLE                        0xb878
> >> +#define MIPI_HS_LP_DBI_ENABLE(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
> >>  #define  DBI_HS_LP_MODE_MASK                                (1 << 0)
> >>  #define  DBI_LP_MODE                                        (1 << 0)
> >>  #define  DBI_HS_MODE                                        (0 << 0)
> >>  
> >> -#define _MIPIA_DPHY_PARAM                (_MIPI_MMIO_BASE(dev_priv) + 0xb080)
> >> -#define _MIPIC_DPHY_PARAM                (_MIPI_MMIO_BASE(dev_priv) + 0xb880)
> >> -#define MIPI_DPHY_PARAM(port)                _MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
> >> +#define _MIPIA_DPHY_PARAM                        0xb080
> >> +#define _MIPIC_DPHY_PARAM                        0xb880
> >> +#define MIPI_DPHY_PARAM(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
> >>  #define  EXIT_ZERO_COUNT_SHIFT                                24
> >>  #define  EXIT_ZERO_COUNT_MASK                                (0x3f << 24)
> >>  #define  TRAIL_COUNT_SHIFT                                16
> >> @@ -366,34 +362,34 @@
> >>  #define  PREPARE_COUNT_SHIFT                                0
> >>  #define  PREPARE_COUNT_MASK                                (0x3f << 0)
> >>  
> >> -#define _MIPIA_DBI_BW_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb084)
> >> -#define _MIPIC_DBI_BW_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb884)
> >> -#define MIPI_DBI_BW_CTRL(port)                _MMIO_MIPI(port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
> >> +#define _MIPIA_DBI_BW_CTRL                        0xb084
> >> +#define _MIPIC_DBI_BW_CTRL                        0xb884
> >> +#define MIPI_DBI_BW_CTRL(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
> >>  
> >> -#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb088)
> >> -#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT                (_MIPI_MMIO_BASE(dev_priv) + 0xb888)
> >> -#define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)        _MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
> >> +#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT                0xb088
> >> +#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT                0xb888
> >> +#define MIPI_CLK_LANE_SWITCH_TIME_CNT(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
> >>  #define  LP_HS_SSW_CNT_SHIFT                                16
> >>  #define  LP_HS_SSW_CNT_MASK                                (0xffff << 16)
> >>  #define  HS_LP_PWR_SW_CNT_SHIFT                                0
> >>  #define  HS_LP_PWR_SW_CNT_MASK                                (0xffff << 0)
> >>  
> >> -#define _MIPIA_STOP_STATE_STALL                (_MIPI_MMIO_BASE(dev_priv) + 0xb08c)
> >> -#define _MIPIC_STOP_STATE_STALL                (_MIPI_MMIO_BASE(dev_priv) + 0xb88c)
> >> -#define MIPI_STOP_STATE_STALL(port)        _MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
> >> +#define _MIPIA_STOP_STATE_STALL                        0xb08c
> >> +#define _MIPIC_STOP_STATE_STALL                        0xb88c
> >> +#define MIPI_STOP_STATE_STALL(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
> >>  #define  STOP_STATE_STALL_COUNTER_SHIFT                        0
> >>  #define  STOP_STATE_STALL_COUNTER_MASK                        (0xff << 0)
> >>  
> >> -#define _MIPIA_INTR_STAT_REG_1                (_MIPI_MMIO_BASE(dev_priv) + 0xb090)
> >> -#define _MIPIC_INTR_STAT_REG_1                (_MIPI_MMIO_BASE(dev_priv) + 0xb890)
> >> -#define MIPI_INTR_STAT_REG_1(port)        _MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
> >> -#define _MIPIA_INTR_EN_REG_1                (_MIPI_MMIO_BASE(dev_priv) + 0xb094)
> >> -#define _MIPIC_INTR_EN_REG_1                (_MIPI_MMIO_BASE(dev_priv) + 0xb894)
> >> -#define MIPI_INTR_EN_REG_1(port)        _MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
> >> +#define _MIPIA_INTR_STAT_REG_1                        0xb090
> >> +#define _MIPIC_INTR_STAT_REG_1                        0xb890
> >> +#define MIPI_INTR_STAT_REG_1(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
> >> +#define _MIPIA_INTR_EN_REG_1                        0xb094
> >> +#define _MIPIC_INTR_EN_REG_1                        0xb894
> >> +#define MIPI_INTR_EN_REG_1(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
> >>  #define  RX_CONTENTION_DETECTED                                (1 << 0)
> >>  
> >>  /* XXX: only pipe A ?!? */
> >> -#define MIPIA_DBI_TYPEC_CTRL                (_MIPI_MMIO_BASE(dev_priv) + 0xb100)
> >> +#define MIPIA_DBI_TYPEC_CTRL(display)                (_MIPI_MMIO_BASE(display) + 0xb100)
> >>  #define  DBI_TYPEC_ENABLE                                (1 << 31)
> >>  #define  DBI_TYPEC_WIP                                        (1 << 30)
> >>  #define  DBI_TYPEC_OPTION_SHIFT                                28
> >> @@ -406,9 +402,9 @@
> >>  
> >>  /* MIPI adapter registers */
> >>  
> >> -#define _MIPIA_CTRL                        (_MIPI_MMIO_BASE(dev_priv) + 0xb104)
> >> -#define _MIPIC_CTRL                        (_MIPI_MMIO_BASE(dev_priv) + 0xb904)
> >> -#define MIPI_CTRL(port)                        _MMIO_MIPI(port, _MIPIA_CTRL, _MIPIC_CTRL)
> >> +#define _MIPIA_CTRL                                0xb104
> >> +#define _MIPIC_CTRL                                0xb904
> >> +#define MIPI_CTRL(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CTRL, _MIPIC_CTRL)
> >>  #define  ESCAPE_CLOCK_DIVIDER_SHIFT                        5 /* A only */
> >>  #define  ESCAPE_CLOCK_DIVIDER_MASK                        (3 << 5)
> >>  #define  ESCAPE_CLOCK_DIVIDER_1                                (0 << 5)
> >> @@ -439,41 +435,41 @@
> >>  #define  GLK_MIPIIO_PORT_POWERED                        (1 << 1) /* RO */
> >>  #define  GLK_MIPIIO_ENABLE                                (1 << 0)
> >>  
> >> -#define _MIPIA_DATA_ADDRESS                (_MIPI_MMIO_BASE(dev_priv) + 0xb108)
> >> -#define _MIPIC_DATA_ADDRESS                (_MIPI_MMIO_BASE(dev_priv) + 0xb908)
> >> -#define MIPI_DATA_ADDRESS(port)                _MMIO_MIPI(port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
> >> +#define _MIPIA_DATA_ADDRESS                        0xb108
> >> +#define _MIPIC_DATA_ADDRESS                        0xb908
> >> +#define MIPI_DATA_ADDRESS(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
> >>  #define  DATA_MEM_ADDRESS_SHIFT                                5
> >>  #define  DATA_MEM_ADDRESS_MASK                                (0x7ffffff << 5)
> >>  #define  DATA_VALID                                        (1 << 0)
> >>  
> >> -#define _MIPIA_DATA_LENGTH                (_MIPI_MMIO_BASE(dev_priv) + 0xb10c)
> >> -#define _MIPIC_DATA_LENGTH                (_MIPI_MMIO_BASE(dev_priv) + 0xb90c)
> >> -#define MIPI_DATA_LENGTH(port)                _MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
> >> +#define _MIPIA_DATA_LENGTH                        0xb10c
> >> +#define _MIPIC_DATA_LENGTH                        0xb90c
> >> +#define MIPI_DATA_LENGTH(display, port)                _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
> >>  #define  DATA_LENGTH_SHIFT                                0
> >>  #define  DATA_LENGTH_MASK                                (0xfffff << 0)
> >>  
> >> -#define _MIPIA_COMMAND_ADDRESS                (_MIPI_MMIO_BASE(dev_priv) + 0xb110)
> >> -#define _MIPIC_COMMAND_ADDRESS                (_MIPI_MMIO_BASE(dev_priv) + 0xb910)
> >> -#define MIPI_COMMAND_ADDRESS(port)        _MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
> >> +#define _MIPIA_COMMAND_ADDRESS                        0xb110
> >> +#define _MIPIC_COMMAND_ADDRESS                        0xb910
> >> +#define MIPI_COMMAND_ADDRESS(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
> >>  #define  COMMAND_MEM_ADDRESS_SHIFT                        5
> >>  #define  COMMAND_MEM_ADDRESS_MASK                        (0x7ffffff << 5)
> >>  #define  AUTO_PWG_ENABLE                                (1 << 2)
> >>  #define  MEMORY_WRITE_DATA_FROM_PIPE_RENDERING                (1 << 1)
> >>  #define  COMMAND_VALID                                        (1 << 0)
> >>  
> >> -#define _MIPIA_COMMAND_LENGTH                (_MIPI_MMIO_BASE(dev_priv) + 0xb114)
> >> -#define _MIPIC_COMMAND_LENGTH                (_MIPI_MMIO_BASE(dev_priv) + 0xb914)
> >> -#define MIPI_COMMAND_LENGTH(port)        _MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
> >> +#define _MIPIA_COMMAND_LENGTH                        0xb114
> >> +#define _MIPIC_COMMAND_LENGTH                        0xb914
> >> +#define MIPI_COMMAND_LENGTH(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
> >>  #define  COMMAND_LENGTH_SHIFT(n)                        (8 * (n)) /* n: 0...3 */
> >>  #define  COMMAND_LENGTH_MASK(n)                                (0xff << (8 * (n)))
> >>  
> >> -#define _MIPIA_READ_DATA_RETURN0        (_MIPI_MMIO_BASE(dev_priv) + 0xb118)
> >> -#define _MIPIC_READ_DATA_RETURN0        (_MIPI_MMIO_BASE(dev_priv) + 0xb918)
> >> -#define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
> >> +#define _MIPIA_READ_DATA_RETURN0                0xb118
> >> +#define _MIPIC_READ_DATA_RETURN0                0xb918
> >> +#define MIPI_READ_DATA_RETURN(display, port, n)        _MMIO_MIPI(_MIPI_MMIO_BASE(display) + 4 * (n), port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) /* n: 0...7 */
> >>  
> >> -#define _MIPIA_READ_DATA_VALID                (_MIPI_MMIO_BASE(dev_priv) + 0xb138)
> >> -#define _MIPIC_READ_DATA_VALID                (_MIPI_MMIO_BASE(dev_priv) + 0xb938)
> >> -#define MIPI_READ_DATA_VALID(port)        _MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
> >> +#define _MIPIA_READ_DATA_VALID                        0xb138
> >> +#define _MIPIC_READ_DATA_VALID                        0xb938
> >> +#define MIPI_READ_DATA_VALID(display, port)        _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
> >>  #define  READ_DATA_VALID(n)                                (1 << (n))
> >>  
> >>  #endif /* __VLV_DSI_REGS_H__ */
> >> -- 
> >> 2.39.2
> >>
