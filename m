Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMBKDjUjoGkdfwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:40:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0C11A46E0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47DF210E8CD;
	Thu, 26 Feb 2026 10:40:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M75YmOos";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F222710E8CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 10:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772102451; x=1803638451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8eRunIsxs8b35CEHE/LsVmdjidceyF8bkv7YKw84IWs=;
 b=M75YmOoskzmYYbfKj+U0YccWQHUP8tWWorkzY9W1e4c4FtrbIdyzYQsg
 Xn9cAxH24vLxT7NRtZVHypf4aQTprapiCATPmPiItPJMpvy1AJghp84V8
 fASPjnLp6W17efXYFac0arNEtv5JyirmRHHq2FwqtlxuxEfKyXNDshCrt
 fqQDuA9mTVaLxBZmQ341KpPEucKV5wNTvTbQJu0W7CCp6iJ0JrYmXg/sl
 8W3CwA5uTbqyRmLucOrv7wS6QepDZZy2MRdmyyuLBZfI8iCOUnFEgaG1n
 xw0e4tdGzav/d8PSuSo822lkFlFVAyYlYR22yPY9h9ogS8DM2Fn9ZKJPo g==;
X-CSE-ConnectionGUID: xUnrxrHCTpOd0+aZof9DCA==
X-CSE-MsgGUID: ql2XuAqaSWe2yM61A5aDAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90569170"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="90569170"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:40:50 -0800
X-CSE-ConnectionGUID: 7sUXbE59SFSyyndTxX8xWw==
X-CSE-MsgGUID: 0RA19KkvSlSKRMiRoSOl5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="214768256"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:40:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:40:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 02:40:48 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 02:40:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KBg6iIWBQopwyViiFaAUN0bg8jcScW2oo9VusmFU5NNQRT7RndL1RTUsp79VIwlhP/zFLoKvXtgbMWegQ2uxN0WZrfJleYuu4eOsNtIFV2+IimMte1yRgQb2ODSR/V/QpDkPxVW5aBbtaPxglZpMZfZj8vuFlNedE7/XJDKQQBUNtva+SQcXGXizCq3I1Iva/5ldfoN+n6+2HdCJiKczWYZpvFazxnlcQ+GYEzD5citPHSRmNQjoyElnRY1eHGuZoSGHpMlpYufvK4KvkpNJYf3goGgkWZhcpog1i1Bt8VnkgOu/tKtJaJBB9xzgagAYNzSd6Jl0flWup/gZ095agQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZ250Sd/8hCkSdVKeTdL3BqtJ4ICj46KjgZYqurmfT4=;
 b=SwPySliitcOKkBNSpu00fR1lDrucXlZ3Vd09fb1VmvLt6wQuiqLmuTCrqmI/MO0DxpstFQyYe2jvbVbYxBCVStoGVGGQzMctSas5n9DPgsZKJoyMsHzX5MthwQ3Jhgf3S8GxxYtqWwL11IEqs1XrFhndf+jlO6rYHRDgk6amNo38KicozkNvEjLb/faEThbnJyN1kbnHvuvAZVZJ7dgwONpkUXIAg03tMkAvIpakrJ2iYFcsisePuRCYT0T6ol5kCGGlS6JCeeYMDQc9nNWYofhEgK+Dk8GMM/NgUJ06+PcMeXvdWtvLWyqGDXopoZxZ7IB2mb8RUcQJbGVORPMSSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 10:40:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9654.007; Thu, 26 Feb 2026
 10:40:46 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v7 2/2] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Date: Thu, 26 Feb 2026 10:40:33 +0000
