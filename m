Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2170FB1B130
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDA710E623;
	Tue,  5 Aug 2025 09:35:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OaQcVbMJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11D010E623;
 Tue,  5 Aug 2025 09:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754386515; x=1785922515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=gPNUsVyLAiirbNl2lnIkzz/SzdxC9zZfBI2ORwWJMOk=;
 b=OaQcVbMJPgcy+Z3R51bSGb0gs3YYTtXt61zHeGfBpWNsAfYN1FdMBB9O
 wqXGza5uBKNt+T1JS9nN6TaKhNEPrkRx+9XaaUUr4h/zMfjS45saXHCG8
 mirBlOjdJ+1eTXh9pTMeAg60LZ9KEXD2wXlqT51e0vOWjcjP9fp7rkcgq
 UCTmjvtPNwTbzjhHSc3OXouNylaCw8ismQniplR4yzcPR7Yu3dblohCtZ
 5qhknCnAKqU7Lsl2U+vdHIy5P3aA4uhDQfm78f2SlNRz5ElrVFbeuMsc6
 mYR3rxsYynatfzeOqTkLu/qgXM0XqM1+6nkl03Iie9tzdqCRTaVDPbrI8 Q==;
X-CSE-ConnectionGUID: Gh7vLws9RJWB81R6aQ9nQw==
X-CSE-MsgGUID: LpbqXaM1R7SaqlJNetWf1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="74132018"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="74132018"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:35:14 -0700
X-CSE-ConnectionGUID: 5RKdlGvUTzKlZfhUCwMZ/g==
X-CSE-MsgGUID: AJdNTXSmQuu5d0tafU2SBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188112740"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:35:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 02:34:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 02:34:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.78) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 02:33:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LsQUn6wNIo4pNpjX8rzAdbDlzKbaBINj1H/nF/L076y9NlYIjURNZChlM1aT2Vbd7hnCKDGMSqXyPQo1vYQ/IAjIrnLfA9aNZgJ2hb+Gqb0aY4gaJu2V/13ebJql8A/Vy3qRUobd7E2uXZxYSX8V0e3MbCcdAHQ1c24yitLljm69WY0nNyF+2iLlLGa6L50pLSRKqleWOd9/mezVHPCitYrvEus/FQhT1i5Cit6LlzhnbXkp1EkR+mlIp3oplXvF17x0J1nt0qzt01xEistNUZbtTecyugiS0WSILlD41rO2spnDtgjh4qp20W0aXZrxGjxWy26FlWaKjw3rmQ5ryQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mjlX2IXvEjhVa8LOhmVlE/2uDvn2R0RemsSeiisPa4=;
 b=AaLgb135DrZ4nbnQo2Rt5zKxdvM2GAdLzuyxhnDo2NfpXcGgi9dfyGHCk6bkESDary3IGrVQs6KBIYYOk6I/kGtWQ7Jzhd+N6SrO+HXV/EAFCVFwyjKE0hgT9cmFZJy1NEFlXYdeUwSoTrwqd8rbh0a6J0ugmh+sS2mBD62LiEmeWwBuBD1DsNStHWDOYsrI/08ZtUl3rGfRsRe2vl7FEiZ5RLUz6T+wRFRrD9jTvUKREn0rjaxpiNAr/UPELwhg6jNUc/r02I2/5QOKx8ROwfwFR/MfDsqM0uWo1oAnBruqXzC0rIotedj/FrULNTOLxzfSVtpEVMEhg6ZgeK+LOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Tue, 5 Aug
 2025 09:33:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 09:33:56 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: [PATCH v2 02/19] drm/i915/icl+/tc: Cache the max lane count value
