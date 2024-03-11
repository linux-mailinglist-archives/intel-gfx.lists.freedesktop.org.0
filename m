Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 280A08788CF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF4E112C1F;
	Mon, 11 Mar 2024 19:23:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQXQ/KtS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D74D112C1F
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710184999; x=1741720999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pvh51CM4dvm8/ILZyE+gMzntt2UD51B1oleZs7ZcJaM=;
 b=RQXQ/KtSBKAKUO/uPf2N34kDj1B9RnpnzLsoERpmsTVKd0+4MY9h/DMF
 oMoCa6WMSvAto/AsGwJwEavFE/L2syBtw4KSg/TQrVCRabvivtXEwefPW
 KvkhurLgDYgsiHFO8tagywmZtyPjcZCv5wRmxuX1gthidpMuJtjdxhOZa
 oOP8GHYYTWlA4cmu9wwZhOwMRagxXWsYVDFeK845vb+JXKOSh4qSDHETh
 7YYlHusz+pSedd3tVJFp1gMr2gsOzdIoDuvrVxBwy0RlzVvYo2BIAgqAr
 RqioyGGq1+x6WtbqoQthOA0nh20S5oLQI0/PjAn79u8+Tq0Ac9DElxPXL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627069"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627069"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344229"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=al1/yXVxjYDJzcoawpusqmCQTjsuWR+5BLsifgtiFnuSqmDTBVRY6Iri6AoLCH8fPeMz8/M3x4BIvTZSBKxIhjnz7CcTtREA7VserJbspD9/S6byX4xIssw/16NKCWFxZ9RU6VpVuC49ptvqTPt12IeJDTm7j3Ten2n6jeSxtYo0l7FzJOmpXJJ5Y3UZY6UxA15OqJ4DYzI66aSdK+X0pF8uZ8bu1Dm4Q1KWQOHv6MoUVNDM4YaItR2o50m60xuHv4NTi86xjcfMKv7OCBlpsCdKMOQn1CyG7x+cCBtfmuK2mQncvLYsk39r59TBvhzsVAIyJ56Imud36emv8qASWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkU9iIsX1CFiehJF2VD0WynPvCJD7NNWHLUhH6KsJw0=;
 b=B7ClfKAL5o+Pl0e6/26lQ5Ej6jq6GHx5kxf/enGMln8V5Bya2lTtbQC6jGRhx6I4kXUfZtCJR93VJz8rEiJlPYbnpQLxJcN//2kwNzuATdmwXYk0arpaw1PrJnBgy79el6zF0O6PaV9wN06m4SADmHgODplgXaS4KIvTFMJpGBn5/wsa7yi+jKNyICo/4E0JKalwtBtDV8CEwOWkhIY6UD5VcT6U/5TLRkN3ET85HwuIUPHxIdvfcNLAKswwfFgULatPwMG6GfeFg2kkXNWUtgckcYwB2TlPIR8mu0AQ/aPgxeD49JrGXsausaoHbCR7lBhG0Gz1KPgOKhTtj4HFmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:23:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:14 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, "Imre
 Deak" <imre.deak@intel.com>, Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 03/11] drm/i915/display: convert inner wakeref get towards
 get_if_in_use
