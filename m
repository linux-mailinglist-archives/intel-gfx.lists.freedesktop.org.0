Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF4AA04BF2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 22:55:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF9E10E324;
	Tue,  7 Jan 2025 21:54:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LsMygnQ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D1A10E324
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 21:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736286899; x=1767822899;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jcq7vTGs5Qvq92lUEm/NMe74RHZmii5dfO00o4GuEHM=;
 b=LsMygnQ7oI6nhjmcenaaX7X5M5USopMTA6Ve9VE5o6d14eGffyjzUmN8
 wcSnVYAWVfxqi0/fvHmXeBQuWGjdXMmKRqNl6+OtLm44jBSo4NlD00OAG
 iN6LqhQGGQT3Oz5J/KgPjLlEAYbgmlKVXaOvAr6FjEizWIl/yVq5qZdQP
 yB7CnmQmedtnNImNITzznb0QwWWBkebSAkr8rreR9fDMkS9uk1YbUEXR9
 qZn8XJ7JXwiB+guZIb1JO/qK2v92gV/8eCahEDYXKkvHEEISCuKwl3Iob
 CfNb9Y//9KsdBDSYcnyoTMnMnyOfGwIV9QtciO+lrTbKqA3cLJ7I9kCys g==;
X-CSE-ConnectionGUID: VO4WlGJhSWiOSlhSET4Dnw==
X-CSE-MsgGUID: Js1dzeGmRMmEos56pVU/Yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47909922"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="47909922"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 13:54:58 -0800
X-CSE-ConnectionGUID: gIXh+GTYRKmM0f0enuY2Ug==
X-CSE-MsgGUID: j+tRJpVMQni8K/kh7XkNGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="107944700"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 13:54:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 13:54:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 13:54:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 13:54:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NsbfAQf3xVvqoAzHMwHNcPyvlLE/Py59uKv+xKiAPanyYfLaOK4G84BKjfBs4F/jilMp2Nl/jQbNMrwIDfKd4cAtB1Nkv2NEYylxjtnQSB1dc3ivZB7YYuXXiWo4SBxeF2WI9I6G8hIslmPK1uJp+0rKg7gmERirsYc0r5AXRer9EB2UhEwAoCPxZixkuVOP+68njUoLQw02GkmgbeLjbUFYZFkQ4LYYjCln0DPJwa1dxoaZ0nDQJJuGcWas2wP21xaVcdtcrwOqjWOkr+8sP3/sO8WI5+lLXPjaef/t3dtc+aw6Yozimo/ImcvGiUMUdvdlruba4SXyuUd9Kwvi4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gesas938Gw18KRi4yHwc/cSCVEKpchhRx7siRCP0GmY=;
 b=b1KiGUoeff+Xj2qhc72hUvRttgHaGnS6mQ0hobVc4F2Vkzi8/zyP604dR3yJiu5KrhdCOmLbm+w2Z7R6uRi9i21NKle6yEcwQaARJqUV3AcaHl7y/LZJHXrWHEbg64JRavdfa8gl1Roju3MpevAa4VYHud5u5x1gnHQPiXwPyMidF1f0JGWgd9qlAGBpWcWuXLzu7J1mbv/E7KLlkiTzlrVEtirUo9IhGD5UMl0Bz/Z303UyVCr7kmw8p7gPsEOwzA4w73bWnpxIGRUEaMxBTMuqwpCa9Sh94GF2CjZvqcWmycLc07esMGA0mYa80Y4gokjuw7R6twxPFglPxM1qWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7201.namprd11.prod.outlook.com (2603:10b6:610:143::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 21:53:53 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 21:53:53 +0000
Date: Tue, 7 Jan 2025 13:53:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <balasubramani.vivekanandan@intel.com>, 
 <lucas.demarchi@intel.com>, <gustavo.sousa@intel.com>,
 <clinton.a.taylor@intel.com>, <matthew.s.atwood@intel.com>,
 <dnyaneshwar.bhadane@intel.com>, <haridhar.kalvala@intel.com>,
 <shekhar.chauhan@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Don't update
 DBUF_TRACKER_STATE_SERVICE
Message-ID: <20250107215350.GY3224633@mdroper-desk1.amr.corp.intel.com>
References: <20250107175703.1667934-1-ravi.kumar.vodapalli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250107175703.1667934-1-ravi.kumar.vodapalli@intel.com>
X-ClientProxiedBy: SJ0PR03CA0040.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7201:EE_
X-MS-Office365-Filtering-Correlation-Id: 86cca025-fe8b-4c3d-ee02-08dd2f65c6f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8leiW/ohyl2gFNMka81T6tUBTLxYb2tg17YcqzfFmo9eFcKDzj7Kysou4xKM?=
 =?us-ascii?Q?5UJyRlGtYnlwp5wDrU6yZ1QND+n4dae18EgEI4KNtUfdpim2YbsILt+eH/+6?=
 =?us-ascii?Q?tv/cMZOhhO4V/9PyWpO4AfCksg00ajSd6yMkrUoUr1avmUm4xY5kj0xbaFZH?=
 =?us-ascii?Q?su9yvUfgPLDE/evfD3zQ+6jsz6BVAmITxodNYAnRqXIn4MPYul75EIEJt1uY?=
 =?us-ascii?Q?s0ZYUNAVIK+dPV+yi4W1QxIwM0c79Wcs8y/AKMgoMpz325KqBBHGNQcpwq4J?=
 =?us-ascii?Q?WYd9ODn/D9Z8Nb8zscOkcJFLToAGvfHtoKLB/on3n3b8dQtHovftT02NhqKz?=
 =?us-ascii?Q?/m1O1ZjkVF1bMkEy/ic49b0lUelo71tCwptuKC5bVqUEdoAzqznwhwODxkUX?=
 =?us-ascii?Q?Z6pBitfyrUeJsXGCFEvY5xksFnbXbJoNrwfu9cZAvA2jVCVxeSXgj0eTu7Jt?=
 =?us-ascii?Q?F5NSywAa2yCdnyNEytlUI7LFMvaCq8QfTTpvnyuUbmhrOIros6wVFvhMHfPH?=
 =?us-ascii?Q?N9JP4ju7IwHRtkZNGy0O0dfap6v2PH+BbnDw3XPbPgTFckjGoNn5xgljkvn6?=
 =?us-ascii?Q?3ur5wPEaZ7S7dZo1Nvr8lnVWXHdpECKAbNG2cjQxnFPQ6SnjvCE/dv5WSkgJ?=
 =?us-ascii?Q?A6d/HOZDcZHG6MYsEIxLdoVaYlGbxWa7B9t7RNXHBEKpbeCrbpwf1deNMnXJ?=
 =?us-ascii?Q?XYgcGB1NZi0b1R514+o9J4zULv2OE096nyI/AvoDSbYWo1BHhBwQdadhduuI?=
 =?us-ascii?Q?FIVQ+dIAcjpsuskJE37t4Si6RXOBuNxxnoeKh+J0mwcqB5vShuUXTX9LwdmI?=
 =?us-ascii?Q?ebjGofp3wZobmKcoj9gXy6VJdyVlUSdrTT1lU7RZ6r7qqS6bFQzw6jDDC81T?=
 =?us-ascii?Q?Joi3kqyWUYU1Ehiu86PADwpxLHABf+YU6PQvG4g1LFfcnQyFzu1qzdbrcYm+?=
 =?us-ascii?Q?78OsDsiETwl88LTHlBN5TuC7PBB1rFA0emdK/qqudPRgZ3Dxs+gHbKAL1q/Z?=
 =?us-ascii?Q?w0lgusE0K5O7XxsWp2iqRFawflcyadx01z5UOHwBqi9aXamh6gIcA1MO1elH?=
 =?us-ascii?Q?zUuMiDSZt1g3YLAuuXgExWUSmO+OelNzP14Jm6b0MvkedRnMi/n/JwRM9ve6?=
 =?us-ascii?Q?iGBtuGCahW4qBN8iEeZXC6XKLR105BNtRsSnO5iFWOtFRl62tW9zlaqDtPFt?=
 =?us-ascii?Q?RyxFybynD/GMsOKPpDOyk3nbYlBeOJjjADh3FqmWPfpAWpHlGg/I+yMXMyoE?=
 =?us-ascii?Q?bXST+sjnraZ4+M+UkrpFor+R3HPTWMAJN4SyYinMnmPhhlg70hDwENgOL9OC?=
 =?us-ascii?Q?/4C3w1oWV6q386lNerz8Hs3wQQV9jOspaMpcv5dZhHOzhp0NOc9YobyblyJ3?=
 =?us-ascii?Q?tFjuHKvqe0rTXqFel+vs2aROB8fy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5yqqn+Ob4LJ9h3rj1tU8TqSbq6fsbS2BYpXH754edCyVGMHVrBRWLRiinBDc?=
 =?us-ascii?Q?Y1z12WIi5m7I9UbvaTX8p6ggVKwoYdFfQzP9ERBweNdV7GvKZI4EORUj6YjA?=
 =?us-ascii?Q?obz2lKrwhpI/nRbQbH8KYpRxB2E0lPlPY5QsExTbTxF8AzXQGxUy/8aKbjx4?=
 =?us-ascii?Q?kNhCbwmNBk4PlpolBDIXFvBqsxH7bv01XCL8DWsAHF1MNuJSt9nJv5qfjLGr?=
 =?us-ascii?Q?PNy+grRMl0YsTimRoXgF44viFci3J/QhRF+xYmLoTmlASNXlXW+1fqKFMQRM?=
 =?us-ascii?Q?dsicRmPXCyz8Y2OQzQxFbOueaYlb/DXc0qEXGxU4tijzZq1BgqKJTlNPUuhG?=
 =?us-ascii?Q?FK0LAsENeJ083yoRUm+ZWVWVgMU8saI1LQ3o7vCF5CWTXVM4BCrw0/sXlgTi?=
 =?us-ascii?Q?EYsAfLtrj8HDW9fDrkqvSOICvibO93w3O0vd2FK/jUdT8DprC/fZK1VNsFq6?=
 =?us-ascii?Q?slxX8684VrbRkttsN9yXa5vsb/WwAC9inId21XcZTZGtC+khJ1xv3W+kcCKN?=
 =?us-ascii?Q?S40cm9aQilmpqKUABWajzLee3pkDiNAkufigfbdKnETS5QRQBEn8wBVNxd+T?=
 =?us-ascii?Q?KKJtVT5ogIoRawnST0PQJgCmO+KiLKOVHUCNLPYVd8kTFtk4LFGrhLbWanyF?=
 =?us-ascii?Q?av1Gd06hy91Ch6Juyy1Zpac8Ms+VMYTAewNQUOdNtlPoPzLGniWO/N3QMRXP?=
 =?us-ascii?Q?e5oWOIzYN/Rc8AOLSAL0xKz03Crl03YBAUvq/b2G2pexluBgV2BxsliM9Zps?=
 =?us-ascii?Q?PYmyxddNmUz1hfeomuVNNj+sd9LcA+nvWRjyC4Ipit83qOfp3Z1H3LtRjcMf?=
 =?us-ascii?Q?XIxAiH5zehLEVzMtAhuHaWzslPWl4puf4bHKowxLEMiB7J0FKM8f+yRVvaOa?=
 =?us-ascii?Q?yGKnPqSW9Zh16Bp318qx2d1MEA/HPiFo7Rbq3LnJ3VQjuLaiYJ+F4xHrTCXn?=
 =?us-ascii?Q?s32KBcnhXPZiMuXuR/6Kwfy5YoboeDZc8zpu6j03ODVgtyOkPDzM4VvVSZCo?=
 =?us-ascii?Q?aTLV10Z4lJ2zMwx+AyxPo1APZHbs1Dwi+JgA5N93pmKv+Y3+owq0VMXCk7Hn?=
 =?us-ascii?Q?k9h1wBhc4Uk1L6J1KfoL0DyvEIhWuKXBvmznOJvi8Lr2J4fGQqGdQL/f5UD0?=
 =?us-ascii?Q?/ydZNHWSqZRxZVAy86/y1kKawPRAqty0HLTIsDO7QR7oUjpjGDqmYjD8Q8Kz?=
 =?us-ascii?Q?wB64WQw3s7jY3NEANeGF94mslHw/oLlFi7S3R6uiytv2ZrN3bX01ozKgq3jA?=
 =?us-ascii?Q?sDf9Xa2gym0TG/43BzO34SteDndV48ZoRoNAaB/n5AmYSYzWAC6vDDBxSAsz?=
 =?us-ascii?Q?5MclCpmU7pStuAlScxnvU3XO2emSdIXAd8ZIOBSPf6ZZEfTXYP6TZSDsKx9s?=
 =?us-ascii?Q?2g5iCOiOapLWUiM1Qqc5INfzpNeZfQh3RGP6yPFOh2LYoExOMEq2Nb5NQCEd?=
 =?us-ascii?Q?1AQeS8ReJNL3pZXxLZUoZ0njMkNvySO0no4dURTxNwV/35DzhH56Y4Q4TA/m?=
 =?us-ascii?Q?ybAZebygGAc6zdBtoTNASCoZcyItLW0/JClnuSdGtXQKOh05H/o7XjWQ8gHD?=
 =?us-ascii?Q?h0SZAWNp14/2bczbycC7VoVlOln7M+pIfqEDq/EyX/KI/xOyO3lfXl+7/Y2X?=
 =?us-ascii?Q?sQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86cca025-fe8b-4c3d-ee02-08dd2f65c6f8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 21:53:53.4109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h9SWYHJuLBNrRsq4vAjleQ9rjfHPKjmODnOdkjj2/DcRpprGmHgyMRHBkWdwNmKbsvn07hz3UvcP/s8gK+D/kYtLllL7fvRFC61EM8M5XAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7201
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

On Tue, Jan 07, 2025 at 11:27:03PM +0530, Ravi Kumar Vodapalli wrote:
> DBUF_TRACKER_STATE_SERVICE is set only during initialization.
> We see that it was done for TGL (display version 12) and DG2,
> because the field didn't actually have 0x8 as default value,
> so the driver had to take care of it.
> 
> According to the BSpec.
> The most compeling reason why we should not program
> that field for other display versions that is not part of the
> official programming sequence in BSpec, and doing so could affect
> future platforms if the default is changed for some reason.
> 
> So we need to check for
> 1. display version 12
> 2. DG2.
> Other platforms unless stated should use their default value

At least to me, this commit message still sounds confusing.  I think
this could be written much more clearly as something along the lines of:

   The bspec only asks the driver to reprogram the DBUF_CTL's "tracker
   state service" field on DG2 and platforms with display version 12;
   All other platforms should avoid reprogramming this register at
   driver init.  Update and consolidate the code conditions so that
   these platforms are properly matched.

   Although we've been accidentally reprogramming DBUF_CTL on platforms
   where the spec does not ask us to, that mistake has been harmless so
   far because the value being programmed by the driver happened to
   match the hardware's default settings.


Matt

> 
> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..9c20459053fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
>  {
>  	enum dbuf_slice slice;
>  
> -	if (display->platform.alderlake_p)
> -		return;
> -
>  	for_each_dbuf_slice(display, slice)
>  		intel_de_rmw(display, DBUF_CTL_S(slice),
>  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(display);
>  
> -	if (DISPLAY_VER(display) >= 12)
> +	if (DISPLAY_VER(display) == 12 || display->platform.dg2)
>  		gen12_dbuf_slices_config(display);
>  
>  	/* 5. Enable DBUF. */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
