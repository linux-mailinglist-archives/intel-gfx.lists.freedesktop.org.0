Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ACFC8FCAA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36FD210E8A6;
	Thu, 27 Nov 2025 17:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NqmN9ZMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F4D310E8A3;
 Thu, 27 Nov 2025 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265925; x=1795801925;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=JH/gqKxRmoFztlzgkB928b9K1t6lCwRSfRhnfX1FCSw=;
 b=NqmN9ZMequhK5+k1ITAcdgTJqaivtLAE0LrbXwktwk/jp49Ksz9r+dUc
 HU5obl/ABSjV98Ro15ADCLLdIsyKrFQuEO8St2dymF50MSXuU2G1aqdkC
 /gtfcSec3P1GvY5xFlSQpTrVCbEis5Wv/26Uf4JPvhjUTW07sgoGiPhbR
 aPe2uxBjRDmq6fwxJWx6sl5YYxy1JGNfDeCccj8c8K+VthEnY8hrwQliO
 R7kOwT/RZjSp4CN1n8nkk0ZOSTy3HWWgWHUYHQwgdWgbr9ev7eWRGHz7m
 Ri6nrejUG08qQjMvoOyN9ijlUQ/rajfnMx4Nsvfzl96dGJcOoA5US7mV/ Q==;
X-CSE-ConnectionGUID: tV02mzGNRHO4j8PEBMgzhA==
X-CSE-MsgGUID: Nhc+zbfjSv29tGmcajXgjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276797"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276797"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:05 -0800
X-CSE-ConnectionGUID: yGAsUQBwTAGFH9TCxVm9OA==
X-CSE-MsgGUID: rgA2/B6QT2qFKii8eotO+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562128"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:04 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7Ho1XdrPibnait5IODiGgeGywCX/nQN6c9g/oMn7qkHbT3u1L56MRIy3KwFldsZAm2D4Y3Trr1AJsu+eK4M9AjuoTkIxzgMqgO9Xcd5nwWQ3KpvF/MljWetnBJa8nY2MPk0TsjVOhvVxHTRo1JVELqWyiuC74J7k8n+iJayDeysxBrrwKOt0M3IC4RBPCR3sL77Ey8Etua9vmhdJa4++DjZUg1YhiEf8dh3c1cxts3bCUOp0RKkNgT5AHuGPcPqhMzyocLEjyGwTD1h887oyN2k7QoRN7VAjLRQ4GQ8F280pvmp3riG9qqDBsLxviNwkw0YbM+99fHfKywgpcoO0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BWjhcO91432AQbVQWn8OiWzSfB/fjSwMd9FIGwCYljw=;
 b=ro/Wy4Cns43ds60hRzYVwLxANf8RNhnkPuX8L+zm1o6zJxSNlvKmhpuGYuuFnlJaKdFex/o1PYBBGdhI18h2PLxw85jSK9y9DfFJa1IMmllhH3i0UZBwHLAGcwK0S7k0i73w+64SRkRdL/zRNBuGV97li9rJyDL/z5FE8UWuHUNqa34aU9QWeXKabw8+EzZnu2RSObOV9efzD3javFt9icwJp9RPoM010I9IkxpDyTjblcTxN0I7b78uyCSLNIB1o0XW6KMFH7iuBPpV59tzWHVhVzznLlUMaDq56McC+aoEhi5+bv+oLmotDp51k0zSjHQqteU7x0hOD0UKulp9fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 32/50] drm/i915/dp: Simplify computing forced DSC BPP for
 DP-SST
