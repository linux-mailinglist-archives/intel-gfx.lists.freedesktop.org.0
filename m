Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E274CD693C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C8310E6D3;
	Mon, 22 Dec 2025 15:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O82a2uuh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3985210E6E8;
 Mon, 22 Dec 2025 15:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417788; x=1797953788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dmepV/TQQHhjEocwXlXuXg/CuasUDNjjChy/gx/Hpis=;
 b=O82a2uuhEErZpO+HHJROyyXXbXWTd+JXku5zCvNZ8tA+ML/KNJPSpOUY
 FJoGWuf2KKVi5slrL3rljqHOSNYTY0WSkpK7NDn5FpSraKE6FgsIssulU
 mnT6pCqDxu/Yuf+ZCavEe4Qi8a0xvjZa+TMr2Ta0YEj0jgLctkKCuiTYT
 5ouHuBAMduu+VkJNENxyyiC1MdcQrLRKaWTSD/uR04qicy0AP9Rwbm8Ox
 gx8t1q0L9n4NwWYj0I/mplEq1npaswYBPRNn0KvyT1kEOt+edKDdmudWA
 HiAOcH5JknCmoPAn8fWM5vZJR79/K2pHwfMEhTCfEUsDluwV+QewtFA7o g==;
X-CSE-ConnectionGUID: kT7jIRqtReaY+7Bm/LScWQ==
X-CSE-MsgGUID: Z8hErkK2S7qveHPLtjMgjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211488"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211488"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:28 -0800
X-CSE-ConnectionGUID: uxWaba+gTGepzo/FTMeyOw==
X-CSE-MsgGUID: mTUwN2WpRPaT9FwOsE6WHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854970"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:28 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:27 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:27 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r9igHpYVg/9Xan24XvqoQxDn2mjnWOenvyagob5PeNBTFm+UjuWRU1JiD3drRH6DjVrDG1e8kc6whNOg3pczfjJgBXEefSiC7u2m1ufrdlQkNM0rapy6GeKF2PCJGMzR2Gr0h7vx6lVn81UWgeGGFzSS0uXN+JqaF8uIeU36ACBDxI591RkPU3Oib9HBHk/zj0bKSP1vVUzLqE0pu55cal3kdMmyqAqAn4u+tNnVXoHLZVtvT/CaFTyNSP2Z+HMe03LMWkKRt9kkKOVhCuOaiWqy7JRANRcNKBg4mBh3K1S2WTR+771lY6HVG0XZYCIwriaBf96vU4Vq4v0fRb4aNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+tj084duY/qONFlO9rN++sJmsoZjD162pGgSZs1zJE=;
 b=fcRG32dETpxoren1d6aabI6t06DBZlC0OrqLviP/Ofpb0yniSZWD7tICnAMn7D5CH0uJgq5n+u/FaebK8rivDD0Ub80jargcziuFEhJhtbMhQkAi4IMx6PYIzt5Y98xFbg2UmIbgksIXCLXjU1wcPlkeqvfHG38Ge18wQ15v/tlpOghbGU3aNy5OxPhXhEFsrGBLPMXsLCuVgmumcqpY3CkPYVtE4tisXGf8bGgtvIdRWmkclYBjpW73RgLZYRf/GEQnvf1m/q4BWiJOv4aB8d9RSoYHnR4fee9N7BKMIzop7Oo/zgirLG3jW9lMZwvhXHzTiegaFvihgFXTvcLB7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 13/19] drm/i915/dp: Use helpers to align min/max compressed
 BPPs
