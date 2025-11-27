Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E54C8FCCC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F73F10E8BE;
	Thu, 27 Nov 2025 17:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0w5fzlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2575110E8A9;
 Thu, 27 Nov 2025 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265929; x=1795801929;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=W65s41merW4vYLEnQrMqOeAwfe6pdqR8xV3rsVs4G+I=;
 b=X0w5fzlxBR3SpE9UuHgpfAR8nmXuLnb0YyzLODv46+S3/av/q/4opIlb
 Vr+JhaZqj333+xdMEX07/hCAaxspSzQIGImkWgUyD7i65+mriG0H22Od0
 X2wtgQaxagDJmi93xixIiAsqiSopBD6Y27cHdkwv70nWIB8r+p2aLIHPd
 chHDsq0DDBRHJz6MWLjLitnye67OxK6TeTGK4hy+uXTWTKNZXjbiQMKJQ
 zzJztd3rtwNbrT6B3H9L3xKr4QbI/b6NiWLLgt7IFKHsxiR9va0vbjOnv
 7kIjpSok0+JvY9gZKR/9RcVBIlM0FBN+dFge31VJx/5+zb09tUsHalyVA g==;
X-CSE-ConnectionGUID: ZqTcRRrsS2WGDGQWbMiXig==
X-CSE-MsgGUID: lN0c+5pbQCW48unktVS3Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003048"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003048"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:09 -0800
X-CSE-ConnectionGUID: B1P2nonjT0yETyylPNGhUQ==
X-CSE-MsgGUID: V7XH/NJCQ/+IJc39fzXcgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453730"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:09 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:08 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:08 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUxNyg0bzAQaAxo/VoM0/vjsLqd505vbSXbTnxshWzjpwIKUbzIHQWDD7LG+P0Q2Jrqlol0dGcsfCl2l/W+Bq2oW6R2I/CH3Q7DYCBVo1176RBmbkJKm+w9KI6EXyvmn8m1QE8G84xgMDzNfmM/ptNdqNm92nJx910ZNIXxqYmekMLdcZZ3fr6OyTzCDgRbdGhIP1S62Kxm/zKsHqfZdzg11Z9+04Gwkl7j2GLGnnmLBIEjbujT2jYRpobdsyfxh1TgaUbMzRSZizzpIevjnO9Ny9I0vQEGErqYQ7lgNUlJhtakCLCjD6IqN2U9HGtC6toMHIt6tWi1y7cbrNhGiyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qyceonfeo8D3T/p4InObXQPgaBSPNUJycMSSfC+jPiU=;
 b=kanJYMOdlW5/0d/U4NINgwzOZeRhpo+UmCUj9LWL5rjCWeeJxSlppA1pIXS2mufHfQDAn7Pr3fS6G3yE5oyU1iO1/4HQzEiDIIMM3HDxkvvwePa0VyPpCjUUxi1OnPZKntz4P2+iCHPANlcqo5ZV1b5v+k/s6Bl/IKp7L4GReoNvfkUsrRCrV9mr9bV4KqSQV9IyHW7CD7RGZtxVo4XXdsQccXc+maPet1iSsI4tV8JyWm2yWkaD17Pu4/0LNdS8NSSZfMwGrZAoy85sDlKjiS+rtZH2gz7akVhWn/gC/+guJgYhuyLYgIOQ0pERKPa0gisDnnrr6BmsFSaTSrNBmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 46/50] drm/i915/dsc: Add intel_dsc_get_slice_config()
