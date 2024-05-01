Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171368B8459
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C3C112FFF;
	Wed,  1 May 2024 02:26:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXTqS/rF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050CA113013
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530366; x=1746066366;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PzAF8SRwJCh+cFo8Qk5ddEG++beZZt/gkpQyHCp4sMA=;
 b=aXTqS/rFL+MVzK/BON4pG8LYGGSCZekIgz7lc5aNsRYgbJTA8OvcIhGL
 o5JbY73NDbGqAokJqir7sg/0FzQBkWjilYD6I//GwjalQMpg/cz1woMr2
 hsVrOC/Qg+clPtRauUk3mRoK+eJKG++aoiQLDDcpf1FZjtQvEURAG39Z8
 jMR2Opt/5zxncmhoYbm/GZ9IepucKILT6u0kS22VxHYl4JiS1fS+X37na
 TTwsKJfwCyCYjmrk2uINxF41S7ExmzX+9bP+tWf0UNixJE1gyRsOrkHs+
 UGIQAhd/4EuDCe06bzz9+U7pRhFDh/8g9CIz8/BA9lRFEaR0W4N8qyTau w==;
X-CSE-ConnectionGUID: e3PXaucmTYWc5IcnT31SHA==
X-CSE-MsgGUID: e8ZS0lWnTDC8c0rit4vDMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10139839"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10139839"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:26:05 -0700
X-CSE-ConnectionGUID: lWlglQxvSdOEAdXFzoF1GA==
X-CSE-MsgGUID: G/NhADxiTeClqMHe0Foodg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31114466"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:26:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:26:04 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwNB1ifqg3ypbkxb8cGmR/zaa+fVYFmLXjJlRP7j0yVyhLRMLRerU5aE0M/kNDIZz1GVRc98WUTmWoN9kmPfy7TTuIQIDnH750F5mzGMp59C/FZWjVc71mUh9tOWkyN2pa7IlvtgqnwsUCWac1UdafycE/iWhalhkillHvkn2myjhRC1yasDWYUw24zrPZPeaQ6FO/lUS+u6PVT+xbCEY+ZoysaMRsjM8kTzYdqYyuyIJ1KTbUaMNOcklwJ7UBBQBqGe1vzlaXKOgQX8QZwFFGPn2curYjmXIvwB+tSRC9Yw+F+J1mHaymVMnRa5KDZgDj5NiArqgYuBGbkchBERVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9X/ZpZt8pJfGCvnN7bJnP/m+bUei2pjcjJtcomAmuM=;
 b=gC3JCW2/9iTLowFZNAedvu0EhnOsyNxbFKeeSJ2AsvSQf0nf2HxKjk4NbLFaeQY4tNjyOKKYHhN75W/zzQXB6Mbx0+YehsDGDOe8CrypZacFXM/jHo3PlH4udfGJ0RWHi7h49qhUKc7JhAYC3aLFBPXMvHnDADnC/8XmVaqa36eDwGuGLUzDKLVo+SGXmAge2i8ZMjp5uAQ85hwLTQA96daUe7b2xZ5bsIphf8tXqD3InOGyAw3Rfz6w0wsPzd/dUjq0v7/+15HELQuvdOZ9kuD7TNVCeKwzfAVZrnu64+uq1wQXL1acH6rWIWOW7OvsG8tOCiUEm/ytplHTrNYD9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:25:50 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:25:46 +0000
