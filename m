Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792DCBFD8FD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 19:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DEE10E81B;
	Wed, 22 Oct 2025 17:25:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FIe9iYdg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7712610E16C;
 Wed, 22 Oct 2025 17:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761153946; x=1792689946;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=t0SEiUr1OdU6hw0/QQVkj50vBkIFiwiVgWNdaWFJE8c=;
 b=FIe9iYdgJToDirJ1cqlhupgAfOAY8gzjH3ESITPy3wHCW8A33lp9icL7
 L2YTzFOH2eVklckQObLVWDw2fo5DwBo++1ziAeYisFDsjV6nfLqrPHkS4
 NEJAXRyPcPNQiRMUe8pWoT+QoasNyLkWq+eBwtnvNltHIKlo+hT+mR5dM
 20tEdo6HZiGJQQkRQKb1Gf/Asd7KqgA60UcRCyOBHRyAFQgywxR6Jm5pY
 ekZbC3cSUlkjLE49Bs8qD0K7lii1XpkbClwE7nmR/6UaNaSrJl9RBVwqZ
 7ufK6vzilGmTXWXiEkEnyChNZMBzu5QkFbFZtBmDd89MspkL2gUQaJW7d w==;
X-CSE-ConnectionGUID: XL5QVkAETeyycEBBBfkjiA==
X-CSE-MsgGUID: 4W9WJ4ydQNCB7XPPnXK6DQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74429341"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="74429341"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 10:25:46 -0700
X-CSE-ConnectionGUID: UbqQ7CzPQKyh03A3nVe2gA==
X-CSE-MsgGUID: 0/FLuKE9SAe3y18cgTTLsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="214872260"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 10:25:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 10:25:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 10:25:44 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 10:25:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X6iy99cJtLIDk5adXKY50aAOOgnw4zCTI/jSt94fxDQ21YgJYjLpxNQIEEa+aAxDhuOq+aTdE0jack8DIOuxlxu50o6t7YZOn+qN2zGb0VHEjepb/xeoieWA/wx4SV70RKAR62fxA2RdTRv2aGatKykBi9RwHZ8tEzbd/+cpf6sX0fSNng5wHY06Rt3xKkBjWZi289MN4ulNqyGaL+h+egMNMJnj/4VsER9ddW7X6dnHoIjk8Nw7+yvuXZgWd0ZPiQQBJKRlHg+YIP4TdBVHecvQsL/zzT1OtGis9WANqElP9q4vBJgl/mxDYVBfL77VA/oss4uCazBT5mV/b6385A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1I/7tFCSKw1viQDEgMwGZAAa/oVOOL+5X4V21GgZrMg=;
 b=fZF9BoGkRK0DaG4YeKv9AwWTb7PdCwYmnhtFrzb1m5XxQu4gQlgvP6zohhuc2CixFfv9BKLduCuvKv/sG6AlMCFqyqXxxrHkcPNsNzD8ht+lhUHfANl0+WjU8OZ+tbtjKi2IRiRqVbqob0FpIjB3j/8m4DTNFGxg/NPozbk/8MY6rnT0GIJjXg/KKrCH/m4Lt2iFj1/vMSEnNeD1t1CxeM704saYUUZ2vkVWGoK2W96x7arKFdZuqvrzl5Qup3StaBOHNXow9Gjdr/Rj3cIeLwsxTDESEqLIiP1mPXrXbMXfIRs7phQ1z5sdz9NTjmcDLzX6+Plip4oT3SMt2IhQvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5884.namprd11.prod.outlook.com (2603:10b6:303:1a0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 17:25:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 17:25:32 +0000
Date: Wed, 22 Oct 2025 20:25:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/3] drm/i915/dmc: Event handler fixes
Message-ID: <aPkThpqPl34FgyYG@ideak-desk>
References: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: DU7P190CA0005.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:550::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5884:EE_
X-MS-Office365-Filtering-Correlation-Id: 56eebcd7-4a47-4049-53b7-08de119000c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?AZXVfMhFzK/IeTIn0xWz6nR72ZV8X977OKx4jP1vNEhXrNGW3FRfJiF0Qh?=
 =?iso-8859-1?Q?1EXJod6pCplwMod+6gb28zfiiAH5Mh6/0qhQaZb6Po8fHdUbx6mVwYYzIR?=
 =?iso-8859-1?Q?4vqE9JWkAqawtc0DTNUdB8qyLemrqhzmDdGBSamgTsRO2iQGr+RBHPFTPE?=
 =?iso-8859-1?Q?yhTIQexzI0lxAd4NshncuTiGjBEHypxVDP9xHRysT6TIDPTgrN/uh6JF5o?=
 =?iso-8859-1?Q?g4+k+5GEzy2Bk9RKjbv2PjztqCn5z4UFKbH/bWrbuKP1wufl1p/iXlKfM3?=
 =?iso-8859-1?Q?C5pkdDQPxzGHpIr1XWYVbkWSb650NJplRheEOnuPXmEhG2eAGqqpgAC+n7?=
 =?iso-8859-1?Q?34DAKK2xs7mesEbwNM5gLCOjujhBC8okJxlIU4ky4MIiUyOuw2ERvoVgfj?=
 =?iso-8859-1?Q?jGwmkzCK5FJlrrOOOLlTbCypNji/spQiVPpG6OrVZbFNANm2cW7+WlMeRd?=
 =?iso-8859-1?Q?l12XhdHdrnYhXhFGa3xNN9QRG7zh14bcrMvHqdZL/9fXr0gIzyLDJpfzni?=
 =?iso-8859-1?Q?NWAYIuYPV5DBqUNXmH55MSljwx7q0essiOkXCN0BgVleIj0jxjvfq95dXd?=
 =?iso-8859-1?Q?jZ6WXnFUwf//WQcmNHkFwpczTU2kErq7y8I4dwgQAxW/hlz1A6m2oHKbCK?=
 =?iso-8859-1?Q?ZXZYnxhi55BEiK4MF4IyuObSwQVMv7mFnFc69cTBBIfONwgZ5ZLqdf9FYV?=
 =?iso-8859-1?Q?EgjlLb9Q3PKqSG/TeN6aL1oStIad5IqVBsdusYeg15GTgQb9IFv6erzzFw?=
 =?iso-8859-1?Q?X05jM1JCRDhrXlM/HVesAdhy4NWMBlBdOOGOdT8qmrPnlcqla2Je1aOX/C?=
 =?iso-8859-1?Q?9SxwJILZSjMaE7P9At+OZhIHI47ijeU5/j7eLCiRiNoqIDFF7tD/oy5IRv?=
 =?iso-8859-1?Q?3vPdVRckWZvL8pJmWNAX2TddtQsjhkpaJftxYWgYXMpHqsGkG8SSOMvYZ3?=
 =?iso-8859-1?Q?Off/VRsZ0dUB0t8iLPx3NNFIQ0t9QYxqmAADCXLQU5VF66H/yhoc7CH0xI?=
 =?iso-8859-1?Q?CPLjlplv7fzGmSPrjFWw7+5PA45ySd/jlCVd4axkSuT9XTwlV0He5i0a0g?=
 =?iso-8859-1?Q?HTaYS3C8e/eVz1zgPo0mbg94oz4yl+fMdH/VgVy7OnA8Ict499RIA++0i7?=
 =?iso-8859-1?Q?vP1uVXMJ493pL5dB0UkopkB2fsWzZzDomcZr2OpuTXpUPJbFGvIrvyiQVA?=
 =?iso-8859-1?Q?XtgiibNbh2OYKD1OB0XObG5Wu0anmmlwSeclsi+EQjwbUzFVIHozqc0kYt?=
 =?iso-8859-1?Q?u95lPFee3XRfusVQP7zGQ+4RPuNvjdMBDs3AYQSu7O9MHYjqCJ33fNcnPF?=
 =?iso-8859-1?Q?l3q7ntJSWSdheOxf5QUOxXYwSgwec2JohVqmKJFVUDIOX4Vw6caLtobfwC?=
 =?iso-8859-1?Q?dTGp/7UJgxZQFJi9Kzgtp6vPR/ofmn8UsEWPSIrbKbmxK0o3cdxbHNwTCJ?=
 =?iso-8859-1?Q?jjNe32PkNgITQPJcF1TRaMTore8QjLXNIIPgnDa8exnlPZOTbOY14Y5oUG?=
 =?iso-8859-1?Q?tEd9n3IDrCi+0t95rJmeXV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?6LfQxFHjrci0WlVbf1JbYJRoYnnsHbQHm4cSEDiLnLrqHCRWVVRHxc8fry?=
 =?iso-8859-1?Q?+uvzLO4lgIeUpIXv6tR/Z7CX/4JzPFFnX7wgrWQcGdM2P+0ItbpF47GU2A?=
 =?iso-8859-1?Q?R+nyhygnDJRF09263+fCwjFusQVNdPmFkXOlU4QLbXlRpjDIksZp+NFCDQ?=
 =?iso-8859-1?Q?Cc+NMEMBHOrCvQgi0+sKO/gytWIME1/mkidZ1ZZR1XQ/Cb+gYO8E/T94TC?=
 =?iso-8859-1?Q?lHIIuT6EH0CiEnYgqrDNi/1OVMgm/5AEN/m6rilraq0j0bB8GQTWLQ+Xf6?=
 =?iso-8859-1?Q?T0n3sxhXzG+KPWeojwYXtQ6uAVIM+T7wR2Y8NR5LpEt9g2WXlaUl3i8Nxj?=
 =?iso-8859-1?Q?VZyQhR1hA2O1n3FaLb1AvSuRBHsBTX8tzGuneiYXcZDfEgJ7wb4v7Ps34n?=
 =?iso-8859-1?Q?D3IEYkgjGY7CQLzQrkBoWaWDW3kXtrgVq/F1mSZIGIq/7+ZTIzkLd4Q5Uo?=
 =?iso-8859-1?Q?ErykcGoCI9wWUtCtM6SuDWDJevbgyiEXSSripZV5uONns81hvw0WmkpsDg?=
 =?iso-8859-1?Q?6HJpuVQxEYdGegBMU+aKmYXfdhT0A2dnZOR6SzyV51hV3NRWqbnr0Vwp3P?=
 =?iso-8859-1?Q?cfAaIcY2Fl89sQbvmymWWwtV4uD0y4Z6BoG8FTgs3k7l3gBfQl4Oa7DkOP?=
 =?iso-8859-1?Q?/mj8v526oGZxDqi8FgjFwePNOkSPyOtS/mDgMBPI0fGUWL50i07hww+INc?=
 =?iso-8859-1?Q?YryrCkqUqRuFBwWk+XlaZVV+njpqhnVFLOiHcZG7AYkvBvsPBBGPW78aRx?=
 =?iso-8859-1?Q?4HtiQnKHDI/SLqecaV2WWBem4GIoogHSQa7kfjHYj1MzqRZ65NC77nQwbB?=
 =?iso-8859-1?Q?j7SoI7Ge4o5L6kRT1Hfo5K1iyX/2Ei0ooUormRSuv+r/35kz0yLBW2HULw?=
 =?iso-8859-1?Q?u/S/NNJvLZYaVuETv+K4dj1CO4JQPdJB/Z5XN/NO9zjFIL4vV9OwjOWG3H?=
 =?iso-8859-1?Q?WuxqA522A/bZItbZHZt70PgNvG0+nZMpFpuR/LVF3nf36trYgpkhKu6OLf?=
 =?iso-8859-1?Q?wpFLSGR4/yfObkOUcauGSJeIQMZdhRLQtHO5DWm/q+Q6A/zvju1ukumESE?=
 =?iso-8859-1?Q?6vx21UoZqNHVfrUAm7nm9i7EJ+LwpunNp36+ap2OYxbVfw+bB9lVHRlVa/?=
 =?iso-8859-1?Q?ppiTlojgL4xQpLH3FnZp8zXLobrKxW+hiRsGu2BKQCpv4nV3+oulOGwVBo?=
 =?iso-8859-1?Q?aolc4SsqTABVgPmECizJYt6q2XrMXiawCLawcR9v2gwGOYy17IF86OZMvx?=
 =?iso-8859-1?Q?yWYg7p1xvTbUmdeug95sjCc7c+QM9xzvZDYnduEcxTPMXvxdM0PUszsa9h?=
 =?iso-8859-1?Q?4+QvjFQ6PeEwJdmDDSl9wm+ITahQ8XIexIGXiV8SvL1Gyf+D+9T0V6Uw5c?=
 =?iso-8859-1?Q?h3/gZIc3j6zkR6K6Zyv+wCBheaReRWXPAkHI3jsLtrnaKvl8t6BsxzCXxF?=
 =?iso-8859-1?Q?JGTlrUIuyP9a06DaEIuKfk3/4NyXdW64Ae6itlvA/MRNDjDmXsEr4POwGx?=
 =?iso-8859-1?Q?c14ASoG3F6kWucduN4VLkEIsaP+/HK2aQ2rKESNvnA1bh8Q3lXHn9tKSiQ?=
 =?iso-8859-1?Q?6CjnOVlbtrT/G14+8vhZMR0Dx4YAQH8pXiELiYbKLuKoXf65gr8aoN1qMT?=
 =?iso-8859-1?Q?feBq32oYXP0qZr4XWYCgtnlFN1Su1naRcEfcXcvQcycJAUdNYiOqJ5fhXn?=
 =?iso-8859-1?Q?zl9hXwdBd3xtZC/TdVLApbMwyE8hwlJu51j7Im36?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56eebcd7-4a47-4049-53b7-08de119000c3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 17:25:32.0623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lel6DVAHHHWtLxwrR0pe5LzLcpZlPPHLbn5rrWOYrbqVtsP0Jvfzah9Z2HDP4sdVwhdMCwZm0YG9GXdw07eY/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5884
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 22, 2025 at 01:07:15PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Workaround some firmware issues related to DMC event handlers.

On the patchset:
Reviewed-by: Imre Deak <imre.deak@intel.com>
Tested-by: Imre Deak <imre.deak@intel.com>

> 
> Ville Syrjälä (3):
>   drm/i915/dmc: Clear HRR EVT_CTL/HTP to zero on ADL-S
>   drm/i915/dmc: Fixup TGL/ADL-S HRR event handler type
>   drm/i915/dmc: Set DMC_EVT_CTL_ENABLE for disabled event handlers as
>     well
> 
>  drivers/gpu/drm/i915/display/intel_dmc.c | 94 ++++++++++++++++++++----
>  1 file changed, 81 insertions(+), 13 deletions(-)
> 
> -- 
> 2.49.1
> 
