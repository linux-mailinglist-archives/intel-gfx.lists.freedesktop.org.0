Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4769AE981F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342CF10E87B;
	Thu, 26 Jun 2025 08:21:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UMWmkRiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08EB10E87D;
 Thu, 26 Jun 2025 08:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926100; x=1782462100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=W31ppshaJXDRAjPNJtUOn55cHVN+bsbkmr29MnXxapk=;
 b=UMWmkRiKKYzHVRwXq/YACLjHoCpbzP1C0BkIsm5Uu7phpdSRjs7+g8+P
 sKIwKqwKBwmlo0Wl7yKAgaIiCKEkJUvXTz9bp4Fm+jtzzhSbAN0DnpNYv
 ayxZUPhQ5FI4qINOMceZLuk/LN7+YAU2toMlZdmZHeh8Qk2KTdlpVkMcp
 t13MUIk7hG8ZJJQuOuUvfrUNVzVzcf6l5UVFEuuhsoGD6nZyRelzd/GDA
 vXD2aRwFtHxX+51neP93n4CIM8XoCKav7kZ83h+FoXG4m73a8kwj40wSz
 /25cajwCVDQ1QnyqGsefdQ2IN6UAJWFWUC1OdvskVwtJYOFyvO4ZC0VEq w==;
X-CSE-ConnectionGUID: yMzpDI1GRtemlOPsFqLjyg==
X-CSE-MsgGUID: NhNYX8oySiOZprAGwUobgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019485"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019485"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:40 -0700
X-CSE-ConnectionGUID: 0d7n5GGzRY+8O/115I56Pg==
X-CSE-MsgGUID: lIf+tJkDTEmOXzJuV3H5cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152070245"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yCxjfnGEuO/GA20U15LIJyVV+nByZa46pjAohQpy4Q7hItSEFXOkCibpWCxIBXBJqqlXHacYWJNcpiUybmagZXtxAodVnjceNjEWc7e1/bBMOFPrMLj6jdFM/mVPIRgm8xzan+yVZfO3fAJgOZpGJc29UdEYXAar8h6iuSTLTSUusrJJ0sdAOyONiBVhjYhdL2Zfokpg+p3adIdJT7yO0l9K9q3is0oSjM9XtYpZN6LaKAGcWIc/p65ADT2oHvZ7Lk+D6g6DoPsHVRKU3XGTUMCmla/iJGGObViqSySIX5djvb2B7S9PxPMJMqDx6mr+zQ/j9T6jUqUZChSJxhMIKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CwxK5JwkF1GboRSVIw3NLB0jzGM1XRyXm9GIIf8Q4cA=;
 b=oeHo32oGvtl8dER7JDedRpiHrLse72vjE8WQl7PBgys2rEU2mOyOGQgh77TtCeJxo6fMCd5nUqpP3Zha5Q+6ioWyh32qeVqtAAQEIYy/AIobiFK5d76YiYZQCLT2QzH78EWBHaXIMN0PEjvgleF5rTzivS3HqKAVQg0cj2Us8JdsF0vBRlbmyVWpv6n25GwKUPxqMKVYN6L8YaS82FV1p841alWlwx6xffK96FuEy6+oMqMhXfEDyjbnOlP0F3NvErE2cRkuolDwp7jL4G3l4Ec6HW1gQWwNGGFsoB/Ti71ZSiedVv1pgm8lvVEc+q8f2RIoEUNgxKFB3CzzX/3KTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 16/20] drm/i915/dp: Print debug message for a sink connected
 off request