Date: Thu, 27 Nov 2025 19:50:19 +0200
Message-ID: <20251127175023.1522538-47-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7887:EE_
X-MS-Office365-Filtering-Correlation-Id: 8aea27ed-2809-4244-9779-08de2ddda2c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JUYSKIxiKb5iNZ0a0RWKE7S65AtyV+KYQm7cluE43flHu/UiMzj3EySMMPs4?=
 =?us-ascii?Q?ZuVFOXYtIUdj3jPjz1cHbSkk9oDLJ1m61mRXuPZ5dEwHM02CngXMFZyADkl5?=
 =?us-ascii?Q?tHDOXZTsfZjeMXn/f4KWzcNNrFhSaEhBATKP5DXRO75qEb/bBmOf537TShcW?=
 =?us-ascii?Q?WZviNRXijWKvCc4JWWMHgdGBvL1GucdS4UI9wQldU6iSaJzp1cdILd/5BV5y?=
 =?us-ascii?Q?T1+WyNZ/vkPgU+mmMWHlujRDSOgC86MwET+JWFwA+ss1Z5lKeOS2iVVqRz0f?=
 =?us-ascii?Q?by58oWqj0K9v6nnHy3+yIbERRGAU9tBzjMo7dxI92A4g38EJ/rt7BfYX2m1e?=
 =?us-ascii?Q?1wVr3e9io56ZxHoyYFwzyia6zycTXQ6RG3wjErz8FxvK7jmx79rc9UTdfx57?=
 =?us-ascii?Q?XfVOYjjv89Fc/e9t+bukA3lOK6XXBIzBKSToCzBFkPtz80WzwkzPi5Ze6XcR?=
 =?us-ascii?Q?7CetIMpeyvFPJcXZAf3UUEgV5eSIBKNK2s33eJTP/tIuzfY5HXkQZG1GK3jQ?=
 =?us-ascii?Q?n7WUUM8rHrb5xDR8HJDqgVEHWE1y9LHDBtoLIW/9zlQXmXuRImFtQGbIvMOb?=
 =?us-ascii?Q?wi3XeR4p2LGKyN+ocLwH6vA/BeJVUTsBx+sRZI8z+i8seJyhwt8GmUFXR4v6?=
 =?us-ascii?Q?to8Nj32WBoKidNbOAw2O0noYTJ/Pyo6Uy7bDhs9XkD+pxbK5QKvw8jzeU4cD?=
 =?us-ascii?Q?lRBQDSFdyZv5svf3T5uUPlnHRfrA3tyUtaPYNlXYDb6dtKZVqAX/0B1jf/pn?=
 =?us-ascii?Q?KEWvFO264e9gQ66ai4sC1qPGBoda9QdqBLvZ/LkfgT3VLJrIuo1Z7WXaA+U+?=
 =?us-ascii?Q?zdiqAJZTmg+jlc5wFwvSP3/OTfQ4YvxN5SIEMvXZqJuG6SLxqDcZAxexypRi?=
 =?us-ascii?Q?8Ux5LOjc3sdmkefcGS0rx4ZLh7chkYvruaxBmfRe79I/QAIH1Bh6gLQefn41?=
 =?us-ascii?Q?6qNe1iRI9MRI68B0RX9z7ozkfCBIIY/HxPLI1GEJLYpzvHtdIFeluuCxG/lW?=
 =?us-ascii?Q?xlI4Ipzhil/3H8JahiU1+rKbNaVO/PtJ3/Xnoz+mNtbzY+Snqii6Pnhe53Ob?=
 =?us-ascii?Q?dYrJux0GiysN2him2Ygo0xCinfLUNwOpGNWZIM4gdiPa5pzOKFdk7qNYIGzS?=
 =?us-ascii?Q?OFuMRNng6kedLWA19Z11HCHQEwq/tHeRDQLMrxvEnYt4tBOs5/Ebo1XhBKhe?=
 =?us-ascii?Q?G4Ah6B47uN8rfdJaBv6iZaaOAhqSS7bfM45E1HcoVt+VodJjWuLoBUmRxYQx?=
 =?us-ascii?Q?XGonsImOjx7F2C1xRPBFWCijvMnNnh88+oYFLTcGEz4Usa1C0XTjdxlxOUhO?=
 =?us-ascii?Q?OAsO69pvfIQsP64reBd3j2yRa0aVaMZ6zOgWxPQu5dbzMMRuiThBGxA8WkVI?=
 =?us-ascii?Q?r7LaSzVXR08afmyBK/y56/GGRK7VEM8P2HybaV0odjxK1FMc63sDMsIq1Rw9?=
 =?us-ascii?Q?k/pOGCnhtdid1/waYo/10WLIS+U78eAo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eMOxjSIaDKJfctmRekh/SNHzuO17WJYN/jFr2JEUPc6uqkPeLxfbsDU9BFTr?=
 =?us-ascii?Q?0m7jDn8U5WBORCm2gBUthuUbjEehq7kgnWAC53OUEDl51L+An767puaG2Bgd?=
 =?us-ascii?Q?19nexTgQ1k1V66a6BxNK7R2LiNMfRzeKrPQmp8coS9hdzLMQH5eDpP7Qzy/X?=
 =?us-ascii?Q?R7xpDHg+6OkSqoilYfS99OYmQ3Sk14680+AaMl37aJ2gyMxnhTyUq7lc+M2N?=
 =?us-ascii?Q?Ym7XRu1wwf9Pc6S8gfPGZ43prNGW7ZijyB6dFQh5cyIQ1vOWiPQElPHs3P5/?=
 =?us-ascii?Q?5FdWuuW0lInQAvt7rqUKT65qOGQKMp3f2G4O7uHRFrHw/SOv4TJGf+OyHCNW?=
 =?us-ascii?Q?loW0JoOA5W+bRAkvmBz2gASb2rieETzJ7utEf58iM8YJzva8c0gKRZ3OetVW?=
 =?us-ascii?Q?d1sCL5r1Rcuv79seEPTbW8MVHuuyIpznVOLuSrKIui1EvlULbLfzMD35uhaw?=
 =?us-ascii?Q?A2z/tvHArUYlHdHB5TqoAFuKoNp1FaI4CgJobLm0Eu9Cq3vJa4boYjt8INAU?=
 =?us-ascii?Q?T46uqv+VqBmWqYQOJ5o2jp08OlzRFjricIMVpMiT5YL7tS5vbaorXsTdrvWE?=
 =?us-ascii?Q?7BlGxKJyv3BYSGfHfy1dRPCdcfgupiDIw2FK8MfSyNHi6qJHP70Sr0wUsCLB?=
 =?us-ascii?Q?tk7ByLT1Bgjk9RmbplxhOmAZ1dcjyXYNAR2c71SA8eWlTUKnGO4wD9mDUakS?=
 =?us-ascii?Q?mvMgXk+Ox760vTmMumMYsKwz/i42quRwfT3anDoyZoEyHjxUs2WkSgVPF2Fd?=
 =?us-ascii?Q?ewshSg9bcKDaobyrIVDQXwgE0o5lPkiBE7btTlVHclaB0ki0LomZaVY5d9eM?=
 =?us-ascii?Q?o1EA3qqUMVCvF4cT2kcPMh/XxULMcJGhFMLL4Yiyf0n/qz+xzX+uu+SDkiEc?=
 =?us-ascii?Q?TH0sINicB2knIPWvO1gqxj1wfGuTOIzsQGVBiLVHJf7PPkdEROEs/ia/74La?=
 =?us-ascii?Q?FW2di2s+CM5RA2TUd7o+dKcBJY3nvvkXz2zUsNewQqSBT+lOKbKFNsAZbk1i?=
 =?us-ascii?Q?OuknzmoUBW4HCSEva4ppMI7QOgB4+ObfR9G2wjGt2HSkqm5E1AmtCBy6HQ1f?=
 =?us-ascii?Q?3XuUYMQmUSerFutz4NaHeutZx02Pat9yUa6ly/PDN5R5MZMvxWVItabo7Tob?=
 =?us-ascii?Q?WkjSy0kL0zPfQXCq+BAoaZsHCmHo47LSR8gKs0voHYSgxnhWUa7s+DVvfUuA?=
 =?us-ascii?Q?roECYmxCGacLO7NcWLHQrthaK38TowEeAF9fcbkDJisGNDY42/uWm5Czff7z?=
 =?us-ascii?Q?acFjUP6PWOIcKuFxQEpqHbUfCZaF7zKwOz4UB9KA00OSJioITlF7DTCaDRhn?=
 =?us-ascii?Q?DvN8+vej9feyhYNlWL16jZOHq/73HnTkf5NtM6LZAQMxeX5/dguW4fAveMWW?=
 =?us-ascii?Q?OzOSHUa5Nmz/s+bRkF6WHaKSi9zjbNz9BFRlqJSNmJ19rB1gBUU2FBEUtSE+?=
 =?us-ascii?Q?Pi9vPGgI4oHy6tOV9Bjt4wuVteV6mm4t1nhjQb+/0Bdjo2gbFfpQ3BRRlMfl?=
 =?us-ascii?Q?0kikwPWzGme+rbZvRXmLmm7vWQCxceKbnkv7jeiwedx82dIKLfvUEZf6pvK6?=
 =?us-ascii?Q?nRp1BHRXqPLGvj7cOp5abQF/DnGnzvre6TKyL2TUCeQ7KqB8x7f5zmuwz6Ld?=
 =?us-ascii?Q?a4H5ftj/RMAMdaGgdrgGDJEIdj+vPuC1WSfTpjUww40G?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aea27ed-2809-4244-9779-08de2ddda2c7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:47.6515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PP9g07kLXXghSWWO6GslKzRd9wgSTJmfVDjx4rNOlBVgD5qSziG1rHG7y+0/IwntmNALsHyGgRqoJS61oGsinA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
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