Date: Mon, 22 Dec 2025 17:35:41 +0200
Message-ID: <20251222153547.713360-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: ad9c245b-ed20-4e7a-7f20-08de416fddbb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YDQlJ+ASoqRogmU7XOKwJVzele8EkQNOhSeo64ck6S++vjllvMuEVY3uDQP/?=
 =?us-ascii?Q?GT/+xt30p9cde5h0Xz1BWjKzQZ15ScMGLgLLJ1Rs73bD42pMFOitrZlazaXK?=
 =?us-ascii?Q?+kLXuhUTAMD+/0f5l9DkG2iYGuTglz44XMIkTPwpD1K4Tu70fhK2rcfHp+iz?=
 =?us-ascii?Q?5gUMYAl7oUXUOLhUENJ57ItrtXBT9jFzI0mIEfp5Mb05rbXXaZNrWO+FeaWM?=
 =?us-ascii?Q?1HT5O4KW+zfqZSBuEnMzwRzQvSsBF0PXIXzvtO/24K+P4e8VGLFD11OAm7/D?=
 =?us-ascii?Q?LeI4jW8sOpKYeHPFDZlIH+LhJgripHBQa9VJ0Yfz0crzdTdxJ+DZY7fBQWaM?=
 =?us-ascii?Q?m/oip1F8VWuVHoMRp7XdBKXmvRGUBJI7MAaShhwnRvNgPlsXK6i5x/syvi3q?=
 =?us-ascii?Q?NcDTldwrbaBBDOo0TdSolAjSCxYmVCOWtJllqUMiknPBbpcH0lvvbbJyBlGz?=
 =?us-ascii?Q?1V+LzuseOcahtlSqJlWlPs5unqM/A7glTJjmNXUACD8KmHaTEVqZ+592AtAE?=
 =?us-ascii?Q?1QPW5ZXPrJq8M6RqhOsY7zC4UrTXs2wKcC9Mt1h92HKVfbbtpO92zu/5tyn/?=
 =?us-ascii?Q?ZbKbmeni812/cGKhFYXprh/qz4By/4Pex9gNMao+7AYAzKh0vKj5iF9T9ENd?=
 =?us-ascii?Q?5G1ymFX1D97AHTLK4her5psYT9UQuAumi58O+x8QORqkK0qrrj5aNA2dQHjo?=
 =?us-ascii?Q?qXB7O4MLxpycPDQOfzSHAu2lkzcnWhF89kFgTkrEj09tWuo4aaZ+5IldUzu4?=
 =?us-ascii?Q?z2HPXWhTotcCPHFhaG82SvuzYfX5Um4uZu8O9N4zj4BDFZbGRUwput5/a2xk?=
 =?us-ascii?Q?m0jnc6H2CqCzOwC3inG7IgwD51Zxt1JpOCRVN2LJ6hssf4La5kYZ6OgNH0rL?=
 =?us-ascii?Q?LdUji5jnX1IKV3szEaBeo6SnHIZ74cg/trtbMPo8zN4LIZO8zjIfr9+OPSSz?=
 =?us-ascii?Q?TguaVzOD2XX2Yic944Atb1FjUA8JyoF8L/WTmawep/iN8bwRM4qK42KA1VJ2?=
 =?us-ascii?Q?Ig+Cn2ZRsT+0BQT8zdI4uMo6UyLchD9rHoOkM2vzLO6USKCFsonP7YebidxJ?=
 =?us-ascii?Q?dOT9akcR2rc8Gdo2GUmy7aq+YAOsJvB3Au5SOi0NJH/SoQIZgnwD7WsX7pXl?=
 =?us-ascii?Q?UR7+X/M+eni94dLae1Z9/Mam8BEaxDkEOCFdciazfENd41c06QIOgSxt8ddB?=
 =?us-ascii?Q?dk/ikS+Yxi6a/MdGiuvZWyPf67Ncgs58x+/kokbwghalFBUmap6yPe7Ih1hF?=
 =?us-ascii?Q?0uFrKsYXkKtl6lfPPIBj1lAahNp9Oeo6n53Ihg3wHWQkiKyIPXBgQ16pL0Xr?=
 =?us-ascii?Q?ICIUtNcYLTcal+wpS2fKxkp40Ntzs/ySeje3TzysYRaREaDDBsO4MNeP0EPi?=
 =?us-ascii?Q?U7t2pXWEP0x8zoDM0FZ72Iyut/W4gGLES92ioilIQaiGgoiutj7UkkUG7haC?=
 =?us-ascii?Q?sFfDbpfNcS3GqoF0syjxIqbg4uPbt/MN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B3iLgd3hk0eObF6xi5SBGgJ9oX3pnQBe5EgJ8mF308vCI/PSiHGXcBCOgFsT?=
 =?us-ascii?Q?aCgEynhObUCI4xmw607JyS0I90eg4P1R/aArmq1K3VUwrDjRQ6hZ0OMB2U9o?=
 =?us-ascii?Q?CLg5Zp+YKtMqP4PsK9iZc/KcTZE0HiUzkfmfrwp6bs7vfGuEU7LZ1sA0phdU?=
 =?us-ascii?Q?nH+Vowvc0aZ7Kjlx78JoFyXFQSZulDRl5apt/XkN8N7a5PgpWRUqNj2XlXu9?=
 =?us-ascii?Q?MHOwijgHSEc2nOmI5uuj7CtTJolinW0Pv9+01Fdoy5JIw054loOQAPbMQ3Y0?=
 =?us-ascii?Q?0cwbSXz5Whsw6s5wJdbuHXDHdtF7JcJc5lQAxvnW5fDM4JudrGnDDooOSm+N?=
 =?us-ascii?Q?4T9bbmLVcOKXpZKB/v61/uV67NKfWpFIRLYB4S9QSJOytKpO/EXp64Qjy3SK?=
 =?us-ascii?Q?k0wIQwccyMK5aEMEZ1aMg3riAfUiMQJLJJYC+PKRnHBErsWbYrM/yrCj4eH2?=
 =?us-ascii?Q?YGwuEirabp00K/NaPJgX5eoOWsvV5mDB9oA/ORQa2S3rVmz2zy140SFb1ygh?=
 =?us-ascii?Q?JKprvF7WrDVhY6iNLxyr8WpjrHk83kn9iUzmFxjUInFQM54Z9/W1tGqpFz5b?=
 =?us-ascii?Q?ABSQW8al0lzA6Kf1gfQTteoa7LRf4v/LpZSppj8gDdLFabDOQ4LwLtRV/lpG?=
 =?us-ascii?Q?l7F0xsXCppqY1bMDbjvwyMZ69kpFItRuYX+SnOL4vrk625mJLqzMZvUxCVBR?=
 =?us-ascii?Q?4e/G6nF9ujpheSnk3wVoetWr3/jPSisQAli3xs1g5BEEd6fxIgfP6C9lw/5B?=
 =?us-ascii?Q?PK9NWflVDRze1/9UiID5hjIUHfHAmt35oYy5TG8R1MYoYsZpWm2/eUqXNoxx?=
 =?us-ascii?Q?HoQ/A6pkjf+xyC3R5b04d/7VTEHwuVUhWwuzvdcRC6z8lkRnqF6xaZP+KwZE?=
 =?us-ascii?Q?eP47++Ag3dRrbMwIb8kh/y2mlu8TAJEQFYCW+hCvuVOsjJ/1KXXuN5rAA8YQ?=
 =?us-ascii?Q?NIm/S6/tdzgJ2LZWNtntp/SIXkp2lH5cdH32btMAiNdDQdz1nROH3LUblQkx?=
 =?us-ascii?Q?CUyK+VRgr2yYD+8sLuR56G+T+3OJt9iJ8VuKy1DoAR7IPNY5KROtPCFRZ7Be?=
 =?us-ascii?Q?Bp3Qi91PkhMc0ON5SmpPPwhAq0dUwcQ/yNRY8ewfYRvuEwUITeH8XuXIAfNd?=
 =?us-ascii?Q?0nrRxLwvdYCuVRMNuJr1ow1TmoiuVFQCFCk4pkf1VHUIPPY0ae1r58K8EYjV?=
 =?us-ascii?Q?SZKxCS1hR8coASdHmVVgCP+KNA9Kiz4nnZ4/JeMwh9GEkxm1GoXxASI6W0V1?=
 =?us-ascii?Q?zI8lbqDzrE8y7w8kxuLdye3iYa7op5ABI/Xp4sWr54l2zd45+857R6SCBLrE?=
 =?us-ascii?Q?mRb9xCeh+K2BmOLw2tox3jbJQe1aAHnIOE9NPL/Lg4LOuOzW0Qav78Q4zGK4?=
 =?us-ascii?Q?Kujj1Y0kTENzy6rGTUg/KqP8UoXhmZBZonwJCkegxpm7qKjXpwGLft0Rd06b?=
 =?us-ascii?Q?+1FDzYF2gItPZezppjD52E8BhUCPpkdOKvGm2vd+Rj6pq0Dk3hy74mqLHkKd?=
 =?us-ascii?Q?3juz3xOsiPBYFoqHVKWvG41qxJtheAiofQs5qAoHVNI/8Bg4pZvnghNSPcAW?=
 =?us-ascii?Q?Ca5q10fo6ZLLlISmo5c08kRPoNQ58uvRxpsL7MS7QznVHIr/xS7HQ5SL9Nwj?=
 =?us-ascii?Q?ETwG0XaPQC4xV9n5PtWxIvDQ6ZNBIEYHrUzVGXXwpnaEdDLTOf7hn4CpM9tg?=
 =?us-ascii?Q?YJziYC/gfre8j+Pl58MJ3k2SXhLCafRePZ6l9+el7XOiu5l/EQcnFCKZDUm8?=
 =?us-ascii?Q?SFLU5tDLvAmq9CQIV8TchP56O0GyjMIY21HyC7BdjP0mB+gHfRSNLuNq1jY+?=
