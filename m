Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797D3984C50
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DAE10E757;
	Tue, 24 Sep 2024 20:43:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLO75Lf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F34410E749;
 Tue, 24 Sep 2024 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210602; x=1758746602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hFOfTsL6BIiJdc7Q6FQ3wwY4kMQNeUYq/e0rgscRRzA=;
 b=FLO75Lf7eU37QlVE1vG/QCWgW99WSfAnVo1LptyhHTdZ5/+7QSFgpaS/
 BaQZx7MSLxNHDAhCkYQuxIzXKg61hBCk5VGLkTpt+R7cKtELZURESIhBW
 3h1+WrisvkdVUiq6R68unUGx1sPhjL6nIpCpKQsP1wKDLEf/++nhUCfRB
 qq8BUL+d1wYN/d1Ypt3Qi4BvhFMZNvdEXs+8PNAlOawFaqSDfjRHEu0RH
 tWmXrFeceiF6j1G2N+wraTHd/Tkw/lpTe/LNv96Fwhp4mL6a1eZtWn+Nj
 +M3jAdsmeVNhpRytSXHQfcMIiYwowc6VhKCh/otfkKmh6i5354tTmskcu w==;
X-CSE-ConnectionGUID: FaG6+JQ9RxqVHolaYdMV6A==
X-CSE-MsgGUID: 9D9aFk8oThWsiM2sH9Mfqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751546"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751546"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:22 -0700
X-CSE-ConnectionGUID: Nxck4k44QQGdc6yRSrPi0Q==
X-CSE-MsgGUID: UyQu2as5QSaDwA6Ex1ttmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298800"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=veezxBJUewU/HNK3loyviYRrHLFHvsbe3u8XnhWSZLHSTAUKPISc8S4Pdqfp7036VAiMaKjgeeeKZVHdiG9T0qxw3nluB0T+S6tUUTSleFNZWiY2pgHlzR2fSE6Zi9TbSDAJKkffSiO7EBLqjushDu79qvTtMu2+Uvo+wI3sVG0Dm6USyKRiAII4RwriPWMLc9iA/C0AqeqN4BcLiFJzNInU+lTxbSSS8fmY408g3nXHgWkn0+OcIUfWwY19+zE5//YdAwQkxnd63mYccot+x8c/YSh46lQtOCB20e4Z+JYdEjvQsEqb2v9QAI1qsRcDRFq9OlOhumq54pFVT2HKrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waols33qSFJCvVEzq6wGeYIEcyctV0S/oKn1vxKvqO4=;
 b=ga04zVGtYI4E7Xx6LWhvJJW06WGB9iUc4t7inmeeYUb0ADgvdswO4ZFc0qkVrS1nLEjdkdQWYPR+f9OfW33lB0NTGNxrP0B9ZQj7x7nAF7BZUjLGLrIpZZk1v9O21djtqy2UHKIoGUcKx4Q/0Biynwm0CsRrRvsDOdeZ/687a3/IciYzZR/Bj8mz6c+jtz6vl7tMiwQ1mckOm8EwDWLmcECfZ+FJwG04n49JQmqTvQMZfxwZCrxnhJ8txzSHWVs9DMfefZAVXTjXj8Wi9BtE0AzKpY6kzYlV37qVMgFoi8WCDpIFBsTVQTA2UdOh2WlZ7WyUyktRtIIGKVJC/III4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:18 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:18 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 15/31] drm/xe/display: Delay dsm handler registration
