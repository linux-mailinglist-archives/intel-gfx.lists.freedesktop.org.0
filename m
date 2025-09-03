Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B03B41ECC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2726310E7E3;
	Wed,  3 Sep 2025 12:22:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1QyefRq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB1910E214;
 Wed,  3 Sep 2025 12:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756902124; x=1788438124; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=rtEVSfCs1f2MtIqy2Zx36WPhvb+AM5sEqBcJzu+DE6M=;
 b=b1QyefRq1LEN9dzFQWn8gliolzceOkMmU2R+JXfBatN6IQZtc2dT2xCO
 5XQjA4pvtANVX+s+r7PgvTMwM+WhsepynmeNLhpRN9/QlYbrq4fQBzAl/
 B+60YBmVhXiVGeJ3PkFDiokSG+UpQMcdcXJAliQZIUoRIszoMLXLRaq7H
 ePFHJUSlYeifugRS+GVUXLLcAxUcrxRjqVrwVLOAZE+gGMhFyMyX0//4f
 ffBgd/p/+VTN8RuwtzJLmpEFDSka7N5TOBvEV84TiDokuArEaNHfIG6Nt
 4IYHWE2/GXdKD/OJKxacebUC0XwfTqiC51xUufasvAlWECbM9DqlANR4B A==;
X-CSE-ConnectionGUID: 9Ogg/L9sQuW6xJ/08LQ6Tw==
X-CSE-MsgGUID: KlRTxGt/QimKZlEeMr+IFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="46786913"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="46786913"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:22:03 -0700
X-CSE-ConnectionGUID: +SVWg4swTd2PVQKC4J+ipA==
X-CSE-MsgGUID: NijbcPrfTo+GI6lIxkQ8AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="171715368"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:22:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:22:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 05:22:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:22:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HYjwEYBoLs/ri4jAivlSTvoSzp/AqDFwhtgjrZhafY/zo4yzThg7jhdwAgOjR8mw5sPIFQxrlii6w8hK3Te5u1XqPd4qbuAj1QP/+qCM0KGtt+z5KCYVsOQ62H8T7/aKLIXvwo6rPrPrQKUHpg0F11GqHsTJQMtvsgq1eLTZlag/0/eaebLkBv6s+Wia15ClBcM3eu9wfcrFXWNqGMBW5zoegKLpitVWY/K81UISEa16X8pX77UgmIAb6Vi7LtiA75LMPVazkV04zGtiFrlzT3Hmz1wfNQiNLTtD5kiSxUovz9shQf9/jbQAe5mMvYawfcINIrMGIxevlnrETRwaeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1IF8gIr1Vr/7lZ2cVIDBGi/BcsmB2anvzgkPCNZDO4Y=;
 b=iduL5y43kQ98WacrpLcf7EI0RqnAdh0gPw4BhrlNpmShJyu7R56n8kIIXXS1h6zZPTyeAm6lSJ2U7lvFsNJ45jktGEuVt+NWOVCRoef4YV6w7H7ZYO0ISXOLwkaHe4f+mGOsuC5i+M7yq+0iCP9k+rHfNLdpeFkZQ4GeovyhWMwg22BH2B1EuczhQNPsJm8Fn8ON9QwAs8b3Y9dAZHxdXtq9NvJeJwKsevMwI04NE+HUb8FqRJEyWtnVogx8BWIpWBwucBSd/xsuhLviHY2InrvjRd/UyBE4Jx6k42hCTV8oJV4diqzSWxQ1MBB1elbcKgU9BGC1kGhlTyx8K8xeEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4578.namprd11.prod.outlook.com (2603:10b6:5:2a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 12:21:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9073.026; Wed, 3 Sep 2025
 12:21:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH] drm/i915/display: Remove power state verification before HW
 readout
