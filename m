Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9BD8FF1DC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8229510EA01;
	Thu,  6 Jun 2024 16:13:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnQes3f4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4111A10EA01
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690390; x=1749226390;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y9PqGtThcClJV7CBvqxmY8N3zljZOfPA0ykd8ctpaRk=;
 b=UnQes3f4Y+auDcklSvK1F5yJxbtpP0Pp8RTuz9jGNB7XuY31aVVa772w
 snjQb8PObqYNicfo8aHFXdD4QwPChHrsjERQz7r/SEvF1gZmtZoz/alhW
 vuH4CGPaBerLmr5/z6upu/cni/x5xPWL6jLT4LSmlmAuwycehyOBaOeNR
 QJC+fyckUpAnmkm0SjyGxJyLgTNT4YNddQlA3uX6Xw26cYMR7Rd9jHYEw
 Mt76Gluf70kH2s/wFAaRhqPrJ8mU4uQZmuhBbKJtzqeGMKjL0Gkjhl8az
 9q8dsd9KBuY/upJIj7Q9DE9ck551cM/XaIXdT0yjdSiToOzjmH1IxvmEp A==;
X-CSE-ConnectionGUID: K2q4gtYWRCWimOrUMRWKNA==
X-CSE-MsgGUID: SD0HNZoXT1ORrENPBUAtXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525903"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14525903"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:13:09 -0700
X-CSE-ConnectionGUID: 0GRAu8BbSC+8npjgoUyZNA==
X-CSE-MsgGUID: cKBZhlGcRSKq0WLSwL7nOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38696759"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:13:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:13:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:13:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y1EXlZyfx0STYbBFTGwgHgvBP5E09HZcLke4huEa8/ViwjppJ2sbwKGUAD08d+Fe83GPMtjVd+X0zEWyRTWDkwVxRUFZzmQ8vbO0ZrWJuH1r8+jO0UfXDSguCZHJOO4CrGby3p+yx2eu8FReflaAtL5TT31btcd7lvxDYQ/HJyZSY+7JR0vJHNyStQe8fmuChiMrsENMLLoHw/bmOEFoZQCiD3Up0oHlgF3U6pHwgNvdJK3MAxSGBgnJoArU1dIBpKdRqhoO51sCCpjSSYQu/nfSFcwNGNA5FAXpE7xy3avWFZSk9CHoOzh9IHGfOS/7tNzhK4HJFbEiLyM/0q6wfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t6tb1hWScWj73d+BQU9VlzOIf/3zSPAiqdaEVq+pL+E=;
 b=LR2jTJRpLvJYFhwuJz9sfWlf9ZN+z6yFNX4PI04wfqc+1tU+8ehoOOdXvv7mWikWOt3pcM91/PORk5R8v7N0iA1mB1L/h8ZyN9iTrhjFQ1MH7wC7qRfRmKnKJ+wXDfANGrTu4hnylQJFhpMT/34yEbYExbUZIvjp8ESmGw8bgl2l2y+KjSWCSWPCfUXGjAjzJDueBAFCUKduluXJD8OKelhRK6+o2sSXCu4/C1OqLGHkDAwFFD7K0ZT1Px8qtIp1qWIRekBL76sXyGzQcx2VfSq0xreXbasWxAdJK6sUG0U30P8y/tPF9pDR8wfKcc9BlnfChkeYtF5+X4T3Wn36JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:13:06 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:13:06 +0000
