Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E549632CE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8EF10E5DA;
	Wed, 28 Aug 2024 20:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UIzRbge7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B19710E5DA;
 Wed, 28 Aug 2024 20:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878193; x=1756414193;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DsXU00ch3YiKuzXX/22dphT+K2dNFP0a55Jq+164ro8=;
 b=UIzRbge7JQk4oEPRNttjqXsk/fiCRGVgyg8gFbNMbBwvsLFxJnReeEv6
 m4otcrI9Z95O2nVSjGI+asXqFa0A+5Cp6nqq8uEQGLg6bbhFTvRitUMP4
 Y/vFeNV3jgcV8vOVRe5DsBilr3dvdsYow8YYhLKAFNgvyjQv5StOsJy/n
 DDplqvPPjtt2OHa0oyi4gy44u0yJIHEN9FaVOhAt2O6nTf6AkvgDDASci
 EvOLZKIO9xV8zDLSsdjxQgDan2Hxt1aT5G1b/qPZZ77UjMPceal6PdAcZ
 6u/rSRIatOpa93jJecB7QQxqt9qq3bgH1UkY1xGb4CDykRQrO56plw3zR g==;
X-CSE-ConnectionGUID: qXZvle3TSd6TPxi71+bARA==
X-CSE-MsgGUID: w/UCXuLyQra+O3Luriqvlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23566704"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="23566704"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:49:52 -0700
X-CSE-ConnectionGUID: FkasQZ/dStqun2QR0NeJwA==
X-CSE-MsgGUID: b1fNhuHNQzOedoGTnmOAtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="63043526"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:49:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:49:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:49:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:49:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RUm7ZA8dNckNBxQOExRdmL6O9cz8jLkfx/YeMhbSY4o8Yl40nlP29suPIRX88oiVEL47GGEpEdZOwnZLFfL1tESkAwzwjwI2/CEmHP0aXGMF7pesfHBXyy7BMVbxBwFaOVifK6Uf1Wik6Flyvo523ZhYSm+Oy/+a8mIYJzsYNDuIbChN/LV/0eim9M739k/sMyGuzdFnqz5KkckLwZJNTUjTERN+2k/cX+xih8UZKm3Exkflr3zuDmh9kuIIcGCCTsvF+hsWMLWPcthkMRaXxMpBF9vbAmGFcmrbq78qk/v1muYr2AMv7i3v57Nkx7y3NidSb7D1GjMqa9yDBOzMpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=clwQhOeEmPmLE4B2ZnZ5yhHqAEcstl2pjQsC4u3Sx9A=;
 b=gshBrRJwe7FDrv2r1DoGogEPtFDqBVbWFSiLb6HbSDINAvFKD13ARg8SGf0ZFaklenE33sMaMqP4KRsXfnrRb9g7yFjGgI8lD7pnF2Eind5smZKsPNaAjqvE6IP9XM0DYBakfJagu0Ent2AzX3fGlxdiObRoEphZmGMwPs9VCC8XF+XJaWXkhHBAXaDdMS2xkLOq/4ce6MahEXhPRNOhzjK1hZgYw5B80bUOTU+UWZTNrPvtpVuXUDGlAEwPzYDM9xftIyeGT2qD/TrauRDnG6A1jPCXPU5uMn+7Ya0nDUktKdcbKXugvwgmT/SD00mqYGQK/OuJ+RlZXR4rQlGJxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Wed, 28 Aug
 2024 20:49:48 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:49:48 +0000
Date: Wed, 28 Aug 2024 16:49:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 6/9] drm/i915/display: remove the display platform
 enum as unnecessary
