Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407DDB1AF6E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAEDD10E61D;
	Tue,  5 Aug 2025 07:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCSLlrQ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB9110E618;
 Tue,  5 Aug 2025 07:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379460; x=1785915460;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=n6pt2lqKUHhFlONC/Ry/gsICZGBRxoQtGiLVSf3UZ4k=;
 b=dCSLlrQ4rYLiWlW53lgpiTksujnYHAZwHstDOfwxygDW7lQMBbfJVUgM
 ujfrge0/DdyNslkEb50xgGcCYdTDpJIaaKkLjGg8DLcv5XGq8y/CI7Pcr
 Vs3HwxxhngtVdf/RNzNzteaMHqoSNcR4hil3UCBtazvX8gtilnyXJCmdD
 FmdEVSxBkB4SRKV7uTLk6RxCUrOB/v/IG+FoXw+9r3p0cELXR/8b626EA
 5J72OgbCj7XZisBUdnAY2AG6LjyRJGWF0lUkCnED3mXlGQWK/de9TfU8d
 qSPXMucjAdbkDoWEkHlOC5UnsjoZajCGDT5T6am829HilXhs7hWc5gKG4 w==;
X-CSE-ConnectionGUID: QEZbC39ASDWn0WBoSk1gbQ==
X-CSE-MsgGUID: wMtM7v4/QU65KybciZC6KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60493259"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60493259"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:40 -0700
X-CSE-ConnectionGUID: SFL8j6pbQmGFRFAGxDp8Vw==
X-CSE-MsgGUID: 4Hb56kL8SU6xNwFo80GgMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163657957"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.58)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RbHyHwrfJJ4fZJLm+zcsKu72YxO12+iKHqnk0yIY3x9vpltYL4pnrlTR44CzSpPkycB3h6iv95S3fsRcs6v33HMkoTzmT3/20HFQZx0xDF6WSFG6P//AiUQz5Q3yJ9I48od0X6ZtRPeDnpdpnH1BQuSLQDIBV52bUfs/fYD8kgSOBzbLMkzrksWIyR+MUhPu25sIsZN9xpZMAihbZg5PXJrcq+iN0MJApe0W9OUNJg0vno8szbtd9Rnk7OleRdOX3ozqHufVTI2LFUwpsEeExDStb4Gownd7ekJmusOMT1blBuE/V+6o4eaJf5VWwSazpAor0lsUBHmiShKmllKsiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dsM3U0iGyMHXBJl5Rhr1gZjuZy6Q7pgBLM5DBCxKhG0=;
 b=srUaq7ntlUL6yQ9y9wI+zF1P/x13krAtJgsMsPZAvLeA/AV/Ph7NQ63ro+IyWr+KJJndTcBgeU6Kxqhie8zdyZNCz4xO9iqMmi1yT6xZmGobmlV0AlqT73ju6qvcohGbRZayU1ArxqBLjndQXWW9ZGfzjBc8tSgJRpevg2Mpz+/QyZqaXl0tQR5YN2tZ7+NRmXc/jmOYwhSjHErOd4vgbEGFSXMOkIssUzUa4o5omgABcojDfq2XaYfeDB2ouLDKkVC/fcQixl523uP+DBcf3SG45QeD4Aen5aVVN58+9t7vA6JR/fwCyauFNaOI2NgCbE0p6NzehM3lS0KQ+oy0rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 17/19] dmc/i915/tc: Report pin assignment NONE in TBT-alt mode
