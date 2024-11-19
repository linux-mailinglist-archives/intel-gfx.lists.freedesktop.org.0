Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A109D2E2B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 19:44:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8CC10E362;
	Tue, 19 Nov 2024 18:44:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z3dZv3jO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69A810E297;
 Tue, 19 Nov 2024 18:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732041873; x=1763577873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=p0aJ4Ou2pPbPJ3eTau2Vx0Xl/HUCm7DEiIGVzAFADaY=;
 b=Z3dZv3jOnFiU5G9cCRIJ3m/VVKRxtJuwWEww5So3mqbFY5+ZMgXUNgw4
 VZOWaknQtJmW9tnTXQKUSZWFgO5LFV2hdnb0wKglvC48i5/dcjT0HoFvj
 Ft/rLRjmF4sv2x21NMWn/jzlCaK7X67e818ci/UeIWbCaSu4GkyQMSrvo
 xTNdscLo2TmpuqhcN6UayiWvIwMI+DDM2RsfBN8T2/37rLIHGu814iKfG
 ifkaBan/sgmT2hOwmv8EoGruldZALkn2Mh6bAOF0AQNanOw1F90WwKRmQ
 94H6fcnXSvdpXX2WaZOux8ieIxZU+EIs4p9u8MKOa85n2AyhnJpU8qclf w==;
X-CSE-ConnectionGUID: ITupmdNqT/GZ0owHq4WEmQ==
X-CSE-MsgGUID: JoIqogQoSyW1qkItAlptlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43449671"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="43449671"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 10:44:33 -0800
X-CSE-ConnectionGUID: LNEiINqmQW6cInBkFwhOoA==
X-CSE-MsgGUID: dmvmzkonTsStB3snEkcwtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="94114934"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 10:44:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 10:44:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 10:44:31 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 10:44:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X1jnCjxK57jZs8SGEN3PlrdFmZA2URFZNCSypXFpea9Q48M14/kFUgFDPBIlQDIQHCB1C2QX+x0bii193+XuKiNG6+sXMYqyL3Doc58p66TT3E+9I3JGN0wI+UXf7WTo0rWFfIQE4Wf+XQD2o0/FCPbYkGv4ExCcqhoaFgmo9BBN2UIpVxlVX2HQSouCKH593V0iLAUWgFRWLapsTRLDxO3MEtJ8cyqafwvzJLCBe43ccUzqWehbSFL14gfE+g2e6/riap05vwoSOBZWlSOHTsZHdWrqZANWvmPHJF+cucqLzvRdo3zZHI0bLDrERgbYh8qiaD73GGx16HxE5nrEVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdoS6DGKb0ZW6BhOAD3b+1wvVCFXnhF5NOVlEoy+KlU=;
 b=X/TZPBLN3lcyya8EPZTLm6vwtId2TWyxYLrgzQUQami8cpDv5OIpygvgFIbbnzgBA1uvunPdqWKKbHU2QOfmIkjqONkY1GjpEUHbtKztpTsppsj8oCZEMAD4aGOfVQyGyPVh5ivaGWiK+jOwAhTrphzhHecpGcLLrZwUwKeCxOiK0sblO68F2KPOT6RayfqYEjoE1AHxCCUG/S4/SuPcQ2IrFnywmCQSiIs084rNbDSMOD9KkC2iLx5Ed1Fvufhdw6Yc/f5KsmwrKWwHr8mWO7gUnbBTgmSuMJZ0xjmfvd9YG1D2PIplI9I4dN4zWHWd6+njUK0Zr180fE0WJjE5Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7645.namprd11.prod.outlook.com (2603:10b6:a03:4c6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.15; Tue, 19 Nov
 2024 18:44:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8158.021; Tue, 19 Nov 2024
 18:44:28 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten Lankhort
 <maarten.lankhorst@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 2/3] drm/xe: At shutdown disable commit helpers instead of
 flushing