Date: Thu, 26 Jun 2025 11:20:49 +0300
Message-ID: <20250626082053.219514-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: d38a6805-6a7a-48c3-4249-08ddb48a6ff3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?32RtuA9ts0RNPwa0K4mOKw1Tsbmv4KL37cvelkitsN8b8CcVkilwT/PvQs31?=
 =?us-ascii?Q?zC0KK+Y4/NZR5g7fYWPxSDmTVthA72N8/eRbXsHmz3X4xFNVrPWozdmrIkYv?=
 =?us-ascii?Q?N6f2T51TFZUlSs4A2/gfcrcl80gtps1gMO2NQ112SVHjk3ymymnSVWo6iu1S?=
 =?us-ascii?Q?rLCmTNa487poQ39XboR6nn0zY5wp/vJ0KQ3bpcwZ2pGSQi/GaUwNt5ZkyBLu?=
 =?us-ascii?Q?y+OHSyk0x/LUqn0ptfHO+rDwD2uzPwF/+V24p6qowY0v+L6VyzFDAwOAunFZ?=
 =?us-ascii?Q?DhrwXMdsExaL1YSTdmHXtH+Ib5i3Rskn4yIlS5jXQ3zZs0p4afYLWWHtmxB3?=
 =?us-ascii?Q?6/kl7DOvFBruaUze66cBRG+9HK+b4aXuGbpGoPaJtWcCUb8A5vZEZOZmejYE?=
 =?us-ascii?Q?cKO4+Zjzd4PGoWWdusSnr25bX8x/Z62wCruP9af24bIZnMZ+1Xt2d8uDDelE?=
 =?us-ascii?Q?CNQr1e85MX0vH59JrngQnW7HuEZZmXzymUThHiQ4JJbhLLi+V2Ap9//SKd2s?=
 =?us-ascii?Q?pPkAqgduTPtE8GN7mr/gG7SPgb3mp141EowTMBIY58cy0E+/aDvCMpQRZ6aK?=
 =?us-ascii?Q?S8HRUs6EtXtYqTOVOQtHRyru3vKo1sLbvi7ZiuLBJ+wYkcWJ9Kt36NQ035r/?=
 =?us-ascii?Q?kvqCYhKQ4C/kILV1Lg0Ww/LiYexjg18DYCDJfMJP5cZQNyd6xyGqllrUc5M/?=
 =?us-ascii?Q?TK1wsfIDMKu6R827GAYczHMMUlKBVOm4AE8Cuw35EU1vWgv4m3rtIK6eBKkZ?=
 =?us-ascii?Q?cGK2X4Fo56oEAAor7deIbucXIyrjiIoCAusdVTNq1j1fZl76zWzmI0KB6Z5R?=
 =?us-ascii?Q?9e6GWHOaGvn9akm/BGzkM6O6SUlO5i5i2L6ZbXl2WCtUs0FBEJ+1eKS/jndo?=
 =?us-ascii?Q?MFs9N7dmat3MA2uFl7iV430PDRbwJtcU5/EOFlfyJ0jFBkc9sSyy1CFK4tIX?=
 =?us-ascii?Q?QQJa+VYBXn53HfBzhVUMZ02T32z7DfxZ6nCuXkEZfu3dO87/hofvjfbpkSHF?=
 =?us-ascii?Q?4PQdN8UM9bVXXP3Aih3dW8WEudHFsyBu7x1UMJ4l+zw5ewxwblKS70/otJ7i?=
 =?us-ascii?Q?OygCjHp9wRy232K1alMtqmGb2g63nIn0XfbY9a5913kfWqYuVRBYItbP1hbU?=
 =?us-ascii?Q?XH7ud3AkpcaS/nkArdKYRgvDWiKmtDiwdirjFRa5dOyQBjvYtgF+JKhlYieP?=
 =?us-ascii?Q?TsHVdUwnA9Ls2KnRg1+vmV8gLG1kqfUXcB8E1ZGvLvzpw6b8uozfO5AndTVZ?=
 =?us-ascii?Q?g8Vdlf/R3aPBd3RxvOJOOcQ/q5SEYp0zAVynO/AD3h0XnqTybwoxfJS/XENb?=
 =?us-ascii?Q?PkNSTufilGB6Vr7obykBpZRmduNmdrQ0ribzCO1KtaZ+68xVE9uaU+mxiXTU?=
 =?us-ascii?Q?8pjwuV4VkeMuupXLFX4c3cpgN4o27Vhap0lBGU1xqYRBsT/yOMJwAbILmuFo?=
 =?us-ascii?Q?4lkYMwniSjs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mgmsW36FKfJo34WtfLv196dzV4+Fno/Atld8d13ihLx81KBHi0nBOsbJM0cW?=
 =?us-ascii?Q?O4nd7wymljC19pWFUGvT98HfVFKtHCnnGcjdPJnaHFYfUOvDGgJZ0HNcxQw8?=
 =?us-ascii?Q?pKC2VVGvdq28OM7ph3ZEbq++X7DcWtQSwBwbMDSIT9gz8FxBH7hEPwOsLb6o?=
 =?us-ascii?Q?Dk9nPYYIMVZHKD0zu54xNBwEeWocdiBlS8WObqs60BbDre5Gly58Q3zUmk02?=
 =?us-ascii?Q?wlmi99n3guzYqxsABWzmpqjnRnWi0TB2gL1MC6AMyN7JjprwMF73b84uRE8G?=
 =?us-ascii?Q?8QOrhF9khTB5i3e+F0HEWhXuAQZkVLAKtdnAMYDcp6h9k/6u8pAWST0NYgfR?=
 =?us-ascii?Q?KjBU7gulA0D1eoUGpZELGTxRkzEB5mt9Kv8lBbP03AG11umx6wLHNxmBfpX1?=
 =?us-ascii?Q?dGnkZe3Vjcdk6AxRE3LYJ7IlOWJe9oGv/Srt5AA1Qhw6eiAw/rt34Vah7heX?=
 =?us-ascii?Q?XCPW0V3T4KQ/QSOy3PpmMUgiP9XF0xb+ggEPx7pEeKyroDGy+oWhk4Hfisr1?=
 =?us-ascii?Q?Sv0p7KNQv503CD0ejQAk/QMxDoR4zVlElWi34OOVOwxWstP/mN14+PIYdNI8?=
 =?us-ascii?Q?/tcQbyE38Xg8ayoXtI9gXX1ZAA097YRqLwc8eq1TmrTCGdACbjcaUMRFxOI5?=
 =?us-ascii?Q?uCPL6o8LyX5YgHQimcnIxcQwKcoAvU/T2xZCTvcExchIDhbftb+pT9nWS9p0?=
 =?us-ascii?Q?URWKq4qIa+GEUud0usDf6rwUn1FoDtzEUcc24MHdVQtJZ3OtaU3LlNFO1KWY?=
 =?us-ascii?Q?igAmh1xwKJ1zeCoXDwPYR1DWY5CLQdGcNnKxyBBG9xfBCG7TgI61Qd4mf/2w?=
 =?us-ascii?Q?Lr0HjvcdqNclSG/qOtE1J6Jgt0XnD4RlEuANv4pybJpnzhFoLr0UNoNl2piL?=
 =?us-ascii?Q?RnL5U2EucFFaZbGB8PO3T5dGzSdgCKFzaR7mfP1I1wBZjeHFh5nVZArKCKrp?=
 =?us-ascii?Q?02LMejYJyI8sr1lslQU5YHPfbpInkuSMv1zvYC/iZjyuGVUbcgjuOAkhg6Ar?=
 =?us-ascii?Q?P5Croli0+/BORFFJaEBQt6a9cJXMtYO5Ay7OfkE/+DFRTNSNqC33KPa4TTla?=
 =?us-ascii?Q?2/IySm5abEZxyDbAhbGrkrBtlAuSJFSVUnF26dsNnR8jCY3KJId24TVq4L6B?=
 =?us-ascii?Q?xuLkOPvjWbS/1JvhWkf+n7vn/fYpVc6irTgCs+LuUU/MF8h/6aTqDOuPwxXn?=
 =?us-ascii?Q?VZpFe+RN6nXpg91kbf2WqssYUp+D5LpRUOHm3GNgjx5QdRBriJjnkBDuE1xY?=
 =?us-ascii?Q?PfoOhre4VPAN8/0CiljQQyoTvYnnRuuKQUuiTfwWHyU/zeh43E3xuc/du5qg?=
 =?us-ascii?Q?hQSbjpAR8t7GS5F2yrePhX/V0wJXFZP8lmE5x0Mh8CQrolAeoLmGKbyeMy22?=
 =?us-ascii?Q?dzRNaEaMbnZ2Pm5unyJEupSP+YFAUf6WJOw9UwscOjc9m+B5vozE/fYHG3lk?=
 =?us-ascii?Q?GDI/N/LgVHxH6KHJ62ca+JwdPtSjSxGcen9VbEh3w5b8TV5jpaXSF9tQvjij?=
 =?us-ascii?Q?y0LXUPG7lnEcAgm/m+cryZXdDalWf8VsqVps7e/BM70By7BXx9N0PiPb4GHc?=
 =?us-ascii?Q?nh8TIYDCF1ZcUgaZf4gqz9+5kKCKZTjlbfqTS+Ym?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d38a6805-6a7a-48c3-4249-08ddb48a6ff3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:23.4878 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IjZDU5w/9B0HUXGyOdHuv6JPiB4LWOBH3M0ATQuMs3Xuoi2j/AzZkUqcSpU4763Z6xigFo6E+zUNPm6ofIyj5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

So far the CONNECTED_OFF_ENTRY_REQUESTED request was accepted only
implicitly, by acking all the IRQs raised by the sink. Make this
explicit by printing a debug message.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2e6ed7d2a64a6..90f6fe20e4c0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5474,6 +5474,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool reprobe_needed = false;
 
 	if (irq_mask & RX_CAP_CHANGED)
@@ -5482,6 +5484,12 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
+	if (irq_mask & CONNECTED_OFF_ENTRY_REQUESTED)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Allowing connected off request\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name);
+
 	if ((irq_mask & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
-- 
2.44.2