Add intel_dsc_get_slice_config() and move the logic to select a given
slice configuration to that function from the configuration loop in
intel_dp_dsc_get_slice_count(). The same functionality can be used by
other outputs like DSI as well, done as a follow-up.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++-------
 drivers/gpu/drm/i915/display/intel_vdsc.c | 48 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h |  4 ++
 3 files changed, 59 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a4ff1ffc8f7d4..461f80bd54cbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1029,28 +1029,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	 * TGL+: 2x4 (TODO: Add support for this)
 	 */
 	for (slices_per_pipe = 1; slices_per_pipe <= 4; slices_per_pipe++) {
-		int slices_per_line = slices_per_pipe * num_joined_pipes;
+		struct intel_dsc_slice_config config;
+		int slices_per_line;
 
-		/*
-		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
-		 * with Ultrajoiner only for some platforms.
-		 */
-		if (slices_per_pipe == 3 &&
-		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
+		if (!intel_dsc_get_slice_config(display,
+						num_joined_pipes, slices_per_pipe,
+						&config))
 			continue;
 
+		slices_per_line = intel_dsc_line_slice_count(&config);
+
 		if (!(drm_dp_dsc_slice_count_to_mask(slices_per_line) &
 		      sink_slice_count_mask))
 			continue;
 
-		 /*
-		  * Bigjoiner needs small joiner to be enabled.
-		  * So there should be at least 2 dsc slices per pipe,
-		  * whenever bigjoiner is enabled.
-		  */
-		if (num_joined_pipes > 1 && slices_per_pipe < 2)
-			continue;
-
 		if (mode_hdisplay % slices_per_line)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 190ce567bc7fa..9910134d52653 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -40,6 +40,54 @@ int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config)
 	return config->pipes_per_line * config->streams_per_pipe * config->slices_per_stream;
 }
 
