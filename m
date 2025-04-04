Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8024A7C02C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1C310E217;
	Fri,  4 Apr 2025 15:04:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQqBRRke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D43A10E217;
 Fri,  4 Apr 2025 15:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779046; x=1775315046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=IXGTSKiMtBT8lBIFcEicapCMLDHn5ZBepztDU1tZR40=;
 b=gQqBRRke8LaCpVxdxfsKA+6Q1Z2eTC2ZC7oC12FAOVLVe/UMJAJwLipM
 rayTKhdNsIdGSHSL+ej1vUSp7fEuZ9uZ56+A+ZlAM3vuY4+N/cmn7uCFY
 OVahjW4z+SNrHlp0EU6bVn2SWCLlgh/DS+XtNgfliExzl3iU1yAdGJIKN
 yR424VthMn6bfWoPT4n+/LUnrwjz5lQWtLssD6VNxk5ruOhjFjhI5/mfG
 +8Xa6RYMSTeGEUZsmYBIu3DrNecdKqpZF3hrElkCXXvrKz4QNPryUDOZU
 UJyme6fLZAlBrnopGu/8e79sKoFf3MlUi6UCfclUYnOFvlxDroDb+vBrw w==;
X-CSE-ConnectionGUID: q8/EF5rlTMKbnLo0AbcAKw==
X-CSE-MsgGUID: O/jiOjtKQqGQo8yZVqn+Bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="47933633"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="47933633"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:04:06 -0700
X-CSE-ConnectionGUID: yZfFMcqXR5upzlfRP29XGA==
X-CSE-MsgGUID: pbCV/459TQ2fQFjSLrGQsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="128243105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:04:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 4 Apr 2025 08:04:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 08:04:05 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 08:04:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H42cSUHTmmD9EKVSZTT327wIk28fCfgWgIcPMSeoB/7XhnLnjlDQDfWFIYukoc4Ab66RiIA3caSdQqjHBO5LiNyNUFZiqLDmgZuLqEwzpDOal9q15cr8yZZlHUk9E+kU4w7Jy3ahgt1cUvIabhzKsjoA9MRWiauuen9rMLPQ6LO9Yg9Z1N0j/om+Dc5r8qf7h9pNRYrudrfNFEexFWBn+ng5rsH/D6C62OWheMGMOzcq7SUf6rdMfdGWwVYSBkpWOoQlteLjGxugmJTga2GxQzIlt1rO2tKLc9RDlU4uj5SXNZl3emyC8YKZIt04h3weK+PQR0s/9ELIKFgulbVK+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Wn8qFO//ko5lik/dXlzJfY7mfWCV6hgcQodNtu2qCU=;
 b=PijSuB8YCnfCG1Ef53RabSXlAaciLpM9jaWqMTA/cE9niWw+J/TNGKr+HQ4os9FGiL0eX/64ZzjqIocJ+WDiosyby9cFKsju/yyyUkjoaEM2DllPVGD8KcF9I3aNwfiRr52llrE4dSMHeRm6HHjs1lwoRcN2xEnhrCxPL44OFH2VMOAhqBVQoeJi+CyRzFqNlVduXO+mdRraZojLgvJu1MCil24S6g7SP4nA4YB9p171PtocCr8gTqhyZ6n5OqU+76riysrEHWCHYztUoqwG191IWFkfRNfaoibMlKeAB6WpYoJ5R5PrOzEAKsXJP2J4jL8HdtPB10bzQWt7LvPbwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/6] drm/i915/dp: Rename intel_dp::link_trained to link.active