Date: Tue, 5 Aug 2025 12:33:48 +0300
Message-ID: <20250805093349.679158-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-3-imre.deak@intel.com>
References: <20250805073700.642107-3-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO3P265CA0025.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: ea6a01a2-f78e-436c-c943-08ddd4033290
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6ZSfrgxkaLNhL5X5n5xJKvRJtNxgMtTYnbewU5+5FzFKDhvQKCM0WqLoPXy5?=
 =?us-ascii?Q?mbLSgqCuOQDzF510CIzZP481nmYYYNn9ZRS71/Y+LkH3v/oVQs6bcYYzJvT3?=
 =?us-ascii?Q?pqXRSaEC4Pv1i8zTFxEIHjaC0Op247wuZT2qW8/2vI5kXzmq1flDBldKDx1C?=
 =?us-ascii?Q?e41DTLk+Xn1+9Q9KnG6WLMpwGPIAevj2ntJaIS6myaqRmHTt7GErhXu2/J8l?=
 =?us-ascii?Q?MHCGfECUVjof5TITZytRNWAqwFLke/tDKD7JMyy6uYJOx1QRwoHw1l+DGaxS?=
 =?us-ascii?Q?8Z232ktE6KrCkri52AXo5vd3LWPv2P0j7lzmsk4THH4OkgdKnBjDVza4Uh8/?=
 =?us-ascii?Q?vk1Aw9+Cjukpo1oH9dH4rS4f+qDaEZFYUVIIub5HiO9ktNOgsePGLM7fJpvQ?=
 =?us-ascii?Q?Y0AJRRyDRkq70Ghsiu53Q8mpZUmNmBmdtU6cR5HbXpF1S9pIR0/srOtadvsi?=
 =?us-ascii?Q?JyhVGgO9n5O+f2ED0YB2LjgRE3/BI+SafINPgx2oxY9q8U2ZL9PWpksI/1yl?=
 =?us-ascii?Q?TBsNecaYErjM1jwuVp+mE9piKFXoq01X5m0DOPz5mvWQv/eDEUXuVatMOwM6?=
 =?us-ascii?Q?wfUnS0s3GZpEUB6qSoswYBoFMQKM/R1SHqRxxSlOr5n9flyWM3GI87YqlDxe?=
 =?us-ascii?Q?v/QS5e1lrIH57fJBWkuNdCxJWW+x1k8NwIYaUXrkA1rSY7cQoEbNCxWMjUb0?=
 =?us-ascii?Q?EKTWtCYff5RZAwXBeqgMw4I+Irj7G5A7Hq1BQjodYWIy+G01K/e8vmcKOXMy?=
 =?us-ascii?Q?uW7agYEmPCr10HdeV+vFTdeP1gStrK/fhUsWNi6RAqFxLOMJTMg4ktEAXoPS?=
 =?us-ascii?Q?50Dco41oHHC4xHykPIijtVd57qS9PlDWtVLqNwg9FlQdXO72fYjbEq5fO793?=
 =?us-ascii?Q?bDHOwlpJY8eIPgRcZ1Lhne12AKuCjqOWn708/0b83fulR+ypw5n2f1pTc0Og?=
 =?us-ascii?Q?96px4N/bLPMu7wkmQ4sazl4r7QDDZqc+bvhnVIrjY36PM52rJ9FcAlBslp2a?=
 =?us-ascii?Q?R989EAy9tzry02sfZ2Gpc2nDOOu0p5d2EskIyfhEmHkUqoN1xC/LeAxRGRPW?=
 =?us-ascii?Q?Rfgm7A7FBtfmYp3lQjdxiYhOAFbSxmUvjHPDe2GYWYikPoaYX00WkLa69Dbz?=
 =?us-ascii?Q?Z2S4gYMkk58cfRRXinjQiLCYv+IQ/9PBtdaXmb7zMGOq7S0r88rBBv0z2rbM?=
 =?us-ascii?Q?T+jLl0wan+N+f0o7zdIC0vsREeWuPnnQuj0Ztceq/cKzpGJANuu1+bfzf3+O?=
 =?us-ascii?Q?LOvEfdThOdoip0E+VjVX+Sd4O1ct18BPyCC83FksB+OB0Wg8M+HXv25EacL+?=
 =?us-ascii?Q?k1iYf7Q3x4UA2I5rF5xVePEy9X6tz+5RQJ/ulHGMA/wOduf82AwNf2BcO4I0?=
 =?us-ascii?Q?fSY+31mS+2tDEZYNyTZFnR7o9bTYZtvZnNqsN5btcaFWFNw4EKYwT1tqOCQt?=
 =?us-ascii?Q?edKfe8tM6Uo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v6WKOOc86tmEEEuabCJ8jU/BcWdJYE5ucvEjPiWK1J0L5oKippAefv6hNIJ1?=
 =?us-ascii?Q?LbLgPmXme682VqjTudFj/ZZGUTI30N2DGkNcJocP/9OQuRr1y96Qqfrq9uVK?=
 =?us-ascii?Q?L3aExV+NaYaF+wMhprrLs//6qtZa+Zb5aNtCoDThegtUd6c5FmOEHSRdjLuy?=
 =?us-ascii?Q?+qYCemFZQyY2YYfXQmYZ447bm2TwBM+5wMQG2IbDTIGx6K7vOMxSyA+27UqN?=
 =?us-ascii?Q?n4r9l1ENUAGoYnl9RvwjP77iYz4WgNU5aPrVujX3UM9Bh4kVuS8pg3L40pk+?=
 =?us-ascii?Q?K9935vxurHJZKB8r2aYOmupJ/7gz9fmO9lB/+s0JHB7CxsOd8d/QCIO+mR6c?=
 =?us-ascii?Q?4bbfO1eqVyAx3LbmBf93+zh+hajmW2Vv8Czki7d0MV3whTuVFTS0NmU2bMAy?=
 =?us-ascii?Q?r1Nsn8wnUzPoky1Ya1OtqskLEyL59utP6ZcU6YdNNEWxTur4unEqAynPjP5L?=
 =?us-ascii?Q?kgRodjzWcuAoYT7tl9Vdf1eoZjOTQSJo1wwEfi4h/k6t6MADx/VVuBEWheDC?=
 =?us-ascii?Q?MT+j/KniPWLWZuMSKB+FkNDUDJ6QOk0rpSVatsxKvY0VxXv5oP4k5CcqtSJ9?=
 =?us-ascii?Q?9KDXjZ6q3xOSgeBLgd5FWxdH1sxkqteWL/gtJnKOW2JBbaltDYBELzF0USyZ?=
 =?us-ascii?Q?neqqQDYs2EQsG5dfHfXmy/U3H9R0gQIU+ARkGvzOuGRUn6GNaNgIVu0Sqp6O?=
 =?us-ascii?Q?ynxA8UltS5eHog6Nfxj0QfRlIbbkDxkCuQcU1txg7wHOHwmUo4Niq8PfesMK?=
 =?us-ascii?Q?zRZLFCaLJzNuQVBNfYMZD6wWntjVxSyXUV4UoBb8Aahcfs52guRvjwJ6Vk4/?=
 =?us-ascii?Q?hoepP+qxWx7wF1gsg+XKg37ehPd6pHF74tocKQ6YNnNFFM8oU0s3nfyNjqBg?=
 =?us-ascii?Q?8QVZc8YexGresy+tKfRLiWM9ZTgGx+AsdqCfv9KDvD4/zTbsHAMz22GwxMz7?=
 =?us-ascii?Q?5Lc3sFBrk7d5q3MYBOoK8v0r4PBipaVAnn66AZ6KomKxjOY2UQQRxzqMPUai?=
 =?us-ascii?Q?I3CD7p3GLOMmFm01iVZvKWwJuNMHdIOPRwV+H/8ixe8YdW+MLSnhlwuBX6m7?=
 =?us-ascii?Q?Ko5EJxZXqDfhbSxgUNdqTYQ8ORFmFYLWO7hwAzkTXQpUbXO/SJ3o/8u7ykPI?=
 =?us-ascii?Q?FUmpqGbxK0sby2hO6fJwG3lcfGC/xChFA9TLEuvmJiMuJE0cdHzJOAjI9QPy?=
 =?us-ascii?Q?D1+rO3sLsDzdLQX2H4/z1T3CeOX+yi294PtTvZJ1bxwQlyoJzuPIVhRFO0cn?=
 =?us-ascii?Q?rk0b0SnNkAbg5mW7Y6HcmmOqTVMf2z9pVhfplf4u5XiOG8zTxuXnrsRrfA5Q?=
 =?us-ascii?Q?uoOnMoCQPGPfUYfVM/ZKBGmMDGRgep9qtMwowUccJ4b6ayzGrtk90jMVPR5W?=
 =?us-ascii?Q?pJL25HSx224ew1ILlHcYD2SN212Vpb8aW6oJ3/kmpimrN5vcJFzln1KrzzOU?=
 =?us-ascii?Q?nLFSGFKE2T4h/wVo7RloYAVbA4SQHudIczYrWq+f5q0M3uqQtitfXnkqkGtb?=
 =?us-ascii?Q?9YfkkpnxQgREoz3gjg+ZHX5DLIQxsk7dVrHajD7bf7dgZo6+3m5d3LM4URot?=
 =?us-ascii?Q?qm1Zve6Np6nDDQuqAEhNj7r1M4Z6tJH4qB6jvzo8UEVVBEZlKlCZp6+0u20L?=
 =?us-ascii?Q?w4mdu0u/NAX1/41a5sZ21jPP7B4yx+NVWkt7DWw2qMbO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea6a01a2-f78e-436c-c943-08ddd4033290
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 09:33:56.0135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qa83ZFW0uO0iOLQg2cjQjedtbx7KxE7BOlGmbUqpHqYByntXhp4qCOyZESeY0utnKWMY0O17uBeSZ7g37Dj2Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
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