Date: Wed, 3 Sep 2025 15:21:52 +0300
Message-ID: <20250903122152.2526050-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0043.eurprd04.prod.outlook.com
 (2603:10a6:10:234::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4578:EE_
X-MS-Office365-Filtering-Correlation-Id: cacbfdd8-4197-4a61-b4bf-08ddeae47a24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9AefWlgWmbOjlCuK0OhqEKx1UP+9tVgk4tAOy4uzmSLeGr+VXyit7WUmoP4h?=
 =?us-ascii?Q?Y/gqVVUCP1F34mhOr4F5uZ+b0NGYZUaynSP7NesQj9LTOfKTPLCh26rgXhSw?=
 =?us-ascii?Q?BMwTxKkr5bN7+UEjx5fqjy7y3itZg8xeJ/t+eWRu/rof0ObMpU4JKR+XjGgK?=
 =?us-ascii?Q?mRVTjQsiSxU5aSa3UuZ5cnk6u72H/pYmVc9lX7krt4smHmPHVVvfxHdRUJpY?=
 =?us-ascii?Q?k4Pava6VK/pZjfZ79B+m7WXHCg6M8mxDvmzm5aBOY5/4ZlbAD6aN2V5eBCdX?=
 =?us-ascii?Q?fosJvKUuISavuzkko6Sgj7pBZeTLzgrR8uOCyUmjoi2yRxin76mG/qpt5gbO?=
 =?us-ascii?Q?xKtWKewUieSLcMTJfMJb32fCjBQBuSNzZX0sZe7Bvx9oQLpvztuUxRmuv5Cs?=
 =?us-ascii?Q?b1+9bastZpU+4/WEMpHG0lsn2aNhQuKYdB+Mo9uQOKFHTJJGi/PaJgKvgVie?=
 =?us-ascii?Q?6w31nSzQ66964F9UlbhBIjdaPEQ5y0Kjti4vZ9pQfN6Eh6tuq/OO8c/8BwJU?=
 =?us-ascii?Q?7idxRz9J5r+urELE1RziSqn0xjABu4294qRJN6GBroNbjWtjWKD3xuSqu5Io?=
 =?us-ascii?Q?ATTEU0eC6G4gSQsIhD26y2I/7Ch6BgbRW/AVFPbzqFjLimdvPaQVjvELLWTO?=
 =?us-ascii?Q?hfgxxbZBou9fIxTTdCGtTJBHjlBT39bFUept5rKcXLu2aycD0h91b8TpBE+r?=
 =?us-ascii?Q?JezCs3dZajFKr1KXP/fK2VMA+Ea+3luG8kyfRlY68zkn6NXcqi7W/zUIyYF5?=
 =?us-ascii?Q?8umesMpQea9qzUccIly0afgD8yKQrDszzu3Wgrcnb27JreJKoyDGZYwzXNgR?=
 =?us-ascii?Q?7aMsKYHWsZfATFaXwDYQST4m1tV+OD3qCYYmT27McoR4PbHdbr5OVu/Bf1d7?=
 =?us-ascii?Q?d9I+LESa5Nq3yPdmMOzYCPcZhrQKrY/keatuyIwiz4+LuwK1l8Vhia/pKwqi?=
 =?us-ascii?Q?1TGHp7wqphJK3ddpP9F8qsyHHA7XfhK0EFE8XXF6ehhf0aW2izkXmfQZYWR5?=
 =?us-ascii?Q?TOb2Q4M2JbHpRslMYTq0GilwJun0ycabvwLMxGGGv7NFTKTsTkZdfnnYWclJ?=
 =?us-ascii?Q?I+MD0ByzD6Yrld5MwP86vjrZerfha777z0o0cRUL9KSaZCXBcsuM6ZkK1XyP?=
 =?us-ascii?Q?ekUI13wTvE09amDdJAeA9sU3LD31Do583iM5Ve1nhONsIHX8GiPdNz4GfSYT?=
 =?us-ascii?Q?0ZMWCHGDzhspUx1KUeA+K+2onbPCHVvglNa9itZFNc3YvrXgASxOgWhGWsof?=
 =?us-ascii?Q?y0N0FRCMcDHhU4CXlxfIou+3k4q9DBOSLOaPz9LGNoUbHHVsNQtYqYJKNOwP?=
 =?us-ascii?Q?ZeApIF+vloJ7Zn51ktapSXJl/hJytZseA6H8U0HUuLK1q1g/ulx+fgHYvMIB?=
 =?us-ascii?Q?WHNZQIg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5WO5dwj/JqEkovsjekSXVXlXMrs2n7rAr/MsCmG54P5EOVfvw60xsFj8IQDa?=
 =?us-ascii?Q?kEdRgwvGqq298bgd1uysGbz8vTHNmwM2pw65HEc6a860zXOQ05gsBasJuOx1?=
 =?us-ascii?Q?lfpBVim+VC79lacb89CVYtFKp+WwUL70HV9I2SyorPR1es+i3aYcAISYG+Bz?=
 =?us-ascii?Q?REGsrUwcaTjexnORUt/C7tn42yLg/VDccp80PaRA/nE5mmvj918apEvrh1Rv?=
 =?us-ascii?Q?GARAwrtKsZdGchAH9BUtRTjC32yJDeX8iO+wMPlVPOvVM5s7mRKro1dhJAH5?=
 =?us-ascii?Q?4TMZJmK34PcHMJ08X2QZN44iWdFuamIxiezqXunCNZ/dNqqyGDeLJfFDFTxB?=
 =?us-ascii?Q?sFEln52Fo58A9EZfoQeRtia8pqT1pyz3R0RM1m6HB6k3jmhuU11E3AGjhqdS?=
 =?us-ascii?Q?sWU+VRCc6RFhGPo5SSgENxAf0chH7vKID0FV6CARZp4O7hQmXTIdTuJevs8m?=
 =?us-ascii?Q?/dLD52y7JWmKp5AWHCqAPu557ujgcj9PALmBQL1O5DilKcNMVN1gwnlt9ng5?=
 =?us-ascii?Q?scOmSkPcm3EbebRmS0QNYAgNW4DkatXpEaZJnTY+ZwHyb2z+G6Zbcon0yy7Z?=
 =?us-ascii?Q?QsxxDd4M/N1wo//sq87OJy554sO5yPKedL33IObSUO2zP2BdyV8lA7iritO2?=
 =?us-ascii?Q?jvWMrAZUHGb9Lnf6mYPKeoOEmPvE3/Gj5PMJa+y0kfw5woSXTaRkBjw6xF8g?=
 =?us-ascii?Q?1+AW3OyXQYD6hGFs98hjGOkAxd6/SR287axJXC3gK9vRMQL94mb89iH3alR6?=
 =?us-ascii?Q?fpK8wp13uylncRHxWx6g68hAIYT9HFjyKY3FUIuoTdV7/RyxHgnUC+LMAyGW?=
 =?us-ascii?Q?XDt51RWErQQO66HNW7RC/rD82v8nb6OjSDqm+txW33MmZKoP3PUjVIK+vv7D?=
 =?us-ascii?Q?vHEUmxrcc0fw5lUq8mdAMp9dDnnvOSjIePuNuh1Nslt4UUeYIpKZ/917cd87?=
 =?us-ascii?Q?Xectle9Ldn6WXc6VKHi70cPdtKvilP+ygGIjDTAZeIAbSz5mD/hggEf7Z5yn?=
 =?us-ascii?Q?EC3YtzWQv3VkoXIgT76gTr+w6gfHYhb1ric+tuLru5iAF5AyVyp65M5RDSH5?=
 =?us-ascii?Q?a0TAQ85yMWFin/OhwnkJ3+w5uJ5h4YGzZx52oonwtHwXB1JqP2YmiDzSKdOX?=
 =?us-ascii?Q?pXxRygYKbvhjlTD7VoLZjEd+/rDJxyo3UX4vqYHys50o+9WIAZT24cnxy5Yv?=
 =?us-ascii?Q?kyRRZabDrcegdiaozk5TeTgoRHlzAydOsh86gW1K3NHYdB7O7/6XXOy5WqXd?=
 =?us-ascii?Q?Khuer3AoA9dphdkzibUa/8Ks27MMPz+K/rtOZaMzz5xrxy+y3Mn9OhSWu/s0?=
 =?us-ascii?Q?YbPba5SP22ROayQ5RePLk3vAHnN4gbEnENQurYfj8FnQKFDjiVC8bnGf+vZm?=
 =?us-ascii?Q?Y2gS8Y7xv0LsZlZ/UWwcbsrOMxhnVFgNYScMDtZjXuFu/x18+TrOhHLx5vRA?=
 =?us-ascii?Q?z37Ibs6AYzbQSR3ZOYYXptP4fhvD+keQpepmOobdvknwi4pn+CsEJ0AV/Xg8?=
 =?us-ascii?Q?ugDIkhxvZ8LYFebpSQxy7mtO/UnnY3JtWhGMkLKEjUW4fxEneb9coDEzeF9P?=
 =?us-ascii?Q?tFyqJ094rL0yjpb0DKPESwhhGMYcxtvverUjfKRufZ0igRXTLCnguKu6nvdE?=
 =?us-ascii?Q?N+vrLIiGTJDwTtABrFZ6KxLnT94WjO9J+CkOtApM+I46?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cacbfdd8-4197-4a61-b4bf-08ddeae47a24
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 12:21:58.3093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TUZ9c8ynpvXB1S2mAwX5WT1gxKYYJptKvUnItyOrEsV8USLU1X1w+sTKz4DEmw8oTDQv3PkV16n+68Nd8tUXzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4578
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

During system resume the display power state verification will print the

"power well x state mismatch (refcount 0/enabled 1)"

error message from the early resume sequence for a power well left
enabled by BIOS. This power well was probably left enabled by BIOS
inadvertently, since BIOS versions on current platforms do not leave any
display output enabled while resuming from an Sx power state, hence the
enabled display power well is unused. In theory however it is possible
that BIOS leaves a display output enabled, in that case the enabled
power well shouldn't be reported as an error.

According to the above, remove the display power state verification from
the early resume phase to avoid incorrectly reporting an enabled power
well without a power reference as an error.

Note: The refcount for any enabled and used power well (i.e. used for an
enabled display output) will be acquired following the early resume
sequence, after the HW state for display outputs (encoder/crtc etc.) is
read out. Any power well enabled but not used (hence not holding a
reference) will be disabled after the HW state readout. The display
power state will be verified afterwards in intel_power_domains_enable().

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6012
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d1d3b6f89e2a2..cfa67299b5c90 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2162,8 +2162,6 @@ void intel_power_domains_resume(struct intel_display *display)
 		power_domains->init_wakeref =
 			intel_display_power_get(display, POWER_DOMAIN_INIT);
 	}
-
-	intel_power_domains_verify_state(display);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-- 
2.49.1

