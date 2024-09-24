Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BE0984C4C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC09E10E758;
	Tue, 24 Sep 2024 20:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blQ4yVxH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434BC10E745;
 Tue, 24 Sep 2024 20:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210593; x=1758746593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=i4ore3a8UpogcM8UHXmK0aMcLAa4Wg4tlEu3q4npATQ=;
 b=blQ4yVxHgq9FshE6E1xPCkZOv91vc7ssndsUuFkUkZdgWan3EM4AhjYC
 eSw0XldpyeuIa6lgE/0pE2C3RTYQPGy9KEAVEhEibsGm3J+6TEz+o07hE
 uw1vfy1TQj3brF2+D6xppq0f+FTxhMLd3G0LY2wBFvhfjZnhqCodqkQ8d
 ii2sE1Gj6IyHzu7qzdYX0t4Rb6Jup9t9Eq5FGIbWJpyPekMOkuE3Hx2g1
 bRNMJDDqpUfUi/YJ7/XzkxKBKbYY2F1UEYNfNb8QYpz74DDCjYbm0op2K
 6J9W5Nh5LIiRFYmeRPFySOKXRyOF2KVchAb0elZVGF2R1dUbi/eDpP9SH A==;
X-CSE-ConnectionGUID: FPyaf2qGQ1KVlenkukyIlg==
X-CSE-MsgGUID: BD31C4C3SyS53FCkpia8Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751509"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751509"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:05 -0700
X-CSE-ConnectionGUID: /pF9skO7R9CtLgvfbhF4Sg==
X-CSE-MsgGUID: gHKDaNxyQNmU2XGRcXpong==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298610"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kq3X4ufoEm0RuEr9e1hArTntIKqjUNhlXPAxTfCA9XAqvG8mIx/3X5cR1aHTATJKVx09oE1pJrA55TDSteDuxlUyPRb6vXjz0LY6XARIpyzPZ2DcGqAcCfAfmYc1XklZd+HtXU0xQJkwpp87nJqENOxCKqEJi82aQTrwHmYjMt0U0pmJNt+eQoR6SeftuSDJjsr+F1jK2mPIDsO1tLbmaFpIw91RUp3ZGa2LI4NsIzar7YgC663goKi9tAmMBBQ8sctOpNNCQH2yUg0Koj4kLrJr1AcT17i/ZsjCPzAqUTI8PXps5eCCfP6p5XLceyOk4l4Htb02lLv1U4sDzJ+cCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MDfIxhKTbL+mnm0uCwP5GtpHNAEyukjMuSn80jHyric=;
 b=shbEeS5x25VyRYpVfojB0q5w0HZRiFRezDgRrKvHRrqOiuJqEKwfNjk2dTqw+HJXnAfnwAHc/uDlLJXoKKWEk8KDrvtA2LbZXt5RImFi+43jR/8M6ZSrNqSrnk2mJxTYoEuA6UhLg0Xm/CJ0mMyj+TMxuWIP19dHQEjdJuWLHvO6on743uMkXgaUo+QWnodRGllIaG5tqzLwFvULBxPZBuHF0h3WGrEG8Zvd/r53/zU83CSYDhefkiK+kgSt6c1+fSEQOHi/gTDSOfsWggs13QejMKXuATqeeKIk0jUz62s42Qo63jGtf/7E/vrbLrz1rrVx90J/95ZkEnc1iDf2yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:02 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 09/31] drm/xe/display: Delay hpd_init resume
