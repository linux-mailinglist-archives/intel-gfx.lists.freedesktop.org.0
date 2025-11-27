Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D7CC8FC9E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B046A10E898;
	Thu, 27 Nov 2025 17:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLoA7mHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D6A10E898;
 Thu, 27 Nov 2025 17:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265922; x=1795801922;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=9RBwtYVulOnky8uAE7tPzomPCe51B7D2TJ0lrBDg364=;
 b=LLoA7mHV5AUSbRVrygw2BVPk9nHoszGaeb0C+JAQeDsgGVuirsvD5UjW
 NnqjbzOjZ6wHGZClPlRjj7TDDBibal2lWr59Bwxp0RuG1Uh4GRVfnI2aR
 znK03pWKKaSmsJ4HxfvQaiUfgaW/VN3hBa1gsiF+uzGu1lMdZHLSq746q
 rUhmnrybarJlGjBUGn0iP+Ee8ffKpXZB35OobKFkvjbNZ6ovINTgi41il
 bEzX6xMwWzOBBCEOUH0+peWSWczFISgMcEJ5BDYy0HY16PX1FGaTwi+jG
 ej8LLyZTXBhBA9h3EOdF3R72cIC0ntSgkGZ1z0Xzu0RZzyVWI7y2Hl2t8 A==;
X-CSE-ConnectionGUID: dSChW1GKQ8KFNP+rCDktlA==
X-CSE-MsgGUID: NT4An5+5Sae+n6lQv7IjNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174652"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174652"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:01 -0800
X-CSE-ConnectionGUID: yer/i0puTK2s7i506t4/2g==
X-CSE-MsgGUID: yBLnTfA2QXmOtqRpo1LeuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409397"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:00 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NunGI4rhVrqjRcJjp+Lza9cOEBqgRhhJEmxc/qWqwS+/CZBoxa26cN1jPlsjwbXSuVRx2sB2k0HicyO663IOyJD9pqPylSn/+gW8iODuNE4ReAKcQB6PB/6N1b4sgnvuVy4OkfRY5hD/nM9dtKqeT1iBdZN0YEyUEglLdNjTkKSly6ec1SXAtLGnIzzeRA5Z1LBEn946SstwCmELNH0uM5MIN15DfI+IIEufm2FHv+sMPVVv3UmY75ERG1zlf7CqawyNa708VhZiiowQd+ki6aEf4i9MAYqQ0hsu1qXPKMDd0iKoq5vq5MCbhWEEiEiFOklMxNBiFtMH76P039tEWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izMM3aauBsUU9rp9N0iTP7Leza12LVc4aN7N9i/4Gcs=;
 b=CnULbUE2//qlGLzFzL0fBnUIHzq0BX4fbHGKEFAWa9mX2hx0GPSaBqOAdulYteXHYooLR8lMe788sj1gotcEXunvh6xMpW9pL2teE9bVmskdW797NbogacJEDVtvU4BzEwNdrbNYCVn3YD0M8ALteH9cPH2/Iw0IhkqAmwTtN94tNOtPge2BwAs8CQvls0/2ynYq1QtFAy1/oW/y7gmUtdAw88C12BIwZQdosCRidU894/P1oqsAzjhttmqn4dNSYbX8yd9DGjy+24MTthMxNFNvLjqC+WHpz5HF9ECSZUZ8P7XiBq2RG7Q0wbDted6fmHiyH4iuSGL/VEsqRUi1Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 30/50] drm/i915/dp: Simplify computing DSC BPPs for eDP
