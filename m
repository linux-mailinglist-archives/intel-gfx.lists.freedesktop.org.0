Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5940ECA40D5
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 15:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCE710E1EF;
	Thu,  4 Dec 2025 14:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GuwNo+Ak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF46710E1F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 14:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764859126; x=1796395126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=LaAjse6lCtbZBQSRt7XXPkgyXPAc8GGNQHeULfOLKX0=;
 b=GuwNo+AkI3wnYy+4BFh/mgKhgfT9gDCaSA48uOjF+EZwRTA2J5bDmSv2
 YQR6ASlbXyUPcErfjFPD3TZZdeqgIzq5GVUrSF/zAxMiZxUUmvFt91CuP
 5to+rejARL3+fabp0GLCDIS4Wc2SbKm1s5cv2pWWkNKywEtdYb7YyHA/I
 5kUEewCum71tHXQ/wIltkeJQmmQBl39BUf/4pRp+Gz15FVOqkQu4Fooih
 UC6Jy5sZuSJ9FswaGuGJ1tcqfRMP1j994dULforRJcbkrPBzdfkrbSdO8
 39nzj1U4ABrrX2WdlWi7QV9HmJFzzfzhe1EzeA2Gf/W/39lss/ZCXCzLl A==;
X-CSE-ConnectionGUID: 2t255QkKRQC3ThBlB3AqNg==
X-CSE-MsgGUID: jNe1haAzQfmT1Z3eT4eE3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66066154"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="66066154"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:45 -0800
X-CSE-ConnectionGUID: vpcqUeghTsam3z+0bFos+A==
X-CSE-MsgGUID: L1mdDa/BTyyyAFtjaD1bFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="199958169"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:45 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 06:38:44 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JUj2bY8QhVyFNE2w0X8T8wW/QCnWbnt+dPn0K7/Uzs9qE2yhfxbmd3qqU6MPtz1tUPPh2X73+8gDCC1zQxxwyEzzIoAuUP6GEkxKknzWvM6fnSyc5dtN2ktmd99TFYvSg0Pj1RQZZ1O8D51cO9geFqV8OgsqI5sNS6iqmOwf58egPytuVqEl1bN05iPT/PTw9LGKhVwHoGMmxzFRGc4hifrk8JkCznTdJBVU53LkiZiJHDzJYEdkTXCTQIXA1+m/ScUNyyxosNMQuxebYyLmTsaAWzcNCoomMwSbiHPhkIxRAhYYPntXHpr4jhdYXyDb0B0sxPBMkj8uHNMomaJLVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XS0xi3yWfFMyuwyvAoDlf2y27eso906dRxFeBeR2KEg=;
 b=JdVC1jHU6PUOTTwcwnWbAT3IABs1t74ZZU9m83caSyi8kyYhRfFtqLae3T5XxMAIHKKeYe0RAb37VQk7Tzb5deAiS6zWbUJ8dSYOSAxJ5LzDaYIJ/hspMInKtZVZgaNsAJkpFEAVWjtYQF/CohFCYcMSztnwCLKZhTCpJsQgB56JN61XLeF6SZi51ps3b0/IbECXsjE98MPsvwLVSM5MMabxpiA5WvtKtHbU/IgS8gKbDteopJjklJ5RAEGt0u4lAhHZKWJAIJHbSumKAQU5Xz38eWHwsYuwTd+PYoidbqJ6tcVsk+wR0Uv3AJKspZHLW0Dw9mlqhINWqRE4SQz9bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Thu, 4 Dec
 2025 14:38:41 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%5]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 14:38:41 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v5 2/3] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Date: Thu, 4 Dec 2025 14:38:26 +0000
