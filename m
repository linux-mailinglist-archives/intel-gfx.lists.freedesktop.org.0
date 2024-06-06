Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE28B8FF0F9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA2A10E9C3;
	Thu,  6 Jun 2024 15:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bRrBE90j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7238E10E9C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688626; x=1749224626;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dVgsbOuv0TK6ksfoFOz7ctwSxKUeLU/CVRXgZoSu0TY=;
 b=bRrBE90jH6oQ9vRZZNufIAPRal036k8TUtCWrtqMmfaIQWwnCsnAP15w
 ni1DAxzWiqaM55BrVAuKxus1drEp7EaKlLFRh/S53m/kXTxdQCxssscHc
 0l6cJbGwWctrjF1b05aRWBjH37NbTR5gzmbAO1AeA4aYnjtzvmUZyjy/q
 Q9D8RFzOzA6LnzD3ehNo+Iyn8YPyW7fR5/r/zO6dyI/mqYsxp9wUIMx4i
 3uMX6lsRN57QkTRI0g3oKFFgpNNlZGCWXzm5w5HrMc1NhljOQe7vsCPJ3
 OUL19G9AeNQj0IBYw4NLbZuK+bbXpLsOBkDX1rDu4DP0KEXfPmhkLTN+L A==;
X-CSE-ConnectionGUID: V/GS+5eFQm2dcTUFTEQeVQ==
X-CSE-MsgGUID: aojuuAmTTwueMGNtSD9j4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18194842"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18194842"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:43:46 -0700
X-CSE-ConnectionGUID: +7iiyahhSdePB7P3rwnQow==
X-CSE-MsgGUID: qzZo5SuiSbWI2aLZ/s7Hqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37869042"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:43:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:43:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVqtv/AJCPow3xjiCJVmgOHoS1KCrYF+P1DuLTls6Z+oWHmtWB9u32QMYQsVwXWGM8dOTbSTIteZxZQR0Uo0C656+vx2jSiqh35PsZ0k/cjjDV7afbJlji11Jyhs3D0XwmNcp+olUrncYJjyY4Xqq7EzrkPx9UBqd8PnTXSrijadMlngn/jl4TrEn16szuGyFO95EDJmC3DjFRId3zICwTaOU8go8yT7iZREGdM8r1KEkpiWhaWlFWKA9VyC1QVQgeEihhN8sP00vaA6CPzMIfgEK7PRx95M23LF1vnl43HEHvW4F0dnF8qP78KEejGEor1A6Y/pYMljLYWz3Jb3vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nyNsEDTmZyzSbo4UyPeYk9Wn9Wk5tkXhcMQOObKefXE=;
 b=ik/kQyq0Izzn/iOI7b1cmcEMylqXxwhfYq1yIn+ardh7gAqsckgZvRLEh2j+lNh9XWSrSi7LKLS0BnHGcbCcGdxwqwD/kK46s0J+rQemFoZWpv7hIMFNlw6WO0u4Fn1GecW6tnoNULhhMfP4H9PMLQDDK0NQPgzphmLNyUs9YBHShbMmoyiQ0kYlPuLglssBQjxm1DqWqNWUbMacLa/TnJxhBf1sBDYisR+NXJKwfVzR9Xb6WiU770anr2RxXeh025ZbbyEcywQg89uXK9+CKdpVrdImv4v8fNnuJ5zduxrl+4gMxgxGBoBV+L0GxpqauqWS5z2aP2xo3ZfIYgIqhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:43:41 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:43:41 +0000
