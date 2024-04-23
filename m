Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2884B8AF5D8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 19:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFBD113541;
	Tue, 23 Apr 2024 17:51:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRB4+XkW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0753C113541;
 Tue, 23 Apr 2024 17:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713894703; x=1745430703;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CDF3zuYG0PMkmsFi8PvGSSYmNfv67SimhMCAZ8fkXZU=;
 b=QRB4+XkWSlJAS08CplT5OaP41oFxFg9qrnGDfVR+SIlJGR6zhpYPThH/
 XtHzpSmoY1SHvjszb8i1wkKEbrHs4kWTsQg9zSQgtiz+CHqCwDbBQdrf8
 c6bqJzLZUH1xQHu4PufxiBXvB4jDeD+cWAlt5imhAQVbJx6nR0ZkeE2bB
 p4mjfv5Xe9qJomsOk4xckc0O5Dqrx8yX2RiDfC2DNm8uB7wPP9LhMLA4v
 aiKnaqEihBDoP0MgNIMowHvmAN7ExU29rAbrQslD6IAkRi14c1Yz8A/VX
 bJCLhCCE+VqFzWvDnVJCRSxxBvh6xL00Nkv0F4LiMKpcuh4RrWXG+LSpS A==;
X-CSE-ConnectionGUID: r5GhrxHdSXuGp0adrVPeow==
X-CSE-MsgGUID: FbqzagXIRPGtUEWgOXWdlg==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9325604"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9325604"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 10:51:43 -0700
X-CSE-ConnectionGUID: SnoQ6IYGS6am2RedEewrJg==
X-CSE-MsgGUID: fEXCLk1ZT8aOaQEgKNSefw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="25070148"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 10:51:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 10:51:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 10:51:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 10:51:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M2vG6V5w0XmRN9RFXGpejCAXlWazSjdES7vI5WcG6baOupKcHA4SbvkAbZBt4MwQiwxXMAePDITKlFplvy/xlhHa2p6lL1FUJhtbk0l7Uym5qVlGhtH9hT5kpXp1f3Oq017pjOrvYqi15/YHOmGAdI1iV8qmc1JIAwjVNj9RN9T9yDN/vbwVxKSz6Y3jgRjbrOZaV8ELJVm7wA80D3CQ58A3fVZzRs/7IiMubFtZhpXDS9UjUrMYf4W4kqMkblBxyAxGtIIGwkdag9WXCi051yqAgOj9v6ohoqhksAjrixeLIbvDjEEKrzhFochg9q+dB2wK5LEbgxBSJH1lJ9xvVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5iGSFHXx/2Fn7U2SxymfPT30VBzFUQiQKWbOUcoUnjg=;
 b=OpBpcOc4KaPE/5voBMll6zGFKXV3h25viYGrEcehqei89DfEdXov8BdCGRMonk2wU7YtICoPOoh7xT+BJoIUYoP34wNeVZGLpGy0qjcLsuqf5sE7G4gEvw1lYV6hJoN5p60Z+KpZb2P4BxSnkpRNIW6ml233qdcQinrBFKJg1wWWYImZko9A5o+J9A2Zw5tH/fxFbWFDjDwQdR51pZV/UnWecm3Nj/0gHtZxNOAEnykuyxAklfv7dhIeReSvlz4xgL+FmGX1nhKQbkGhriMNvLYMrXj0MgW6v7JFAsXlsaw+zlFPY961KcnFG24cfpDHYiIL58phBvyYLOfFjMxI2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6925.namprd11.prod.outlook.com (2603:10b6:510:227::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Tue, 23 Apr
 2024 17:51:37 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.018; Tue, 23 Apr 2024
 17:51:37 +0000
Date: Tue, 23 Apr 2024 13:51:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: convert _MMIO_PIPE3()/_MMIO_PORT3() to
 accept base
Message-ID: <Zif1JrYnR25ViOgF@intel.com>
References: <cover.1713890614.git.jani.nikula@intel.com>
 <4b95f125f5021abc00b5fc661b2728f1b583c01e.1713890614.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4b95f125f5021abc00b5fc661b2728f1b583c01e.1713890614.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0300.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6925:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b6b61ac-cbf4-42f3-0f9c-08dc63be060d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dTq9AFZjG98f12GT+6YvQw8HOk/SPkM8ePn1s81d1JQOU0QYpD9aTNIkliAk?=
 =?us-ascii?Q?F6YFyH7XsOAHPvj3qBGKDus3kv3uFydjrzGbNW/mQeF5zuVMJYQW/iBoAzLi?=
 =?us-ascii?Q?T70hmUfKmbcOg83E1tNce8OeVfiVzAFQsIVFR+qrYbT+SlX0clpGAChAqoWw?=
 =?us-ascii?Q?kCHh+VZRaL+6Jtz6f0FbC2Whvs9+DqqzADcKDQ6VVtxplvlHps6sk2oeRS/b?=
 =?us-ascii?Q?mcjWvX5+gEXrk1AEpnkaRcmXPqwbORnKCVqzSDgW0aAzdFtpeT1jl9hqtJG8?=
 =?us-ascii?Q?LaeNoSfd9qeiHWR28dJbtcl6hbloNZIjLfHomWcuNs/IbsFSfZMFI/QBH3Dc?=
 =?us-ascii?Q?idBJy6p1HREWrcPSsy3t98W/x7GlSfJdlu6mugjk+INIEjdwNGOQRN6DGd10?=
 =?us-ascii?Q?iLRpRdyY7o1HLZWYau0iV9z6D2q4+XBv3+T/sf5aMh4/G7ak16T4FyxLEbS+?=
 =?us-ascii?Q?wYt1PexT4/yXEseRCW81qFz+ZeU15wWmtbx+jk47daOtncJQL71wJziapc52?=
 =?us-ascii?Q?FHwRlXP1jLoIajlKurhiQRBsTrAfzIe95e3GeRMcGplZRB7Q60sTiC9O2wpT?=
 =?us-ascii?Q?IovTIuNzbBaP2jrQkOF7vHLuRD2OL48zAB4GAb5IbCK375/WhuruLVKasjzu?=
 =?us-ascii?Q?ACyyD15v1TzqsBTYzQLX4O5cTysaw5eCJh6lgYVvDSpXcAtz47ctFqf6zxVH?=
 =?us-ascii?Q?xzrjq6ZLC0Cc+RElPDvgFuSiHiPl+YX+tINkaZYV5qvfvgefdXbZ3b7+OvUV?=
 =?us-ascii?Q?9bLXCwrUywOP8u33vqcqd3WK8+Wu7jDIhMVuLPv8t6g9bv8mn1rawpjq1jOc?=
 =?us-ascii?Q?ZlRHGVpjq/7r+v8uOo9pIfPXz6DQ0hDsnKErFI7bUIg1yM0nDtQcJTLuYx3a?=
 =?us-ascii?Q?AI3gGoDsGiPPp7bEOdIfWDDGX/GQSaK7A7Xv+XOZ1bJtdXZ7JHbL4zik1rhd?=
 =?us-ascii?Q?OPd7+NHWbGM54ek6yLgf9NQKaKCgSte9ixA/QdMXJSeb69nN/qXLQjhJbkD7?=
 =?us-ascii?Q?GAx7mn+z7VtEVeQvmkLII4M2ygJ56CowSLVbntV5M8z64DlYv6B+ZTz8q5OF?=
 =?us-ascii?Q?Ksp7uyDs4PnkXLRC7iLNe7Xa+v8gBHHFSeidCx8pFjQbl3rirdx90x7nG+NJ?=
 =?us-ascii?Q?4XfNvxF5wqkbyTtXiHHfSeQPLO3vve6pKfeTXD7iHIVdEyI3urj2ctdgk3mU?=
 =?us-ascii?Q?KubhtuAdmsSUpJupeZI36agP/xLbfE1lYy3aAi45b++XrFnoCP3ii1tPtLUx?=
 =?us-ascii?Q?5djRczzUgR2L9XyOKShm4E1IjYkgzpNP5XWAfXmrqA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+RtvzzNEwwIiT709rmRLvp5ISCR8B/TLb/lJR0YGIQr/ZOhokLzu4x/CU0Mi?=
 =?us-ascii?Q?TTmNI2GZS0rOkWuUWsp5P1krbotZKJ71oaGKiBMEfpgY/Ys7p/40+cETAW8H?=
 =?us-ascii?Q?hLjzaaIbgG6NA9Cxp1qvqk+WIB3w6fierUlKzzoDWGHvEwU4YKAlCH8hGBJT?=
 =?us-ascii?Q?sTAoROaeL3UGH5t9iNjeN/XbMzBb0+JtlWliEFN0Rq0h8z+t+R+OuHhESPRv?=
 =?us-ascii?Q?Zr200DVQ+DdNb1KHJ6/52DKLm18Y9fzLAXIWluP0g12EBqX3wBT4eleAv4w6?=
 =?us-ascii?Q?94nro6JRpPIQwPfjGxnRULIEai56jmqM4YHCoLfcWuUBQdiwIsCFFH0ZxngG?=
 =?us-ascii?Q?pcSmZJKLeb+aPkSjUOVHhH96jyPuEqEC05TrxPTo3tDGt1H3+pZTgnfwyMQo?=
 =?us-ascii?Q?gyLvd5zuxedYMPQ63RnRByAn/3yTQPx4bZVRkI8Q7R7cETaLhYADBkMd+8IX?=
 =?us-ascii?Q?npPASvDluwU/2sEPOfsmjPObe0Qd7UgWlvTAg0iqFJvqapM6MbwFh8BpqHxJ?=
 =?us-ascii?Q?0/XB0loIesPIgiPm6PVGc/aoSRvGPoCdO/7vqW7PgneBMMYvh4ECzcFALr8j?=
 =?us-ascii?Q?7aa2TcxAV3QH3rhNPkj7UjMb+SqnO+cW9rCmBl8AdUMiFn2KMWzzQXIEXvVd?=
 =?us-ascii?Q?/nsj7PSaDXvO5A8sUsgxLH3L4pueAjPjcJVXpgNB/EMvh0kIBptUzD1Dr5iY?=
 =?us-ascii?Q?+7xxjSCgzALFhJbpL3yj/rU1zPeww3MQFxlQsggjL3xnspII/nFZ01oSPavP?=
 =?us-ascii?Q?OjFQ4d0vd/QdpqQBk+Cc/1GTQU/aF+iLvXA+4YaL3AaSuT6AjP7jwHkuvISv?=
 =?us-ascii?Q?ljQVrfDOhUPgFx2TnK5ZQg1lT/qq0lfMlyLgypwaoTeouf2gy1iYn++q9dUr?=
 =?us-ascii?Q?fsEvr6OBKsGLjPFgNCto+/On297LcjEVl1rEU6s8HmgSWqgZhsuTYkB86vB8?=
 =?us-ascii?Q?gY1gJE/cjdnm6RuRGG0q+MjsnjKEudoXniFji+9hlj/D0QDacaYZ+V/2Yh/4?=
 =?us-ascii?Q?VhhDlB1JERaEyWZ++dF6L2/4aVU3pxjrKHyyF3+s5GaWverZHyXWBaq1nls3?=
 =?us-ascii?Q?asNKmKh3C5F6efEy9tLBo7DOpkjw2LBqtU22w4psGxQt1q3zawOpjD+meKuX?=
 =?us-ascii?Q?hC8hsrz3p84cLV/iODhgpn35kCaHSo3iTVBo55B9NxLzjdEk7QJe5Zyn8hQr?=
 =?us-ascii?Q?wCe5ks5h+sA4EMFm3nHe97rc4qxxo1mlLYs9QeHo6kkADTzg4AcBHpIUF8cN?=
 =?us-ascii?Q?AIHlrNdq6owkVa+g2hFh3oZ5OuWkc4BEZAAdjRSC8IcTcdnTiliIYJ4pwn6g?=
 =?us-ascii?Q?CkONP+iZCetDZCgjPIXVAxKNUuzTQhaFAn3t0hl7AW4objqRJNqFU9lgU0bg?=
 =?us-ascii?Q?QJuM4b06+A6JabSl6H9kn/Z6XbOi2jR70ZoXsDw5rHdh+W3w9ZVvGGunyv8m?=
 =?us-ascii?Q?Uo6HrLBopnqvL9YDAzeH56OUTyfBxECxd1zqLyH0mvMOVxh/0lvZjfGDXEmx?=
 =?us-ascii?Q?J5I0H1PcUNNtMSBHyVt5RKtCubTKv20w8IgFt7n2Ru62yRCITamZJ6dB8xCV?=
 =?us-ascii?Q?s+d78CkaZzb103P4+rwMZQ25k5/ryCU3TY4KepO3pmsuTtTygxilVA7wrk9H?=
 =?us-ascii?Q?aQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6b61ac-cbf4-42f3-0f9c-08dc63be060d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 17:51:37.8708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xT/oJhdKcrRDaoNfthm7gxvE4G535OfHPQ7943P+jgn3SE0yuQ5M62sJqyCvz3KNTiOXm5nPYUuXLQ87ypWd9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6925
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

On Tue, Apr 23, 2024 at 07:44:59PM +0300, Jani Nikula wrote:
> Most users of _MMIO_PIPE3() and _MMIO_PORT3() need to add the MMIO base
> to the registers. Convert the macros to _MMIO_BASE_PIPE3() and
> _MMIO_BASE_PORT3() to move the base addition until after the register
> selection. If the register address depends on DISPLAY_MMIO_BASE(), this
> removes the need to figure the base out for each register, and it only
> needs to be added once.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_reg_defs.h |  4 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 80 ++++++++++---------
>  2 files changed, 44 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> index 2f07b7afa3bf..23fc1505dc08 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> @@ -29,8 +29,8 @@
>  #define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
>  #define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
>  
> -#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
> -#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
> +#define _MMIO_BASE_PIPE3(base, pipe, a, b, c)	_MMIO((base) + _PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
> +#define _MMIO_BASE_PORT3(base, pipe, a, b, c)	_MMIO((base) + _PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
>  
>  /*
>   * Device info offset array based helpers for groups of registers with unevenly
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8eb6c2bf4557..51f703970cf6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -973,13 +973,13 @@
>  #define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62F38)
>  #define VLV_CHICKEN_BIT_DBG_ENABLE	(1 << 0)
>  
> -#define _VLV_AUD_PORT_EN_B_DBG		(VLV_DISPLAY_BASE + 0x62F20)
> -#define _VLV_AUD_PORT_EN_C_DBG		(VLV_DISPLAY_BASE + 0x62F30)
> -#define _VLV_AUD_PORT_EN_D_DBG		(VLV_DISPLAY_BASE + 0x62F34)
> -#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_PORT3((port) - PORT_B,	   \
> -						    _VLV_AUD_PORT_EN_B_DBG, \
> -						    _VLV_AUD_PORT_EN_C_DBG, \
> -						    _VLV_AUD_PORT_EN_D_DBG)
> +#define _VLV_AUD_PORT_EN_B_DBG		0x62F20
> +#define _VLV_AUD_PORT_EN_C_DBG		0x62F30
> +#define _VLV_AUD_PORT_EN_D_DBG		0x62F34
> +#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_BASE_PORT3(VLV_DISPLAY_BASE, (port) - PORT_B, \
> +							 _VLV_AUD_PORT_EN_B_DBG, \
> +							 _VLV_AUD_PORT_EN_C_DBG, \
> +							 _VLV_AUD_PORT_EN_D_DBG)
>  #define VLV_AMP_MUTE		        (1 << 1)
>  
>  #define GEN6_BSD_RNCID			_MMIO(0x12198)
> @@ -1147,10 +1147,11 @@
>  /*
>   * Clock control & power management
>   */
> -#define _DPLL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x6014)
> -#define _DPLL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x6018)
> -#define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
> -#define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
> +#define _DPLL_A			0x6014
> +#define _DPLL_B			0x6018
> +#define _CHV_DPLL_C		0x6030
> +#define DPLL(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
> +						 (pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
>  
>  #define VGA0	_MMIO(0x6000)
>  #define VGA1	_MMIO(0x6004)
> @@ -1246,10 +1247,11 @@
>  #define   SDVO_MULTIPLIER_SHIFT_HIRES		4
>  #define   SDVO_MULTIPLIER_SHIFT_VGA		0
>  
> -#define _DPLL_A_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x601c)
> -#define _DPLL_B_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x6020)
> -#define _CHV_DPLL_C_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x603c)
> -#define DPLL_MD(pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
> +#define _DPLL_A_MD		0x601c
> +#define _DPLL_B_MD		0x6020
> +#define _CHV_DPLL_C_MD		0x603c
> +#define DPLL_MD(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
> +						 (pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
>  
>  /*
>   * UDI pixel divider, controlling how many pixels are stuffed into a packet.
> @@ -2718,8 +2720,8 @@
>  #define _WM0_PIPEA_ILK		0x45100
>  #define _WM0_PIPEB_ILK		0x45104
>  #define _WM0_PIPEC_IVB		0x45200
> -#define WM0_PIPE_ILK(pipe)	_MMIO_PIPE3((pipe), _WM0_PIPEA_ILK, \
> -					    _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
> +#define WM0_PIPE_ILK(pipe)	_MMIO_BASE_PIPE3(0, (pipe), _WM0_PIPEA_ILK, \
> +						 _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
>  #define  WM0_PIPE_PRIMARY_MASK	REG_GENMASK(31, 16)
>  #define  WM0_PIPE_SPRITE_MASK	REG_GENMASK(15, 8)
>  #define  WM0_PIPE_CURSOR_MASK	REG_GENMASK(7, 0)
> @@ -4767,27 +4769,29 @@
>  #define TVIDEO_DIP_GCP(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_GCP_A, _VIDEO_DIP_GCP_B)
>  
>  /* Per-transcoder DIP controls (VLV) */
> -#define _VLV_VIDEO_DIP_CTL_A		(VLV_DISPLAY_BASE + 0x60200)
> -#define _VLV_VIDEO_DIP_DATA_A		(VLV_DISPLAY_BASE + 0x60208)
> -#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_A	(VLV_DISPLAY_BASE + 0x60210)
> -
> -#define _VLV_VIDEO_DIP_CTL_B		(VLV_DISPLAY_BASE + 0x61170)
> -#define _VLV_VIDEO_DIP_DATA_B		(VLV_DISPLAY_BASE + 0x61174)
> -#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_B	(VLV_DISPLAY_BASE + 0x61178)
> -
> -#define _CHV_VIDEO_DIP_CTL_C		(VLV_DISPLAY_BASE + 0x611f0)
> -#define _CHV_VIDEO_DIP_DATA_C		(VLV_DISPLAY_BASE + 0x611f4)
> -#define _CHV_VIDEO_DIP_GDCP_PAYLOAD_C	(VLV_DISPLAY_BASE + 0x611f8)
> -
> -#define VLV_TVIDEO_DIP_CTL(pipe) \
> -	_MMIO_PIPE3((pipe), _VLV_VIDEO_DIP_CTL_A, \
> -	       _VLV_VIDEO_DIP_CTL_B, _CHV_VIDEO_DIP_CTL_C)
> -#define VLV_TVIDEO_DIP_DATA(pipe) \
> -	_MMIO_PIPE3((pipe), _VLV_VIDEO_DIP_DATA_A, \
> -	       _VLV_VIDEO_DIP_DATA_B, _CHV_VIDEO_DIP_DATA_C)
> -#define VLV_TVIDEO_DIP_GCP(pipe) \
> -	_MMIO_PIPE3((pipe), _VLV_VIDEO_DIP_GDCP_PAYLOAD_A, \
> -		_VLV_VIDEO_DIP_GDCP_PAYLOAD_B, _CHV_VIDEO_DIP_GDCP_PAYLOAD_C)
> +#define _VLV_VIDEO_DIP_CTL_A		0x60200
> +#define _VLV_VIDEO_DIP_CTL_B		0x61170
> +#define _CHV_VIDEO_DIP_CTL_C		0x611f0
> +#define VLV_TVIDEO_DIP_CTL(pipe)	_MMIO_BASE_PIPE3(VLV_DISPLAY_BASE, (pipe), \
> +							 _VLV_VIDEO_DIP_CTL_A, \
> +							 _VLV_VIDEO_DIP_CTL_B, \
> +							 _CHV_VIDEO_DIP_CTL_C)
> +
> +#define _VLV_VIDEO_DIP_DATA_A		0x60208
> +#define _VLV_VIDEO_DIP_DATA_B		0x61174
> +#define _CHV_VIDEO_DIP_DATA_C		0x611f4
> +#define VLV_TVIDEO_DIP_DATA(pipe)	_MMIO_BASE_PIPE3(VLV_DISPLAY_BASE, (pipe), \
> +							 _VLV_VIDEO_DIP_DATA_A, \
> +							 _VLV_VIDEO_DIP_DATA_B, \
> +							 _CHV_VIDEO_DIP_DATA_C)
> +
> +#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_A	0x60210
> +#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_B	0x61178
> +#define _CHV_VIDEO_DIP_GDCP_PAYLOAD_C	0x611f8
> +#define VLV_TVIDEO_DIP_GCP(pipe)	_MMIO_BASE_PIPE3(VLV_DISPLAY_BASE, (pipe), \
> +							 _VLV_VIDEO_DIP_GDCP_PAYLOAD_A, \
> +							 _VLV_VIDEO_DIP_GDCP_PAYLOAD_B, \
> +							 _CHV_VIDEO_DIP_GDCP_PAYLOAD_C)
>  
>  /* Haswell DIP controls */
>  
> -- 
> 2.39.2
> 