Date: Thu, 27 Nov 2025 19:50:03 +0200
Message-ID: <20251127175023.1522538-31-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b14dc6b-abd1-4a92-0482-08de2ddd9740
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UfE9AsKcUpOoSwMTt60Vx3pEj7Kt5TLUjBdayyDvzf2xkTMUOLMMQ2zgVnqI?=
 =?us-ascii?Q?0M/LXg3W0glo8LjNLNRWC3yMYR+R4dNMbDHO8lUW2GfkTJlsLaZ12jAUiFkH?=
 =?us-ascii?Q?nV+h9d7GwBWNKjpDwT0iVZknj1cc5LhJm1u4d9LS62zz4RA2nwAYl2/TisW+?=
 =?us-ascii?Q?anEs7MzEAoFrd+H+7yWwjW5p1XE6g/WrKmQ9eIfbIKeeJGmmsW/YSIsLCKXM?=
 =?us-ascii?Q?BMAHDKFCrjBrqXKQqK5fh20QgTrh6GkFp7AIJVIeyYTHHRN+yr5JjUQAe9jG?=
 =?us-ascii?Q?DIaZgn5FHAyuqXDXB5XeHD8ztW5v2+AUduGUTIKA/P0b4AAdrS/ZWZE+GFsr?=
 =?us-ascii?Q?jA9iKrhCCmuf17854Z7uzSgnxfKahqrsFVSHQxOOOOPFn4/iAe3uBJhawu87?=
 =?us-ascii?Q?OclZ4hXo8fHKaYUX4ztjWqM5Av8K5SRoCd4Z8Be/MP1skY78DXEw69SZwBhI?=
 =?us-ascii?Q?oQkzAlA3jPCGMHb8BKoHB04mM44hE+ejY6RYfo8p6mPfIIUGzXyis2Bh7Eas?=
 =?us-ascii?Q?rZdGt7l4+ZTZYCGabMUSi50iARQV5II7jgUFbhOYNmQJAK+lPN/BDPod9xSw?=
 =?us-ascii?Q?qp91cCTrYtZ9+cbi98n+8P2DkLg76+rDzhZy2ukwsxtvp22Vj5YHaNsHC6zu?=
 =?us-ascii?Q?yjnq8BqLTDghVplcyw4j1Zt/uXGm89RbDj8FuxjX9BVPCNmylgOjD1HobAIy?=
 =?us-ascii?Q?bZt2WWhSnE/a+KCT0FazZZF1IHjhSJ+Dmk8Yf9MzELs+uTwmBXY4p9XUAPrx?=
 =?us-ascii?Q?0StLZkvjDXt+d4bTbKtl1qnpaeLYF+pJ12keJAZCP69xwp7y9YAZ3O3vnw7u?=
 =?us-ascii?Q?KHBS5lzoWDL6pJ2Uu/tmKMR69qOvuAdqDaB99SvMrSEBujFJXhZDhCKA+Soa?=
 =?us-ascii?Q?OvfPFwYWcmfl2KDdQLce1/AdM6NUWpEy+8Cqfao0slM1zL140hKPW3CugjPJ?=
 =?us-ascii?Q?AGndT5kZQVq4wgsDHyLhW9rSZcvjCp5N/eth1ASpN4RXVSGUTF9IkVt2YlZH?=
 =?us-ascii?Q?EL5eBPvZBrWlB67sCBedr3bo9NIn+QDNJ5Lva9pkoK+y+mMRGf96jBRkDe6k?=
 =?us-ascii?Q?mXGccE93PXX+2x69HA+icGWfQJJh416CxqgTbmAU3R/6gz7uVYX9dg3MpEod?=
 =?us-ascii?Q?c+RlP4WBgPuEgUprd7HW01Pm0fvhQ7tHptLA7pX56jEnUdImmE6sh5Z3LgED?=
 =?us-ascii?Q?nWi3KCS7PTnQjM3d9Nyf0engOW6BJnptvDdPtqL9mqe+94qstPMY4tUh+MGz?=
 =?us-ascii?Q?TWhrtmGcYyZVCzg2Zx7xC/38chlLf3c8jOAEPYqBUHq9Qm96amLD4SO0WlyM?=
 =?us-ascii?Q?4lcHLEc9ux1OMTib+i7pOZhoxLN9sWJFLGACavoPNydOL6/DNg7wPwlFGRFR?=
 =?us-ascii?Q?qH5AdwePt8/fbYoDAUJKvJT3bQS82o2ytX5BdGvM6PrEEYeYubVsdAbg3Lbi?=
 =?us-ascii?Q?9/yG5zqeUJJ9IwCR6OA53wKPay46VtKf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xr0nkcMsZjyM/Nndgem/7VhNEkrJVaDDhfUBtdrZTrZELxifH2ma2tMPDARB?=
 =?us-ascii?Q?kw98Wd95Eg8/N12A7jez2iNNzgTaHYlf2r9my0l1md9yb0K03hrj6BW7JIZo?=
 =?us-ascii?Q?c4Gia3hukXt+cseqsz0weSwX8PtoY/VKzaVRCX3HVbPs+HqCIxywqWci7fFv?=
 =?us-ascii?Q?+XZUCglSkYUMVsNExgl+Ug3ZJJe7pMNYaLrjT2j+WZ7v63JM2sMStZ+dvThG?=
 =?us-ascii?Q?gbS9fj6i4lJKsZj2hoXu8Htg99bRxXflo3MHHgW2v1nK6DGBT/BpbDF2wLyP?=
 =?us-ascii?Q?8LVCM26mxvrdyhUyfp1PeU9LCLzN8ykvPdavr+EmD4BtODUrxFihTfUyU/PB?=
 =?us-ascii?Q?E+7dJvenNThHQZpQ1nzIojZmc/eWPEJG2aKt5i3lLeAmNJ6CpwOPrMIV6mly?=
 =?us-ascii?Q?uQTh+qHbnJQsiFw1Jmwrivm/i4bOoAOQQBCmuz+Led161UJY3aDZBiJyWaiF?=
 =?us-ascii?Q?K+U7NWMpP9b0Q9x4SH4ZZ51UGFvvFsqR1itmzHGKQU8fdNgMIfj5IwpzRgmh?=
 =?us-ascii?Q?YollGYxPEFPhgrT77ATrU2nGa0P17wAgGSJs2auqi97wQEFkr9+KYmYdDgXd?=
 =?us-ascii?Q?XgzCyAvLyRUnsV6YCCCjrPM7bkxIHhAmQJKN0Z85VfNG0+oTfs0A4IEecJSk?=
 =?us-ascii?Q?Y3A3urA5UYKR/+YJoR8ajmDvNC5jadrYgW8F8Kcq/Hs8kD3ctjlHYEZwY6sH?=
 =?us-ascii?Q?RYCTFWcSWqmcQHHtK0OzZqzh4KLCpBZ4xNHpBJFpiNBQEGX9jT/bQZhQZaW6?=
 =?us-ascii?Q?wS055ztuspcc1VXE9JN1ZpHMKmCCBVgMvQfn2HrCNAbXK7JUfamcjJAYYNFa?=
 =?us-ascii?Q?fzJ4aTPNKCMmjnxVNOux3kry1LM6eF0vnCPVD7FHgAm/K2FeEXvfZGbVpmwQ?=
 =?us-ascii?Q?jXZ5RJew2JqIhIAnqd6hHPmMwo9uIRZTTiGNxvrpo6JPSuzerJAlx3Mc+DWU?=
 =?us-ascii?Q?Kv/5aE+2rkmGTK6r4BNLTRw9dRBJrrl6+g1AsnPUJ3yzM7PTn6kxJ82SfKhg?=
 =?us-ascii?Q?YDHZLk0zJWA/Yg0zv0dGfcNd5WoOSKUkc/QnZSX/Dl2VSnZP4M1bfpb6yeiV?=
 =?us-ascii?Q?6z4ef0g+Pmhdl1uaYjiuAe/DrWwhSyNgN4XLxkc2pw7hi4bGPmuVbBL1BuQg?=
 =?us-ascii?Q?/0CCBAkZvqm6vakri2wDxewYuYyvh3ijBeLMgHnY0wvXH9iLo5hTn3dL+Aq8?=
 =?us-ascii?Q?ywXQbYRner9kr6MV6RQ32QacpzVb7+kpdNZLGh5LZaRjTu8kZmkfwtv/b480?=
 =?us-ascii?Q?0tj73t13ptcHfSiwZ0FO2Sm6TTUXf61M7K3kUh0tyxw534Sgcb9R7LAOKlX8?=
 =?us-ascii?Q?CKKssTjeWRjQdaG/OzFVrIkP9NrxXpYJSjs2H8mFxSHMWpg2tux2DlaXzmEP?=
 =?us-ascii?Q?I24wjVfPM+9KX5E9ZPOSvjxBcgLQgEcm0TnbR8Y7vS52W8+g2CZh2E+Yp9Ih?=
 =?us-ascii?Q?3x6kTvrKJhfO+x6SBsjzKnwyKxpFYIA6Vc5b83SC+c7FpSEnk7i8jFZ/0Vdc?=
 =?us-ascii?Q?ubw1tYqGwTI4BOEH64LbZ0m8OB6gQE4GtaN+933DdnIJtu8nP4jOpclSaJTf?=
 =?us-ascii?Q?tIeCswkpW6VZcH6ocwA4UdlfSvwUGZtlg8mtvPzgxaPJbyU0iR6MVKtr09tq?=
 =?us-ascii?Q?ogsxrPdA9DeLKT3ZGgGfaGUI8oPJNyhug4gL2gUK/YbA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b14dc6b-abd1-4a92-0482-08de2ddd9740
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:28.3088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EKiglp2SAdONab9b3sa/pmG8MX272mCExVE9k8ok1TA05lqTatta6LjRk3ufbAFQkBJCnW20CY/Dt+E5JTFCvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

The maximum pipe BPP value (used as the DSC input BPP) has been aligned
already to the corresponding source/sink input BPP capabilities in
intel_dp_compute_config_limits(). So it isn't needed to perform the same
alignment again in intel_edp_dsc_compute_pipe_bpp() called later, this
function can simply use the already aligned maximum pipe BPP value, do
that.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e351774f508db..ee33759a2f5d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2337,26 +2337,16 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
-
-	if (forced_bpp) {
+	if (forced_bpp)
 		pipe_bpp = forced_bpp;
-	} else {
-		int max_bpc = limits->pipe.max_bpp / 3;
+	else
+		pipe_bpp = limits->pipe.max_bpp;
 
-		/* For eDP use max bpp that can be supported with DSC. */
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
-			drm_dbg_kms(display->drm,
-				    "Computed BPC is not in DSC BPC limits\n");
-			return -EINVAL;
-		}
-	}
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-- 
2.49.1