Date: Thu, 6 Jun 2024 11:43:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 21/65] drm/i915: pass dev_priv explicitly to PIPEFRAMEPIXEL
Message-ID: <ZmHZKyRSlEPEqNQ8@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <464d4536f90e9d463458cdd315b3ba650e12ada5.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <464d4536f90e9d463458cdd315b3ba650e12ada5.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0126.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 206862cd-15b0-41fb-bdf3-08dc863f7102
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bm/raJ6orb6NOMz8oJpqK9V64xYPpivnrrLg/kuEo0Xehic/kSbzNca1rnLY?=
 =?us-ascii?Q?rWdPRSa1EqJOLa8WmUyNpXPGT/WUjhz/Z//5ZY3nayjboKKIYVVHyVL6R7JI?=
 =?us-ascii?Q?0Y4YXahd/uIzhDcSqbuxBfXvYCaB1exyidNcKBom1dXVnaP+0SeM+4ONb9IL?=
 =?us-ascii?Q?/QW3Hw/cjsU8EGs4ZrHkEjyrZHJq6OjLzyBWhP+yqWCjrRDHWiay98oUwnuA?=
 =?us-ascii?Q?CRARLMtfCKZ/Zrs2yuAWvSlGm/nXQ4d5bv8pXXO9MoseMNtjliuNIjdx3OY9?=
 =?us-ascii?Q?/ZZb2dUcpotjQ6QUF5lnLE2ZbrIdrMLQkqIL1Nmz94bp47LvVz8lqsj9o8Q5?=
 =?us-ascii?Q?8zEWPD1LM/0nv3XgcBVC4Z7omE5Or0MsmkvjO0dRfrO9M1ypb4oFOA6zK/OE?=
 =?us-ascii?Q?NnS6X0WN7HI7GD+ulFQO8L3hLj9Ud+xcxKbMcL2PQfA2wn+tDVg5oKr2Xx1D?=
 =?us-ascii?Q?959rGkWSB3mkrSQSUALAHHvHyPI/pZZhlPiONWcJxRiDdzXMLxMLpWXpn5rV?=
 =?us-ascii?Q?psdWpacculbCnfZjNYKHL2g81QIwLo9G4sITjWBMM+9t4J7+ENMTlQQ5DqZQ?=
 =?us-ascii?Q?rcVvZLH7ebGhCnDAPg4lga7zxGQr2216fZKY+ZB70+jZ4rN9mCyQbgqNuaCV?=
 =?us-ascii?Q?NXp7g/HZag+7U6aeDr9I8gXjWr004gGZ3UyGsfVHdhtigt0v3MtsyXkHSIXs?=
 =?us-ascii?Q?TJGg66lm60gdMJ9HZ5ZTdYzyJh2jXnvQJi4BJFQwexgyVb7oDAPASufeXlUF?=
 =?us-ascii?Q?IyOECE9Tk/scgkKW/GpR3lJYQXpW2c8BZoh+lRHWn0rdkyOBQVDeONe1A/l4?=
 =?us-ascii?Q?wRCRc/PE/3BEsQtbQ2Qjrtdl8N5TCGgYI9SWVNNM71sPvD7JCRUm92WJTcKX?=
 =?us-ascii?Q?QPy0m9Qx/EADLb/sZthxZdK0pKJ9qjoR44TNlE069QGLFPWNRMhISzhtKA33?=
 =?us-ascii?Q?NkEApR+fRiBzqsLvBeySAADiB6oY0RHxYRAXatUQqw5xqaZlTmFhvc1z3+ul?=
 =?us-ascii?Q?26TdyStC1bsd7aPShoQwoiNhhNzHIGA0M/T9wQ1u8df7aPJ70al+uW1yMHgS?=
 =?us-ascii?Q?fEqVNFAJNmG7el07qRBKBgqHU1NWvXF9TyVyB+IG8/R0mg/KyI8FyZu4PAn+?=
 =?us-ascii?Q?Pvas9aU4rfKqOnjUYtL89DKRJJG4aGtgrnbaYOGQ3tZTY45u+Gvcaf+p2M+O?=
 =?us-ascii?Q?xCYNLs3YrLjpazcY2MhP4lhLsUO/SrSOaTSuqkGT3KBkiED+zF9o9Y5snFZW?=
 =?us-ascii?Q?H2L9l7h13I7dA2V+rbemClquZ2xka7OXOR7cxV2CNwjdSSCncO/qqWNOyyhZ?=
 =?us-ascii?Q?CAvdrvgz548x7iFAblDpIOBf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pt9IusWIvHHs/OROmzRqcAUM7+6zBuj9wiPWwReCeNTFkRYy5QpBC/1pOwuV?=
 =?us-ascii?Q?WABW2IXKB8awBaDmJDQp4j0Ae5fkMzSt0clyQkhy8qpnNgkwmFyPwUFk7bDm?=
 =?us-ascii?Q?mNRwQOj0CXKeAV1SpZosjcWUiPMfR1Kjj7TWh17TdMyesxvpx6S12lK/SVY8?=
 =?us-ascii?Q?zOvT4bb/Qntt6ArrySoS6fd6hLIK6hFV9J3UKA5CcSM75Xc+G32cHX2Hc7xn?=
 =?us-ascii?Q?Pmq67ccFjNb4LSqyatOFWv8gS5sl+ZD+AruhwkDmNPFPAbYyVQAztu7tBPoj?=
 =?us-ascii?Q?JOng/Pjem9NT+DsSkgjg9VC5cTgfuYR2eA74y8sb6aT1e6Hn/o1PPBjkwwJg?=
 =?us-ascii?Q?rkX7RX5dbP1JTthwXXojtoiJ1fVp7uC16NPBJftptA+YYOKUM5PGB7IedPAV?=
 =?us-ascii?Q?vf95lpnDyYYPn6Nzmqf+VrF2buA7R1ajJ81ZHZ7c7rScCzJS1RroLl6mKUgo?=
 =?us-ascii?Q?eNQMfb1uAwcpQXTnViGkZSuuCE/XG+skxI/odj//dBMmnfk9QEZjil7UINMq?=
 =?us-ascii?Q?w9fkjCHt2cUZPcUqmmWxKIuR2zKx2ZwU5qrVjBXyo5L/JcLoqf9Hn6488PaX?=
 =?us-ascii?Q?KATDOKJExj12iYyNrUDCa3W3iEO9nnjhRjN7aDTvF4rnoGII/Jxd8Wa4+ti0?=
 =?us-ascii?Q?Cc16qhZZ2BbyS7K071gztyY9A56+nWdO6mdioWrleqU2DLxa4qtgVzIijSsu?=
 =?us-ascii?Q?bz8NStPwe8RSbyRp4fR6c0DaFMdyI6GVZb1y+wULr8PvSgIa98R+be8oaxKw?=
 =?us-ascii?Q?ixs1PrRnOsq3GTCjQzhoArpmwguxfNZNT5cPG7uwqUpsP38fbMTM2ekgvh8r?=
 =?us-ascii?Q?yNBqlWpdincKZNz2Dpg/94raq2RfHfA3tToyqv4H9jZVlFTV8fMlp4ypR/cw?=
 =?us-ascii?Q?a/uTtcyLnobw0C7/4Iam9/L4EaCxjmLc8CpRMtDrawS1UBgvZAXqjE71ugRz?=
 =?us-ascii?Q?FLzfJceM9/1EWRHNPCqj5HYl1/bPuDUbzByQ4juCOPlhk48CWhSXKwCgUd1i?=
 =?us-ascii?Q?sdCsc5iYccidY9iMKfP905vrqXhwVRPmy0dxRFMUf9CC5i35SVASZUa/wW1f?=
 =?us-ascii?Q?qn2a08ALriMRJoSZCp0im0z1E9Qz8Z93yTSsVuFy5ogZ0AgBwc3uV0vQesfW?=
 =?us-ascii?Q?TmOPVzqalNPOTUgUOg/6MPYnId3LxjH49oYlwaKlwgiRTZ0JqDByxywCeH7f?=
 =?us-ascii?Q?evwfCQdgDfH/4FMET2f4AZTg7fhyAD/p3zJjz2O4Us/dgWbA6mfBiBjyBQ56?=
 =?us-ascii?Q?nO38wjFaI9IdzNfFFDTc+YQKXeBoRLlKGSiio2WjqnP6LXWRJ9sylDzGywjU?=
 =?us-ascii?Q?wYdP0g9YVNNdigBkoooH4bMGIg8Ld3BmQVw7Gy2Q+NJrVYQS8wXrUdjY4ppX?=
 =?us-ascii?Q?IcOl4o018poK7hR8GQX0+q/m2qQijrC2bvz1VKk6g6jfKH3QWCZiXx5SX5+t?=
 =?us-ascii?Q?VhKiOJWiKY67NI8QifO5kPGjSImvcmrDvzKISsG/Uf7rImW3S2GfyxQUK4b2?=
 =?us-ascii?Q?4t7PFgg978UYMO9132qJhlPSyV0ZVn8Wxo+exaeqDe7IMZ4OZRVeZHojkx+8?=
 =?us-ascii?Q?zNrr2IeGc0YJwVTt0MiZLvsYKlA9cmP9kG2XruHz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 206862cd-15b0-41fb-bdf3-08dc863f7102
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:43:41.8780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MTogkIMi9MhDfdEAE7Eq9eN9s/tsxXAz/mM65fYEc+gcm8EVlU1slDnsbXh6r6SULI/08VL2FOzgoboBPLGDbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:39PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPEFRAMEPIXEL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h             | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index ac8ad3ebf4a4..c6e68c0604b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -102,7 +102,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  	 * we get a low value that's stable across two reads of the high
>  	 * register.
>  	 */
> -	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe),
> +	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe),
>  				     PIPEFRAME(dev_priv, pipe));
>  
>  	pixel = frame & PIPE_PIXEL_MASK;
> @@ -386,7 +386,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  		 * We can split this into vertical and horizontal
>  		 * scanout position.
>  		 */
> -		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
> +		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>  
>  		/* convert to pixel counts */
>  		vbl_start *= htotal;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c4f8c50f61d4..a6dff480bd0b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1879,7 +1879,7 @@
>  #define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
>  #define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
>  #define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
> -#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
> +#define PIPEFRAMEPIXEL(dev_priv, pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
>  #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
>  
>  #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
> -- 
> 2.39.2
> 