Date: Tue, 30 Apr 2024 22:25:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 17/19] drm/i915: pass dev_priv explicitly to ALPM_CTL2
Message-ID: <ZjGoJC6I5W9HQw4R@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <09acf2751cfd2f524e6ba97c3ac285495eae5c86.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <09acf2751cfd2f524e6ba97c3ac285495eae5c86.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0182.namprd04.prod.outlook.com
 (2603:10b6:303:86::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: d0210241-15fc-46c6-68cf-08dc698601d3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ybYszeg+fY61kTMH+J/aHAKGopKwVAlKdUYYpDnLMMgmKA0WanUjn09Tud88?=
 =?us-ascii?Q?7JhqM59RhYK+FolWbhsaWsOfdvDsUqqkMOFi70K5JuxHhV8LzSYuYI4rj+/F?=
 =?us-ascii?Q?HzhlRZvSzU3Of5pstmUE2KzDI9CmUI9/DBCTbVCKZi8FTasJFSTtyd5gISNQ?=
 =?us-ascii?Q?KCnQdn/3BPfR9LAtEL+JvQWsIF9t+d12KCgA9z/YE9BrsvNawc950zHwxAP8?=
 =?us-ascii?Q?SuZAXl0foictcy/w9q0q8RNS/f09x9i1rs9mqmUnNwtQPuJjjzAg75e0yl9L?=
 =?us-ascii?Q?Vr0U5VEVwtdJfZhBEtXQtUuV+P4eqS+BJNwZb2+Em4EeQBkGXzFxfM/Now9b?=
 =?us-ascii?Q?R1rY0qyHkH2d1LZ0EmmWdhJgHz4ZduNW3OKHZ3j8fZXXcFDe7zGb5gQxLdd8?=
 =?us-ascii?Q?pHRvaoROPj5janaQpyK5tLh+zSiLJrg9DRhZJKQ54dwvCZrSQJMUPnX69SOG?=
 =?us-ascii?Q?k2Kvr+Qr3qDXTAFE+gB9fCzmOO+yFb0ZtOP9b1TAAOycKDmBkt1XdGyotbyI?=
 =?us-ascii?Q?pSQjSHiUZV3i+cgv/AhI9uxnkPMVuziTblIG9NK9tuf015getIG4e5GaBCe6?=
 =?us-ascii?Q?8uiMhksNs/SfMb6khHIgtHBw1RyLoRjmJfETqDEmm9eKk0lGQPDQCGrDAnlf?=
 =?us-ascii?Q?DuaJH9br8F+rdFuoiBQEKyWMX/pj/PDQ1Ct+D7b8/4CEe+VWEm1PKMPPPJMh?=
 =?us-ascii?Q?JOKqvEUY1TFxCbJHGz2lmQ8bBV8cTxAujCwGGIHAMy1p9OHAdOW4yorFsifN?=
 =?us-ascii?Q?W8pwRYZ21ZYVYFTZLGd0PwdHOHoOZ5zJFgaAHvHjZYgvDh0qICzCr1jmWOif?=
 =?us-ascii?Q?Z9fsxzR7eypFRIiTXKpiCbbMfA9aosnl9kIh3JHseQzQmIOr+o6+NoMm6Ie2?=
 =?us-ascii?Q?gi2vuAoD91PuNOg9mpbTkaFVo4pvwzgKQ8kjrzOI43lVG0XqVDmIzqz5c+2+?=
 =?us-ascii?Q?OzHc9GjYsL4EhBZ2WUsQhKlKSNptoYWRmLEp9iJ7Yvk+QQwyBIvXVMkcdTJZ?=
 =?us-ascii?Q?HolLfPAck9VySO/VIJbmf9XEglJH+cLE7f/b0ZX+LMoWOwD6Q4wH4E9Rn4Fk?=
 =?us-ascii?Q?CuXZGcDLUa1P8ZIKUqjFYhYoBY793INgsQp2cevpUT9mxWYecm3uSBHgZczV?=
 =?us-ascii?Q?reVUnKjz3r1iRe3WSX9zk1ES0/MLURijhMcaS7Zwr0xSJWi2gHdZ+msqzzE5?=
 =?us-ascii?Q?qhKi811ZPX7mFzH4k/NBf5KeWZF6VuA85h247G/gxeAUks+kVSckLhgqCAKN?=
 =?us-ascii?Q?yorY6QzuAXgd8NVlmf6YgkmJNPDGwH7mFXFGVX/gaw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2kT3yEPfl7nDNLM9UtYmj1/artaokWFMe+FA/ZAzkA08g7CTIsvFCiI0c+Ct?=
 =?us-ascii?Q?lUqW3/gKgSmoMc0kxbdIZ8HxYJhlk37BgJz5bKE219iCJDzAxXLaNDPlhpRD?=
 =?us-ascii?Q?foh5iltyldGiqWVEgcADcxqliC7uo1Ib1kINI3wdFFr7GjCgVoFuxuxchEdN?=
 =?us-ascii?Q?GBSy5XV2MAoTrjL9tVHAfPIuo0gIvF3Wu8l7pY21j69WrpaX64odVVOhxlzG?=
 =?us-ascii?Q?LlTGPuRIcL6M4fmyT4u/gkDoDgH4gn/gHw5bL0p/63/jDKYCJjW/E9BqLrHe?=
 =?us-ascii?Q?XEvv6/CIsdKnRBzns6+cPINUxLQfA4JBp6XAjtQKr6QULsM2l4i3XbrBEH8F?=
 =?us-ascii?Q?3ypn103reXR+DVyghqGN6R8nwdHgG2o2lfVRkjzdoXAh+z7r+nPn3sYdaTl9?=
 =?us-ascii?Q?LbWvw0UyxqhYQMaFWlIdJfjVqNaXxZErGKs8XrJZhSRwNhQNcRnhc0gzviJT?=
 =?us-ascii?Q?DckjNnuoO2672cVQOVLV6iCw5QvMIkSJJpI2sDL+qf/KcGe+TAFEo6qCxRc+?=
 =?us-ascii?Q?LrU2kHwiR1k2URJJRPD3zcJZfdHdqKqQCKLUy10oSTRcLkOiTE2nQ8NdMPBm?=
 =?us-ascii?Q?B/J0+X18s7ItIjMOsAGSZaMxXeu9ui/IBViQ7lhSdGBVCOSVUj61R53fcUrh?=
 =?us-ascii?Q?v+ATIf58fLNprMb285Bg2Q1RJlWjMw9iC34ho2b6837udzevtowfrQz1nNml?=
 =?us-ascii?Q?BgeM3SILiZMACxtxg9lfn+hIjwN2tpPIexNiDbz4ZA5tDwODJcmnS7WqP5CT?=
 =?us-ascii?Q?SRFgO5IloD4FpT4KS51T3KRmbxH2gzKt9sdFqlW+PpQMbQCItmOfTO2h5B4q?=
 =?us-ascii?Q?H2FB4XC9MRdvixYj/oa2kmtKg5DcMA/qDcokDcz9Yfwq8jFEnxJjSjIA/4Sh?=
 =?us-ascii?Q?7XMuOA9hkU+LNkqEey0rTESXv0A7qJe5COeY4hAtQQAfcHUnt3AjNMLzGsOr?=
 =?us-ascii?Q?wvU+Z6wy7CIChvPLQWoL6rhZh+YESKpKMxX63LN6MwZ6vsye1X+XGsWzxOcO?=
 =?us-ascii?Q?V6XFu++xY6FWurH+KkshmoPzpPXUOPfwvtlkC3kqtznkzF5UwMKbFEd3T5P3?=
 =?us-ascii?Q?bp5XvSDTrsSEfjMHJgG55QsOb1pj+zoaHBrCihaGxPGRu7dn58k7RkZecQ7+?=
 =?us-ascii?Q?OISLW7XeoLAnmdZYk49POg7GOGETC+bkpHsIEngqaO6TfpPHLGwoGso7SIcK?=
 =?us-ascii?Q?x+RKYP8/aB4wVaYMeUNZgsgtXuCKlb5fo2lAie0PVqgAoUGiW3A9F6TIoWrd?=
 =?us-ascii?Q?1GtrDncthXSQQDPBB8GPPn+LK2fRscdU6raAaDtYA3K6xxRkA2GoDAjCaJpY?=
 =?us-ascii?Q?uI7AeSdAnAD8kcBUwHClqwYXOpls8RmWP4HyCGPh6wmbHk9HELGlFDp18nXp?=
 =?us-ascii?Q?Z9ZhcZtCMkOlWHGG4qkrHHvFkoa7qfaxGbmYglhTbRNsejEGZmy87Htjmplj?=
 =?us-ascii?Q?XsEWkQC9jocsBYvitLk0QqyP1YKmoZaHyL05oVpMzYk2C3dEVnnbvYd8SYpG?=
 =?us-ascii?Q?3h9dgBQeBCG/tyCN4Ug6kV+Vmmi7MiGdbt0E9n9M/RZl+1XrdcJ/bdfmYeKO?=
 =?us-ascii?Q?GKkCLKodeBF2kvmlRDnWqrLEr8d0s04GH45W10R2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0210241-15fc-46c6-68cf-08dc698601d3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:25:45.9516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eWl2wahj7NZvXAbqIhAjc2A/uWd+JnfofWvtymljr2wdxLbTHhYV7fBiY1yVxPi4I6eBcnoeMkw46YJxaCUq9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:11PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the ALPM_CTL2 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 4d950b22d4f1..05dc1c1d4ac2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -321,7 +321,7 @@
>  #define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
>  
>  #define _ALPM_CTL2_A	0x60954
> -#define ALPM_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)
> +#define ALPM_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)

no usage? should we just delete it?

>  #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
>  #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
>  #define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
> -- 
> 2.39.2
> 
