Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0671BC42CF
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 11:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A481F10E0AB;
	Wed,  8 Oct 2025 09:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="grin6NSi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C3389151;
 Wed,  8 Oct 2025 09:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759916531; x=1791452531;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=awU2eGlraOSz6FOgaZHOQLaZgVmjVeyfKYXPi44SpCs=;
 b=grin6NSiuOPR8zdA1gICEURX9O0QZ4pX24jN3gvhyqC3lp6TtasF/Srm
 tlr73UnfpRXSysTHFFxcSDHzSLmqylyGntDRBTXXlEiGoUg5/lNit5GJF
 Qtb+RCJxaKDJsr3m1eeDS0Wa3hGTsTNYnFoSa2vY1MU6GeyfQ4lzOmsR+
 Gpa7Tuq9qnt/9HtXrQKzIhTb+iemWz8ENA7IfZzy0AFahUjfSmJNtkBQd
 Qn9Adhpanb/KXmucr2DaBsQ9A9Yk2veVrfNW0jHJO4BTqJKbQ/I8wTnwC
 Na+/ykKWcy1tNrBDLYoai8HXXcrSfed2svdjsyxiGl0mNzNikOhFAFMKG A==;
X-CSE-ConnectionGUID: IZQlSeO+SOquNuH2A9ZmFg==
X-CSE-MsgGUID: inl8PsT6SrKkCcK0juFIRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="73450923"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="73450923"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 02:42:11 -0700
X-CSE-ConnectionGUID: VMIylLJjRuGnRocztXKQBg==
X-CSE-MsgGUID: SKg+dwsORzms5BSZ6Wl0Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="211346400"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 02:42:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 02:42:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 02:42:10 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 02:42:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kyYVgGfeNjhCorsPuqH/7hfM475pyev+NPZJ5X/hM6TtluF+6fwQlZv3KQmymGTiudr5k79kl9LILGFsW1hOTUQiuKlG6P2db0MZ9Y9BUvjHetujGXEFQ9wBiIXYsq7pqH6AbkJe8/jUxOYJ7IyJdCUkdVlhKh7bfGS/Kbn+IVaXBlDOrLLD5X5OqNORcqRGE4h8Zl6aOwYMq5yl42enOMzJNjW2cXrBm0m0TWXPps9AnxOYj6pn0NW5/wEQOoMFeO/2uO/7MA7egKmg4eH9T9LESGgP5hny/heVvKdyfa3RjzVuCTzQNZiCBphc78cWEx50EpyyKq/Z5JbeOejBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZEGJvoa4oEe18nyzNuQ0sf0Aj5T6wOUicJ8bVef8eIQ=;
 b=ywiGdCLazOAZidUGnBaHT5UPG5mV41aMphoUwKCR2m+O7rIvJf9a1HUrJYkvtkDjrnquPBGCrU7nakjPHra2JOjVQbPOmrbJXMty57YLdYkeHTkbZlnoQVv4YB5nAVJDqVmsAXl5ipa1yoXfkwE2XmZdvG/NMmJKzONMMVZRnzrwtrZnv8pCQnXU06k+rBawVMR2LxZhtqcwRsy2u0OEiAjrtjRrtQdeGsrweLTDygBfK5jDHrmiJsajCc0kqF04xtP+DQX/DjPVC57Y14rP+iCLnOiNzipP70jFdw2+QHoiuFyOqwHOM4r+GLC03nirW5sN/0gLZ7AF1/dDHbiNXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPFD9C09B4A7.namprd11.prod.outlook.com (2603:10b6:518:1::d54)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 09:42:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 09:42:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 1/2] drm/i915/dp_mst: Verify DSC vs. FEC enabled state on the
 link