Message-ID: <20260226104033.2073002-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226104033.2073002-1-krzysztof.karas@intel.com>
References: <20260226104033.2073002-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW3PR11MB4748:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e056f2c-188f-4f58-7521-08de7523800d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 79WiljqDN3Kwij1z5B2thPf2Ys0vZMSUh5EjOHIw2BqTVGazuafxQGa/0atKWQo5qBRNBCRD0RYhDblyV3hsXMQzesj561gAWsRvqj4N6kdWXH3cDtuevUSerNhbzsNWfL6o5O0OR6dkjhs/Y6EwJ9cUvUUnL5t6A4qQnFW2HHlc78StmSHqnxM0jF8hqVGpAe48OsjmucDiUvpUOtIRxladIymepTqFE65O9mNQdBCx3GQAr7UEf84lN0OO8TA9kdyPOKgx8gyOujJKw5f6B9hBQzzuKu8R3WP6foO749R6l6YqwYnSb5Ugai/9r9C4h5lLL4uROa7mmchs/RRC+z6ywvqXBXa/+vplDCsU5uZF17sVKwSRIqya8jp6m8a73Jh9c9qfzmnTJmPl34C9jrLwaVSQuLbDQJkzrcLzKibg66ixrihDddLcsjEciqzNhJSAMQou6jBOh9iCn28hLd8TPYZ0dL7QikFBPfhQapmM8xyVU1PNBDcy7adHtM/IyD6vznDstch57W0VoS2+KwrlChRSzSqcrlb9g+KZN1IBlKN3fmLGmbYv5jzq/PFkRh3XmoTxQqpYuQRd53dZfD014eTYjVwp5G/ectOXHFjzDW+Uj3AlJ40LUtsXVcKgwFnJHri9J3kw1AAxgocaMgTfi5tayIdzjSDXM+0DwIYvWVFckVIJnwtTqSgh4IBpIj83e7as+3/hV/YJD4IAo9rl44G78T03mLeDMa+LNBc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t0qkWag4rlIRiektBgyhLSPqhzx6EwD9kAlSZeNffvDTSppCJ4q+J8DsILXW?=
 =?us-ascii?Q?r0lGpr90ANcE00ytBxZ4zoThdHb6lI8DiTiCVoDoP7daOODKC4fsofr2RKP8?=
 =?us-ascii?Q?IUQYsLtzyjmCCpVmSJL2smMFItHha9UHyNr/nrbzHWGEWLv7DLYk22J2P6xN?=
 =?us-ascii?Q?dJduNxyk0/rm0wOMGHisYTDXC2I1XARlWATKJrFL+NBWpZ8zfSwMhfnXl01z?=
 =?us-ascii?Q?z9w+Gvr//BKAmtXN0sD3HPNRAMwHGeFFW0Qi2wNH6oW1TpeoAAfkzZD+fxb+?=
 =?us-ascii?Q?AAN2VG/2MYd2ZYuUA7c4JYBveFxj91pXOTSfXB0M0yd495krwG3Biy1r+9bl?=
 =?us-ascii?Q?wyRMI7PDebgA9YhmZXmRpZmfZQo5bziVXnsNbqlskuseuqamT751/ZMJTYIz?=
 =?us-ascii?Q?EoUmOsOIdth7xCK+yzYmy3MLOOTA/gspM+Kjm0Le4vM46tprgIWU3LKrwa4I?=
 =?us-ascii?Q?jjfUI9lgOx8fpIccpeALtcEySOiacQBXs1OgkaW9+ts087vFCtFi6QPvM6cv?=
 =?us-ascii?Q?+MwVCMtaADmcW+waxH+MoGsBbKku/adPAb+IsBLK7IEmpOW50os6tJMzrKBN?=
 =?us-ascii?Q?qJOOXQtKqB26QaxrRrVm+TvnohltwHSbSov3ZbNs4PWVRTXRsDjKjY99802H?=
 =?us-ascii?Q?LXfUI14Ibu6CR981y+bt0l3IxL1caq9VPIrWm3sf1L17+vn7qof+Z2lTXgqh?=
 =?us-ascii?Q?ygEsNz8fvYk9GQ+5SjS5hVeHzFKSvNGBLOnmEbbcdroFsrvJtp1aeppyXt4h?=
 =?us-ascii?Q?ldEc+64qCq1WRCR21ywTpUaxXr5lQ2C6hM0DIMFrcTBJMH5vmrxDoINdlHnb?=
 =?us-ascii?Q?cVaDQZL3WGgeOctrz+p8aioubP2wacZN/mIcgZPGiVohAFRs9IHMfCm6dnGw?=
 =?us-ascii?Q?qB345HStjV9Vhw57ywQ2Sj21EibrDUOdPJ9pHo0/U59jkoEWhoyc5w2u9edF?=
 =?us-ascii?Q?JwO5ADS0z3PViO/VNNhkVMgmCQwT1XqPatCPQdXkDY4qOq5HkeTvl94ynsTQ?=
 =?us-ascii?Q?uFT1DsfR5mIvu8JESKv2p3ya9i6rwLyfaij6joE9W/XOY0xD7AuoQZcQUCoG?=
 =?us-ascii?Q?MLVzVyy/DlvwqU6ceO9M3kebNlNhWbGkTafXFV6mBLwbCSAcbKrrpH1CmxMQ?=
 =?us-ascii?Q?7+YRYWVsA34MGbdnCHRwSA1VqhvZ0BT0WNqGMjSC6IAJ7ca6qDqb7KwmjLAU?=
 =?us-ascii?Q?ATeoPOHESfXLrpvlTUfc3oZh9vOniYm7vrMPB467BZXPbjKHg7oEgqEi04Tz?=
 =?us-ascii?Q?J2ZltFsNk40Zo3V7YpWgU1kt4N8wEd66UB4YYr3R01HIRlvbIvNwSvVoKOyC?=
 =?us-ascii?Q?/iBG/3VdoOg5kEqML10KZK7OcQiuZtNb3Ndc5IHPbPUypt7C80Htlxfl69rm?=
 =?us-ascii?Q?YSsYNeQgUWyRdTboIvwv6BU+DNTeDk9VwJMNCfp89ah04gIKBdyVWfIgarlF?=
 =?us-ascii?Q?Ck7Et2uYyuM4GHm3nNcJzPV9VvpIf0ChCR7EaxjEH/poLbNoe/N19kNESQne?=
 =?us-ascii?Q?nawAChLFiuRayoRDb7dwSeEr7niNGQYq9OScq2Tl6Uw5BvI8p+j/KMDc4pJf?=
 =?us-ascii?Q?hoZmKeLaNKJvsM+WBNtjsD2ATRppDgzl6FN0GgkEczTykwJc4T9AWIdVni68?=
 =?us-ascii?Q?aD4IwWlAispxieEdyXPb0zAOY+hlKKEXfNEDIq6QOICoijeTE3FZDUvGRCVZ?=
 =?us-ascii?Q?dj6ow0x+v/YHlp5tNQFy2xcPau71/SksMC1WyNais8Gk7g4Y0Z7e0Mx3MxUa?=
 =?us-ascii?Q?qRSAuu0JOL0VQBx7oGvffgoNctE8VPw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e056f2c-188f-4f58-7521-08de7523800d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 10:40:46.8790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NNCBkCZii+jJnFZCqmDjWUW4r3GyOK/fXYHGKStAmNqriJZIMzImfSWc1GhZzhWw8sgg4YYEMWNHoqetxRR32A9Rhl7PaG74tRwCWmOU8WE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BF0C11A46E0
X-Rspamd-Action: no action

In cases where dma_addr is a 64-bit value its calculation is
still carried out using 32-bit arithmetic, which could
occassionally cause a truncation of values before they are
extended to 64 bits. Cast one of the operands to dma_addr_t,
so 64-bit arithmetic is used.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
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