The PHY's pin assignment value in the TCSS_DDI_STATUS register - as set
by the HW/FW based on the connected DP-alt sink's TypeC/PD pin
assignment negotiation - gets cleared by the HW/FW on LNL+ as soon as
the sink gets disconnected, even if the PHY ownership got acquired
already by the driver (and hence the PHY itself is still connected and
used by the display). This is similar to how the PHY Ready flag gets
cleared on LNL+ in the same register.

To be able to query the max lane count value on LNL+ - which is based on
the above pin assignment - at all times even after the sink gets
disconnected, the max lane count must be determined and cached during
the PHY's HW readout and connect sequences. Do that here, leaving the
actual use of the cached value to a follow-up change.

v2: Don't read out the pin configuration if the PHY is disconnected.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 57 +++++++++++++++++++++----
 1 file changed, 48 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 73a08bd84a70a..b8453fc3ab688 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -66,6 +66,7 @@ struct intel_tc_port {
 	enum tc_port_mode init_mode;
 	enum phy_fia phy_fia;
 	u8 phy_fia_idx;
+	u8 max_lane_count;
 };
 
 static enum intel_display_power_domain
@@ -365,12 +366,12 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
+static int get_max_lane_count(struct intel_tc_port *tc)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
+	struct intel_display *display = to_intel_display(tc->dig_port);
+	struct intel_digital_port *dig_port = tc->dig_port;
 