Date: Thu, 6 Jun 2024 12:13:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 54/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_M1
Message-ID: <ZmHgD49lKSbXEfZp@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <bf25d447d98009f56f2c5b2205719ab2d9a70c93.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bf25d447d98009f56f2c5b2205719ab2d9a70c93.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0013.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: b187ce32-2dff-4ba3-532f-08dc86438c85
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iMxZf3Fa1QMa/L3givB3VMekDMPDWxZICn/xihdYV0Jo1oQakUnjRedTUkah?=
 =?us-ascii?Q?aCJMOuqjkTA5D8rbqhBlxYU4X9MYYsteD4ePuyeyozKYBqEHtazEtVPM/gM3?=
 =?us-ascii?Q?T3T7YKtyUvu0bIJjnEVVQ9dcpRK3Dq7G0cdCcjicD3Fp1Ia4aXrB98qmYA9P?=
 =?us-ascii?Q?VXdg0gf04IE11WclDtuEIrMXegcqBH57y0nzHEB5/QH2PyhVyQBqeRPTHv1a?=
 =?us-ascii?Q?WaYILiH+pY1RObp5wzuo0yAjjTKK6U5lQGRJAAubINDAM0DTLiRIhmaOuNTh?=
 =?us-ascii?Q?dvXlGap98l6+/6xKKDuz8o33V9n2Uu8w2pAIUBfTqDoMpwf3hJEu4a3irqux?=
 =?us-ascii?Q?Rrey57HuxZ0xK9f/bY/+8eycJBZJw5cnRcITd0LfM1xTAHBx/4cpemfawYMi?=
 =?us-ascii?Q?uRKJ7mHFLnluSi7HbSFdUxcUgwKWev2zEwLmHx9NUZKkeCGG1DcwVtDpXpax?=
 =?us-ascii?Q?XNcYARmEl3fhrgwyu5iuxlc15uNIa2cCOqaNP1gYoZRKkwMToItwkrIpnOqA?=
 =?us-ascii?Q?kHT+0vxoP/ViDmHTZO5D+RZDnYehFihAFuwMxaOpSTAevE7/VjdnBCPBsqEN?=
 =?us-ascii?Q?5AGdzSbR+6NPtVxTvyzNq4gyNM3FFaqU+fOeBYC9slpgKB5uiWwFdZas22/R?=
 =?us-ascii?Q?0XwKro+cliFn0remf+sFjueA5JZkz/FEVTkIEJecjGO2n2FnrbNLESltC4Wy?=
 =?us-ascii?Q?Jaj9XXPvsALQQUto3S2sFLW8OStk/palGcUjWIww43B4qTJdGUmxwEzLyWr+?=
 =?us-ascii?Q?lCcNW4B2higwFeSsCror2fNH8GZzZU5Iga/FJ9gFxghBiYOZG24dWZFXOKrL?=
 =?us-ascii?Q?7U6iTouMpg4HcU8/kcz7xfnsOKlzdPyIQqRV7bnBwcpoCKtbn0mSQgg2gJbv?=
 =?us-ascii?Q?cYt9TcU7DiC3is6UBK5P9241EMMsq7TauEeAgC7lKs5u/OvIw/WFTemZwddF?=
 =?us-ascii?Q?lcpGbbDEXPrEhuCIk7M1IFM6Q14chxWPNXJwd73VA8VPubTmq7Lwc6jMSl/1?=
 =?us-ascii?Q?qOVXPdP/YGDrhb4eUsY4lLz7ht9wDtkDLmbd4i/uBC7yAD4q53H3LQbqyK62?=
 =?us-ascii?Q?s0W0+5K6aLPa1yndOKKFTt6iXtH9XP2s6mW1F6tjWl3W9mCfPQE+zWabxrhp?=
 =?us-ascii?Q?BGE2UvV2riWwkVY9uH4nN8UdNINxZU9AJGA0KeH4sURLJkGSZXUssv/nqclZ?=
 =?us-ascii?Q?N9rcMzwXzODw7dLSrZDMXWEfiE9M4VIBVUkMqX8mKcTdbqGnTaP0HipzcvIb?=
 =?us-ascii?Q?1WvTZXs5fpGHcyh13dgq+9KCi1SqGGzOjwT619syUXBG0AZpj+QbE0ZiWzfO?=
 =?us-ascii?Q?PO5926VVdU91LtPRMAfLaDbG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S1v9r8+P0a4etkK1Nbz+VfszPbTvGBKeBMtpn3oTxXigo7yI0KiZzgjOT5+j?=
 =?us-ascii?Q?DhkAjyxgPhay8cnR5LjgJRd2LHxSarVdvaQHbDpfeSEXACyV88nRdcK8yXbz?=
 =?us-ascii?Q?d/0i0kH766IBC68RQadZ4ZDXruq5oP0mD6GkAeCCTlf1bc/VpDgcR+XL5AxG?=
 =?us-ascii?Q?4CG+OxB8phqbCiJyqwJBuA8gQxYbYcjcaKNwlJIQogMo2PuBUaGoMDP9YIzN?=
 =?us-ascii?Q?Rs7FSdpW5DFJslMdFH8KxlDVA1hWaJ00Q0hPoZANnUCBDWLDAAIeef5WX/i2?=
 =?us-ascii?Q?cWgL61pBUY1XIqSALs+OkDIfm79F6MZlnNMuQraAcV7W+Zl0nRNtRRlzjIgX?=
 =?us-ascii?Q?I3sFCSVFLaJ+i1wBUwvpZS0iU2sb5Y0VYQL8kdGfNplv1fN2KAkOsXPpwCW5?=
 =?us-ascii?Q?e6fdu76C+DVqebFjrhry1emxzDtN2DHVgwdXh2DdCR2dgwGqc7PznNbzz/w8?=
 =?us-ascii?Q?r1jz2BoY7iuvUbMcsGuEI/I2lCJxxwCHFdUuJczJpj+1DbLEyZ2/h3aqYDI2?=
 =?us-ascii?Q?tzWMHmk2G8PWPh4mTo0Yr3FA+LHaQYveRbQIeB0BbltWVJRAnYyS7jjXUYYJ?=
 =?us-ascii?Q?AZP1fmjJ7RDaai4SnwR5vt7R0Ddr2QbXWBRTjtogQalL1Yp2XV3FwcqB5qBf?=
 =?us-ascii?Q?oywKvfbNvJ0oszyaWgwg99yl7GnIbaWgKrjBRzQmHBGYaxDaVZtc8lkVmEtF?=
 =?us-ascii?Q?Bz9UBO+PDgHmcaNbYGpk/gWIHIku+SCQ9YGWy/nx0QVdclPwZYvHIG/7JpUs?=
 =?us-ascii?Q?TgcP/W4Xv3t2djeySn+hB9UBpBC2Qrx1EqA8R1L+p0Ap5l/URjM/lgDZUJb6?=
 =?us-ascii?Q?mSKIDIJeIBYK7gew0sma2sJjG51I8tWeq97a+Ak1icthuC8yQH7bHd0lbU6T?=
 =?us-ascii?Q?y+cNmYrPR3HdVZgReD61VJ7N4vV0JarLJDzqAIAkKPuv+pdGnITy478vhmfD?=
 =?us-ascii?Q?SNcX1nRta6GcpdUlhh1YaaDw7eXvtv7Zxz2OhXOxwproBp6WRTQ3KAdKDe/3?=
 =?us-ascii?Q?XhI9lmWGmZvBhLdMvcmAQD+/gtv+UiVuUfMdVbfmiaFPFc/a5J7JdJIkyxJo?=
 =?us-ascii?Q?mmLZzlDrVJ6E43HggFLY7z38YTdLVsIhWtV/TkKvy5m/2oAqei4i+vSkI15m?=
 =?us-ascii?Q?O81v5fqgPS9YPIzHdo4CC05JO+ZBZ1NYpl4d0B2ojELranpH6hPzPpWM0BbU?=
 =?us-ascii?Q?l3wKm6j0b2BvJT+JC7OUvMGnMO/KF2hZuwYZIH/mv0/SVWDfkNiIA+HPBlku?=
 =?us-ascii?Q?amVOyKqd0xd0TwxEVXfSc0G++glYktNQvrw+2WcGdiMMX4qlPsnVNJM6Iipz?=
 =?us-ascii?Q?1pqyedMThKW/hN+G3/5BZuSH/UO3UHS2tTZ96yiYtEjEEKamhteQCnzoZ1hb?=
 =?us-ascii?Q?efreUSojkQPM+ImAKCWKbKmfvZSrqFW2RAY2Vdz2dPhX2ZleHOFkgsVi6OLH?=
 =?us-ascii?Q?kVt+Vb9q6J1eUxCLfyFcKLub7dFdNYr3WjbalmQyWBJw4WrTKcEUa7vGYK+m?=
 =?us-ascii?Q?W1+/FQBmDsTK/LFaFuMl9zBFGKRudrO4eDxG6QAWJGfvjQ2d19EZOsfX0K3v?=
 =?us-ascii?Q?7s5b5K6AOJeElMRDmWkdts/gAB95Aqw3OhbLC9CW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b187ce32-2dff-4ba3-532f-08dc86438c85
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:13:06.0098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9C9agxV9j8yNeaGLF8GKjSLtQqCB2H4T5Q3T+HfMLWm4JxhB9miKFJgV3BN2rGm+ZZ9K+XCapXYZ3noQJcKnmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:12PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_LINK_M1 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  drivers/gpu/drm/i915/gvt/display.c           | 4 ++--
>  drivers/gpu/drm/i915/gvt/handlers.c          | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  5 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7bf5b2559143..a3249d782a8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2643,7 +2643,8 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
>  		intel_set_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
>  			      PIPE_DATA_N1(dev_priv, transcoder),
> -			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
> +			      PIPE_LINK_M1(dev_priv, transcoder),
> +			      PIPE_LINK_N1(transcoder));
>  	else
>  		intel_set_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
> @@ -3341,7 +3342,8 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
>  		intel_get_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
>  			      PIPE_DATA_N1(dev_priv, transcoder),
> -			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
> +			      PIPE_LINK_M1(dev_priv, transcoder),
> +			      PIPE_LINK_N1(transcoder));
>  	else
>  		intel_get_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index 5f3ee57b5982..eea956603cc8 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -264,7 +264,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
>  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
> -		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
> +		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
>  
>  		/* Enable per-DDI/PORT vreg */
> @@ -398,7 +398,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
>  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
> -		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
> +		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 88ef8b7b9ab4..ae5a3e2a5c50 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -673,7 +673,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
>  		dp_br = skl_vgpu_get_dp_bitrate(vgpu, port);
>  
>  	/* Get DP link symbol clock M/N */
> -	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A));
> +	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A));
>  	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
>  
>  	/* Get H/V total from transcoder timing */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 465d73ef43e2..a9f3c4a85318 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2383,7 +2383,7 @@
>  #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
>  #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
>  #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
> -#define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
> +#define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
>  #define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>  #define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
>  #define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 829196c665c6..c08b8e755377 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -270,7 +270,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
> +	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
> @@ -278,7 +278,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
> +	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
> @@ -286,7 +286,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
> +	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
> @@ -294,7 +294,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
> +	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