Date: Tue, 5 Aug 2025 10:36:58 +0300
Message-ID: <20250805073700.642107-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: a3c098c0-d011-491e-34ce-08ddd3f2f318
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oc+w2xiUGdRPe2UsE9vYX1c+otRJa12Ns4w/odLtJ0h80U6tu+FhT2PuEuNz?=
 =?us-ascii?Q?I61zEKrcypAqniJh1kPgDhXxHYgK0a30ZwvvEi2IjWpmk4lBPNX2SMsdY2ty?=
 =?us-ascii?Q?5dOFQxbHCUkkWsoh9GNCdMg4kaQAUtNQcc+qf84qOMz0P7PchuEZOw0AU2l7?=
 =?us-ascii?Q?fuM/3bmOpsQbHZhr+e1NLH4q/82MyCUJoGhiOFpYtT+u0nkk+tHCRz9nbTrD?=
 =?us-ascii?Q?X2JP1uQ4CYNNpE368F/9entX6lBNRW/Bxe2H93Eacym0hKBM8OFa6OnllrxC?=
 =?us-ascii?Q?q/UebDgpw8lGzGsJCpzeWQPHZmYM/yfSLuloRGSpLdJB8vTl+iUTPZ7sE7VS?=
 =?us-ascii?Q?RczVkLP4F8XZrPM4eFV9DYLjmCxbSr4KTh50UQQsHXceKB49Na6Mf7I8IqHp?=
 =?us-ascii?Q?T9/OeoHTm6zsBFDitNXVuMh/fuTpBDd2mqgpWS5u/P1EGuKWzOxRu1s7iXCr?=
 =?us-ascii?Q?WIPfkJCd4dqfIKfz+67c3ISA4yjDBMOmpWhJc6qlXvrCpE5MM6FpagjzjfD9?=
 =?us-ascii?Q?9pwe2sq1JyRG6bKgFCg/S+Gd7EwscuNjJBRm/KqHChUSkCcQgKxbxLSDXE88?=
 =?us-ascii?Q?DA9XREr8f7/XIukHMAmKP5TppLw37JhpUbVJYH5mloxINk/ILcUOGaXJPMNb?=
 =?us-ascii?Q?slYreloX67XoK2zSRcK2xhQjN5W+MznE3k0XhEcdbjNuffb4FpD9JSC9c0OW?=
 =?us-ascii?Q?iSyO3w8mPs9Ayxu6BKd8o+IcVAWQpw31+JapY9ppBco2MSvgpplLsrWqqon/?=
 =?us-ascii?Q?DcOBnq+KdLdRyzvTiELfYwSPHjF1zeloGMHy8sflGrg+UVEjbogUW8MhxFF7?=
 =?us-ascii?Q?b4+HGdtgsYw+X+B0gZgnZVAAzBvjEYRLtCRCVwwwlPdix5Af38ZcNPmtZ31L?=
 =?us-ascii?Q?RbdCIBUkXOWHR1kMsQH5Tr1jvk9N39G/OQrCrwoRuvasceC9J6i4FK4CB7zH?=
 =?us-ascii?Q?QtktUXNFOuBddN9fnburBtsOGirWl6JRROACmiBK0Foz5Z2szWHxwEVShaOS?=
 =?us-ascii?Q?nEobIohM0jDS4/+l9nGYelJ9816KiQT6w3Tijoz+rWLfhWyT+ejMCoWe3RbG?=
 =?us-ascii?Q?mUH/a0gjEI1YyQ6KcSva8ZPgdlVgxhhS4XRQS2TOhmzvcy0jlq3Z9FvF/O4I?=
 =?us-ascii?Q?hpn5BwbGWlMHHa5Oc5P8boeUIN/nJjwucgSDiYLHIAy9Spl2S0D7p9dnw2m/?=
 =?us-ascii?Q?9wYP0C/ZcO9v0XsqrC4zx2iauRoVB1VK0t9b4sqcuiH5qXM+Id60W33Ktl6K?=
 =?us-ascii?Q?LrROtJdFz0tKUb9wqSEhG3iIUDNCIEqRBs/7U0+2VE/FyWRUnzXIdRaj+Kq6?=
 =?us-ascii?Q?TD2EuOu671ibBunyXp/mq+idJxopCrFvAQ5QhEvAu5V9VNn176PtymEJ4GIu?=
 =?us-ascii?Q?AJCZqar2uTy1+i9T66tXrT+T2CfCoPqMuBx1RcqH4IsOkOrVvj/FF5s9W6E5?=
 =?us-ascii?Q?Gv3828K3rvI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7FhVdT7l3jiBJZphqJxMdqG8796lT1LUtxYYV7+CPETk2nPzdccO4RDaYYCa?=
 =?us-ascii?Q?BFamkK4Cvh76By+bYqJve5fkdH7Qcw4pDhZxew5Ymta564ReBABRUnUBl4Te?=
 =?us-ascii?Q?TqVfIAF64l9h1gvKpoa7/OIGhbYqm0afWLcp3sYpOopUWLO9WJvTSZxs/mkL?=
 =?us-ascii?Q?0yA102t82Xkm3TFBbBDR/Uwh/ccJcklj/g79UH05wLQma94mse7JZlFoqALj?=
 =?us-ascii?Q?Izk82/8lwbY9jLaxGo33j+BE5AIbovBOqcoufXxt0Ty8QHu/k2QGH9OPrZO0?=
 =?us-ascii?Q?CCv0da8EFBamm2tgIyylOnsdODius4YMwNAZxduYKggWmPiAX6yaVgG5RG+x?=
 =?us-ascii?Q?ywzRhp+mU5n2lADiQWdv6oNMQQXm/EAG681TqwW5P6QXVfToyLOh2iziTAV4?=
 =?us-ascii?Q?l5480B01VKIN0OQawuyrLKFO4AUZKXH/khyI0/ayHR+AfK9wgUnkhQhZGwv1?=
 =?us-ascii?Q?OrnOZX6NNToU0mlJSoV9HX3PRncrPfXPNNHd81GOdQJwn7sr1izO8b7pESz5?=
 =?us-ascii?Q?MftjJuIZhA3SfgDQL7QavTiaUdi0ASQt5K81WHP9FjY8w8Tfk1Yv3s3pPw8E?=
 =?us-ascii?Q?n11SBeFtW+PXChzFl9BNJDHXGr3Fe8SWeF6VX+X9uVfoJH8j0ILxNwffQBUY?=
 =?us-ascii?Q?doX5BjV9q4GzC6YJU5bZvgnLqxL1Z9PSjK+xDG4GkwBMYwxtJM/5zY4V5WqH?=
 =?us-ascii?Q?/VHVw1jNw0dZ4ou42KtVD3IM9g++qmaw1Q6JMHhyGbgW6J7Lbc9p2tW5Qw9U?=
 =?us-ascii?Q?q50bA2GXOkTcwgHtXhQHscd1Fw5WXdqEdcjL1eMMzEOobwuXsVCO1uLMtK3a?=
 =?us-ascii?Q?SoQIUOvOO0BicfnLN1OmGvu03YCZMT7BqSTRTahqLSrwNls4y2UeNMjHXPSM?=
 =?us-ascii?Q?NzIaX+J0oNQkbL3yxA7aMHYoUfiFTGzuhiMg8VBh4eXRRSWykFBY6Dr22Fax?=
 =?us-ascii?Q?YpsdbTaDffQzjFrv7+Mg4qaQMAU2PbgaghqYMuMqvMvg4NarpFgK5xDhkVj9?=
 =?us-ascii?Q?oDaX8pSA/kkkFNz2k0Vs1D/l1lBezsgJnNvPhZJ4dZ9r1K53S6+VTQoVtn+2?=
 =?us-ascii?Q?HDEXy8mUTcJzwUs7vKYSmivb/tUe6y6KIPDckQWe63We3vD3ziDhckNbiRA2?=
 =?us-ascii?Q?XFM4nJ8o/xljmq82LkQOW/cBanuFTEf5q6aVoB3qOT6AeYrdRVIbQNnp0fci?=
 =?us-ascii?Q?58G65lVBIibh3QavJr1Fk7P8t/nIhrYTDRXotdDwQbmbC2NV/0i4PqPd+y7b?=
 =?us-ascii?Q?DE85xco7MKINhseFnFfpreXIzyDXxXubVf2hAJjAnSVf8X5WOT8EM+e42e+G?=
 =?us-ascii?Q?u3zTAmLEhmHndF0lQ/Q/o31StCj0hx9hTxhg2K1i06fhqlA4vQylZ4TwH6+5?=
 =?us-ascii?Q?NiEn1xR1SUNBURxwu/AokZYsw1uR/dG1bYzrNs3eMrn8pk1n+R208lD10DfU?=
 =?us-ascii?Q?OFgGBnV7QFUCD/uU0knxZnFOVDKLGjeLdu4zKsKerZ7wRHhHFX2l0Uj+iwZe?=
 =?us-ascii?Q?6lnFWsCUSs62o5rbjgwYJMciL0bqn+eSJN2jkp+xMYIbP69VlASqSXQv5mm6?=
 =?us-ascii?Q?04n+QGSJdgq9uPUCuEuuEgivLCoPxK8wjSgg62uSF91N230n9PhkW18Hozj1?=
 =?us-ascii?Q?gjow6JfbjYkyTTQzrXpNjrpmd88E+N3rJQixCvL79T75?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3c098c0-d011-491e-34ce-08ddd3f2f318
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:37.9280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GpP3Xqa44TxVf1s5SHeaGFg5ZF8WzPbTIm/cWk4CJ+/3gFC/oNcTs1EWVqsB3WSi4vEh6n27dhlZ/yf7d0NbHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

The pin assignment is only relevant in case the PHY is owned by the
display, that is in legacy and DP-alt mode. In TBT-alt mode the PHY is
owned by the TBT FW/driver and so the pin assignment/configuration is
managed by those components. A follow-up change will cache the pin
assignment value in all the TypeC modes - querying this by calling
get_pin_assignment() - prepare for that here, by reporting pin
assignment NONE in the TBT-alt mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index cd4f0179b8cc4..d874217529951 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -287,6 +287,9 @@ get_pin_assignment(struct intel_tc_port *tc)
 	u32 mask;
 	u32 val;
 
+	if (tc->mode == TC_PORT_TBT_ALT)
+		return INTEL_TC_PIN_ASSIGNMENT_NONE;
+
 	if (DISPLAY_VER(display) >= 20) {
 		reg = TCSS_DDI_STATUS(tc_port);
 		mask = TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK;
-- 
2.49.1

