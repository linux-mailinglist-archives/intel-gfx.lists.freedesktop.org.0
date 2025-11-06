Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADF0C3ACA9
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 13:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D3610E8B8;
	Thu,  6 Nov 2025 12:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WeJPfGvU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C795410E8BD
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 12:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762430938; x=1793966938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=NJ8dFAKgaELSk5WZm0eml/daYGmMYH0A+eqIliz9vac=;
 b=WeJPfGvUVkeMoRwiNAcM5o41qApxwetXM7DgtmEvtha4HYKSHau56DVg
 xxKD1O9WaCOwiP9gxWTIrI/d68Y4g8+xgnYAYqBJP3EhGJzgZDrTWo3Py
 9Bb7Eg6ejZLo3RdOz14xavIcXu8Rdy/W8H+7Wy1SjjgBlLwUH1yGHavnV
 Jhhhs1z3F8yoDP0fr0lu/K1JRAkYB6t/wnRyEa31WFBCjMVDyaDSaLeRP
 8z4PZbEU2SELPaqhp988+vUb2OGwIUW9ybhbOleek27QP6aiaQZfUR8/Q
 etKTU94HHadQYcRVJd2PRpdTIcXKqn4DwaGZzjMJgAB53Mv0e0J3npdtA w==;
X-CSE-ConnectionGUID: PRQ9DuxzR7CO/mSxxAoYGw==
X-CSE-MsgGUID: yAEYNsSXQJKSGhUMjQCb1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75915942"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75915942"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:08:58 -0800
X-CSE-ConnectionGUID: TwQW3yUiT/aCD3XeKNlL+A==
X-CSE-MsgGUID: hyCT6VdDTl67nwjAm0m5Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188186471"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:08:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:08:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 04:08:58 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:08:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YYJo2Ox5Z9DdG1oxWXcHwey7+5WdlO7sPa8ESCoTjx2mddw/qVN/xESYxDJXQGznFpFYJ0j3NZQItLb7BdrvHmh8P01MQcx8eF99lxyXEgSXK01qHW+VJ2HOXqXFH/iqS5917N9yJhEkwf1NG3iGfBzC3r27DZx0QfLZvM5vAbOKsoe3E13fN2/4Lp7/WggfKdAuJh/mYs0bLENgLRGWP+scsd4KI157wTIr/kHmWQo+S4Ikg7qXewGPMzuYSef/qp2qWgbrPFODDNRbCc95yQn3r2/hnJf7T504mKIYvDmuPmi/6rDph4btvQWXx3/TNMiMnGTXzjVxmA480z3Giw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqTLeKZaLy17FlngKQU2jyAcerZHc53BiLWpKyeliIw=;
 b=yzpl9oSNAQZbd/1+0aB1k++UFjJpuy4QGHXOCTudsAir7UDAr+hIbIv9Xd7En5xlqEMzLBE5oXd/BUmaxVTTDs5Mk3WLLNtWZNS315a+cCXyb9aaTgNz1BIMReN52VrqBivQPYqaLcu5XlUkgM44sUi2EJuCYXvqXzTx6AhQAA+Dd7uhCL7D9U2XVJAkB4VNjz5yYvFrFkooxN/uVKTxP/VSjzNhy5urkW7OW09E++JDucy+tfdv7GQkq35DmZgByimS/eDWhEq3QM67xApBUT8Y/4DbNXMo9EpKJlQNrACkIH8fI+bgsNyI4f+6kNojuYXzBB8BgKMo/4F/pRbrHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA3PR11MB9135.namprd11.prod.outlook.com (2603:10b6:208:579::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Thu, 6 Nov
 2025 12:08:55 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 12:08:55 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v4 1/2] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Date: Thu, 6 Nov 2025 12:08:44 +0000