-	if (!intel_encoder_is_tc(&dig_port->base) || tc->mode != TC_PORT_DP_ALT)
+	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
 	assert_tc_cold_blocked(tc);
@@ -384,6 +385,21 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 	return intel_tc_port_get_max_lane_count(dig_port);
 }
 
+static void read_pin_configuration(struct intel_tc_port *tc)
+{
+	tc->max_lane_count = get_max_lane_count(tc);
+}
+
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	if (!intel_encoder_is_tc(&dig_port->base))
+		return 4;
+
+	return get_max_lane_count(tc);
+}
+
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
@@ -596,9 +612,12 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc_cold_wref = __tc_cold_block(tc, &domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
-	if (tc->mode != TC_PORT_DISCONNECTED)
+	if (tc->mode != TC_PORT_DISCONNECTED) {
 		tc->lock_wakeref = tc_cold_block(tc);
 
+		read_pin_configuration(tc);
+	}
+
 	__tc_cold_unblock(tc, domain, tc_cold_wref);
 }
 
@@ -656,8 +675,11 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
-	if (tc->mode == TC_PORT_TBT_ALT)
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		read_pin_configuration(tc);
+
 		return true;
+	}
 
 	if ((!tc_phy_is_ready(tc) ||
 	     !icl_tc_phy_take_ownership(tc, true)) &&
@@ -668,6 +690,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 		goto out_unblock_tc_cold;
 	}
 
+	read_pin_configuration(tc);
 
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
@@ -858,9 +881,12 @@ static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	port_wakeref = intel_display_power_get(display, port_power_domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
-	if (tc->mode != TC_PORT_DISCONNECTED)
+	if (tc->mode != TC_PORT_DISCONNECTED) {
 		tc->lock_wakeref = tc_cold_block(tc);
 
+		read_pin_configuration(tc);
+	}
+
 	intel_display_power_put(display, port_power_domain, port_wakeref);
 }
 
@@ -873,6 +899,9 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	if (tc->mode == TC_PORT_TBT_ALT) {
 		tc->lock_wakeref = tc_cold_block(tc);
+
+		read_pin_configuration(tc);
+
 		return true;
 	}
 
@@ -894,6 +923,8 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
+	read_pin_configuration(tc);
+
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_unblock_tc_cold;
 
@@ -1124,9 +1155,12 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc_cold_wref = __tc_cold_block(tc, &domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
-	if (tc->mode != TC_PORT_DISCONNECTED)
+	if (tc->mode != TC_PORT_DISCONNECTED) {
 		tc->lock_wakeref = tc_cold_block(tc);
 
+		read_pin_configuration(tc);
+	}
+
 	drm_WARN_ON(display->drm,
 		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
 		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
@@ -1138,14 +1172,19 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
 	tc->lock_wakeref = tc_cold_block(tc);
 
-	if (tc->mode == TC_PORT_TBT_ALT)
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		read_pin_configuration(tc);
+
 		return true;
+	}
 
 	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
 		goto out_unblock_tccold;
 
 	xelpdp_tc_phy_take_ownership(tc, true);
 
+	read_pin_configuration(tc);
+
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
 
-- 
2.49.1