Date: Wed, 8 Oct 2025 12:41:07 +0300
Message-ID: <20251008094108.88242-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008094108.88242-1-imre.deak@intel.com>
References: <20251008094108.88242-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0352.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPFD9C09B4A7:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b422a44-cf7b-41fc-6e00-08de064eefea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PqhRfYp9rb4ozDRiV5oizwWGaZhYr9whPxlR4SrS2HdPPXb6QwK/rdotELOS?=
 =?us-ascii?Q?rA/ScCRYoBd1oRyh/me2bz/pF1vHAMo8eKSfks3seS+y5QtC5/nzfj82NWni?=
 =?us-ascii?Q?Y7d31a04p5czwY+9qZITsRrPMsnl1pBzHKk/WVB7Qn13k+TcrBFmx0WuyjxK?=
 =?us-ascii?Q?TjPMsT1Fdv7N0CHlMa3ClBvDDb9eISmnXzygau+IiFkwyBw6fJAkClZ+Yiyc?=
 =?us-ascii?Q?+l5EHo9hmgmQLD16Ddmmfucg/pIuwaLVtHedwgQY/brlBGENEvS+46cOgihC?=
 =?us-ascii?Q?GtM1YUA5sJO30Z5cfbzziXT5Lz8o5Jt15PfK6gMtISZtBeH/kUo7op3vFSiY?=
 =?us-ascii?Q?xK3ACTWKTP6qsdod2xfQFlKxqAFv4cj2l/HFL14QaVV6O2i8IyPwihoT3cot?=
 =?us-ascii?Q?IVCkpfMdfpNaAEwxymfq02klj9mjiZzoiG3DjyeXNbzW8ae+w61d4+ae/aXh?=
 =?us-ascii?Q?ho5cNSXYMKa4gYMG9O7rGX3jpLfDuS9I5nMkRtKLMh+Pq1laREjVOy98iggg?=
 =?us-ascii?Q?R4KiENH4UsCKLnRo7rF7vW4RfLKD4gB4jx0HWN8tWPL7YpZvTCoH+6J4Ea6k?=
 =?us-ascii?Q?f4SwpTBa9BdllUqHvsl8TeGecNg8/DRJFaEdrlVmHmYvSwELp5uXaa/awlSV?=
 =?us-ascii?Q?Nhx2+oh3fIIBHunUFZvZuMKObBv/ciAvnnAuz8DsdpJM0oCRmkb0B80tIfcQ?=
 =?us-ascii?Q?gSYXVgGvW/23s9pro/CXTYNANWDFmPYt2sTshpTuLD/GgQcldOWCWXAyXmV+?=
 =?us-ascii?Q?9gtPfxAQ4HBK8io5xTQ7tsYdcADJoXZMg3Q1cYMgjuqtfhIa9z+XCCmzTCa6?=
 =?us-ascii?Q?CvnXQku0gci8wcFvUzKEZwX9/W9+WzH6uyrVsIsEFDf8M6mrXuaxv/dhaaAg?=
 =?us-ascii?Q?dPdEW/Z4RK2CqcEO09tlHTvz+t0mVUddGL2kkF6KGb632ckV+tASf2OxGfYH?=
 =?us-ascii?Q?09lkTbYnidFzrUOTSPtPbYEBvyjI18vfHTOcJSRch0hozb2OQCaXTqezsSrW?=
 =?us-ascii?Q?Ig3C4zukyVbWSV+I7ch3IWcfASBOOvkL48mTFNhaKmvh5vQa9Yt0YzuVxsCJ?=
 =?us-ascii?Q?ZvmrkFTij07kE38E+HRARL2iJtVBYozLC8UX3T6vdo6aczLq+YsRJ2QIT7nj?=
 =?us-ascii?Q?mpOmN0u692md4BT7zelTIl8dfmcYXkq/FkYN00NZnpn6cARFTNxx+ApUIWmi?=
 =?us-ascii?Q?vlvbs2PeOxtRLaDjPQmtVG5AAXN6Mk6ZK1oIhorg2clyOTDeE4iEbYdNyWKF?=
 =?us-ascii?Q?7StOeaMjF7oRrXVnPUSiNOJI2zRWyy3WEfrj0WwyPNawSGjDTOt3hcX61uTi?=
 =?us-ascii?Q?umi73JWdJ0fDj91XMqOsA746P6Kos99te6muTHaVHAoYXcKGkU+/oyzJF5O3?=
 =?us-ascii?Q?Eq0mmD1F/0iZbhEgOGcgsLMpLE2eLgft7p+j4HX8IwZSz1aaqGksTUGeOpGk?=
 =?us-ascii?Q?hVb+uZFLGofPweQM3ryoTtsUqLYRDRer?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IwpEiv34csVS8JH5R5gtlK/JwbgGajZqa5RwgeYsH+A0BNHE9x6WagxHpWHw?=
 =?us-ascii?Q?U0yJ2fZAgZ541Q7DR0n139/PJv0+VqSUUHft1UIyngy15tpflQAsIwU64m56?=
 =?us-ascii?Q?xJQyIBd12HCEJ67qJ0QDI+x54XSy+3pclfK6Xuy8RFj1wqWT1MZ4gfEm7SY+?=
 =?us-ascii?Q?ZkNQKvn90wWv+ZLaQLtXvC7sahQ3ugeu+kvDtbDrTY0Il7IvkDaFGxPo6Uso?=
 =?us-ascii?Q?10IejHWhW5otWGDPAODwbWJFNjWeNn4u4I03lk8v0Izx3f/SjDSmXA5maJro?=
 =?us-ascii?Q?2GZWvpDrxizsKf2z/O0MlqP5QRVVEjBEbFlp8h/QZfP7NYzXjuJLG4qqut4p?=
 =?us-ascii?Q?42F6itpL2L1OxoNz9fvcEPEWOXJXK8UhI6l4zdQb0czb7kiikQIuZZsI8ZyY?=
 =?us-ascii?Q?8fBEWTiePDGHxmXkPzuFvHTGNXNEG0zKzH6XT/2xlKhvaFoSRkSzj+o94nLW?=
 =?us-ascii?Q?jPlGHx0ll/96AIUIHd/CK+Bf32XU6bhk+oX7OH6Jl9s8UaZMYgiGtF8kZ/3C?=
 =?us-ascii?Q?Xu/tJ3ZnC5ap5ylexbkRlNmSIWOFnlI7iNAnZzIFGV90HCENG57cm0jaiB4C?=
 =?us-ascii?Q?wcJN0/IBDxZbhTubxwgFFfWxBajIPW9f1N1yHL4IFNzlqm3246UxLGc8K/02?=
 =?us-ascii?Q?TCf+kci4j9nTTEjEuZI23NDpzbR3Gc00YNzwEk8Mh1WUQlemMZoz+I7AP54v?=
 =?us-ascii?Q?7gSV+lhpl1FT6EsULXsysoWWkqk2XIR0guZ4+fscvDAPaSw4zgvNlb3rEcMf?=
 =?us-ascii?Q?5mnRG5Iww/K5mPt86LY3U1SFTyFmnETL4HzRcnW3rJQcMa+jsVV88JvcWmeO?=
 =?us-ascii?Q?wBYZv3JBzGRss6SXLLaKArdQF4jDfEXDlL7A7J0tWaTXGBzZNR9isJwUS7M8?=
 =?us-ascii?Q?PCMTivo/ANtpTbuuzxMD3CQDmSykDd0Imcv23aogJGdOIOdI+gpLNTGluO8O?=
 =?us-ascii?Q?SAjUCLSS12V0kBc/VK/L5iRGDwLbkYkEA2TELA339A8+JIGb79xnLXeLdrrL?=
 =?us-ascii?Q?BKYQcaXeA90jQaIxSAxNXk9s0wOOUnVHNTtvrfxVmjALzQ4YYQ1jmDzMBa6s?=
 =?us-ascii?Q?atfCnxLpUVQZiU6jHv623IMuq8JIXGiCEbuxiFUyA9arHpP9TB9nZkv2JRcX?=
 =?us-ascii?Q?jQaZLSpwSF3wRsFXhk0HCLUGwR8x9IzTe4nUB05F9Ie4M5DhtfgWIaoFgj9E?=
 =?us-ascii?Q?nJARiWpC/PetDFwHLK08JMH6QhGRRz0NtkRvomo/PC2e0w8fUz1tAGV4uoUL?=
 =?us-ascii?Q?JhGcY6hZpCxVbgdQuuTKkX8aRN61XYjKKSmQIt9cXwDJtfWHDllUGaTH+Zw/?=
 =?us-ascii?Q?NVtNIuNYI2yKiR+bNBmFVjHP7Mk6tqVhasVvhppnQKWgHCVjhhB6wKPXUX3Z?=
 =?us-ascii?Q?CsvSrzlzeOjF2omFm4nKS4386oElrUy4rcenRe65sgQ0bDbkifi1YVrjC6rx?=
 =?us-ascii?Q?TjKrdR2JxdPbvhkPOXOUFMKVzghlVOIedbkyUmcnPXL1CYRG2ErduP8+MPMw?=
 =?us-ascii?Q?ISSuvL30o98JwElncSuuov1ZRRkXNSQFjQmObKuEse+lnwpIHDyEkp/iANj8?=
 =?us-ascii?Q?7qZDB0I+v+R7pnx/BZ39+tK+pSqk13fIa5FQPvPYRCUGHe/2DtnFgrGh4DMC?=
 =?us-ascii?Q?0QV+py+UxLzjuoUTqEsr7m9TosIPSq2eyx0H1k4DpI+s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b422a44-cf7b-41fc-6e00-08de064eefea
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 09:42:04.1192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2PInKhWMLegtzQkp5KIGzPtlj8xxH1R2Tc3Im7DB5gG4jJH5NdEy7BGtG64DW8piDQJ9/WtmPKSJH5KzDGjz7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9C09B4A7
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