Message-ID: <20251106120845.2821499-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251106120845.2821499-1-krzysztof.karas@intel.com>
References: <20251106120845.2821499-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0094.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::34) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA3PR11MB9135:EE_
X-MS-Office365-Filtering-Correlation-Id: 96536e3a-6a0d-4c74-d04c-08de1d2d41ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?R2zG/v3JtfZxnlFU7vQlwS6BrEkVB+ner3L1flugjZ/crvctHxflZrLCtXXa?=
 =?us-ascii?Q?1Up4+BqSuxoU3tvoOgNQjsXcXI2NOBs3gCs7PJeH4UR8qEzqVpR/kb+AcJ8h?=
 =?us-ascii?Q?qwUWyjtppcVTW4auMDKsO/JjxgeontDIsYADZ0z6h9tahFTIFQo2AZsTtZ3C?=
 =?us-ascii?Q?RreUBtADKfeC111lqE7LrDlqu/EGJwjXNUgTVySm5qctBTLt0H3TNSaTYXDO?=
 =?us-ascii?Q?P+iguZb+Gu0v+z7VLNHqqRkFyC6FDz1+keGJQ21uMqWN57BijZU4PpZf7YyH?=
 =?us-ascii?Q?M4GWPdTdRRSSHyv9wV+PTUtnfmPUyVDQwmre8XcwKxsRzZa2IlLRndeudDn+?=
 =?us-ascii?Q?JhMLkPwzbzrfZoDJT4HMzxb4ZGwFOeYwwphtd3P2s35LEAhM29p9MAxNKVH3?=
 =?us-ascii?Q?Ki7GV0bMGMbwrScuS1D/GSLv65wauk6xma5ZDlbchWtTGY79rKsjhoeXDkUx?=
 =?us-ascii?Q?NcdwkbJQdHhhj8khySf1rcW8WSGslCZ4L9LOS1vnnL5pUX7GdHt8dBCe/G9B?=
 =?us-ascii?Q?NM+dVFM7pDojyJWnzenCu47q2kla/HY1zsa7PoqPbkyh5YjXaOTDFBl0Xvpi?=
 =?us-ascii?Q?LKH+iVUrbqPTpFQYD4FJCKBkjwbJJK7GNi4To4eVUsldsz3AaDPaMGj0t5kX?=
 =?us-ascii?Q?Ynkou3gGF6EipovMBHPzSRQNeNdU70fwznijz4mNEvAKHXOFPlnDWros2fju?=
 =?us-ascii?Q?V8jfk8+MsdT851NWWOIt2wgA7Po3A30LJr0JmD+onRuTDHjFjtAsJC2QOywJ?=
 =?us-ascii?Q?bLfCGLmPywdhYQBtUjkpXWdAYMnO7NeXPmCW5MWGr9mRz16S5qrFfCPRkt0u?=
 =?us-ascii?Q?5VtHNXE7Ge9TKPnhpeW9rJacfqwyOiIKqEu3y3v/6u9P/GLh7Igu1akRHqXT?=
 =?us-ascii?Q?DCMtd423AvNCYTGAgAAM3AgG3jm/2PifHkQi1QkYjg5p8zheioFzOfMaZ40c?=
 =?us-ascii?Q?fPpMl6jBnUz1HR+SwKraBFfvjmNuJZUNCuTPR0lltoahMGWtfFEGAw1p8klt?=
 =?us-ascii?Q?oFJ5BOukRCYTNVpX3rePYmDQScYvlYuoSRY8mv9oJpwaGpyuUVQhQgE3+6fx?=
 =?us-ascii?Q?sKe0gTgPe9yX54uGdUKtry/IkePxQV2u6tlIc2NId2I2+oD6TV48/1O3Cq4h?=
 =?us-ascii?Q?57MyhrZGWHXqHj3ONSCbTM2qfGrvlgNaLswvqLRoWRIcINt5ZsEIoAm6zLQz?=
 =?us-ascii?Q?9xhxJPKZG7y4JwEp4H/PHPrQUAGUcptDpZo/n27F9NHp6Z1Pa6f8dpzk/PpU?=
 =?us-ascii?Q?z0FFvSz3Y35p1B2G3zeYAJ0U47Hig+UengBDo+g5DD1nCvHtT9znnTnG0+KL?=
 =?us-ascii?Q?t55mbSlV5xy9rllEszJyq6TIOdL5IED++nbcSuFZR7IM7QcYq0AEP6u6XaHf?=
 =?us-ascii?Q?aeGhAfbvK8kPyBhVVY6+lzTQs68pkLopuzEd4DkutH2+d/TxkALwV8NUm88c?=
 =?us-ascii?Q?Rh3zrmCfOdoIWwwBVNi8F1B5xfdv8FSO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P0XTkBGCxtksQVEPhF6a3JYY/dDbdDjfn+BPZ5iFjlptcTykL9VaHsIwXH9r?=
 =?us-ascii?Q?MB5UKALFPA+ok8c6dkzksAviCqNQ4kVgcwKPqKZVH79JO6NYoC1p19TxZaVb?=
 =?us-ascii?Q?E74edOVxQPTymu/Vu1TUCsSm1E9xkYnh5y4HVGrW4B2BP6xYCZ6Ly8NfkyWO?=
 =?us-ascii?Q?W2RDsqKtfIJyE94Ya7LTlKuysSMyXIoAuZFFOtjnvQ6DRekmHaOHtNMCWVfV?=
 =?us-ascii?Q?aa14x9KewpxKl01J3c+K56im57AYCcvWaNk/XRLUKtnYKtemkBIRdmEndSP8?=
 =?us-ascii?Q?j5CIHzPvbqS/LEBIIwcMdp5xvVgRQratacOBd0rDmEdk2IxbBmW1Ar9v8Q2+?=
 =?us-ascii?Q?ftFdTGGbxjiVrScbiwNKmswFyg8KOVQgbnhNZYFUQbZ9JYH8Yo93L+TBxf5i?=
 =?us-ascii?Q?j/fjIJKmQHGiahzTqzpbPtuhFIxvWuCgpEd4iHvsaPWWQ6XA3J8qhLNxxzWG?=
 =?us-ascii?Q?3Z4Q1lZVXnq90tKQ2SSlZnlldLB1fgy8dHMF+Y/HiTc7Vk0dudr5mByFg5P/?=
 =?us-ascii?Q?K+Ni/RwCtyJ1duA+X98Res07Mvc6EYNNOLUpaeY3iRahRph29+E2gwL7+fcD?=
 =?us-ascii?Q?9qoY4YGHZ8QqT5mxRyUUB0OnZmkYwpkWYiuSfDorjWCxoVf0SO0rY+KoQH+i?=
 =?us-ascii?Q?/NkruGn4C32gabXFL1oIG6BMs4F2OzCK9oQY6PjPHJ6t02WjVqo52pS1AsRS?=
 =?us-ascii?Q?qcJFQMlWTDySU1JvDyyu04CmCbnXwPzYNHamrbykGWAKOAb+6YPqAevcB0A7?=
 =?us-ascii?Q?6B1hVn6ATBu/TQEzH0ek2QNFd2dKG/VjORh87m7QBcGZqR2H9Ql37qGq4if/?=
 =?us-ascii?Q?5ZWWjhNsvwN8yNzDU1kTARFE8jRMvYzKXR++L3RFPeAArsJRGf4ccufs5z7n?=
 =?us-ascii?Q?8D8eSuVa+dtoA22J2w0eDyYAEl2ano4k0yQWiN3yjmM5a5TcllD7U8JquaSE?=
 =?us-ascii?Q?lC2+EFxrmV+WNUBnBHFbheID6kI5vOz0HUP3k/KpoasiLTTiVi6VHDJrfl7R?=
 =?us-ascii?Q?cDbNNN3tTETJokoXqAFqAqJcf9ph+dpFNnqdbYJzLn6CiZb9LQzUBbgcRxeT?=
 =?us-ascii?Q?uafTLP02OjmbG1oTSt0nejQZDfIOxFky+nYpyQPEkPHXYgkMowDNjMRHnBZV?=
 =?us-ascii?Q?OoIdP8rOSoVzdrxZIvTTvf5psDbhR382vWxaVZCuxa4yoxcAoPornzumGNmX?=
 =?us-ascii?Q?xt2zfbky7L8IrRDEv5srNX1GCYpLUHUtw1xvcnUzMzpQnpeSUEzX//xciiF2?=
 =?us-ascii?Q?BzCQsMEuOqCAIYjDoswKxGfhnTAxcDz4nHiLHVkTOApuNCBHHaQDJS1lC7RL?=
 =?us-ascii?Q?E9vBJ+SO1BnWn8D4kZdKDWq3zg1uGfTJYT88N3iAvVle8Di42BZnkz2meM6n?=
 =?us-ascii?Q?y85opS5fz5+OTbz5JBs3T7jyOM9WY6rtKQL3Qb9Enda/veKU0WbPtZH8lS20?=
 =?us-ascii?Q?7u9CfNipxcLsnJqc1EgteErN29NO4E7RdyYXluNlfBZ9aYID+wI86gKuUpf9?=
 =?us-ascii?Q?lzMGf4nVIxWF8zIQHwiEj6Q5AunX4Bp7bS7GfvuzPf7leqCbz1h0igtDBVxA?=
 =?us-ascii?Q?Bcub/vTiyWFJBxGqkCseq2vrgjDhBR3uKfP9LP6jyeIjcb6zbG4r51I9abcW?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96536e3a-6a0d-4c74-d04c-08de1d2d41ec
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 12:08:55.1976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9FT6LyLBignu914O47d0/HJWIpicEQx89huokVeeAqBIzlWT5EBFXr9Uk4IEnJObWdtvyMX0moPgS6v370BLQVdIlR7sPz8fL5g/dTf4HzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9135
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

There are two unsafe scenarios in that function:
 1) drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Warn early if any of these values
are 0.
 2) dma_addr calculations are carried out using 32-bit
arithmetic, which could cause a truncation of the values
before they are extended to 64 bits. Cast one of the operands
to dma_addr_t, so 64-bit arithmetic is used.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v4:
* use WARN_ON_ONCE() instead of returning early (Andi)

 drivers/gpu/drm/drm_fb_dma_helper.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..da1627dfd9f8 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	WARN_ON_ONCE(block_w == 0 || block_h == 0);
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
@@ -101,8 +103,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	block_start_y = (sample_y / block_h) * block_h;
 	num_hblocks = sample_x / block_w;
 
-	dma_addr += fb->pitches[plane] * block_start_y;
-	dma_addr += block_size * num_hblocks;
+	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
+	dma_addr += (dma_addr_t)block_size * num_hblocks;
 
 	return dma_addr;
 }
-- 
2.34.1