Date: Mon, 11 Mar 2024 15:22:55 -0400
Message-ID: <20240311192303.33961-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR17CA0049.namprd17.prod.outlook.com
 (2603:10b6:a03:167::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 09fc28b7-7d05-4f19-5883-08dc4200b2a5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Exl/tFwWVj6iU7asRgykokO0q4zlf9LoY7eozFBiN7MAC97uYjGEpLFUO3BEVPY2NDvtulamfRE/knajHNw90G/XHjtXiUcBXoXj58j1GzJo4DBVvQ2zLc/c2u8+hAghrBA367skFp+1uzMG61Fx8QWnBRHPVXv0pnoyKFlzZ3E+rk5qF9K6AL02GaJBY+diyPewWc2FZi9qX/X1MAUNpItH/goWYeJh7xdJJGWvdlRiIlvB88v44SwljpTssS2HUbTAltJyR2/Y4j9JsKN5P/dQ0P1My7l3nGqRhKj3dKE/bpD0OXphQMU3jIF+e6C1sxpVeOPiPuI8ZqLGLcju78wzf40JhUrZ7GKUnceNmW+ESmJnHUBLVJ6TH1lsMHn6MWSbgKpDmYAvoXr6i2CJp5zUrIMlyQKVPA042e3lrPBdu3h7jJaSP1ro+naxufEZSnJVcjBzDoVhYwdCi7ra5p5RrL9S/xszTX7reHDbnmyKgeHreB2nGF4F2dGjRs3+1S/khu8bDsCw4sFw/XDuKJFaSuzLNGJ4Us75WeA7eXGTUAIYtTyCCqyxc7UT+4nfGzV9EALdsU2ezUSSo9360JpNJyq+5c705oAKm0lLJqrls5rM16ThqEDzPEY8MDc4Gy004piskme6ugYx/e2TQ3OiH6l5C5eM6uXFhia6gYc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzdIU3czZWg5NVVnSUhBQm5DR1FLSGo3N3JSNzFVZ1BOT2duckJUdFdMS1lC?=
 =?utf-8?B?Q1RxaXkxUUFFeWw0M1RYNnBsdnRyQmNDSWhjbktpQWlrQUY4WU1KV1JiNGJv?=
 =?utf-8?B?WlRvTERVbEZReC84dU45RGNIcXk5SkozZ1JLSURObG9UbEtpaC95Sk9HNWRn?=
 =?utf-8?B?T1lxR04zNU9SbGFPRkg4YWhKOTdpcmJ2UjQxdTl5WDNLRXFRK20vRHFBNHVO?=
 =?utf-8?B?UDdUbUlveFIwWThXQjY3TjBiWU1mSldKYWZPVkc3bmZDRU1mbmhxcjBQZFBT?=
 =?utf-8?B?emtqaHEvcU0zbzA2NUNuZTg5Vnl1M21NNGQ3SlZOZUdkSDhkbGlIWm04U2U1?=
 =?utf-8?B?UVd3SzdqSXIzWVlGZEpZbUJoWDE3MVFVbHR6V2lFTUs4NmRBVUhRa25CSlh0?=
 =?utf-8?B?VTNnUW5XQTcrZGRweVoxSEdzTjhmZklPdlM1R3VKSzRPMWcxa1IxV0tjaW9o?=
 =?utf-8?B?YUV0YmVMK2NqUmhOVmsrRC94RU14Y2ZvZkNwWTJIL2FJNE1PMlBkUmtqbmR4?=
 =?utf-8?B?VHJ5bTV5c2dYRHJpT0l1a3k3OHA1OGIxazdtYUJ0RWVzNVpScG1iM0Q3Wjhw?=
 =?utf-8?B?SGhjQmtwc1Y2eldZTnQ4dnBJVnF5RDMwRURqRHpacTltc3hqbUo1OTlqK2d3?=
 =?utf-8?B?YlJ4amFwcUw4L1ZJVUp5NG1GcisyZWgrZmZwS0t0UEpTUXU3WGlRUGtERWNm?=
 =?utf-8?B?M3gwc1c4NUZxZ3B1WWtUUzhnU09XVU44Q3k0anhqRWEwVTJkcDdoSW9iVTV3?=
 =?utf-8?B?NENNTUpsSkNrVVBDbkFWUnNNa1pCZUhjN3BxVXJEazBVNzlGdE03YkNMRWor?=
 =?utf-8?B?bVFzZi9tZ0t6dEIrR2YzeWFLTi9mdDhlUUJiRU16U3UvQmorck5NQmkwVHRw?=
 =?utf-8?B?cVM4ZXlqai85STJEVy9XbHdTMVduMmVLQUtNZmRXQitLc1hidSthMjFxVGZQ?=
 =?utf-8?B?NHlmcVd5OHFYRHo5OElybGUySjBPZEptbDNYbFpERFcvL0U3Q3VjeVNsRDlK?=
 =?utf-8?B?TW9pbGE3Yy9KL0x3ZWNjVmhucHVNY0pKelF6MEM4ZUY4SGVCL3dhOVJubEl6?=
 =?utf-8?B?eGxtMjYxdUc0MmNXaHBDVW5tT3czL3J1bGI2NjZjWGtYM0NyaU1pWm8va1k4?=
 =?utf-8?B?Z1MwdlFlZVRQZjhqYVF5dXZTOXJqb2FCTWorTlFxMlM4cmFCRWhNeUVoeTJ0?=
 =?utf-8?B?VkNXbE55eGVOa1o4UkwvcTRZdGJoclZ2NGpHUmU3cU5MQWFOSG9CUzBnb0xR?=
 =?utf-8?B?bXlsNVVHVmhuNzZqMG9OaTZucWo5cE5wZUcweVJQeitmcG45NXBkT2wrMDFy?=
 =?utf-8?B?UUU5Rm56NlJXMXJ2TDI1MUVCSTROd2RSUTF2NlNZL3ZNNnpUcUpsWVAvUWIv?=
 =?utf-8?B?MFIrK2UvVTA4UXhqbnRJNm5acWI5dytZYjRKbVlaNmlKRVpibi9MeXd0djVv?=
 =?utf-8?B?U0pkTU9XN1NaU05CUCtzSUZxK0MramZzeGd3cW12cGFJRE02VXlNbmNlazF6?=
 =?utf-8?B?enMwVTlKSjRjY1FuRURVT05USTFvVWJWc0FTa3VzNlc2TENmNHhhL2Jub3Jz?=
 =?utf-8?B?cSsvc09BdFUxQncxM1h0Vm16NWRjMmZweW94am9ZcTcrVnJQRnhJMGpJc1JN?=
 =?utf-8?B?SExiWUFaWDA0QXdBZFNxMTFDY2J4U2M4VlZtMm1mWktqVDhwT1N2OHlIUnhE?=
 =?utf-8?B?YTBsR1NwTlNYeXdTdGZreS9DVmZSSFZjdzJnMWVldkM2SVhkaVpmS0NtQnpS?=
 =?utf-8?B?N3h1eklwelJhUUpmS0t2WWRaYXhwYkpuWHZOZGpwMXZ1Q0NmRTNYSE1vYzhv?=
 =?utf-8?B?akJjVHhqK2pjN2hVbkxSYXBGbjB1YS91dDdrczkxekxJTEtCdmZ6Q2JyNWlZ?=
 =?utf-8?B?cVZvaGFRcEhwL2ppaU1zYTh6VDJaQlFYaXdyWWlsOFVRREJtRnY0UXBZSFdW?=
 =?utf-8?B?bXIrWmF5UHJkMTVVVWFNdFMxOUpNYkxwWXVoaFoydXIxczRBTjUxOGl6RWdP?=
 =?utf-8?B?eGRwWnZ5amZ6anRsTDZ6V2lWcTJyc2hsazdSLzZjMGd6Q3VVMzE1NENuTG01?=
 =?utf-8?B?TmpyVzIrQTV3d0VranFhaFJJNlJlWE9jVmpwbENGeVFjQm0zV0Q3ckxlOTQ3?=
 =?utf-8?B?SkV3UzJHQXJMeG1DRnpKZHlzU21UcjQxUXhqbUZhVG9jd09talhZMHFpY214?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09fc28b7-7d05-4f19-5883-08dc4200b2a5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:14.6919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gfS2oL8P3vR8A8JKVhPJMbweBHPVh6pfWK8jXBP8589jA91K6fW/9KsxFFZRrdWfp0yhTuABzz9v2aNXXwIOUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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

This patch brings no functional change. Since at this point of
the code we are already asserting a wakeref was held, it means
that we are with runtime_pm 'in_use' and in practical terms we
are only bumping the pm_runtime usage counter and moving on.

However, xe driver has a lockdep annotation that warned us that
if a sync resume was actually called at this point, we could have
a deadlock because we are inside the power_domains->lock locked
area and the resume would call the irq_reset, which would also
try to get the power_domains->lock.

For this reason, let's convert this call to a safer option and
calm lockdep on.

v2: use _noresume variant instead of get_in_use (Ville, Imre)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Acked-by: Imre Deak <imre.deak@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6fd4fa52253a..048943d0a881 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 	 * power well disabling.
 	 */
 	assert_rpm_raw_wakeref_held(rpm);
-	wakeref = intel_runtime_pm_get(rpm);
+	wakeref = intel_runtime_pm_get_noresume(rpm);
 
 	for_each_power_domain(domain, mask) {
 		/* Clear before put, so put's sanity check is happy. */
-- 
2.44.0