Message-ID: <Zs-NaOZ1Cgn3pgaU@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <38e923b9fe76664b83c258fe7a806a8daa6ecc48.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <38e923b9fe76664b83c258fe7a806a8daa6ecc48.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0349.namprd03.prod.outlook.com
 (2603:10b6:303:dc::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6676:EE_
X-MS-Office365-Filtering-Correlation-Id: 91465091-cb5e-4afa-3219-08dcc7a2f46e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nRTsiNWK++tPs8G2Lw1vpn+UFZXgFNKpoItGL+DlM/E+VqkKCZVvvFOlygWh?=
 =?us-ascii?Q?tdFKdSIaE+8sQB6/TLCCAoCzUDTkcySjM06W48x23acIjjIRSWX/YFii1kEQ?=
 =?us-ascii?Q?O8HsesLHQLuLMeOASqigNE6ePdvBufXn2Ijupgv3yp7+HWGkp6yiMjkPLSaZ?=
 =?us-ascii?Q?20a/h1Sv5LgCwaUdGe003v0gKMeHpzzvPyWx0ukceFfgAP8pakp/5K8GT6eM?=
 =?us-ascii?Q?H2HSMgSwSnQN6N94j1YuDbdUMwX2DBiAS3wV197HZnvwlF93szvwKi/s50Qg?=
 =?us-ascii?Q?cBwjzDlTCNLxbEoDpWQaPzg7mBnK9E2n3+VY3QiMCGzSD+6iMWaiDQoiUwfl?=
 =?us-ascii?Q?zHXiCikAGb5Irl7+tnnatRFB4duh2VfxopDNm2qyIvTJDGw29dG9vGZ4vUnE?=
 =?us-ascii?Q?ZDYeisLU6Lx+8LuUiUvvy8z+t9VaUrCrO6F+Y0CeoXGJMxgTpDMgXvkDKgH5?=
 =?us-ascii?Q?JNRpOS2sQbICuiE16M4sKZaZODdyaDitqFEYUv0eQ+bom3rU/hSrq0b2UTOL?=
 =?us-ascii?Q?TVdwR4CIaEOEM0RQFxukM2v1F7KHHGQNmjsgQF4r0V1UfYw6rn1hCBK7q1xh?=
 =?us-ascii?Q?7F+WU/FGKz2XSPLu57yDwFKE9PtxqVg7bu88G2YFGw9k+gQ88Sh54bROe3aR?=
 =?us-ascii?Q?wg231CuNwngbkp8tnvGLMtrNsKxWOgrSRrpXfdb5TMnDsh8BeDIQdEkP4U5+?=
 =?us-ascii?Q?BIj3aBWMU0R3MBHff0VkGA2DzIOABL2Iz8cYC9ao3IB5N6hsy4iomAtINsvs?=
 =?us-ascii?Q?pwU5RIRE2NCGnoPiVE3HDf5tZblh4U2Qcy+700eLg5/Amtl1nVLQnf3FZXJu?=
 =?us-ascii?Q?XQh0c/TmsYylHF/HN6p+gyhwiWPfLyXtjX0XCLODNZiGrWTV+TK+nGQPfpE1?=
 =?us-ascii?Q?wbyljjPnRh1RaiAS+U/Ppft1jYkiyiz6IZXanGoMkFr2jnaBbfdmN4SuSVQK?=
 =?us-ascii?Q?4NhyAS8xn0T0tVWibHtGyjE3ftXMVfQudEF8307zBgRkZ1nG8iYG+HUVD7an?=
 =?us-ascii?Q?itfNheoVc2Z+GiphD1dHNZB63qAvPRPb5f0pxZFu9dQ/z39JrQDTjwh/xvlG?=
 =?us-ascii?Q?AER/0wzw4flWXtInHjpM0h8iWaUo9WnKlA0iaI7brZV+ZvFF1gEv92POt69i?=
 =?us-ascii?Q?HN5ObMwlaecTtz8pUiGO/s5i7C04AVUxF9bz/rOEq1kM9MWjtsalofaiqHO4?=
 =?us-ascii?Q?0CG/u6Y7XTT+TuZ7sL1PWACiM+/wJANMucStmeaLKfEWGND+jUdwv82ux6zU?=
 =?us-ascii?Q?i5P5aI6Gf/OsEto1uzeuYYm5kTHK/zsu9rOsETds6n8vjfcUZCaGWh0EDcuR?=
 =?us-ascii?Q?pfljcELPimcOktO2oMw+g7B13ANRBTiyf/eKhHcfaWlPkQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bvDvkqPOwpLvI6yIeqcqoZn8mdAv+a1pcA9Kun3WH2oxkg7BJDghepZFdL3l?=
 =?us-ascii?Q?Ns4806/6Gz4pdIQh/heyTfeGXOgp53PKq025rpnNaJWF8APMh/MnjKQ7ebGu?=
 =?us-ascii?Q?VRTnZWsJlmJf/61pqU3RoOtxtoEiaEofw8u+dw7FlGeWXs28cnYF8z2JlKWI?=
 =?us-ascii?Q?xOJd6d2fFWvRD8oC674E7GVbvBRYZ5Cl4EJufMq9KNKFmxLPYswhwdVkv9nT?=
 =?us-ascii?Q?8XghKIuXqVFX/Dh1MJW+mwV6s83l0WtP2ephh0/buxwMatsnfRVkYcM0DGof?=
 =?us-ascii?Q?yO3MrX5tdSiD17985Yu184QCloWh5wMBiG5i6XlrJbIqGk3FyByj8U5lU+dy?=
 =?us-ascii?Q?c3TROyQsZw92ukflhJeusIpdYFqbRQOOenqNo1mYffrbQVgM/zanSqdkQTX4?=
 =?us-ascii?Q?roXwD8BxI05Cm1HsgrMuHFn9OjlQXMNZhLmLaYQQthIoScDedYHFwQ5WcdTy?=
 =?us-ascii?Q?ft8Irrnn6HNmPtvtStgz09nAzxtaqU2GjKO6hnJGo52t4xaM4UB22TP9ux43?=
 =?us-ascii?Q?p3osJ+fBhW4umGC9yCUE/qj0OHbMzlXbGPanSrXouYsNALAArv4GIrlSpznN?=
 =?us-ascii?Q?2gzb6sssm36dzREnr+oxX9OOlKX4DWTGphNuFKeCSAnBjjmGK8LyUPpHKu2H?=
 =?us-ascii?Q?w/2HO1+/jR3HkOPM/mPHlfQCA/Vf8lf5Eq/bzUE48oBi7DrAk/JS9KN7e+fd?=
 =?us-ascii?Q?pLvIj/dsJZSjJWO1FcYRgpwiY06pDmyHvlMoTZInlr9RV2H+w3r6i5Qwv1VC?=
 =?us-ascii?Q?GvZkl8GrcJ41R0bkEKbQ96YyyoVIdUnVBYK3PhjLue6x+ko/qqEx/RGGUSvA?=
 =?us-ascii?Q?DIaYAj2z+ebv+Knu+8KgLEzV6CLVjzEcYOqu6bmr3v1oEUZrrSmlS5ytXNDJ?=
 =?us-ascii?Q?7OS0x12ZkGKIg7XSoj3/GjzEMo9W5oVVYyLt82usDNrnZmQkVtAJzgsavlwK?=
 =?us-ascii?Q?B6B1ltkKoTQY7bSE31JH7NFOc3AZKzNANlaQHBocEmmWAkYI+qdHHJQyiyUK?=
 =?us-ascii?Q?BXo8150BfTzt0HSaP2PeZQvopX69+8azi3dw5jVAtR4ltVO1ZzVvCmyAZEYh?=
 =?us-ascii?Q?lwh7h6t/CuPQpsvtUjo5do1eAr8kf5BTUVa1Htp7Soq5ZleLD3iKdCa4gQdv?=
 =?us-ascii?Q?759sf9TfIyXaF2gnvtB78Zpzm/wHiPVOB9YaRWLZLPVGC8N+af8WCQebDZBH?=
 =?us-ascii?Q?8H1M3ICmxE2jlg0cPmEkBEbFcZ/1HYlieGjZVYuQB6DgYHhpI1ASQBLyT0D2?=
 =?us-ascii?Q?Nz4h70N65HdCn7Id9m8Blkp6PJ2lfbpT7YUudh1jqviTqvTjl0wlrgSTIT/7?=
 =?us-ascii?Q?+KJIs4WT05Tx8zCzXUwcK+8eEs/ZfTcMUB+qYpzOcTTxEJ8UT2d6TemYwLaY?=
 =?us-ascii?Q?wqcUVkBrGQZPZRVWWlTt6J5X47TWFqyvBxNCl6z0LW/fbsLn5bxbIlQwCitk?=
 =?us-ascii?Q?iPQQiuCXpfrx43C4KZPtl3DnbDpne2BGRYpIiJNoTEW8w1UMHIuVsYCGZidu?=
 =?us-ascii?Q?TO9/FNLTi0+7+pNXRlqKKMpbIyR+7aSeKuosXnUPnMiEOPHnHkTiysOPXy1r?=
 =?us-ascii?Q?iCQv2oQmQyUtCqT65yMOGITFNI7PV5T4YdUYl65mPDfTBkMqEAHT1Rp5dDiK?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91465091-cb5e-4afa-3219-08dcc7a2f46e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:49:48.0938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gVm0CSgXwzFOSveLMQL251lkAAPVmFIk7bnAqPoE+uN6Fgbat7WmPZkBKyj4ir+Z48/0GfbiStpNWRgUFnR3Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
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

On Mon, Aug 19, 2024 at 09:44:33PM +0300, Jani Nikula wrote:
> The display platform enums are not really needed for
> anything. Remove.
> 
> Without the enum, PLATFORM_UNINITIALIZED is also no longer needed for
> keeping the first enum 0.

oh great! no need to rename that then! :)


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
>  drivers/gpu/drm/i915/display/intel_display_device.h | 12 ------------
>  2 files changed, 3 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 3d3b4ed7940e..90609b561630 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -22,26 +22,22 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
>  
>  struct subplatform_desc {
>  	struct intel_display_platforms platforms;
> -	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
>  };
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
> -	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>  	.name = #_subplatform,						\
>  	.platforms._platform##_##_subplatform = 1
>  
>  struct platform_desc {
>  	struct intel_display_platforms platforms;
> -	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
>  };
>  
>  #define PLATFORM(_platform)			 \
> -	.platform = (INTEL_DISPLAY_##_platform), \
>  	.name = #_platform,			 \
>  	.platforms._platform = 1
>  
> @@ -1261,7 +1257,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	const struct subplatform_desc *sp;
>  	const u16 *id;
>  
> -	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
> +	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
>  		for (id = sp->pciidlist; *id; id++)
>  			if (*id == pdev->device)
>  				return sp;
> @@ -1326,16 +1322,14 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
> +	drm_WARN_ON(&i915->drm, !desc->name ||
>  		    display_platforms_weight(&desc->platforms) != 1);
> -	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>  	display->is = desc->platforms;
>  
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
> -		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
> +		drm_WARN_ON(&i915->drm, !subdesc->name ||
>  			    display_platforms_weight(&subdesc->platforms) != 1);
> -		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>  		display_platforms_or(&display->is, &subdesc->platforms);
>  
>  		/* Ensure platform and subplatform are distinct */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6f8814d1fabd..6d1f3de46836 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -17,7 +17,6 @@ struct drm_printer;
>  
>  /* Keep in gen based order, and chronological order within a gen */
>  #define INTEL_DISPLAY_PLATFORMS(func) \
> -	func(PLATFORM_UNINITIALIZED) \
>  	/* Display ver 2 */ \
>  	func(I830) \
>  	func(I845G) \
> @@ -94,14 +93,6 @@ struct drm_printer;
>  	func(DG2_G11) \
>  	func(DG2_G12)
>  
> -#define __ENUM(x) INTEL_DISPLAY_ ## x,
> -
> -enum intel_display_platform {
> -	INTEL_DISPLAY_PLATFORMS(__ENUM)
> -};
> -
> -#undef __ENUM
> -
>  #define __MEMBER(name) unsigned long name:1;
>  #define __COUNT(x) 1 +
>  
> @@ -218,9 +209,6 @@ struct intel_display_platforms {
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  
>  struct intel_display_runtime_info {
> -	enum intel_display_platform platform;
> -	enum intel_display_platform subplatform;
> -
>  	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
> -- 
> 2.39.2
> 
