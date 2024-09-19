Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F47197CA0F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224CB10E6E8;
	Thu, 19 Sep 2024 13:20:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdSEVau+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49B410E6E8;
 Thu, 19 Sep 2024 13:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726752002; x=1758288002;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ds6w17DjZEx7Y6ARRi8qzgh21wfzzjL1rJHyGRJJyeM=;
 b=kdSEVau+BWSggLF5GczQeKFQtgTTk9+Jib3XyD7z6pGlXYKD2Q3yHasw
 bVIvbN/JHZAfFzYUqJWRVMuc9O2dBy2q46dHaWJ1CLgX8oSeXOnAnA4Zw
 O0W+8jhO0Sp3ziPwUAjKkCvVBCzphebJasTsBpuDUO2YOn0uXVQ7WLCuS
 UNStEWUv4UL0gsNIGczlpW7IFzavmX4TaLHchLRinNng6Yiq+TrKfO2QM
 D34ssO8ZXmKfYvY+4NfGr55bX9b/xxzy6/mSjIA2g7kH++thdw8nbjprX
 MkAsgyadZgq2ieWESFddl2lgBthULgeA5TRR8G73nP1zbYuEK7EGvY5th A==;
X-CSE-ConnectionGUID: EZeA6lZBRFicj6IJkjPIEw==
X-CSE-MsgGUID: GonYJkDbRKuhtlCtTycOlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48245835"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="48245835"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:20:02 -0700
X-CSE-ConnectionGUID: esNwbgCETs65Gv/pAJCkkA==
X-CSE-MsgGUID: 6RJH9HxUQj6V6DSNweho4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69953709"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 06:20:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 06:20:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 06:20:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RVS/JJgWECtK/aook9chqXbLl01ZP7IfySP88WTdQ3FEI1UJE4FIuMFdxMpaiapRJXQKE9mBXQBB8vHe7ZvlmNXXju9qvYy2/BFmwsOW0YW7RqTxi6rHL9j35NU+lW+GVOshEZnUjcF31l9ND5OCPLQoScfAFxs9fAcUjhBxg01flXcdUxKw5yulGPGyu3Hu8+rX5Nd/czOHUD6Vza3mQf1Ig37hTTPi7PpgPmyBlGOm3OgfVNVC9l46F/CFJOdwF4mWs1Am+BePXmLWrcDEInypSOBAq2brQA1K9MT13WDvJ3fXHifreyOKimYK9svXQ/ryoFYQXfrWhKkv8RSAHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ds6w17DjZEx7Y6ARRi8qzgh21wfzzjL1rJHyGRJJyeM=;
 b=ipV5Imtuo4d9SJR4+9f/sYq0TlzXvSKOudX4onN1nRhz5XSC2BtF/dHEGmT8+t2C9H+4GxVjX84YYXtZ4z6if75u/LUAw/J45U/MPgm1i4Qb0tBTnLMiWrGyonrAyouolePaK5hw7acyXlaubt0Yt1mq1sbm+4s0eXTBGqwpigfuKKzaVXXPscWf6RFYDX+5u9Wb4XYDUNyTDveEE2KUQt17V+ziLAiD1BmZSsVyzdW03nHirQs9aV2i6Vv9nTumCXXP0Ktlc9rXvwXLmiFA+EX5YncGnruPcZ0hd+GA9bbvg7lQTpW7dWJVhIQxstpYcUpzA3ZNrN7Gr1lK+6Bxfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Thu, 19 Sep
 2024 13:19:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.016; Thu, 19 Sep 2024
 13:19:58 +0000
