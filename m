Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C7E97A5DE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F47D10E336;
	Mon, 16 Sep 2024 16:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVjeNm+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE61610E336
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503772; x=1758039772;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E7Sq0i6dTRyH4O76kW99FiilKQYe6ws06I/GYF/J2Zk=;
 b=fVjeNm+8252+TW33gUxhBNJf0yautbHQjdjk65fpaVIMmRkrrW4HPrdn
 2jVAspFo+6fWkMBXdijVFVhCcXzJTaOgnM/b+Y8JbyXiLTx/JY+glXKBn
 SFB3wmfi9AYfLEoA/7Q+0t4gm26NrPFmF4VpjlzC3lHf2TTMFqfUQRcd/
 tEzq+bHLDGfz0ymFgEV0UJN7Vsw40zhFF78vl3O8XKiHfdxQ9GP4mNuWg
 XICxANcB4Y3/AmeohdmULyxmebzquyMnWi1AZen2eisvJaEJrUfGdB2qr
 db/iAQJ57XV1VnHg2Ak+mfh1m6VaIQ955i9t3H5mhIkpY2KW8YejO5hS6 A==;
X-CSE-ConnectionGUID: 5DG4QOmTRBq2OLzx/HoN8g==
X-CSE-MsgGUID: 2X7f6iisRLCWyoWjzt+0kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36477091"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="36477091"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:22:51 -0700
X-CSE-ConnectionGUID: 0UG/EU/AT/a1qvlwvz4PUQ==
X-CSE-MsgGUID: PLAPsSwiRVuf2d2+u7BQxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="92223132"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 09:22:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 09:22:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 09:22:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 09:22:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 09:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PZSjnn+QQhBxCfrEumRNQyzrA389bD0FKntDehBwx34e2/M4QxnAAP6xSJ1UjKI/MJSABQXeTQ1TLAqBMoJJANhOdCJ/J/H0fqaOB1Zmy1SMdkGzdGf2Y+xGDOcjAU9QM6YA3tUFJJ0bO6IwMF867IzhlLZRS2eXryJgy5iLDUisdCf2F9JMgF59Sp7GULlfgGLvBo+ulcE1QGH3lGUXGkJeluDRCqWrt8f05zeOJ2MX3TE7AuRlKh0jEwNcFRLhBuD317q3QipXS3kLJ4H39HVyGjIl1l5sMX+L2krB/hrLdg6lkECKzfMPpc2dCcUFcgQdCiByKumMlPXbAUvZ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQ2b61VlHmfVFbP28NObnaSvpBDoW1aHs/b67fbcJO0=;
 b=xJaBB7tO3YNiJED1YQYl09VwJ6p9D7jM094y+2gQI+FhyQO/iHmN1kE27VrVb5zqfSLfpV19ZKUruARTqKp1QbKbJ3UJBOBIF/HlCwdQjwCM9W6te5lvu7+NAlfQ7BbnEnyalmQqmYCOjKZchKyLWYrqlx6A8qYWIYs1lvUd6o7BSoqaxsYtYRt1AQhqz2QlSl70kX7eE+RXW1Eri/6iFHQzTCqtU6+7svvo3/voqQ6T8WFO6l3texqOSga1gDguMR2b6kjwHufIEpne2apihrTwvI37E1FfI0gqxrnI5EPS3AuziC9DCP2Hz8L3tEINhGqMrXE3916SXmv8PMgRXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA2PR11MB5196.namprd11.prod.outlook.com (2603:10b6:806:119::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.22; Mon, 16 Sep
 2024 16:22:40 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 16:22:40 +0000
Date: Mon, 16 Sep 2024 12:22:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/display: move enum i9xx_plane_id to
 intel_display_limits.h
Message-ID: <ZuhbTOTf2RL6RVdy@intel.com>
References: <cover.1726235647.git.jani.nikula@intel.com>
 <1e8f9768f2d638dfa1fc72f80f0d7391c4a48bbb.1726235647.git.jani.nikula@intel.com>
 <ZuSmylwGgvOPi1W7@intel.com> <8734m3dyua.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8734m3dyua.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:303:8f::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA2PR11MB5196:EE_
X-MS-Office365-Filtering-Correlation-Id: 68021642-30a0-46b8-7387-08dcd66bc8b8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T3TcxtIBBmaY98vL6P8uAhGczcSqOb67fFxL515oVrJPay9fmm9oRdjUEZwF?=
 =?us-ascii?Q?147hP5aNZad/7861lrJvAY5FRYshXJaQSAhZni46GxIEH/aSo12mmvKn+GBg?=
 =?us-ascii?Q?c0EN3b4sjjkkpjmU/1M4MWITQSxE/XQmBbEOn4BcJncMSTowDtAIoVMKkfPv?=
 =?us-ascii?Q?SNqlEGNhtELRssXTbi9VIBPjJpXawcS7rOijBcM/PNMDQDOT9j2q0Ol63jF1?=
 =?us-ascii?Q?PyOhY3P9+XaPzKpLAe++y2XypxgE5LloR61zZxmftyrq6neOiqVZhko2hPg+?=
 =?us-ascii?Q?sZcE5PoR2B1A/lx8hFVXhePO6Qcnat5gc/bYIhAVsMXP2jNTNL9GSLn8phF1?=
 =?us-ascii?Q?i9dfqX6DiHtseOtKt9dcw0aPZAN65Xhg3G4Y/L+Q8ZwXSHYCBP7x7/mtJjgV?=
 =?us-ascii?Q?ZekL7kOMWI1RELsjEXUrSKPsRGW3ixipOZfRzPchV8NYUPgkiowal0ugDi1I?=
 =?us-ascii?Q?mJ4wVUaG8i1YNoAZRoAjIj6n5GH3KTKVNxEpyrwXBZDUHu/HgF5xTkbqqdM3?=
 =?us-ascii?Q?SUXunO39MiCGbOuGGbdgdoneV/X18TlYZKiO0yVzuQd6fC90kDIYjkZRrbAd?=
 =?us-ascii?Q?y717X/xWfVbc0QV4ggbLVCwTExoqVGu5nLABLuV71Z6tdl0Rp+RcRFW+kvPv?=
 =?us-ascii?Q?x4uvjRuTd/r8Wn/Q5fj3V5FVbFLnQbFX/Er6UIo8eLArfP4M3aUPye70oVR6?=
 =?us-ascii?Q?B5PO+2Xhk1emOTFDuPuWQq6B+b/v28N0OQIJ80SEm0suZAb/eloG0D9oP6Pf?=
 =?us-ascii?Q?Kk49zcIcq+cfWMnDPjM6rbO3U8dDwRb4zo7TD/uw+EjBJ/nmvYQEvGXfn+MN?=
 =?us-ascii?Q?g2O+5unqigNmLRnDrFUXPshzhdXCs6lQqPNqPxDB0uSdIrCsEwVbA2iVIgxJ?=
 =?us-ascii?Q?TmcdrsvJvfuSogP/d+Oj1HeFB49cybD44oDrx8C5tIBtCH++PcKQSObkgqNy?=
 =?us-ascii?Q?XyrYZ8GsnKZJXCCyxC9qUzvp+ibvToBYIrJ2zXmshTT4h2jVb/gksg2roxKn?=
 =?us-ascii?Q?gJ8vsJ6Xet2RSERaElB0HW8IJAuPCr0kXECdFodjbxDwjKnl65tpC9Xf6cbP?=
 =?us-ascii?Q?OWPELaJ5y4NDAGJrIykuzVbKtKRKzFxqSr5trUD27htmPXxMQu/M2vCS2EhH?=
 =?us-ascii?Q?fHmnjkPiOILbd5mVaYZ6hL88C5c8ZlVYuLlmlJ5LBWRHOEm3XqHfHqXg0uEN?=
 =?us-ascii?Q?xmu8YH27cEkzX5Jf1CcyQA4wiMoZKtSHfGMhXM/F9AMEpOeWqdmqbnPHbsa+?=
 =?us-ascii?Q?J8vHbr9DZiCClaRMQNyKssZn2oOUyb6wGDTcCMBoFtKyYIxBKboy8MDxe6Jo?=
 =?us-ascii?Q?yd+U1/Vs7aGiBlELcG4Qs+liI6vQnuuJp54KFLhctPWR5Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kWhgpOdg6WmVj2W5BtbtOxj/2eqtuRhtUlRrgjtM2vyB4YOz8qwrlXCOLaS2?=
 =?us-ascii?Q?tzQKKF8nAOE/OUG93ivCoFi2Qq/3pPlfOBOpS4eQ/UQWSctofRpWGZMmMxmt?=
 =?us-ascii?Q?YDCGuzXxliGYTfmWfgwGoCDUfs4TLL5Ov7AtyG7jOPtCMVTigmhVovG0qEn+?=
 =?us-ascii?Q?bNXEnf3DgriPAEErGFAAlkh/V0QvlWClll41+zy/5rvTeGA/0hg3f8tzZo8z?=
 =?us-ascii?Q?8T53aXCQDDQJkOQi7g5gHj0sUDBO9PSKOGtrz6B67Zo2jPx3AiV6G0k9vSVj?=
 =?us-ascii?Q?zISLhKFRStvnzNYbrzKMkr63Rv4kqnnQuTFaFUVReiz0/l9AOsjCVcCWHvNw?=
 =?us-ascii?Q?L4/MVEM4o6RCdKfDi6AVfFnZSYoCstldbWkMc76Yqm5hjF9815urbebdXcOy?=
 =?us-ascii?Q?LZUA2dSh1sx4//ayI5uysbZ6wCsPpfZG2Uddd9CU+HuwckKvj9BvIociM9AH?=
 =?us-ascii?Q?htIqLIkvp5AiCleFIQWzGyCzePU3Dm9B9kj2ViDNsCzXd4gbyxEPxoTMlbIY?=
 =?us-ascii?Q?uXm7LWV1V59gt9lkGRI0R6MoXDP502IYf64JpsfV8PKbrrBV6erE94Wl+Ikc?=
 =?us-ascii?Q?DLWGxn+027OfH38JtdB5bKyTLaBoxjiLfRV9IA2/prg4cId3Q3dkwSMUQ5S9?=
 =?us-ascii?Q?1DEbi3deV0rAlBJIqwTmIhf90jHzFDRGHbK2Zg7Kb+1/uzYe72ddRrJeUjiq?=
 =?us-ascii?Q?HPiUaGXBRmoitadU0997vSGu+aZ1vitse5HpAFyqNurCl7PylxMwuLLJcOJG?=
 =?us-ascii?Q?oalMmZQCUbwsRFV6w1ZbEOrL3t5PCBiN1fYYFLOztmb4SFOi+9yBBHdnwDsg?=
 =?us-ascii?Q?+pqn1rDl76nhxpOVcF8V8knP/CHnpAIgx28GYEIyuNPvxMaNKpZeC8NVeKtK?=
 =?us-ascii?Q?G4Xzb9VXKNnHjwKvVzdMyen+dJy11Q4HW5Jl3WWNDrW5UbAdUAS9zInQl5Z1?=
 =?us-ascii?Q?qEGovQkCtV++l7AoSgOpxFMYt79FjIQzVcJuBU/5X6NiFgKbPFn4mSbrkO+V?=
 =?us-ascii?Q?212kpfEJtG/6UCmikctowT7TWHvNcdNVqJtq+wHtNq4MCj5seR6KXtGRii8I?=
 =?us-ascii?Q?JMdteF/u0jio8j/LP64gmWOrMYDRCbHX+lPRug748iT4DqiqPOsbf0xps35j?=
 =?us-ascii?Q?5EBb7TULdrY1znc9N/8AOPst/Mc4FXkMI6DhZbIEaBwVNog0gJDuWnkribzl?=
 =?us-ascii?Q?A/mfYIJ3ZE7MZ6CvsRCz4FMCGvvtkHm69/PtDOhhTPi4d81aq/pFhAzRxs7x?=
 =?us-ascii?Q?N6DUxOcMHVtiDhvFMUy6FEjb65PSofPfV5AhyuMfLucEeUbDqCoT67wIJkA9?=
 =?us-ascii?Q?UOGD53t58mk14zvkhI3HMwVhQ+vtp1824DEE7DN3NE4J845iBTvQTlZyfylP?=
 =?us-ascii?Q?O/OSSlaARdYm/lQXLkV+IgiMDI7FvWkfEGF7AJChR5NNCIpq4cuvRCgbYNzv?=
 =?us-ascii?Q?TYchkC13v3/ktn6qRvrowCbZxcRBQzJdpMN3K1d3DqYLfyCEAqAHwacAJeHO?=
 =?us-ascii?Q?A6VYzy2pnHos5k/sXfHn8umP1I8k6FBcg4QLq+p6ku9lb7ByWpmH1Ts7aAUD?=
 =?us-ascii?Q?iIklhuBjB+i5LxnMnvVzB2JtfSIcQeltFKRdJjTlturgD1QYTFwSjVyHhm40?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68021642-30a0-46b8-7387-08dcd66bc8b8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 16:22:40.3392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ufD1IQvHcczvvs7uo5f/L+XNee1ma0K/T9zS540DO/bUj/kLqM12t61LZl+UfEh7DRM932p4nq5SUfjHAfmqOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5196
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

On Sat, Sep 14, 2024 at 12:32:13AM +0300, Jani Nikula wrote:
> On Fri, 13 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Fri, Sep 13, 2024 at 04:54:39PM +0300, Jani Nikula wrote:
> >> Move enum i9xx_plane_id from intel_display.h to intel_display_limits.h
> >> to be able to reduce dependencies on intel_display.h.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.h        | 10 ----------
> >>  drivers/gpu/drm/i915/display/intel_display_limits.h | 10 ++++++++++
> >>  drivers/gpu/drm/i915/gvt/cmd_parser.c               |  1 -
> >>  3 files changed, 10 insertions(+), 11 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> >> index d10608526eee..4bdb48084cab 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> >> @@ -95,16 +95,6 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
> >>  	return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
> >>  }
> >>  
> >> -/*
> >> - * Global legacy plane identifier. Valid only for primary/sprite
> >> - * planes on pre-g4x, and only for primary planes on g4x-bdw.
> >> - */
> >> -enum i9xx_plane_id {
> >> -	PLANE_A,
> >> -	PLANE_B,
> >> -	PLANE_C,
> >> -};
> >> -
> >>  #define plane_name(p) ((p) + 'A')
> >>  
> >>  #define for_each_plane_id_on_crtc(__crtc, __p) \
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
> >> index c4775c99dc83..f0fa27e365ab 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> >
> > why here and not in somewhere like:
> > drivers/gpu/drm/i915/display/i9xx_plane.h
> > ?
> 
> Here it's next to enum plane_id. This entire file exists to provide a
> minimal header for the enums.
> 
> I'm not sure what the right thing is, but putting this to i9xx_plane.h
> means including that file in more places, just for this thing, while
> they have no use at all for the interfaces provided by i9xx_plane.h.

hmm perhaps we could create a small one for plane_types like Xe style?

But right, right now it looks like this place is better indeed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> 
> 
> >
> >> @@ -49,6 +49,16 @@ enum transcoder {
> >>  	I915_MAX_TRANSCODERS
> >>  };
> >>  
> >> +/*
> >> + * Global legacy plane identifier. Valid only for primary/sprite
> >> + * planes on pre-g4x, and only for primary planes on g4x-bdw.
> >> + */
> >> +enum i9xx_plane_id {
> >> +	PLANE_A,
> >> +	PLANE_B,
> >> +	PLANE_C,
> >> +};
> >> +
> >>  /*
> >>   * Per-pipe plane identifier.
> >>   * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
> >> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> >> index 2f4c9c66b40b..81d67a46cd9e 100644
> >> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> >> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> >> @@ -50,7 +50,6 @@
> >>  #include "trace.h"
> >>  
> >>  #include "display/i9xx_plane_regs.h"
> >> -#include "display/intel_display.h"
> >>  #include "display/intel_sprite_regs.h"
> >>  #include "gem/i915_gem_context.h"
> >>  #include "gem/i915_gem_pm.h"
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
