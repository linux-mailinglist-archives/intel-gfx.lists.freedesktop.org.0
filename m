Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7494DB01C73
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 14:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C1910EA45;
	Fri, 11 Jul 2025 12:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JmETZWHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C609710EA45;
 Fri, 11 Jul 2025 12:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752238636; x=1783774636;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=YGcM14QUrlMzhwpauC/hqoB/GCJ7m76ix5aW8heUDPM=;
 b=JmETZWHasigFQzoCCp92Fb8N4qlB4M6vY0bAJnxKWRq67pMgOclt7gMV
 /qUELxBzyYdBWsxXiRCde1xNnIVZIJnKXNNZuF3bmkFBI/vkHA7eTjCrQ
 My4Dpkra6IpFqxXhus1zAeXiIKWY1QmmU8hIjfcBYiUr+QoT47SXwc0Xg
 varlqMhx859YRwnPOME7Qgc/zygex1SrAd+27pE2pIqY6xtYDmFk3B505
 S6eJQPQavsqWyib9rfQ5JnFAFdXKHiDnrM8XbyAcwpJWG8IBZnMPdwka4
 dVFjAjQSpqO5gpJqU8RYbVoHE2yIWqlNH0pcNhhWBqbw8p6FdXbYnmdvg g==;
X-CSE-ConnectionGUID: eKOUC4A5Q7axq6xGfc6Xnw==
X-CSE-MsgGUID: nNmuQemKToyESyXcxBkDWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54621899"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="54621899"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 05:57:15 -0700
X-CSE-ConnectionGUID: FK1SUismT7GVWdXfa40SbQ==
X-CSE-MsgGUID: ZkJqJfP/Q62J5ID9wyMcPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="160914490"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 05:57:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 05:57:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 05:57:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.50)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 05:57:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XXM1tzus/BDdsyDwG9DZGvyuch8TIMDgLccg4V3plAJR3yGfMJEVYezXh67PoHsXTpLpkhq1VWT2RN6wwaGori0XjzpPxlVYCxOqOZWQHGz4hUOd2W6gna2OCg72cbjbL8ZXeJ4YrcvCadBS5/GiLlUfellBi3/NEjzY6DN6e54rcAcKVevJhc4rsr79a+sKj9PCp7OYe/ABGVYRe9g9XxKanVA3lNMT42qF2el0nk/6/BS8gES9mLkXNu9bzKV8Sq7+HmUBAarVw+eFy3XSIDGu6LXZit1zMb8XPsEUu1I5vufn1KSC4iJtpkkMUE6MTceipxLKr8p886ZJ6ZNx8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ckcHyjkQxX+FuAzWR3katKc3gid9NfvBX9oJgjGcrbg=;
 b=YBPOw/jtMnnAkeuy7tXa+In/1tdgCTukSxAN9cdI3wzK5pxkOMjcxFkjgpNQKNlz2KZyl4lMjZUcF3Fu2Hvcu2MMx5Eqiccjh+S0Tq1xU9JaYViHsdDXINbrED7TNTRkYJvJ6NDv7v9p31342HbW167W28yjKWJNmjLDtZIuUk+NbNZFJrybwwf91Os8D6b074+MGofCZ1Z+yE295gQab/CCkSIr1NwYyx2t3Rhvsugh22nGC+9m66WH5fn/uaUCSTeG1rzuIztx7/0N/fqMp4uum7YrBoMViQEziYxP2VaaKEthsxHz2/Wz21QOH4rByX59b3qF8JbQwZOqJ7IhDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7045.namprd11.prod.outlook.com (2603:10b6:510:217::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.34; Fri, 11 Jul
 2025 12:57:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.023; Fri, 11 Jul 2025
 12:57:11 +0000
Date: Fri, 11 Jul 2025 15:57:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
Message-ID: <aHEKIZC_KanqJTF5@ideak-desk>
References: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: DU2PR04CA0219.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7045:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ba3c5da-15c0-48d1-d9c3-08ddc07a7315
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Tv+pzoo8++LL/GqI1vdp1dhotDRmk1/JYIfopbUaiJyFH/Gd+Ya1y3bxexw3?=
 =?us-ascii?Q?IhV8PeaRshQnoc6yokcj7KlVU3LhZzWbdCpgazosec9Oi7NghEUzx2gzLuSY?=
 =?us-ascii?Q?lBi+bgISnVCybnbx5NKUWxoat3Dz03GPsGrEoAPbaaGkEjbb6jD1jIphWiNr?=
 =?us-ascii?Q?9P97XzVB0YmI1Hu30jl9ptaY0bUfSwwqAFi4ooldtW+FAHLIT3C5a7qe9R/h?=
 =?us-ascii?Q?WqzEBzETxaWeZ+C1scrV6cXSGK+VIn7P5Hn+Mbyju/W9HKMe17RB6kcZJHoC?=
 =?us-ascii?Q?9VU7b+L26av7ic5Q1MV5iXaAXh6NaiSycaoOeH8cTM6K09iOPR+l5ItGAVhE?=
 =?us-ascii?Q?8qAf57f3Ixn2Lh2w7FOzYmbCuPcGKFvKDNQwr+mROBzrMyJZANEYumazmpR2?=
 =?us-ascii?Q?kgFhYWP4EJruaQ5NP1dD+AdxS3zveM3uU7g2qyrB7MXsHFHZeUCBQ0CwV7ew?=
 =?us-ascii?Q?t08UoIU5bLmqrSGtxShG+hZPNXtXt4RPP1I7NhpnKxGHIwRNpvDhpPFD7DuG?=
 =?us-ascii?Q?yYA6ljaQ42rPbJq8cywQZAbPkQgh28kbVKx8JYzihDY+TyUcbOmeMpXrYAgu?=
 =?us-ascii?Q?rArjjI+KZhDCgcFdNy/u7CVQ31+tVduCTuyj149IU7JjvEIDbxYv62p5ipUg?=
 =?us-ascii?Q?Ywn6ZZnbc/DCymPA71IGaZt1CXICJM4WFWSXcxxLIV3bWNNyRp3qcgesFL7z?=
 =?us-ascii?Q?No5NcNVLYtwg+zdQxNzsUFS62GB3nATd6HS7q3NyphuXCDx8l529pt4keX0f?=
 =?us-ascii?Q?gMH30S+i9uOaohOfqTA0jmsuldkZituSq8jKcuiP3GAG7/9f++tqTyOVDOmo?=
 =?us-ascii?Q?EhB+9N5lW+T9DVN+IFtiZzOesaxXhY/QGoh9F+/DiKkCe6oJWEIa8ftCqg4h?=
 =?us-ascii?Q?upZGvTkRL3mxNpiM9+HnKFxEfTdd4po9Qpz2Uq6g3PEq9Pf34tD6exC6pSBl?=
 =?us-ascii?Q?rCaOKKVwoY4gWyjn8uXCNRSwS/dDz3QkfxRGlwc3smBOdBus6WfObi1RMHvX?=
 =?us-ascii?Q?sfDgXdtxG7XLBXd2ZmZ5UNHpq3ID+d44MyMfZY0UGl+IROEIp5WqDEm2k7N9?=
 =?us-ascii?Q?eu2/wcrytqWesIIjGwHJJyuY93uCxU5r27LuV5V5GDQl1lXuHTrXVmolkRi9?=
 =?us-ascii?Q?1e15hNylvb4kGWGGRMtMTpp1ZAgnC183MnvE5Pc7cFzRhdABtggJauu8knZB?=
 =?us-ascii?Q?1k+bFi4/yta/ELikcQM6WaZPlBsdMSVwR1Uyq3xEYmts/RcpkpH+YcB7563T?=
 =?us-ascii?Q?YaFjqNNnnv3wwhMYEgm8+yi6cgxj+6IoAa8f0Mm1YNrbSsQFZKBSqSGhgEHF?=
 =?us-ascii?Q?QvjIg8z/1d11OAQlpC7uZUHkuBkVbGaKgeeReOsV/r3vyLOnLERYGN+eVDFC?=
 =?us-ascii?Q?ttEznswpOQGlxJAjB9CPk0N9xS9ire+RfR9YjyCv6goYYyYQAw3nYNVBxDQp?=
 =?us-ascii?Q?8f3COIbu5Ss=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xLMkyZZM+JEPe3FQfqWNuCrv+qZfXlmEsi7WfUIQh2/FzXmnEbqe67PmIGOs?=
 =?us-ascii?Q?X26yemoO7fUfPDpnzeTjRCokgyLjUqO7DeQbPYYlaDT4dYI93z0J4NjBve46?=
 =?us-ascii?Q?Gn1e5Ka8nsHExFPx/B4oStJoFOPIRuIszjxJkYZw4jg+t8swWMBLSMNxhrps?=
 =?us-ascii?Q?du4Wiec1RRjLBW29pDJiUxZvGMQOgVBVabuA7+uynpQ0RGfF5Mmzgk0suv+F?=
 =?us-ascii?Q?9bSS1fn0tdk5ycpHDfOdRV1c2C1sqVoQ3vUnX/rewJrH/oFT45JynPnu0o+/?=
 =?us-ascii?Q?4wBNZnrCqFPFXOyN45SssJinvQLNe3yWfL3G2TKtm8Hkj0nOUIZSTWtFpsSl?=
 =?us-ascii?Q?Ifx56fEmZrJjzpExTotQoojfxIb06p1RJwWJei/gOupntktI2vnixzjNV4UG?=
 =?us-ascii?Q?qpK3D+CuzeSgMLSZ1j6Olv1kWprVTfYBnUDFUFZvW91nd5MryllOEONMUiiq?=
 =?us-ascii?Q?nkioCh10GRkMPNAyM4RGtNsh0sEmutK0Rfq8tZ+MbMGZjhsPXai4iOjgRRSZ?=
 =?us-ascii?Q?wYQkNk/3fcEakYB7jXjGSnOxa0mDOo0hmJiySveqK57uPfeSs2JP1gzkMXWG?=
 =?us-ascii?Q?jTZTQj/olMK5yGFczB98bxP4u2pED6BCuHMUY5rwYYMVUajUhoWAGJ0wHyBq?=
 =?us-ascii?Q?H6h95VjxKv2K1mro2v2HHNT5mm6/tr2afNhfFO7cqon4Km5zt3auWt1RKtEs?=
 =?us-ascii?Q?RP2L33SaGxDTFBclMHJFgExQXUwHUYUDNf7ntC3298+Bp0rqPtL41DDQcus/?=
 =?us-ascii?Q?Qq+zG1uCaQoonJU5Ukm7WvRkSCJCE5ru8o229AWx85Pi1KydU5FgtUcFX1Kw?=
 =?us-ascii?Q?sg9yMNm8eBCFzz6ZUkon9dbOM24P6tJstkFIW1jVhNaEtr9SjDnzK2uFBjLm?=
 =?us-ascii?Q?OgeP3vX+zq+4ZFPxzvPtbZqza9l9SNKftdU0Rytiw2AhR0g1tHIt7DekJc6G?=
 =?us-ascii?Q?VzMEXSRRxDuEmb4LbBnmOtmO9Lf92Y9/z/HZnTe7cx9Nzn1+f9dMjwYwAX18?=
 =?us-ascii?Q?gZ3ACzdlzJY9GzJdLPhmOxVOSozLR3kqHferFXO1w4N2DWfF3klCLUP3KXnn?=
 =?us-ascii?Q?x0bfKW0SiHymmm2B6Scu603F251POrqJI8Kl05fNO699EaSQ+bowGF7+QPK2?=
 =?us-ascii?Q?rKc02R2NdqgexO13s+5qEo4kDvMcgnUJoIa4nJ38BTv+z5rDtPCXSJwsR6ke?=
 =?us-ascii?Q?r2XTgQocZrry0W20NfV7gNliZ/QPed1LRVPorQilaqJGeUNexezG5nnByGi4?=
 =?us-ascii?Q?5hUZAozRh6cOCckwXj9Htbzl2sogDJPWCueX9bBAKEJbeZhiDIqO+3qWJsue?=
 =?us-ascii?Q?BFqbQP7js/3ppq/ZBKsm44sdqBRBWrk1DN8xpnxV/Q1OcprGkgHc37y0yRSe?=
 =?us-ascii?Q?zU5vc7O6aVy3J0+UZB459LFh96pQlo3tPDPhCC65f69q9zakJHnZijaIkKsm?=
 =?us-ascii?Q?bUTpKGJTPVCq5EpIRZZ2kgLooWXNLoLIQ270EsbKAABzTm/eI9RG0cS9+0fR?=
 =?us-ascii?Q?s+17WLI3Q5zPAI9XppdCGIqQsu3WweNOD5DAdASE5M7lCRA7ObFOzv3HtIM2?=
 =?us-ascii?Q?juoXGA/H4QwtuP7Q2RN0OiSnu8VRfdkleTOAoWYl4SuVBg7Azt59bLdQwYOm?=
 =?us-ascii?Q?pQj4/l5VKLhY8pQqUTvzOfEIy3if5TO446tp0xU/NmjI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba3c5da-15c0-48d1-d9c3-08ddc07a7315
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 12:57:11.2897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yLyI82Q5hZN6h8or3bqenTfMrF+kJL8PNYy7VIQcw/NCQ9YklNmin/Mb9pbUaRnALwPAN4RacppIKk6vGe01BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7045
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

On Thu, Jul 03, 2025 at 07:32:52PM +0530, Chaitanya Kumar Borah wrote:
> If user-space has enabled HDR by passing HDR metadata and we can't support
> 10bpc fallback to DSC.
> 
> Now that we need the helper to determine the presence of HDR metadata at
> multiple places make it non static.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h          |  1 +
>  .../drm/i915/display/intel_dp_aux_backlight.c    | 13 -------------
>  3 files changed, 17 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..abbba159e479 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1774,6 +1774,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  	     bpp -= 2 * 3) {
>  		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
>  
> +		if (intel_dp_in_hdr_mode(conn_state) && bpp < 30)
> +			return -EINVAL;

This limit should be set in limits->pipe.min_bpp, computed already by
this time in intel_dp_compute_config_limits(). Not sure though if it's
expected that the modeset fails if DSC is not available for instance.

> +
>  		mode_rate = intel_dp_link_required(clock, link_bpp);
>  
>  		for (i = 0; i < intel_dp->num_common_rates; i++) {
> @@ -2910,6 +2913,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>  	}
>  }
>  
> +bool
> +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
> +{
> +	struct hdr_output_metadata *hdr_metadata;
> +
> +	if (!conn_state->hdr_output_metadata)
> +		return false;
> +
> +	hdr_metadata = conn_state->hdr_output_metadata->data;
> +
> +	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
> +}
> +
>  static void
>  intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>  					    struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0657f5681196..5def589e3c0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  
>  int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
>  void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
> +bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 41228478b21c..12084a542fc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
>  			connector->base.base.id, connector->base.name);
>  }
>  
> -static bool
> -intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
> -{
> -	struct hdr_output_metadata *hdr_metadata;
> -
> -	if (!conn_state->hdr_output_metadata)
> -		return false;
> -
> -	hdr_metadata = conn_state->hdr_output_metadata->data;
> -
> -	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
> -}
> -
>  static void
>  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
>  {
> -- 
> 2.25.1
> 