Date: Tue, 19 Nov 2024 13:44:13 -0500
Message-ID: <20241119184414.336105-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241119184414.336105-1-rodrigo.vivi@intel.com>
References: <20241119184414.336105-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:303:2b::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7645:EE_
X-MS-Office365-Filtering-Correlation-Id: b4d7bc9b-6d04-4a76-3b1d-08dd08ca32b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fY8VY+Y19XaX+ZQH09WgGM9Zk54336bALj09yxSr0dijW4Ja8tdWzBPlSSms?=
 =?us-ascii?Q?iMJDVaiBIfs+FzS7IIa2VW8IT7CkdtBCfPjoJViw34IO8VoC59CE1eVDHcN9?=
 =?us-ascii?Q?+TUkL6RRUZdJlOZ2iQNxkk8I3untxEmse20b+LVTVeX/I1HrsqH51xPO3q/8?=
 =?us-ascii?Q?SvrvwAIJwrNC0Dwk7NNHXhS/cogn23F5nCn6P6b8DHY3yq9Tf1pe1HQ8wTxa?=
 =?us-ascii?Q?wrOIhzo+fe3RTF0pj7H98N/mxkD/DxEOOHR1XjIs11Lr1tQH8T3auvw5Qb8k?=
 =?us-ascii?Q?SyDTdWZUd19FR17iXf9hCm8Nyv81iPw1qHY2yxXGutCbIxNDdTp2TpKloVth?=
 =?us-ascii?Q?WtbGIjnb0GM/ns1Cw+CyZdXdrCz59nfNUzlBecjZngWRsjsHRtfvPQkvW2AM?=
 =?us-ascii?Q?TNMMqCqRS9R52EDRnce0qdXQQ4OF+EDKvACaiOPpg2aV/eIyzHj9O+DI1Jht?=
 =?us-ascii?Q?ZIZ258/TVUU8pBCL7YT0alO7PaVcAxiOSMUNNmlRFBPMCZxd4QW8NiDaq4Go?=
 =?us-ascii?Q?nk1pzMefSRudhZbOB73M6ghzlXVmTwzu6QrwjEiLuJ87TKg90Ni/3ZHSHnVT?=
 =?us-ascii?Q?mGyXOjJ+vKSxEfoqD5VMXYgkhbWKK+uQKrHzp+TnX4PXngtP3VsDEsSLUJ9c?=
 =?us-ascii?Q?V32h/FDKKM3CSiOCLX/XWc1ClLbelGz4PmOMGheWDgrZLpZ1nHoJdXlIYddX?=
 =?us-ascii?Q?EhsogvrfHxnVXIUb0FGDuvvrq/Cf3QYnu/ixk8TH6bRLGsps6wejrwZ6e5ls?=
 =?us-ascii?Q?akfy/xLJaVzpZBakj+CnM1prxD6DLFqy1imDYNBdfOjVd1Tg9u2EN5Uhdv82?=
 =?us-ascii?Q?/H0VfG4peAinfL2tRuC47JhokPbkY532jJjRjaaOukJcuF1VFzop+7B0/scV?=
 =?us-ascii?Q?yStaYn2s+HOdFae5H+68ZeS8L1XjCS+H2t4pXbGw0VCriiKn8py+sEn7Zc4z?=
 =?us-ascii?Q?Gn8TJfIjCBAVgrSXy+hgZ3uyzmvTM2TMkPS9TOhcJrymwJDRLDR/ppZGDdGp?=
 =?us-ascii?Q?y1FXO/ytoIz9nJez08AlqhMM8nonR9p70g2kjvj32v3Al36kk2jbLtYEGxE/?=
 =?us-ascii?Q?CYqcqyY8qdmR4QEIr5mXmN2TJYscxuwqopiKHDF4UVqds0XYs8I1Z15qxgkw?=
 =?us-ascii?Q?lzKeNW1XGmwOx5NzekR1xaSxdFV8czhAUQHhuM8j4Aa45JRD2oIEU2w5CHQr?=
 =?us-ascii?Q?6OIFtdGBLCGXYE+YrUSb23ULXAbevrmue3siFwHNeZ+LA54C+FzBKdcWZYN8?=
 =?us-ascii?Q?3qAgLigLLU9JX7cpwEewI7FH3/iOF4wTKa7lfn2dMoHRteX3hTO673FMFVN7?=
 =?us-ascii?Q?w7+9NGJ/ilxJNMtf0su7u67h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QW836fov1/KOB9KQr7cupG5TAuA2srp+5OWZjiJthDfDugG42yagywqWx3+7?=
 =?us-ascii?Q?bssbP6wtOUE75DrZSXoaNIaTWmfnDe8kDbrhiCX/Wm2H765PZLsESA623ktK?=
 =?us-ascii?Q?XHqrjmX6JXNwMruZ8V8B3imDUAhpTg6P/YjOJ4n5w8yCIRQ2ddCGFTn3aDTM?=
 =?us-ascii?Q?6jTr/u8atDIucrMFW5yo+IsyjJW8dHto8Oo0hiiSLy0AbwtIqbrNEeFsi87k?=
 =?us-ascii?Q?J5/AnNro1OYl5l4Sa1wQVKKtnw1v/5GD4t+8CWNrolgU6XcAr5EAL3w9vLs5?=
 =?us-ascii?Q?vajn2fUKKk0D3L45H4CD3wzN5GO9pBG9/Oo2N/e1TXcpAiC+y1jehwiyTFMg?=
 =?us-ascii?Q?9vRXxBTMSmJorNmNmXOTGX4zUqAyGb/a7VqdHDe/8/H+mK3sMsZtReR51qkV?=
 =?us-ascii?Q?khrtZCfk+mT8iXR2Q6odo/MbqE30RblX4qTrAKp0rCLsVNo6Umw/Z7609uZ+?=
 =?us-ascii?Q?bsbgT7k14WPYS79HsiHvRhjJIG+vMPnBWHnHRipcqKTZ9sb1/gov7DWeBUlR?=
 =?us-ascii?Q?XY8nyzZjH8bpPFzZtOUwFvoMi0xlid0pnEdlYWL3DvQttZmH1I+8F6HynDLM?=
 =?us-ascii?Q?engSzgJV5aqBiUl/+LkfN1yYcqnsQPstMdDrPVOM+lqikBQsfyB+vPH5yrf/?=
 =?us-ascii?Q?Ji3BgHTWFEL1GN3PqybyajajaxdM1QVviR5XN0ZaAPryu7KYDKVFYT+tf1to?=
 =?us-ascii?Q?UKxs3xOQEXRdLmaxiUGgqHemAiWEgFJWbb4eFAXez08r4R5f6vgMTm544DCk?=
 =?us-ascii?Q?txGgNq57q7oz6WP95viFEV6bdiN0Q0cnPOcEWUi8H7qKQmcHb31XVIkGR7mm?=
 =?us-ascii?Q?bATrikxOhUTrYbQ7FfEs3kmT1NHQiNg6h28RyHx/kQW+ft5KIvI2uzopVoIn?=
 =?us-ascii?Q?iXvi7N9Rv1u8xsgCu+HF9dghqvLMvk0XXhztZ8C0CCwKbUfNebyBHNHwWQFf?=
 =?us-ascii?Q?0GozHsRmP19s9tXopIUE9qCvHIhJDcEiIuheDAQz3TwY4Q2iwlwM0yCd6CW4?=
 =?us-ascii?Q?s52PJ9h3o7hx6ghxk2LTwGBi8ApuDgJzt009WnmvaKLXfiWwOiVtrov5+RHM?=
 =?us-ascii?Q?0q+LFJHd55dWPy50Jh6pa0hdsZlLf2RDbxTDV9MeCzQgdjXVNSzEDT2AdWeE?=
 =?us-ascii?Q?zPRhIL7gP97V5BKODAW7yC2z4RGRlrwCXAfdUPzn8T09As+orvLbQa/+LVVI?=
 =?us-ascii?Q?pYiu8YPNqlwG34FgJshaVPr5+csZCbMm5AD1Yk/OqdP2URmao5DiIUTfH8Ip?=
 =?us-ascii?Q?XPh1O1ss5WYt70yZSy3wd/slm3/6G2VIOijl5tMgm0QJjwdzhvMo2xt5DNHJ?=
 =?us-ascii?Q?uPL29X39IEyhtW45pJD4c8UrdXUGYsYHj+iNGikukUjQrTXgDHIWk0USQu3o?=
 =?us-ascii?Q?G0DOrlx8BMo8m+QX/dRib3jJB7AIXdNOEZCQT7MlZI+pYreRXi2Uk4CM7hs0?=
 =?us-ascii?Q?1j9/GFwzznz6rRDax9u76Y9hv75btVzOcrjSY113lAgUtkHRcJ0bvReN8XYf?=
 =?us-ascii?Q?jt3osnkone0/n3TQvtqW7cRw96uAJ9Uv6NOKbwgDyXeQ86svn2R/z6j2Nzol?=
 =?us-ascii?Q?04kFwV8SSCqbYLsxQ4GiZLEKm9dwNezi88SoOkSGrwT6EIPBaFYtIa1jOPXg?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4d7bc9b-6d04-4a76-3b1d-08dd08ca32b2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 18:44:28.7541 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DRl+Yg1bt1/yZWssg1UnRcDQ8TxcYL+9+NafCmE/Wg1RVIMqn1H8XoXVJAYoprjPfvYmHBV/iLafbP/gBjwqYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7645
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

This aligns with the current i915 display sequence.

Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 69c828f38cb6..4759c3cf5915 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -366,10 +367,10 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
+
+		drm_atomic_helper_shutdown(&xe->drm);
 	}
 
-	xe_display_flush_cleanup_work(xe);
 	intel_dp_mst_suspend(xe);
 	intel_hpd_cancel_work(xe);
 
-- 
2.47.0