Date: Thu, 27 Nov 2025 19:50:05 +0200
Message-ID: <20251127175023.1522538-33-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: f5fcb185-0195-434a-c968-08de2ddd98b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sooy8d0lYSAWhmRogCFqqUBIqCWnpaH8A1WBGup6hwdkgWXXe8WtXmJEK0H9?=
 =?us-ascii?Q?hI0fjHwcdQt9DvXQQvWP7u2rANppgCOYhVKWD0vwQ6GUl4dMeZEkRuEOJt0E?=
 =?us-ascii?Q?nw5wW2p0GP4wH2qluE7Sxm8Nyz0nINeo/KeFMpdlxhg7E0/eGRE8Y/2FkJhP?=
 =?us-ascii?Q?+W5+3CdPAsGBObJ/ynDIrvx7HuDi9oecUb85OhO9+UgNZtjRVG/QdY5bC7am?=
 =?us-ascii?Q?3/xaBNVYzuONKadFJ0+UHboX/ZCgG4tfqvAIXwLc/UB7f0MiZKcFSWtusJH4?=
 =?us-ascii?Q?bnO9LjdX3yRgVVlDix4jPJUj4mBVjxt3yk0q5x7qj7Nwh7d8cEDv6XTq/jui?=
 =?us-ascii?Q?YM53jpA2+TarQGx7GmfRyRUPU1TZeYecEZ8yh1iCc3e8TeyfxSnkf+FEUQRH?=
 =?us-ascii?Q?LItXc+BySnMZubLUZ2P8ehMymdRb3VmaNp6xDjgft3cjwhF3fVEb6ceYY5OS?=
 =?us-ascii?Q?5CbxOTMKPJRBmAACna95Bommy94b6IMY2d1y0T/rNXufKvCTZt9/Blc5wd70?=
 =?us-ascii?Q?Jdy5cPGOto4lexxFlLi7KBZmzheXt6laEwrDer4k19r4QzumQ3tbDP16K197?=
 =?us-ascii?Q?2wq/1PGdDmvPPMGEFvarqG7/U2fe/pkOf17kgRlTGQK6Oisqbp4YxMDGI36Q?=
 =?us-ascii?Q?B7RQAegS5P0D1cIjYXHNbcdR+3X+aHioy1peCI6xSGV6VgCLqtMnOgE7A+0g?=
 =?us-ascii?Q?oehR/7ZYmBm1V7ghaH0gl4V1PmUXXn/9/+aU9Rs81IslTcViJkHQ52uF3u1N?=
 =?us-ascii?Q?qJq2JK98umQuzDU3cPunKXP+RRhe/xBCRNsTwcnNhkOTlD2wgIjSiUq1cosN?=
 =?us-ascii?Q?YFIk0fVKthCwofcT83A9WiUnY8+O856qPkXuLnPWc5bjgcD8sT+K2cLtkLWf?=
 =?us-ascii?Q?WcDwnihDvECEKHLihE2dQMOcaLfaepBI5L2Bk9XGhkBsrB1VHtL+LKvwKKNg?=
 =?us-ascii?Q?n6+ZJz/Co5spERHcoIWDcM9YUvbJESP7BEHWM/9Kjee17G+hQju6rVz+pqk+?=
 =?us-ascii?Q?DTFeS/yJpBcA18HtbICjBxki88WpD9l+cP/YvjN9+WFd3a9WxfFxoNaoD7uG?=
 =?us-ascii?Q?jg4BSYgU+KZ4H4yWnECrcg+4n2Jg96x8+fkT9xgk9L1t4TuX1ohbLHEPgqi5?=
 =?us-ascii?Q?ekDqu32b2mI1Lv1+f6bhFIh0qb9z8zzl/aopNUJNqyQsrzhvO/OzKC/Ibe3P?=
 =?us-ascii?Q?3jQcEzlhG7JKFhqYo2Xq5rqSuf4C0HBrEQUR2J0XnVSipzhG4Y7EYyux35Fh?=
 =?us-ascii?Q?XQK+/Dexa1YYeHHC53YGm4AQxwhHKTQr7efCfttN4wFiT6we1gK9zSKVmV5R?=
 =?us-ascii?Q?9nRZnbTuclAlzIsEhk02M0eEtWWEJtHKOkW8T8ECr+/789aoxys0bgnmRdKE?=
 =?us-ascii?Q?pLYlLweslqIGEOSU9Wuiv9oKMu+uIql3JfkLrpKPNMfSGgKIXjbGRpn8gjUj?=
 =?us-ascii?Q?/wb2cHD5lqLjDs4taBk3ua/IdZYHZ5Ln?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wrv7hAzyiEozLwmPDEIjD+SFyU8uI+MTU+wxnQuGsoK5ZRNLbCLO5tEhqWBR?=
 =?us-ascii?Q?HaghxCnPu30UGvDfrbGilTicSvTYuou6LEIwNtj7F6oVotN5SSDnh2ZrQ8yN?=
 =?us-ascii?Q?LPs4Z7tDPG3C7StpVuoHgvPDtG+KsJIvhFZDDoGyOmId9rjiNAl460A2i4yG?=
 =?us-ascii?Q?jcNIJK0NbWYg7mdSQVJ/9rB7/wa+NqNwAEk/lrSRtARQXhrOq0NwSkzSO9tO?=
 =?us-ascii?Q?eHUiVwimvxWnrnfIucSXhF7BhKTlbgUZ1GrbFlMAPFmo7i0RjUukQHPeQVg0?=
 =?us-ascii?Q?G/L0EcRxIFpKIBotkRaGNaAZ/QTiJLd9Mf8FA7RL86HWlYtUrlQzXMNaUHHG?=
 =?us-ascii?Q?eodbfh+VxUAicwmL+69eVAlBTNy8MeU0WT8fvYzz61nAyRabLs3yEQzEHd1Q?=
 =?us-ascii?Q?VXTPbCknEXYwcTIL88ULANV5MHjn+x2ZsyKj8cGRudFNMnFB5xTl/ofmoC1n?=
 =?us-ascii?Q?xkQBArijMe4BuxSnj6si1o51dx/1+xQ7mUGT+F6FdZ11e5i1urq4/UtJMi4X?=
 =?us-ascii?Q?wwbczjDq0mhIdLKKn5kaiJ/guotHOeMTWfSvub0di7vmmCqhQj8Lgr6s8XEW?=
 =?us-ascii?Q?EhmqStMfqWeSdF1pZakQrBreAktjAaBA0xBWr4d2rzHMiw67Aj/+n/YkQxxj?=
 =?us-ascii?Q?vCaeh3NnhTPVdwyZMRu0MT9GU+VhHg3jdr9VrxEBoFjGrarbxtUDtuKhjcIl?=
 =?us-ascii?Q?XLjFbe4/zYVpfx1DlXTCTGiwwj70ZY4AV6Azsx8dF7m4+TCKiuiPJYYl9CHB?=
 =?us-ascii?Q?1ROjLdF/Fs9Ovytfwnn8t8BhLHwn4TXlPrOENqaovE58fiIvscj3zipam3su?=
 =?us-ascii?Q?m2qBF61XF4MwiP+FpTggUxpYIQFLRYoXgTTNWPAFT7MMSF5IzBJ/grV2fw/4?=
 =?us-ascii?Q?8uET5S6exSVCMak725YrQgxrrNGdQAmG8edzLS+17NEnOry9eyGNk6iYqKJT?=
 =?us-ascii?Q?r5B5WlCTr7/MJwCaUVMXGWEd9rFEhWb0EIU8Qm8qQcc+Zyt/c+4DjIQcwQno?=
 =?us-ascii?Q?0q0SKXWlVPs0qTocKO0q0JL4bPsNnaFKGu+nfiiTTcjHLMehl5Rwiwxf+2Qi?=
 =?us-ascii?Q?sMntX3psZ/buVJc/hevfjxB2BBwcg0QD06GYZfOYYrb6t2UMadszB6Gfd1hl?=
 =?us-ascii?Q?xUbIGfnS5zEQQL9qhUM/DKEiPZcMJLciVmUw+ssEEgQdk9Li6FOdKT+8bVFJ?=
 =?us-ascii?Q?IETjvJoy2prlKnXYiBHStX2Aau9W5wNox47vGN+r0PxPNe58F0A9TASY+LGh?=
 =?us-ascii?Q?qds94PtinivybaFB1qUl3jehGqdHTiSK4OgMUHBPmS7qSuKQvvMvISVFyqME?=
 =?us-ascii?Q?Iu6x5KlvL489Aiw4r4M//QK4RkwDpsOvXZJPtc0Y6YdaaLYD8AF9E6AZ7baq?=
 =?us-ascii?Q?YnTns5H8fcU9bv/Ne19xDiOtnaCJPXO96R4XsphqIEcNfBmhcdYKGg20N7AR?=
 =?us-ascii?Q?Cj38M0xHYJjNEel8oErDEfRg07q/QtgPyVgS7WIGAQKn01fUXLGBI5GJo55G?=
 =?us-ascii?Q?KlzoDPFSgD8JTR3yhyZ2Z+rkBw0QfQJP06Gjlz0VQjLaNyIb7ing44HlljH8?=
 =?us-ascii?Q?xhp2xHQIWogB5VDXNQ+12bb9b2fx2pDTqyfzgZuRNb2t99Uyz6yXJQ+SqZOS?=
 =?us-ascii?Q?DdkEEeYe6QroHYPMcsW7t2tTSaR7TCWFXAlg183secwl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5fcb185-0195-434a-c968-08de2ddd98b4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:30.9087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qk1EyC+9P7xzrU5Wgnx9OmVUmGDUQHnRkRQmuVDOfqLul+UEdYhVutMkO6oAa0DT0BH6kZ0UesKKHZtOhG81CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

If dsc_compute_compressed_bpp() failed with a forced pipe BPP value
(where the forced pipe BPP value itself is valid within the min/max pipe
BPP limits), the function will also fail when called with the maximum
pipe BPP value: dsc_compute_compressed_bpp() will try all compressed
BPPs below the passed in pipe BPP value and if the function failed with
a given (low) compressed BPP value it will also fail with a compressed
BPP value higher than the one which failed already.

Based on the above remove the logic to retry computing a compressed BPP
value with the maximum pipe BPP value if computing the compressed BPP
failed already with the (lower) forced pipe BPP value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 902f3a054a971..a921092e760b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2298,17 +2298,11 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	int ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
+	if (forced_bpp)
+		pipe_bpp = forced_bpp;
+	else
+		pipe_bpp = limits->pipe.max_bpp;
 
-	if (forced_bpp) {
-		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, forced_bpp);
-		if (ret == 0) {
-			pipe_config->pipe_bpp = forced_bpp;
-			return 0;
-		}
-	}
-
-	pipe_bpp = limits->pipe.max_bpp;
 	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
 					 limits, pipe_bpp);
 	if (ret)
-- 
2.49.1