Message-ID: <20251204143827.111428-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204143827.111428-1-krzysztof.karas@intel.com>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO6P123CA0014.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::17) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: 187bc64b-a413-415d-5c55-08de3342d14f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uy7if6jwvbhDAnZl7BXEflfFkxXfQBqehY2QTGfkNhgtvCoXU97cHHag74Mi?=
 =?us-ascii?Q?uj89JqVy+7VtCddDFPLzSIG9gk/hgyM9VG+nLHcEN8TDZW7NDCF4fOwC3hTc?=
 =?us-ascii?Q?lluSQkYksbq5tmvrqeeBamKPFvzzzIaOSifjTc9OTW1vZmp3sgl6qrSQF1Lp?=
 =?us-ascii?Q?KCQIkeFw8BMCIyW0t5zy4QZcghmwA1Yr65q5CemFmfFAky2OWqUc+/an6H/X?=
 =?us-ascii?Q?BABtMzLxpTGmH5EjjtPC7rWiSi21YEAouDNQAd5N2KLl+rnrZqb1tV7WJxpm?=
 =?us-ascii?Q?3LKYiWIjmnuCKCBXS7yRkdV4RIryWwEfJTFfnxs3KfaH43RBAlH7L1A8X3q/?=
 =?us-ascii?Q?zrLi22a0pN4ombAHJ6blxPvEr21OQz7fkOouXfdFiKyJ0eV+mkAUrOyz2nUM?=
 =?us-ascii?Q?3uNdDBHlfj46SuwYFBp7FVa2dfaDukd1FNTti198MOr++gmx7ksk9GyE29C9?=
 =?us-ascii?Q?qOv+LKzfvLWme/iMgfpznfa2KleHfUJ5BiPqF0s0lD+U1nxewc9hpyZPn2Bp?=
 =?us-ascii?Q?mV+RqQgU3wvjWZgTSYMSNVDM15IXKRjsFDe0GfszG5A6n5Bq59a3fNX50rQH?=
 =?us-ascii?Q?oaC36hc4Ws1qiYNc5KHDyv4NJgqS1IGGWV7YwDcxhUyoidLG77/+U+dUsc/6?=
 =?us-ascii?Q?N6hrtVLrSqLxWbs9hRGq4KGgALMsHDoN05lS5YG0lgrfTgTSmCidwbI9dglD?=
 =?us-ascii?Q?R9dfFZACn5pHpBPnnTPlm7HBnwpoeXa0XNmAikPmrSTVsnuU0C+5g0EFxmvz?=
 =?us-ascii?Q?gAhOFD3llsHWDmP1RNxNOfK4dDZU/OKTHubnkz9KnNX08WGVK9VGCY/bNSLQ?=
 =?us-ascii?Q?Epv8TWQB6OKJvppXm87AFRspzbnL38lOX3PZAxyBaf5FDZYSZq1W+j/Nf74D?=
 =?us-ascii?Q?sNh8zQgi1g5NeYFegwZQ4Wei2malka9BW6lGNiEtP+MzDnUkPj/ESFqRCn9a?=
 =?us-ascii?Q?RFGYcs26T4roQejj+vyEtIbfRAykgaxD9GCJPDpxOE58UZqWgDttNTObUiaw?=
 =?us-ascii?Q?o+6OXTPzLLHfeUStcPyRNpbX45+vIBNv7zeQEX0mIHIlk222htoVoNNilNGO?=
 =?us-ascii?Q?JKpsWYQXOUMalf4OFKoG/AAH3ga3lwhD+04SxrU7F31LyfEqqNhbh1AgO6R4?=
 =?us-ascii?Q?1flNy7kxONW6oVH+qHOpIYWYvE3l7MIWapFNKBeJ0GCfvramgZpM6+wch0Af?=
 =?us-ascii?Q?V3FuxY8XPKlzrsm57ExGUDG6T1tjhK9nNQJ5s4ZXlPRH7fZ/2dq1JOt4V7wQ?=
 =?us-ascii?Q?otnOo4A7K3RV3/s1+s5SOEEkravGevtU6i8BY5rsNFrfjEIj7kMadMe52lMm?=
 =?us-ascii?Q?3eEYe2G+c88CBQCOMveXeBIG6AULWIuv+gQx24u2QrbwsyL0gqol9/CrlcfG?=
 =?us-ascii?Q?4rCCxZ/arLLFAoACSPNjibOqzNUAGK9+w+1Owc+R8uqs5ihybiWWcv1t51vq?=
 =?us-ascii?Q?RynEdUd3krNosar1IhnU4H7Yi6qsodJk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ObSK2De2tdLw/zPXOKuvt+jO0aSWgZFV1O68+stzB8WrI0h56h/UMqAwcqMj?=
 =?us-ascii?Q?kgBO9Oj/dAKpPo6A2TWx6QiKNPi0tx3yDOlHNgxf8jlzEt7+uXLVCEj/WeEp?=
 =?us-ascii?Q?dVUv7/6O5j0bqXPmFnajNBVsnnWGms6uPUZhCPdOUsXX7NI679asa4mkdL+Z?=
 =?us-ascii?Q?DxhED54FleJ8lciZNn0XUzD0H8Arc/xmkwtH7b9VcYNYEzznTDsM+Teh2ewf?=
 =?us-ascii?Q?cZboQYhh2LL3jFzPT2ZiW3piOJIQ6hKbAh4X5uNjdWnkWilkzA2aRgeOWSp0?=
 =?us-ascii?Q?W8nkBzQLd5YLb01ljF3+J+8fCwbzM/TrkAfJzfWb+6IUZx1kPQ9BIX9PlBap?=
 =?us-ascii?Q?OGu2JZud7R6Owdyp6gGwPBPmF2OE64RAwk9WQFWQ4ruGhN/FM0mjc8esT1U0?=
 =?us-ascii?Q?LtSLnWkjeiL8smQ8G/aDDtq7pTne4dxLfqivQ90CLNCA+/mwOZ3h/YfrQ+p9?=
 =?us-ascii?Q?FCJbGCrlLsM1UMqNEraGcqqZjUD7ULOzEnCnLc6vYeWQH/Y/CpALGGGm/MlK?=
 =?us-ascii?Q?WD3u1/3smetnqLAt/HcE76RShL3XI1vryaRWn3vjNQXKPQqEI34VARv9uYmz?=
 =?us-ascii?Q?ENheJwR21zinAcna10BZPaNP9kDwWcNM1ExTzUbjqN20u3wY2X9qUb1DTavT?=
 =?us-ascii?Q?IOZLhoQnFd5wF/hlwcpDZLfsZ9ImXpJHKmLMkwJLliHbv7lW43tH8Dx91bpx?=
 =?us-ascii?Q?1YfuSVCzyivZM34mZQDZNuUKuW2+/1KrBvs6GzzOtAg3Y0Sqx/u8weKSuj48?=
 =?us-ascii?Q?DxINtimIOz0/ePI+LQX+KDnonG+g1xX2tZbIZ2OXT24bitK0zzrNwhXKO9jP?=
 =?us-ascii?Q?r1ZCOgh5ZXhaGl/Go0WihPbOGGjjFC4IB1uNNPQ2K881B4ms9OzaiwHbD7yU?=
 =?us-ascii?Q?DBDxXZHQU1ipmvfIv4MG4Mqu7yF1BBiHh/xM0LxWHuph+wueh6EByMnCQ3EA?=
 =?us-ascii?Q?ks/k0Nq/hdXxH+jm1A9yCEd6teIkMT9qWMbRMVtS57inBL1tBS7PJpOAHglC?=
 =?us-ascii?Q?Q9PPYqcrPmjN+Ni05MGvXU/qkuWfoFIyHwL09q7Jzv/oPRd3pq5dhaLkw2dH?=
 =?us-ascii?Q?yRDz8pdbrVFQ/cEUbgCwLndbHlmpca5bxkdOr4lobhOJSBbVdTeGvCB8rrlF?=
 =?us-ascii?Q?IHJy/XZHrqTbaljRm1fFCfsqSAALYQak/0UhmY82bZ3yoSZwzzRuYX1G8NE4?=
 =?us-ascii?Q?GRN8m+T311yVZc+xxdKaLwAIKWd53fS3TY6w+zG/bANJNWaWLq9wdhJYKkoB?=
 =?us-ascii?Q?m1i4XPMgbEawKcwPX9lAlDehlydTrVAFsJHWuwmntbGKlyRT2JxpTRieJXwV?=
 =?us-ascii?Q?D3hyTMD9Yw1PfaaA+wdOPqEwmC445DH2hkAQ1RoMPmM6WpyaWTUx62yK3hE5?=
 =?us-ascii?Q?3KcitA5gyv2DEdrrpchF59BEspMejR1AWFdm7Fh6q/O8aF0lvUmZsgHYRgXX?=
 =?us-ascii?Q?1LA/16SoazLjXvbbSFYAMe+x5LFWf4WUVaHwnZ4xH0AHlhi50ID0uAemnPnW?=
 =?us-ascii?Q?e2GZ18vObSBqu9bWeQe09wCnTYafqMbJqjGEeqqZSoW2FPa9YSIalF2Cv5J6?=
 =?us-ascii?Q?9jAztqw9KaItb3Q9OZYZX/4ImIG8OeX5C9IMDmcE9LGNn6pd8R0iG427xHb6?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 187bc64b-a413-415d-5c55-08de3342d14f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 14:38:40.9616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qPbhw/OjdKf2SjB6Yer1plAwuOp0Sbx8damT7XSnBDGORFIPsDiw1vvgKhwEeiImCpsbD0VIAd0Wa3xgYfVI8apCufG59obAGVagPhYA9eU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
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

dma_addr calculations are carried out using 32-bit
arithmetic, which could cause a truncation of the values
before they are extended to 64 bits. Cast one of the operands
to dma_addr_t, so 64-bit arithmetic is used.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_fb_dma_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index 2b2513188001..c3b9e49bd755 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -104,8 +104,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
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