Date: Tue, 24 Sep 2024 16:35:30 -0400
Message-ID: <20240924204222.246862-10-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:303:16d::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 46fb441d-4967-4dd0-1f7d-08dcdcd97b7e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Nqmoq2fb6OoSNyMwRdzU7Vigf+Q45BgpYaiDaDQBZ+9PrlTu1lyjjJ2F5O4m?=
 =?us-ascii?Q?IZuUxVCNb8Ncuhaa2POWpacQHpgeUaRox4xoUsg4E+SiaoL2OdIwnh0yPs9z?=
 =?us-ascii?Q?vgpQvChupxMHLEjTrGtiHGDnU4deu8LQvDXIOzfbTjzLo4li3SKIhuFyLrg0?=
 =?us-ascii?Q?+ulNwJKNSOld4myr/yf+6smxOHQ2xjYAfzF61MdAaCZgU4XUVU8TsgLgg3oa?=
 =?us-ascii?Q?2AfmDH122z/qgtvqBwJjarsDhKT7/DhIsJnoMDDvpSCKJZXqg/px+xnoV983?=
 =?us-ascii?Q?15DnePv7OAx/0KuBtPCUnARnZihY0tC4/afCu197J4xYowQSa80hgWLs9qCQ?=
 =?us-ascii?Q?ZFljj76ANCP3WvS0cOhyMpzBgi1fAstTqV/kAVG1CPFWtqdl91P5iFK2EVM1?=
 =?us-ascii?Q?4dRK62mLiEWAGN2/FoQD8hqtKu8MJnWPWOJs+sLYX3n+mAQCyS6HuXcFhDj+?=
 =?us-ascii?Q?6H3EFMpEVL0qj1oZoO/2Arq9ALpWRgGU9KrgLzA5YhEJ13Tpj743O6nGYHI1?=
 =?us-ascii?Q?umTy4UuzBGGmneUPAc5qyZcFd823eIYUE8Vpn0SUl6hQvVKoUTMrAFfvrLdj?=
 =?us-ascii?Q?61ZWiNm/PrFeuI6yIwMXQqVRfdHf5i3d3L+py2qKbKNeKBrNxS5LfGUrLDg2?=
 =?us-ascii?Q?P1citJw1o/0m2sMDwedtuWKUw7+mzsbBxd8Tgq+aZYfvxciyDALQ6FvRnJfa?=
 =?us-ascii?Q?wsQ9uSxhiCWOWjTUlqgBsqRlroi8A/nxTVUaMUUcEai7s9ruyqVbTYGhLA1W?=
 =?us-ascii?Q?qdGtlYYdK6oC/vOLtlPSllAcdzIeSK675fxYzit7e+Y5kOv7i7CFmyCYlCjq?=
 =?us-ascii?Q?a3HGMqGXEX9xytZfU9v8g8RP8Pnd4IHduqyJfL2deM9zPTVtUw/JAJSOE0Om?=
 =?us-ascii?Q?yr6nylywCsBKhib1fgmwOd5ZXytVKw0CoqT2zvUNtiGUT2InDcTMyKigbNw5?=
 =?us-ascii?Q?LKDyCuovjOiwBunP/B01Nl5eKvq5oyuPBc4c69EMA6CxSkuQg7W4UlIjz9q4?=
 =?us-ascii?Q?LBN0OVO/5Z7QM9vQbGJvPzAD9J0Jhj4gxynYp7cTEOZ0TbFJTHE4W5IgNV4C?=
 =?us-ascii?Q?wUOjUVmHicbbeq17dgQui+fg03J0iGcYZWTjXUpqAc2Enh2DiqhEMY5yPX1T?=
 =?us-ascii?Q?W4ywbdWmOLuxOsEKgHgpAEW/DFzUnoTlHGhO6Iuxvs9/rC8/g5Hw+Smtmr2v?=
 =?us-ascii?Q?Kj9jJOJpW7l2GeYOORf/Zdk328TJKy5/0C9BGpu1PsEUKY6nA98wIuJWos9Q?=
 =?us-ascii?Q?t6P2XeUa0xDXR5+RS8t6M8rAYPXwW9gryWb+8UwBHQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aSt1jVnaoAQM4mhnRwr8fi9iHnyNyDgG+uTVglxQSrFf0eRTdCTsjpBNc5La?=
 =?us-ascii?Q?op6EleuO6lBVIGRGzE4GYoFmVm5czdEi7uOvOZ1Jpk99ttn30t2rGE0cJtvZ?=
 =?us-ascii?Q?ZVO/9WcEfc0siXceIl6QOsHv5YoFc+8U7Pm34ilrYTZ4wV6WKCiZ1JmsFWv0?=
 =?us-ascii?Q?WgOhApIOKQK+mee/3pHbjvi88EfBAaIr7o7su8EpHA+SeZFbMFmhDFGsmUpA?=
 =?us-ascii?Q?TOrOB88AT7u1fqAosY87FMWHM+exfOoX4BfYXGw9eBy1saKwvjaNH1LZRwuH?=
 =?us-ascii?Q?XbJhf7uzc4uoxNyfWOQTSpTyY5oKCvcnOOE+EROTdWdo+ZTsDo/6Z7V7VOpv?=
 =?us-ascii?Q?32bypPZpraFYUcxGZk1aA5a5S4dKrF/cc0Y5ineS4xhTeN7mibFMW2TAAhyu?=
 =?us-ascii?Q?I05qw+hcGZczrr/m99W9zLq049ykfYugnE5BtDv/Yrn+8j3HP868ImEZ8JRq?=
 =?us-ascii?Q?3pC1tPxl4qDqi7MHTaTix8eqf1f1Hsx93fBVySrppn5ND0juGOuCQtfUyxg/?=
 =?us-ascii?Q?ob9Ea4R6/TWDGIPBvPdecWdXY3GXS4ry9i5VlzF92WJmrDz7zKFmj85PEeYE?=
 =?us-ascii?Q?dE22cU3fnG3OahO1jUwwe/sSgPtilRAw3TA7uY1lHqW/5vaxEQ8DOKb0DJlk?=
 =?us-ascii?Q?Ov0N6uqRjO6MYkm1UBzfuHlKqvDLagQNzPiXqvqsxrwjvVkiLRToMkFZi0i3?=
 =?us-ascii?Q?2pDqizwuCJCWdy5iSDlQZnWEbZurWQ8gosa0O65b/2mY7Frvo4zjx2CiL9eK?=
 =?us-ascii?Q?YsXCc4oncFihKsvLNNbuo94DW+oTbxLHvSOYhTnkfqyqT6n5NQ8xCpzC90V1?=
 =?us-ascii?Q?apQBRdOzRiCSitA6C3bwuHoiCsRkyEG5K6tt68gXqhxXTo9D0y4kwo4DrftR?=
 =?us-ascii?Q?sDWH3fCMZZYB7qhMXNuwDgSIn8Fle5ygpmCgUxWUKakQXKs3j5NSnJtNVoMY?=
 =?us-ascii?Q?82kD347HfLpAxLfuEExRYIsMz8ti/OqcmcVHWZ6SmxjUBqzvyQJbQuHzeGFh?=
 =?us-ascii?Q?XoW280ndAhAsnLEQbCe0C1tX+6jiAxE3DXOXMxPOwOUSl/OIgBjE0mhQZI7m?=
 =?us-ascii?Q?KSsyQ+nXrvQZ5dbtVGwcN4gUoLeC3EjttS5MChrB63N+5Rd/QrTuVw08gfcZ?=
 =?us-ascii?Q?nX+HBoiRz9oSntKLQtYamRjWaZ0sQBt6UHBxgEVUh2rbqw/ZAop2UrEF0sHb?=
 =?us-ascii?Q?fQ3ejmupsLM8tkRRFkunrpMee/t/jTD+dYtgjwALcgjvdtkXzVtTMn8MsDv/?=
 =?us-ascii?Q?CStr7bzPkn17iYcebB6pfA05efRmUNo1/Dm+CM7NvPi/0HRLkOno6Va8Uz6e?=
 =?us-ascii?Q?MLyUhHf+2aQuz5OBI9Yyf7iB8tGI4Yb5BfILKQqm3pawMfXS/2G9lg6Px9wD?=
 =?us-ascii?Q?vbdqaM55/VtK4hAhAY7Jcjo8aE3rOZvWCtZ/dLDxj+ahImlbTCdq0cQOnZjw?=
 =?us-ascii?Q?RZd0n0FyZPs54v5xJzG8vKk3PlZTkC/W66+eRWmAx5NvGpSEDV5Ti30nQG7n?=
 =?us-ascii?Q?E7Tuq1ED57NOxsm6P+k2ByDGoja4uBQhtJ5EK4NYQacv0Xb27OyLE9yZtUfo?=
 =?us-ascii?Q?FYK1f0h04m/FPOJPHIlUvYWhd7wQDACr9KIZUw9VVUYpq92oZ7wkBG6EeM5u?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46fb441d-4967-4dd0-1f7d-08dcdcd97b7e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:02.0349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dfSN03XBWqF/aV7NTO85tik8wLnVsIjWoMzr1cOkKNVFLOhxzvZQmo9/l4LI5unxk2NxKt95dFGlLXtZr0ER4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Align with i915 and only initialize hotplugs after the display driver
access has been resumed.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index bc5c00437ab3..be431d9907df 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -418,11 +418,12 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 		drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(xe);
-	intel_hpd_init(xe);
 
 	if (!runtime && has_display(xe))
 		intel_display_driver_resume_access(xe);
 
+	intel_hpd_init(xe);
+
 	if (!runtime && has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.46.0