Date: Fri, 4 Apr 2025 18:03:05 +0300
Message-ID: <20250404150310.1156696-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250404150310.1156696-1-imre.deak@intel.com>
References: <20250404150310.1156696-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0054.eurprd04.prod.outlook.com
 (2603:10a6:10:234::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a32784d-298f-4472-0163-08dd7389d0a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OjRh4W6KfxWJTfImZ4hN9q5nTpc/0FaFa5TP+KyaWmmnxR3L7shKYeUGGtjU?=
 =?us-ascii?Q?Nw5Lpa+ypQQwuaJo9AUrX6kHrw/crC8NBQeP5JbJGY13UoWPGsWQjpSBBI46?=
 =?us-ascii?Q?orJKjz6djXavIaJ/pb2/a7x9mf2sv2ukfGGfw7/kVOHWTsUCAK3urcxfR1EX?=
 =?us-ascii?Q?yn5wGFoHGP0dVntGXH7FkTqatJs/s0ZAabtRKHDVhBfCTkkWGBx7oVpDJ/iq?=
 =?us-ascii?Q?aCYsaqQVfhxJDV5RmR93DfUym3O0H1PLZHPotXGdcCgvmCGPtHIva5ZH0LBb?=
 =?us-ascii?Q?qNRYNromuWb03ablfaJBnheWSTaOw8VaZVPMv9TH/dANwmwrfnstQWBoaK7w?=
 =?us-ascii?Q?gzxXE4kDrWUCU8shzcbTy16ZNw9gMYRSSTcsdLBcG5GZek+6vKUlbmd2aFg7?=
 =?us-ascii?Q?6S448YvBDTFxPLAk2QXichrfxdWqScIsPWS5zzHnZqsptnVQaFya+4g4aM0p?=
 =?us-ascii?Q?7zzlNy9MW53lW+KEB0sFAHeN6aGkUd0ksn0LJYvgyPW0gUimDvv4zEsHdPPJ?=
 =?us-ascii?Q?xG6AGCsT2NYIGnHCWKmdB0javbIuJ2xtkEnQT5K59sk+euyRahOXHh0wzqfl?=
 =?us-ascii?Q?onDfj5Qj+kXOEBNp0mHsUITjxzvPJTYmtluthXCsoRVL5UNHefV3lJKkFZ7a?=
 =?us-ascii?Q?oMDSY/1Fz28LNk6P40Wf9daDddon2mCt5KVHkJW4xJV0nB4y7NjuQ5kSsB9i?=
 =?us-ascii?Q?9RMG28mE64DuROE4dkS6WoayE4sZkTsaL35UjPrasARASnA0kCl4bnDu3qRw?=
 =?us-ascii?Q?eqydvipqMxIIOghHpPU8v/aqPyl9Fzo7IP+vLRfc8NRNd+xFcdhhk7fZ2iFi?=
 =?us-ascii?Q?yyHYNFbIGm4dgqm51PzsFSeAUTbV6d9juPNdHcnSO2sYSdECY63gDuUkrtQx?=
 =?us-ascii?Q?m7OKbmkM6JbDZPg2tisZCA5gj6k4/AYYtKzgrsyu/f8Kxf7dZXOtpcRk57xb?=
 =?us-ascii?Q?ZdKlzaN8nSc+CtbcJtr7H4WLx3HpaR/7uU1y0YBoJ4SfwTfFIJgPV6nHT4Lb?=
 =?us-ascii?Q?1x3t63gehDy4XhDvyl5w+qEMUz0PFqVSxj3zah5FPoVWE9sjb3p8xwp3m8D5?=
 =?us-ascii?Q?JcDwSOrf3Z3DOFUhV0QfpBEl7oTSNT3tFmv1IP4vE2OuH2/IOTqkZajNPDmR?=
 =?us-ascii?Q?MnVLlDVPWf5FBoxle7YPO4lpZMMrrjypcWjLJEu4WLdcFOqI0eJJlriZGVYf?=
 =?us-ascii?Q?H/vEbIIaLdXFwv8cHEJ3bMx/9h8KKaJqJLF4p3qDfOL6whpZJKeTDsiRbcfU?=
 =?us-ascii?Q?1hua5+p1mOhwMlLsPQ0G8LLOEHMoEySiS1DfA7TGpecz1gyTvjSMoZQCNbgK?=
 =?us-ascii?Q?4f+aI8xRVF2jTVJV6CN8WIYT6T14nVg09I4+bTO8PrKIO1C1v8hZ/xFC+yyy?=
 =?us-ascii?Q?SMiMRg2NyaU4/bLcUkOcJC316DtA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G/m7V7M3BzruH/+w+/+g9Zr9VE4CKFa1kGM+wlIFbj40GzkgnM+dZoUm0hno?=
 =?us-ascii?Q?EUeSFbuDS6Vr3HmT2LDlZL1zfJon+UZKJytDcRZMIBXRpzBn3lBJX7KZfFB+?=
 =?us-ascii?Q?++979TCQv6y5wGY8NVNfEZdJvPqTxSy6xapze22yLuxR/yaKD/AfLbAhmNoI?=
 =?us-ascii?Q?Ta+Gm7kYDO5LSanA3AdhGXvq3eLagU/RY8kn/DjYJ+nIOulzFefjXVNMupoX?=
 =?us-ascii?Q?lfWK57kjCgHNi5rMz4M+pxoQa6HHDPTeHcCBoEZamV8qnSqzxd3qReJPjvf5?=
 =?us-ascii?Q?tMb6ebvCh/nw2AHJW33THjlpwtoARtW1ONUVbQ8Sn7glswqM7fZtVkXK/S4u?=
 =?us-ascii?Q?0d5uCIvkKREP02vZXirWgPSr50ze+XGUQMS7SVSXyHqMFkQM8qOWgHMgbbrt?=
 =?us-ascii?Q?/IjLJHtguElM8Emhqx6LvfUoSof8nS7H9Ck+GfHkcRopl7QBBaV8wS0NHTX7?=
 =?us-ascii?Q?Mwj2ZNLUVLmZZ2Y6wJN7zTiMHMwYc7ZkwX+/uUuYwOYu3xfmjdjXhyWzrMAH?=
 =?us-ascii?Q?NXwUIemxwAx1Kk0uIw6LGYHYCqJsyfLQSOKd9Nf3/nZrFyEOA8C5QpYJP2H9?=
 =?us-ascii?Q?cMke5LtUUaVJ2BqfNl4ftc5XbPx8839q/qRU3EVC1gQihn1TTY71HFV/bmgD?=
 =?us-ascii?Q?yZSeqHg+wOY/JM9oayGlMvNglL3Vy67lLs1EHi6tFifrnZtYR3FbwKGzRHRf?=
 =?us-ascii?Q?kTQ7oTrLa7u9LBWBK8uDS8uc0VuHqBISuiHSFZCP2S9P/Jqu8qgQNwpP9uuW?=
 =?us-ascii?Q?g2nyimWR+3ezstaO+NeazHVx4Y/qFdiXEJipN4/HtWvbrHQdPKymSGWvqSNh?=
 =?us-ascii?Q?t6TxlWZn6hacfEJEqnWTE9u/xfegsJt7SJ12hjSJBBkBBvq49QVJTPea3QnU?=
 =?us-ascii?Q?JK0QhS1G87ijbOVaCg2ZFpo/cRaLGs5yG5x0zbB69E9as1OEv9RvsLmgrnHq?=
 =?us-ascii?Q?pnwxKCsldhn7hXbgzbtWIuySy2hqyx4zUNvwpixn0aq5eS7wtVot00isxxpr?=
 =?us-ascii?Q?JWYisc3yu53o/AQVSdITK4Yg59+PLjmx1yMZS7P4Bp5SIXOLBl0PA3hcox2P?=
 =?us-ascii?Q?zM7XZJ9B71lrEDV9h97d1MqW6pv0Wz1LF2jvDQ2QnftMj86RXf1kSSVA15oq?=
 =?us-ascii?Q?MoNjAoAU16zYwhmOClK+guxqhkKIqyh31LmnHtwvrJZn3j2nR1CyfBxbMLT4?=
 =?us-ascii?Q?cjps/Zmk/h7wcAMY+8YOCniBVov36K7jldPVftD2AniC7u5tqhezn/YEoLbM?=
 =?us-ascii?Q?5M/pHZ5y4s1M7bgxJG7rOnidfpCNLyueb5LuQH01I5g4sDD5EEKrJwLqDOKg?=
 =?us-ascii?Q?TdYsOpWjK+1+xsf1+Kvqfv0Uos0bWMgZASptgjgt60DO49x57CHmg7tYrSiF?=
 =?us-ascii?Q?NW0vf8M3GENEGWaSY/h9+28mKWK0h2jt9Dm3NSw162Cj5dVx9p/NHkwULW1/?=
 =?us-ascii?Q?9+vm/beddwVWzHMkXgziHsfpJ0pG6rVR4O1MnrAIBBGNrqVJdAORCE6NgY4E?=
 =?us-ascii?Q?ANo62wV5OYc9NJ7piz8OhsDj+VbWKwibUyM6f6uzEhkOzdT3yykwpOZhMHX/?=
 =?us-ascii?Q?wO6Mgx1ClARIPFBzxAAF/KcDMvsjynEJ/sgxfAIX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a32784d-298f-4472-0163-08dd7389d0a5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:10.6683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdd6Awi0w88jDAI8y/0U7U+l8oeVFeCifnNXCrSixV6qx0gocwzZQu+fnGd9Wr1NsFoBnNv93LgyLOLWL5Aa0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

The intel_dp::link_trained flag indicates whether the link is active,
regardless of whether the link training passed or failed. For clarity
rename the flag to 'active'. While at it move the flag under
intel_dp::link.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                 | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h    | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c               | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c           | 4 ++--
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 55b9e9bfcc4d0..b39aae9165df6 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -519,7 +519,7 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	intel_dp->link_trained = false;
+	intel_dp->link.active = false;
 
 	/*
 	 * Make sure the panel is off before trying to change the mode.
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 56068b2ef964a..f381ceb59c7d4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3550,7 +3550,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 
-	intel_dp->link_trained = false;
+	intel_dp->link.active = false;
 
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_edp_backlight_off(old_conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 367b53a9eae2a..769e3a48d9c5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1658,7 +1658,6 @@ struct intel_dp {
 	int link_rate;
 	u8 lane_count;
 	u8 sink_count;
-	bool link_trained;
 	bool needs_modeset_retry;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
@@ -1683,6 +1682,7 @@ struct intel_dp {
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	struct {
 		/* TODO: move the rest of link specific fields to here */
+		bool active;
 		/* common rate,lane_count configs in bw order */
 		int num_configs;
 #define INTEL_DP_MAX_LANE_COUNT			4
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7b95d62730e6f..df8c86fd133e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3222,7 +3222,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 			      int link_rate, int lane_count)
 {
 	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
-	intel_dp->link_trained = false;
+	intel_dp->link.active = false;
 	intel_dp->needs_modeset_retry = false;
 	intel_dp->link_rate = link_rate;
 	intel_dp->lane_count = lane_count;
@@ -3586,7 +3586,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 	if (crtc_state) {
 		intel_dp_reset_link_params(intel_dp);
 		intel_dp_set_link_params(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
-		intel_dp->link_trained = true;
+		intel_dp->link.active = true;
 	}
 }
 
@@ -5081,7 +5081,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
-	if (!intel_dp->link_trained)
+	if (!intel_dp->link.active)
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6fc76c424f468..a479b63112eab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -166,7 +166,7 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 	 * resetting its internal state when the mode is changed from
 	 * non-transparent to transparent.
 	 */
-	if (intel_dp->link_trained) {
+	if (intel_dp->link.active) {
 		if (lttpr_count < 0 || intel_dp_lttpr_transparent_mode_enabled(intel_dp))
 			goto out_reset_lttpr_count;
 
@@ -1128,7 +1128,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
-	intel_dp->link_trained = true;
+	intel_dp->link.active = true;
 
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
@@ -1721,7 +1721,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
-	if (intel_dp->link_trained)
+	if (intel_dp->link.active)
 		current_rate = intel_dp->link_rate;
 	force_rate = intel_dp->link.force_rate;
 
@@ -1819,7 +1819,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
-	if (intel_dp->link_trained)
+	if (intel_dp->link.active)
 		current_lane_count = intel_dp->lane_count;
 	force_lane_count = intel_dp->link.force_lane_count;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d2988b9a6e7bd..325c2a0346553 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1004,7 +1004,7 @@ static void mst_stream_disable(struct intel_atomic_state *state,
 		    intel_dp->mst.active_links);
 
 	if (intel_dp->mst.active_links == 1)
-		intel_dp->link_trained = false;
+		intel_dp->link.active = false;
 
 	intel_hdcp_disable(intel_mst->connector);
 
@@ -2108,7 +2108,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 	u8 rate_select;
 	u8 link_bw;
 
-	if (intel_dp->link_trained)
+	if (intel_dp->link.active)
 		return;
 
 	if (intel_mst_probed_link_params_valid(intel_dp, link_rate, lane_count))
-- 
2.44.2