On a DP-MST link the driver enables FEC if and only if DSC is enabled on
any stream on the link. Verify this during atomic commit check,
while determining if FEC is required for any stream.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.c   | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  1 +
 3 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f2266b2653046..73064829ab3a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -833,6 +833,10 @@ static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
 
 		if (crtc_state->fec_enable)
 			fec_pipe_mask |= BIT(crtc->pipe);
+
+		/* The only reason to enable FEC on a DP-MST link is DSC. */
+		drm_WARN_ON(display->drm,
+			    intel_dsc_is_enabled_on_link(crtc_state) != crtc_state->fec_enable);
 	}
 
 	if (!fec_pipe_mask || mst_pipe_mask == fec_pipe_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af17..8bd855c25896f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -35,6 +35,23 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+bool intel_dsc_is_enabled_on_link(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->dsc.compression_enable)
+		return true;
+
+	/*
+	 * On links other than DP-MST, the only stream is that tracked by
+	 * crtc_state, so there is no need to check if DSC is enabled on
+	 * another stream on the same link.
+	 */
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
+		return false;
+
+	/* The only reason to enable FEC on a DP-MST link is DSC. */
+	return crtc_state->fec_enable;
+}
+
 static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd74..c5d7cf9ff6788 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -16,6 +16,7 @@ struct intel_crtc_state;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
+bool intel_dsc_is_enabled_on_link(const struct intel_crtc_state *crtc_state);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
-- 
2.49.1