X-MS-Exchange-AntiSpam-MessageData-1: SrzQ49ocXlYVhA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ad9c245b-ed20-4e7a-7f20-08de416fddbb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:25.3079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dpKEdZwSo/vD/eI8DGQlE8jUa208kKtqU1DXay37vFh3IHBxqn1MzJk/FwB0ecf3v6wOsqL7SpnP7k/O8zdZtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

The minimum/maximum compressed BPP values are aligned/bounded in
intel_dp_compute_link_bpp_limits() to the corresponding source limits.
The minimum compressed BPP value doesn't change afterwards, so no need
to align it again, remove that.

The maximum compressed BPP, which depends on the pipe BPP value still
needs to be aligned, since the pipe BPP value could change after the
above limits were computed, via intel_dp_force_dsc_pipe_bpp(). Use the
corresponding helper for this alignment instead of open-coding the same.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e59c06b6e0b99..36cbb6aef2434 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2218,20 +2218,15 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
-	int link_bpp_x16;
 	int bpp_x16;
 	int ret;
 
+	min_bpp_x16 = limits->link.min_bpp_x16;
 	max_bpp_x16 = limits->link.max_bpp_x16;
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
-	/* Compressed BPP should be less than the Input DSC bpp */
-	link_bpp_x16 = intel_dp_output_format_link_bpp_x16(pipe_config->output_format, pipe_bpp);
-	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
-
-	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
-	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
-	max_bpp_x16 = round_down(max_bpp_x16, bpp_step_x16);
+	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
+						   pipe_bpp, max_bpp_x16);
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
@@ -2347,8 +2342,6 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
-	int dsc_min_bpp;
-	int dsc_max_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2368,15 +2361,9 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
-
-	dsc_max_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
-
-	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
-
 	pipe_config->dsc.compressed_bpp_x16 =
-		fxp_q4_from_int(max(dsc_min_bpp, dsc_max_bpp));
+		align_max_compressed_bpp_x16(connector, pipe_config->output_format,
+					     pipe_bpp, limits->link.max_bpp_x16);
 
 	pipe_config->pipe_bpp = pipe_bpp;
 
-- 
2.49.1