Date: Tue, 24 Sep 2024 16:35:36 -0400
Message-ID: <20240924204222.246862-16-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR16CA0034.namprd16.prod.outlook.com (2603:10b6:907::47)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: a0d9e73f-f5df-42cd-49bd-08dcdcd98558
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?A2fku/9ZeS+b3yVETxsYihjGhTyh6ckc5wuBJA41hpCdSfQm86mGFTgG60f2?=
 =?us-ascii?Q?Bb5B6q6oG7l1kNX4ObtYnKo4fI+BuLytnt60JctfWEo3wQcBLi7zPUgV7Etl?=
 =?us-ascii?Q?BopiPOrthp9mnY/M+99f3YHMcHFyUqre6Jj61q8hn4LL2469Zlb6ENWmp9ZW?=
 =?us-ascii?Q?sB4bcApon3Nkjlu+ulpzZPaCgf6aFY3Lu/VX0BQ0LDBN5lKTxEGRkfer0hs3?=
 =?us-ascii?Q?J9oJsZXog1SpoZT+0YylIm23fNa4IGNAizw2nFvjQ4eVHAh5x88dzwVGYGxx?=
 =?us-ascii?Q?et+XcM7L/kyWVcP/20Z5zBnLI+SukWEWUDWK/FCEBRcjlh7vgABrz+Q/yOnQ?=
 =?us-ascii?Q?1tEFJ+GV9kaZv7ExN2hfMG8xVHMi0Q4oXdU1KlZYBRUoBl6WE4aK8TeZGdFR?=
 =?us-ascii?Q?I+NejS43Pw/IRDaR4MJBKptiW7kks9gAWra0cU9S8RfiWf+Q9w/vD8h3FvmP?=
 =?us-ascii?Q?36b6MQ4+/doQPqPEeXRdZEV/QDn65+22IUQV57123/EmB76NX2OMvBdFIr/E?=
 =?us-ascii?Q?dsc5KDcHHH1EO9rDkIbHzbKZtDlKa8XIJWedN8Nq3PWZ/7XSkxkPx2CmqclC?=
 =?us-ascii?Q?inuOkRKxI8dbaF2ruWv5d1OMNv89omZckW0wRAuBFvpk/R/7FN/6Falxx/dZ?=
 =?us-ascii?Q?nSQzv6OLn4et4QrTqeRpRGswnRX8bo2wd4J3q52JEAuWtiM3dfRfUWKAvCb6?=
 =?us-ascii?Q?0Xpm8Baqg76pLIgpQukimkxeZvU4+bN9/IEIinGtjYq19czGerfLk9OmITZz?=
 =?us-ascii?Q?S4VKv7HJs5ZQtCCLeA+988zvdKbZq2zHR89EGFuV69Lll+Mv6mmXR4rsCjfC?=
 =?us-ascii?Q?94H9DyrfoZ5486OXwvkiLrXpJSyuCYA6CWqHCCNxTub0Qag8tPh2eV8WTKxD?=
 =?us-ascii?Q?0UkV4C+MWOyvzPrJAaroXsJT8N2+qFrzC+d1fGAuvzcohhzZKTjXO/ZV32ZA?=
 =?us-ascii?Q?ceLH2dVJALkASMR3BRBaS/mp9A5p72b0K1AOHZ4u6yDku/GGWj53ReKZc7rH?=
 =?us-ascii?Q?2Z2L47yihcEAELfPN2BGCbo/4AOdyGcdomC1xtGVW0JZ+f+oaq2ncZ1Ge/UO?=
 =?us-ascii?Q?0lPbFFbXNtOJ/8mtUrQhtW9nAe4lnLtz0/uk7MpwNMMCyuGK4xUnMTUHqueJ?=
 =?us-ascii?Q?sUGgVvVBgcjbyLbf7hyF9+ooYfqeNwy4N82rTJZRCKiqK5qaHJUu7tg5eYkt?=
 =?us-ascii?Q?eg1eMMRpiYlfto/+3YPRIpQUehSk+kcX5NmhUDC/i0WHuFceHMGHRubbBXYg?=
 =?us-ascii?Q?fIudkcgSctqy8Ltz3mMAJJfpFFC2DfgFbXal90B/Gw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ty0CKUXgHe/0JTsssV7GCk50/Y8fWkAhH4otpdu3jGzDbXq4GP7GTyGRjrAP?=
 =?us-ascii?Q?YiBbfHxsZzviL9IPb73vE029fc5dHFqlMagf8Lm39y85hJTcODDmGcYw98R+?=
 =?us-ascii?Q?ZVi5dLvtjckkX1sWqAuoOJMgxrXAK3z3790biH43ResHzz7UmH1JrN+9FOGZ?=
 =?us-ascii?Q?3nipk6l1oRkOK3VVKGrHa9h6gpevep2xoA4fc/4KnMGKmdAol7fNJKNLNrEm?=
 =?us-ascii?Q?5S5wSrKPpV1FmIH2ok0DiyGj4vMbgadn0AiAxUu0iArh+GtHbhgIMdUMD1sp?=
 =?us-ascii?Q?/6zTJrPiCJ/VomDVaJxTgI2Kyw/rHXDPnjeTKckkVCDqrrKvNtn66zOYzfs+?=
 =?us-ascii?Q?QHHcEVBO+cGMCOZMCPybslXqi12PeOnp43LXBURAvc1J/mKrdFa6VAqEa/yw?=
 =?us-ascii?Q?YubwrJaNKlVnNheiI+CxaKe1u/TFC5vh0Wg62cFRwvyvF7NG0MXwamLW3mf2?=
 =?us-ascii?Q?Oo7M/AQwRcXGcFEQFGDkqk6pW6vNqjrfkrtyVIXiAkgng9PvoH9AlDEsg4Q+?=
 =?us-ascii?Q?lxwknehDjU2x7MRfHZPEaPAZVv2lx0vbLnRsSMMO5b2KXcHTNc6HVR94fQ4i?=
 =?us-ascii?Q?Ff7j8NJI1G8YDxTEyK08HQ3XK7uT1IoFdV1Nyft+xoOL0AHj/nHxlqdMTJbj?=
 =?us-ascii?Q?W+MtvmkTMlicbSaatHolKBeClmQok3aYb+cDpxZqsByydxOLjcpIc0QHW0gX?=
 =?us-ascii?Q?gmFv70V44Yg5hWbV2Wu10HU5Oy2YezT80Z7lmFZtJQkcRXFkmzLs5yTMOd0Q?=
 =?us-ascii?Q?nbUmo5YwVCMAExtNJBNEK1mDEphekXa2emPiGi8KcsmgPswZ4Vr5ul/r15RL?=
 =?us-ascii?Q?BUW+XmFKRzp0Pj8fJi/nNxxZElhLfwb4Au8gnQc8uGUiPQrvfyQcrhitbiNp?=
 =?us-ascii?Q?bqW3WvyM3VNY/O5Gddd7yNs1HJBoGdEeI2WLHCpZk94bRoLV+toDRUWCerN9?=
 =?us-ascii?Q?bvfumLyR438GnXJYejHJJOCH4WWm3t0SR63BK5JHMbWthp+lqaSYznWuW8gK?=
 =?us-ascii?Q?hBWkq4V6CKHgjelOZShNlkySY4GlTfabTzoX2iHjjl+DEyGy6IaN6tPn78X0?=
 =?us-ascii?Q?eCQcW0Z1mtxc4R0rMW9nGZoUrTX0FIdqN8nxIpA5vmbj16kcU96AgQ3UtaQx?=
 =?us-ascii?Q?GDJ/1D5x9Q19FoY0yecOr5y7/eYPRE1YGoCd93yCXrBQvLP2ceFKSqfbGgoO?=
 =?us-ascii?Q?OIendZkKNO2n+v83zaXkwhFDD6OyRxqUcMWOnvpkVl/+OioLAAQ5widG+Ym7?=
 =?us-ascii?Q?k3wwcFcnv42oosrbw03dMcoQNR44dYLfBaPgl/fG4A2YZFWolt+Xx05jPXz0?=
 =?us-ascii?Q?y3rEcdRELcbvaE/oyl5wLpR5iyE3ErIa7LAG4Jv86cYJfHUtne/HW+0c8BXw?=
 =?us-ascii?Q?OzEZ0t9J79gTFCL/ttyQSnsZ/1A1IInw2dHXTGwq8gfQ7s/grS8vRTvevNux?=
 =?us-ascii?Q?Q65NdkfvyGEu39L5x8XLMygqBVRp38ppy9hZZ9Hn7y5ZNDyTLeVhmv04Lfxc?=
 =?us-ascii?Q?7UjdJZeRLwBLXRon3vLOcLZQxETKA+13f95niKlhDaY1tGB55ZHwBBKeo+9h?=
 =?us-ascii?Q?JD4LxAbVLg5uz8AV2dxkPTmFCCuhZWMGdXs7sTABneLKz/6CU8sPNkj5db5D?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0d9e73f-f5df-42cd-49bd-08dcdcd98558
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:18.5195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ord7RNlv9+IBuqR9be5XNvGY1GLU3ehGulMGqMQOcSDwTuhlycwUJkJbk2OtRUMz8XvGBmsVyhg6PJI/WVfWrg==
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

Bring some consistency to register/unregister order at the
same time it aligns with i915 sequence order.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 45949b095d7e..e5df50221a04 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -217,8 +217,8 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_register_dsm_handler();
 	intel_power_domains_enable(xe);
+	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
-- 
2.46.0

