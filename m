Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC513987990
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 21:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2609F10EBCB;
	Thu, 26 Sep 2024 19:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GE2JbGIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B31610EA74;
 Thu, 26 Sep 2024 19:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727378097; x=1758914097;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=55uxfVqEuU4XaLcmBVSq3fthQSORcwMYs/Iv0Z5+wmI=;
 b=GE2JbGIbC/RRrnv18ZnIjibJAfsD7wnVvJhkfOhh3OeziyUKcXqL2bFr
 xzVHuNvWqnpn/y+Fz7k8lFfJTL2AYAc3B1wCFtr8EFcFrqGuYhXzf4Udu
 BdIEqFy9XN3sFtXszzFyfnLEte+OzNut5clndkeKa/E7VAgS18XA/qfzF
 39Tc4Cf081uaVgrRAG5Sfu7WFfOxhrnF/pSRCDaY7nvjb34f+2D7pn0Yu
 JMhU9d/cPJbEFWX0Zcwr5WkLAWMw8MJxAhl5ddsYagvAL/1aLvRJDmkce
 thHMW4FwF8Dv955Zhtqj2ebBnN1tzoLd/JLbknLdHxh7XBRGM0olJb0cJ Q==;
X-CSE-ConnectionGUID: kmhIuxntQseoUhV5qLorIw==
X-CSE-MsgGUID: pRRemSXxQbqS1xKcnw8fuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37862815"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="37862815"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 12:14:57 -0700
X-CSE-ConnectionGUID: f/jYSJxDSP+IDYmm+QBcew==
X-CSE-MsgGUID: 9RGbAqsTQ+2wmtbFbZzBPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="72702898"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 12:14:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 12:14:56 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 12:14:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 12:14:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 12:14:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QFQRwp6VFyWgI7auj+LqbzQpnw7HnrsfbMtZ+RiFGLhVJOClab4TSUS4f2lMJeTya0Ypkwr92kuUvxCQnWSMg1F1Jo/dB3lSxrHbpWqOWAI27mPFI/uc4H708b78HqYVjpIEt27SAk0XdfGMTYME4ekkJMto61tk3tXdPAKkYt9Sb69UZX4x4D1ygY9HaZz/iqkvGdZJzlKxpxhDHD4uk/1fx9sCk1ljWnGhLVXWcmahC7qtr9vGLx6dXe4yFTOQG86y0RyIcEU9lCSxcjkXRIwFKsBaG7mT6c/pA06wx5b2YjPSBzNbrECcu9x+ABARckDfYmDaHQ55lK+ekuTQPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1/2gw23TDARF6KtWuo1XExWPPuAoT7w7KMsyDCm6vHk=;
 b=JvA6g0eQkLTEsq63QdfEj3F55sUOmD6DlEZyGKUdEk5eA9iAhzIfMazEDxhsWQVoUOIDkrVuqPenWoub/p84ki5sNpeE9CanW5leA/jZFslNPQJcykd5Q3G1swlgCQ7DwhKlLWzFcj/aLiqQBIVGhyWr8rP/GupDCWbuApfu7TfGf6RMJg5Og4jPtvacBsJHLvLcvHI4iPTE17i/Ramo8hZcZDVynt4WaOy5N16efvVXKYsKTkHLEouDcadbSDFP88QcHRQWGmCGJNmDqTf5q/JuL7D6Eg8IcYbrx0oXPPLp7RHScobN3raG+SIFKWaleoIlKo0L0FaDzuhSxHz/Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7899.namprd11.prod.outlook.com (2603:10b6:930:7e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Thu, 26 Sep
 2024 19:14:53 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 19:14:53 +0000
Date: Thu, 26 Sep 2024 15:14:49 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/irq: remove GEN8_IRQ_RESET_NDX() and
 GEN8_IRQ_INIT_NDX() macros
Message-ID: <ZvWyqYAaZ9q-EKKZ@intel.com>
References: <cover.1727369787.git.jani.nikula@intel.com>
 <8b2a2b5b56fc38187f510b3bc439c652f6ad96b8.1727369787.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8b2a2b5b56fc38187f510b3bc439c652f6ad96b8.1727369787.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0158.namprd03.prod.outlook.com
 (2603:10b6:303:8d::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7899:EE_
X-MS-Office365-Filtering-Correlation-Id: 00649062-2bb0-417c-4908-08dcde5f7fa1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0EPOTTmH5pjppQiihSe0ClXwxowQh8WB9G1zws+4Mu5oXgXMq6TG6zPoScCg?=
 =?us-ascii?Q?vBvO45+wY+djMw9nmi3UysGG54VWA6OIX69DYrvQUPDFFeNEWC+See9RPQ//?=
 =?us-ascii?Q?JtBfnUh8u0IEjy3fIlvn6QZ8HFLahhK8YswfEb28ymMkmOJjmAveYjEiyfxj?=
 =?us-ascii?Q?EOiZHBncrBKoniKNkpiealDP6JoPJvKrka+CLRu0hL3U7i83l00Fn8x2PvCS?=
 =?us-ascii?Q?0gRRihiCvwHLUBCcVJ7lBo9fc7PLnVOiYQj/yE96ZxQRBGQ3VBRoae6CNqM4?=
 =?us-ascii?Q?DK4Nw/5Eg7BZ8WsXFHxZzlZloTDBeyteFfTXqOc75289cmqkezdS8O/7hNhV?=
 =?us-ascii?Q?ctanlEhDYJhPNd0TewmZhbAPduzTvLpdvZpNyrJ2j+cM+Mdu4iv0IybXYdT9?=
 =?us-ascii?Q?4GCnFpWCyQAXaW7ag02P32xEWMLbnJdi0SttSfzPyUQN2M/gr1oLlfbsbkqw?=
 =?us-ascii?Q?RjFx2NTdiJIXIQLhf0YfFYy9WM1BTxAtzSsq7bKyXWTPimVb4iQK1QrYDz/v?=
 =?us-ascii?Q?f93wZZSOV6kYIuU3nY0iqDCw+On14CidNCpWqPkFXgCmaQpwkEnVy1nn4R8C?=
 =?us-ascii?Q?2ij0owpeX8KJBUlRminiE1+PYlyAjfVtzo1ZnSE2NG8KFww3sZexSlHoYTtd?=
 =?us-ascii?Q?8HxoPf9jZALlQTV6Rrwfnf0JvfvD97aBVORd1MRe0uXn4xEsV6zveE8sEqaK?=
 =?us-ascii?Q?b/5pmdq6fh7pCy8NvH5N79P4pB0SLsdlkpLdHSKd0s0hW4hTvvw645pWC8fY?=
 =?us-ascii?Q?bRpXSrex7B/LmtwASRAK2S1FODO4w3gSKElhLmZ3bFt1Od8bezwLxk+XJ/yO?=
 =?us-ascii?Q?zJ4QUjZnIm4O1d4+Wai4XNSe8nV505X1R96Fg765OJTOPNGZD7EVO853MzvF?=
 =?us-ascii?Q?F8NAeoH0tDvvBxVFfYn5MaeQlKJ+TvEG4FeYQOpTlrm7wJxxA5ISpQu5UCHy?=
 =?us-ascii?Q?Ie+NT2K8w2jg4iRcuJJdcQcvZm1jZae4J1aA6Zw/uhKQ4H44C5A2tnyTg7MZ?=
 =?us-ascii?Q?jPh/EODiXIgcDNDhIAFLNyv0of5jt5nQiJwqpIIn5uLUJwmi2XT/cc9d4Nqs?=
 =?us-ascii?Q?3NIqoZaz1uXWwu7WACVQLuHsYEy32b+hdgCDfkw/fYLmT3TiI7Ul0cPE2dWj?=
 =?us-ascii?Q?OudYlQ/6bH1rl39377OJ+QMlWjDhBJJvl+BVEqMwDzMRytNGDV/lN8fvdFla?=
 =?us-ascii?Q?NfvHFQ3FaL7khC2+w8rhW6Nhfw39TyUGeJraCPKINoYAIIOyJnD93YY5aPT4?=
 =?us-ascii?Q?yJznXdwupeaQTSOwjcfrf7cfA3L2U2rhGjU5znoI5aaNmz2mN7kRKmS5D5vK?=
 =?us-ascii?Q?HiHL/wnQ4QoKzhaqN+FSBMFP70pGLCqKDMjWwJMLG4nm/w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HbNC11N/oWOwEsExTdBQcY1LmC1BFqF4GrpwIqLapzf33ykO9T3OPPpwB6yy?=
 =?us-ascii?Q?uMb6bFzikKkDqaP7u1nlaxbfn2ofI/MuGwI8wLGRFnUtf7RA+FQTAJLg9mAm?=
 =?us-ascii?Q?DqBflvNA0tlgSbWlZtpyf0WvDfBY7VPRdJ1I/299HJkngNErgf9R421tJ2R3?=
 =?us-ascii?Q?N1oTsKPD0V//4AMbd8fr7JxTi9q/ImeXBiOfO0zw2XBO9GA4qV/4aGA/Pg4d?=
 =?us-ascii?Q?dcktOShjrPc1hpbnbjMruyMI69s7kkUy6jEo/i1hLjVGgq6O77uhG4LutdnF?=
 =?us-ascii?Q?cJY6Nt1MTLoZw+9zg4HhriSScOxqpgPTQ3/1jgGc/JqcjoV5vC3IgXBf6Un2?=
 =?us-ascii?Q?peyPGbspNcIpd0p/YRnWgZDWGvtmjWnpr8TqH0qD7fc5a9DuehmUnpQsO4A+?=
 =?us-ascii?Q?tjaxp1GWnqe/6a57MVumBG9mB1swDFcTbDuN3kbB31pE+aY3rdoNI5S6cU5j?=
 =?us-ascii?Q?rSAi7XXddE39NUq8b/0duX11vx/ulNC5B4H2lQIbVyAakUmjcLJkxJ9KQCL6?=
 =?us-ascii?Q?WOabcfGlNgTiw1aCgKS/s6X235TzbEP5+wV4zNPvac59X4S/D0DphWQPXTJs?=
 =?us-ascii?Q?+Q+E+BjD3tgKj64X6bdg8jSeuTl9PNMKBYsxCLUjKM74r+DI0nsv3iIWCEkp?=
 =?us-ascii?Q?525CNIYFcKyuckdtLzTV+O77ylaNmWN4SbzEpttRUuQJI3tZmz7dfqiPCQwO?=
 =?us-ascii?Q?grZ5sWZygeIynZgpLfXxAyeJKZEoDA/eC9WDbIUM2aq1PWIVMQ25pVIWYBtX?=
 =?us-ascii?Q?HArrV6oMkoMrYzyqqlWs892atb1A7KRZG3+Iumip8V1jNevhWIPCxNBDB9ME?=
 =?us-ascii?Q?+tCjT3KfORMpX0kzLikKjB/+wse3Yc/+6kolETPXk/Y7jT+5xEEk+O/4oszZ?=
 =?us-ascii?Q?f0TwAM8+tfucmUdsLWNqVqynrto1IcGmiY/4yZS7C42zeEApR0mcGQunwqZr?=
 =?us-ascii?Q?+tMQuM3bEAXkZyjxx3Jyi+vfe4687V0RFnR8GAlxig/Q9dvSOJk5efQ4A4n5?=
 =?us-ascii?Q?isrcNGiSnXwnol3xO0HWTR0Dr2ukol+mPysRr+2VIEKpTo84x7s2i6dQLhPd?=
 =?us-ascii?Q?GA/OWCFlGvLDZHWKF9JvsKboAQZ7fIXwFuLCUYLwUt5G0XZhGwsUM8i0bEJY?=
 =?us-ascii?Q?bbdVvTrudSSq3+0k/uqqSzz4PoAWWc8sc4APeKY/F+OXznuzL8eBEYJr252X?=
 =?us-ascii?Q?PG+4O87Nwe/+z/1kd/ZDPlmREIzAdOnVvd4Fp3bPtY8LDKsR5TjIdqxGBA5c?=
 =?us-ascii?Q?J68lC7QoBVM01+u9OjLhArfOxbiBUXj1UQhOlsgcA+YCWp5r79CfgFT+tA6S?=
 =?us-ascii?Q?S0Gn9a5hFSkRt8YXw/QyFzRH0pNb8Wtduhjx8OV/WrKWouBH1nraYMTndkyV?=
 =?us-ascii?Q?zqyhoAjDQhhlaDa724Z3N55jX4ntGHxBiGX3KvT3w+4TGDz9tpqA9XxIgnEd?=
 =?us-ascii?Q?IJmdGQsXhv0OY/HId6TDhrpfNy2/y6HR/zT2Iz+puKZjMhPJQusWbdUZF64u?=
 =?us-ascii?Q?XFZQLUpTIYqg9BnT4TAR+27+VxbIKiUrHICc/77HLXh+lEjHOzcJUOiwsp8d?=
 =?us-ascii?Q?jWX8g7X5ICSq+KV3o29voVbQWIIPaDpk41j+0oeG9kiEOjvIgkP4YvqfTqUz?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00649062-2bb0-417c-4908-08dcde5f7fa1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 19:14:53.0651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jI+qWH+6bjSHYsMZcOP7lBGUKwDbdwhFfiQeYvFaNrIX/7aRyXR+FYReIPMvqJD1W0pILfY6CoutW7e0RFycng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7899
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

On Thu, Sep 26, 2024 at 07:57:48PM +0300, Jani Nikula wrote:
> Define register offset triplets for all registers used with
> GEN8_IRQ_RESET_NDX() and GEN8_IRQ_INIT_NDX() macros, and call the
> underlying gen3_irq_reset() and gen3_irq_init() functions
> directly. Remove the macros, along with the macro name concatenation
> hackery.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_irq.c   | 18 +++++++++---------
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c         | 16 ++++++++--------
>  drivers/gpu/drm/i915/i915_irq.h                | 17 -----------------
>  drivers/gpu/drm/i915/i915_reg.h                |  8 ++++++++
>  4 files changed, 25 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 5c6b9918ed3a..ed243283ba6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1546,7 +1546,7 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>  	for_each_pipe(dev_priv, pipe)
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
> +			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
>  	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>  	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
> @@ -1589,7 +1589,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  	for_each_pipe(dev_priv, pipe)
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
> +			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
>  	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>  	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
> @@ -1620,9 +1620,9 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  	}
>  
>  	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> -		GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
> -				  dev_priv->display.irq.de_irq_mask[pipe],
> -				  ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
> +		gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +			      dev_priv->display.irq.de_irq_mask[pipe],
> +			      ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
>  
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
> @@ -1641,7 +1641,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>  	}
>  
>  	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> -		GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
> +		gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>  
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  
> @@ -1829,9 +1829,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
> -					  dev_priv->display.irq.de_irq_mask[pipe],
> -					  de_pipe_enables);
> +			gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +				      dev_priv->display.irq.de_irq_mask[pipe],
> +				      de_pipe_enables);
>  	}
>  
>  	gen3_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index fbb3117e324a..0c1e405240af 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -452,10 +452,10 @@ void gen8_gt_irq_reset(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore = gt->uncore;
>  
> -	GEN8_IRQ_RESET_NDX(uncore, GT, 0);
> -	GEN8_IRQ_RESET_NDX(uncore, GT, 1);
> -	GEN8_IRQ_RESET_NDX(uncore, GT, 2);
> -	GEN8_IRQ_RESET_NDX(uncore, GT, 3);
> +	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(0));
> +	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(1));
> +	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(2));
> +	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(3));
>  }
>  
>  void gen8_gt_irq_postinstall(struct intel_gt *gt)
> @@ -476,14 +476,14 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
>  
>  	gt->pm_ier = 0x0;
>  	gt->pm_imr = ~gt->pm_ier;
> -	GEN8_IRQ_INIT_NDX(uncore, GT, 0, ~gt_interrupts[0], gt_interrupts[0]);
> -	GEN8_IRQ_INIT_NDX(uncore, GT, 1, ~gt_interrupts[1], gt_interrupts[1]);
> +	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(0), ~gt_interrupts[0], gt_interrupts[0]);
> +	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interrupts[1]);
>  	/*
>  	 * RPS interrupts will get enabled/disabled on demand when RPS itself
>  	 * is enabled/disabled. Same wil be the case for GuC interrupts.
>  	 */
> -	GEN8_IRQ_INIT_NDX(uncore, GT, 2, gt->pm_imr, gt->pm_ier);
> -	GEN8_IRQ_INIT_NDX(uncore, GT, 3, ~gt_interrupts[3], gt_interrupts[3]);
> +	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
> +	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interrupts[3]);
>  }
>  
>  static void gen5_gt_update_irq(struct intel_gt *gt,
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
> index 06a38671b32b..da3d97143511 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -47,21 +47,4 @@ void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
>  void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>  		   u32 imr_val, u32 ier_val);
>  
> -#define GEN8_IRQ_RESET_NDX(uncore, type, which) \
> -({ \
> -	unsigned int which_ = which; \
> -	gen3_irq_reset((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
> -					       GEN8_##type##_IER(which_), \
> -					       GEN8_##type##_IIR(which_))); \
> -})
> -
> -#define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
> -({ \
> -	unsigned int which_ = which; \
> -	gen3_irq_init((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
> -					      GEN8_##type##_IER(which_), \
> -					      GEN8_##type##_IIR(which_)), \
> -		      imr_val, ier_val); \
> -})
> -
>  #endif /* __I915_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 818fb71f7efc..818142f5a10c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2491,6 +2491,10 @@
>  #define GEN8_GT_IIR(which) _MMIO(0x44308 + (0x10 * (which)))
>  #define GEN8_GT_IER(which) _MMIO(0x4430c + (0x10 * (which)))
>  
> +#define GEN8_GT_IRQ_REGS(which)		I915_IRQ_REGS(GEN8_GT_IMR(which), \
> +						      GEN8_GT_IER(which), \
> +						      GEN8_GT_IIR(which))
> +
>  #define GEN8_RCS_IRQ_SHIFT 0
>  #define GEN8_BCS_IRQ_SHIFT 16
>  #define GEN8_VCS0_IRQ_SHIFT 0  /* NB: VCS1 in bspec! */
> @@ -2542,6 +2546,10 @@
>  #define  GEN8_PIPE_VSYNC		REG_BIT(1)
>  #define  GEN8_PIPE_VBLANK		REG_BIT(0)
>  
> +#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
> +						      GEN8_DE_PIPE_IER(pipe), \
> +						      GEN8_DE_PIPE_IIR(pipe))
> +
>  #define _HPD_PIN_DDI(hpd_pin)	((hpd_pin) - HPD_PORT_A)
>  #define _HPD_PIN_TC(hpd_pin)	((hpd_pin) - HPD_PORT_TC1)
>  
> -- 
> 2.39.2
> 