+bool intel_dsc_get_slice_config(struct intel_display *display,
+				int pipes_per_line, int slices_per_pipe,
+				struct intel_dsc_slice_config *config)
+{
+	int streams_per_pipe;
+
+	/* TODO: Add support for 8 slices per pipe on TGL+. */
+	switch (slices_per_pipe) {
+	case 3:
+		/*
+		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
+		 * with Ultrajoiner only for some platforms.
+		 */
+		if (!HAS_DSC_3ENGINES(display) || pipes_per_line != 4)
+			return false;
+
+		streams_per_pipe = 3;
+		break;
+	case 4:
+		/* TODO: Consider using 1 DSC engine stream x 4 slices instead. */
+	case 2:
+		/* TODO: Consider using 1 DSC engine stream x 2 slices instead. */
+		streams_per_pipe = 2;
+		break;
+	case 1:
+		 /*
+		  * Bigjoiner needs small joiner to be enabled.
+		  * So there should be at least 2 dsc slices per pipe,
+		  * whenever bigjoiner is enabled.
+		  */
+		if (pipes_per_line > 1)
+			return false;
+
+		streams_per_pipe = 1;
+		break;
+	default:
+		MISSING_CASE(slices_per_pipe);
+		return false;
+	}
+
+	config->pipes_per_line = pipes_per_line;
+	config->streams_per_pipe = streams_per_pipe;
+	config->slices_per_stream = slices_per_pipe / streams_per_pipe;
+
+	return true;
+}
+
+
 static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index e61116d5297c8..aeb17670307b1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -13,11 +13,15 @@ struct drm_printer;
 enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsc_slice_config;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
 int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config);
+bool intel_dsc_get_slice_config(struct intel_display *display,
+				int num_joined_pipes, int slice_per_pipe,
+				struct intel_dsc_slice_config *config);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
-- 
2.49.1