Date: Thu, 19 Sep 2024 08:19:55 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 22/22] drm/xe: eradicate -Ddrm_i915_gem_object=xe_bo
Message-ID: <hztbc44njmab2sbebx5yx7xfzpeuxyyorbvsbrthdcxnb3kujb@qnuw25bbweh2>
References: <cover.1726589119.git.jani.nikula@intel.com>
 <0eae2b62b635acafe5dc97dc4b205aaa34ce1e53.1726589119.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <0eae2b62b635acafe5dc97dc4b205aaa34ce1e53.1726589119.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0320.namprd03.prod.outlook.com
 (2603:10b6:303:dd::25) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b8d5e01-1570-4972-c8ff-08dcd8adc24f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6r46UTIR6G7VXp0OZB35Q4n+R08LGz+7D0DxWaRO2juoKfP7FSsqkPAjhUZd?=
 =?us-ascii?Q?+dSXvzXjBozIIphFYpZ7VuxANIBDxKufMnqmW4oEADOJGnCkaXcOpZY5DUmh?=
 =?us-ascii?Q?1S1A/d3Pw3/FPJW/IfdPL5+ffOSPorFdqejTZKzRqh0zCm9s7/kOvDhc9JW2?=
 =?us-ascii?Q?GGafjSOuJiYyuFEOl7MoqE1ITOK4orNB6hAzjM7xFQIDP+vB4aOR8dYieHgI?=
 =?us-ascii?Q?kPu12wr104L4tBoDRNCCqf2iLqjsEfjFH+lbcVAWdaAU96V3/+HGgtaWgQ16?=
 =?us-ascii?Q?MtTR9EnICEEOc5zh0YFLyevUPutmvm+XfdBU+rnpW3a6VgZq/PCHhx5N9otk?=
 =?us-ascii?Q?Y2XeghcekBn8wRhGE7/LUe230ZQAZjzq2Rk9HbkfFS1DXRrEK3T/3+uC+IRs?=
 =?us-ascii?Q?J0vyMPRC90/RgyDeMcM4GnYD2j811A+A7JVp0YlZ7vvKfVPXBFxn+Zblv/3Q?=
 =?us-ascii?Q?KpmNB0s5rsQv+PdR+aOLGTv0bL0VhFCfsMbP+R2Uhhc9bLanqB8wLgzA2XM9?=
 =?us-ascii?Q?uv+srlSBx2FF/lSUqh6BLKVSaJRHIf28nl+wEKvzqPsc5Q6qUUD1YKpXzS+l?=
 =?us-ascii?Q?xKhqIysGrgCJcBTRgMmNv2k/buarsfmZ9vEyKxk55k6xUuGQ6fZPXjCKCR/p?=
 =?us-ascii?Q?7kwymVFGM8PSYECl2lzVtEu8lwaBV1+tsaoR1vvas0ijusSUi/bgG3HWBAJm?=
 =?us-ascii?Q?e6qG2ExfMSM7k2v66ZUbV1PZU5VzmwoG/j29phS/B12rJ6a1rE+ZjO/EsoHp?=
 =?us-ascii?Q?rBNHZ48eTdZtqOV5hbvGweqJdHz4UXCY2Q15AgV3LNcxr7c0YJ7aYSwTMFxR?=
 =?us-ascii?Q?lubOYpSInMyVELAVeF82HUEXOk3LsC9/1oJw08+1j9aaDOmZvGJX2/wsw+LL?=
 =?us-ascii?Q?1jIZGMWGWkmlGMLJElo5NcD/hznujuUwQtFTnD8IHGqduUOM2ncL2bQfrJv+?=
 =?us-ascii?Q?+kjVs2gi1u0d+mmsKJfDxxyp/xdF1Ew/koOgxhb+85hjzRsw4IriUzYj4X5A?=
 =?us-ascii?Q?8ul0qMXMAH1zh3f4OmKtVyufDavSybxQOW45TSFjJT6jSh4/3kSz2b7rVE3f?=
 =?us-ascii?Q?Lednx3LsgOk0bkyUXWC+NZGEhUoRdSbm6aQT7gKkIThg+l032CkHYxJVGItf?=
 =?us-ascii?Q?+6VzQ22oxdhaeEF4fP3Uod5r0Kt+zFW5Ag0IuKyhghkGBGT9LURBW4ehyp5p?=
 =?us-ascii?Q?RYyStOlqwfjAcaDJ8NfQN9ss1LyYW5b8QtmDPPBf7ZY2q0ElRRRWaImVptEm?=
 =?us-ascii?Q?NrSez5S9RaTjysXcbvD0q4ToXiSxVI4VWfEJT79ZhWpw0NM/WzQz5KShBMwB?=
 =?us-ascii?Q?F4Sk84xFIeuoVecppeanWrvFmyRGmOa+KFsZbHbcMWZirw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9MUBeKBRZX5HTDVky5S4HXGz9Lpa0flLd0Jn4y51dkUA1KpZtdnR9DpwciRv?=
 =?us-ascii?Q?A6vdPIUlbwmG1cHC9/STQGRHEKs9diBejmiLvJpRMUTh9T4JdE+lfdp8f6vX?=
 =?us-ascii?Q?jtjWcmTbVsFbS5DiAXxAynvyh/Uit8BvSoLCbX7KGcmRb8L3p3kn4IzGZHam?=
 =?us-ascii?Q?zW3ac1hWzdj0gZrpQB14NKCETFM1WMnRzj2P0ktRPAGcpC0vlbq5yTVRgAXZ?=
 =?us-ascii?Q?MYTr6tDB/QSaXP8xQbSuM2bT2TuewEkiO+V97RFSGlkve4/Es8BT5s4GmqLR?=
 =?us-ascii?Q?OKOucaM5X+YLCFOJ57Ni93iJLiID0IK0nEdLmjzHFQ2jUNZnNuHb8WLJ0faf?=
 =?us-ascii?Q?EhnD0598HBQNmLJ6xpcn67nOgXM0u7xUdZDUWNWTLvnxI/kqEzzwheKGZPGM?=
 =?us-ascii?Q?1KBIZvBkTzhYMJ+YoddR94Uz25M7bsZzfFayo8ihdBhjpoSezVO8Dpi3Wk2t?=
 =?us-ascii?Q?PE/ra6FbGK6L8IcYrm2KoTo/1d/gCF+57he61gbbGldcuSeIYSo8M76OI6un?=
 =?us-ascii?Q?+tW0anedY6Of5txvrJzvpkeB0LlSVkC/3VYB0Evj7hzpDU9QcW+lGMyRSOY3?=
 =?us-ascii?Q?H8g0iymTvkAk2SppP5uwqZyfX5linVN6jo4gCwIvtPkXmMm5iFsucv+tfFLl?=
 =?us-ascii?Q?+TA/ZEiiudTj3yNkGtxQxtVg/687C56LZdT6hkoFcq6C3rTeClgvyaD59/Fu?=
 =?us-ascii?Q?+FeJtka0NMm0Xl3lFMNBiLQV6ib4GeMahdZUL+7Z4PHt4D7Xs1Mk1Y6oTRTC?=
 =?us-ascii?Q?lu9Mafn4N1OMBO5K9NK81OkFCdM5rA7XfXSj1tkYaLNGnlZlKIq1Mgqz2L4x?=
 =?us-ascii?Q?jbQ3X9rNO81tghTpSTYL+g7ziMvQxQwIPVHIlpApOY6lLpHhIpkmPJoMVINH?=
 =?us-ascii?Q?OUjhaHW+K+Ii3hXT9FRApSnH7kWwQQBUWdM5CyvCO9DHJk2ktb2m1H0pkOK9?=
 =?us-ascii?Q?9gk1qhVXkfmNwGdinEd6Pd1A+QjgXuEe0o/mgL9dsxCsyh2fZGlAGRqehtjS?=
 =?us-ascii?Q?4hc/7uPOfuEoqmcsw0YVGn4ETv8GZyZFDEf4Hbdr88Px/BwkjyJ4lv8shNhI?=
 =?us-ascii?Q?hCB6Q2dFG1gWDgVWnRqo3JlUC1ohAc1gwqeKOcqN3dLz36qKRS1vlL1sCHhE?=
 =?us-ascii?Q?KDyUkpmVV02gY/VUXLxgdW/qU4o9SH968MyAtMCrzvaOwp1xQ79UTj2EWGt7?=
 =?us-ascii?Q?0tjKaqwvw70ZP7BKFHTqaly8S6xdY4osfjZZjbXkVyjau95iiynJ4zakkzaN?=
 =?us-ascii?Q?AxQzdyceMJnZP2GYCTyQmDUxn0jTUSgBq4AADD9vHpPHzoEtnNiFxOC4Kw3u?=
 =?us-ascii?Q?0BBF0c7qE0Oxjhf3JCRCGJfjM6ByzYIClIPzxJ1HOgG5TVjVmeF+kGKwSZRg?=
 =?us-ascii?Q?cT7ShBjgggz6GR/75kxdTOwpR/6wR2YnwRqqleilmKw1t5gLw41uKZg5frnF?=
 =?us-ascii?Q?9h9tGV13vKxGEIZ5a9sAQBCePMp6tIX1e6o7iHvguienJbZlddVL3hHj72tJ?=
 =?us-ascii?Q?3/DEG01gX3PtavE8jCmg1w3V38Xc4g3WmX6DomKPwqbQNxmKx29H79FKYUqp?=
 =?us-ascii?Q?NT/S6SBOoPVi4YFtrg5opRZuoMPjoPfuIRMDcYNllGQaCCKVNZQKiwqziiX7?=
 =?us-ascii?Q?8A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b8d5e01-1570-4972-c8ff-08dcd8adc24f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 13:19:58.2314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a6be27FL5Py9FPvB6DcTZEWeDVVB0c1ZjqsuLmErxcV9QESQ7J3vnXi1oLhMuPEXa2IEzLU+GRueaJKk12jyC5CILjcGRgLG+lPTuB3Ysyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
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

On Tue, Sep 17, 2024 at 07:14:01PM GMT, Jani Nikula wrote:
>We've now completely stopped using drm_i915_gem_object in display code
>that gets built for xe. Kill off the -Ddrm_i915_gem_object=xe_bo
>hack. Good riddance.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging through drm-intel.

Lucas De Marchi
