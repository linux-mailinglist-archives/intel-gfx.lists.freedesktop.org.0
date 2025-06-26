Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A325BAE9814
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF7F10E859;
	Thu, 26 Jun 2025 08:21:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fh+U6orf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4978810E86B;
 Thu, 26 Jun 2025 08:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926082; x=1782462082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fbYQIq+C2/Vqu7Mq9nlkj8siW9OgYyY+NCyHIUezqh0=;
 b=Fh+U6orfaMAMr/KUQq8gRNmAGfs88RpIprVjcmjjjP3EgizVXL3SXTDH
 XXnAFC/sLyompDdLgT14jiEUrfp5TSK8znth4IbZ3EgJa6klzrt9HliKT
 DhnAjLNVfMJnhpynv6ZJdFFt5nk6Yt4B9gQwO9PpCthwkwKTbX3lM9Lcm
 JqwZli8XbI1P7nuhMDf/rlJTUtiVYhUZQXKdfNaamuD+o5/dDGz3FOvbu
 G/wX0U+Yl5J+pWDpD2/Yv+DrksFOpl+NBw1kjmxujAscfQRtTvwIiJe5e
 ppvQUvn72Zfh9a6rZl82/qO9eGXVxjs4Kyjb6J/VxSWCPcyNHGr7WUPhf w==;
X-CSE-ConnectionGUID: teopyJwBROukiZCx/uY5OA==
X-CSE-MsgGUID: TL1MJUiLRX2FrhF8gTQnuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="55837204"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="55837204"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:21 -0700
X-CSE-ConnectionGUID: l/qtx5nRQx2prgs3nWfjuQ==
X-CSE-MsgGUID: 2lcHjCzHQZONkJaBaVkiwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152213551"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:19 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ieULyViNYnnEKmFwanU5oqNsZi8xFqtOvUwp6lfWLH2AMkMuwEpUxkARC7ggh4M6rMAFRE6Q8XAvM9s56IbluGLF4hIzlY2qV5Le1FE5R+cU687K5K8nvecntSU+PAzLeamq/l9T5vW+vU7G3T6Gr1QEzBYYgytnqQh3C58rOKhcpHGa2JztXqMmCrX9r0OiNdFKVjk1la9YFruSWnrz6yBTr6h1urubdHj3zAvid6QQdX9MBG6rKzXxp12a/1LjrQ4BP6+N1YgFdyMYtLYVoZ8rBvfsZ51X07WUL76RWA7YwXl8kYmaKipbuvCF7ZlegzQJojePucdRyoqXOlXJ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wdju9N1gE20ZQjV5m55YnN8n8SOrVfHFDDPTYdNR6WY=;
 b=uTdI1ZlU4sZyYLYzNn0SuBq9EnufOgJa+IS8pFUjeoPP9sCuRt6Ix7/zBO+yVQgCobDh2CXL/KQbVFv8JIjkzPjfl4XCCAvkGN8BZhS2qMw+HTPdXprKGmdQA7XIdfmVcAdUpN44omlY4U0Vb6aMod52naO/su5cRRrVJyH376WD4oPtSaWQbwqbZ+y3We3SUrIoX9r2bVt+zJEFTtF4WYMtnXMiTekxvy9rgQJZF5TQaNBj88subAjUCaFi0uT74yJ5Afvjz72i+WHe019tU3HATiVTvsdYmU7vUE9Sh5rC1cFhwwxsZ/MhfVLtH6NknE3bVxNcu55R/cYwtP7A3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking device
 IRQs fails
Date: Thu, 26 Jun 2025 11:20:44 +0300
Message-ID: <20250626082053.219514-12-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 436de2b9-f021-4bce-60bd-08ddb48a6b69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DwIDHkv8P6ZxrB6/HliT/bO7B+/fERohI4QwrMj4+Jyf7rjOMgu7oVk7VKZK?=
 =?us-ascii?Q?JMS+6iHWr0of2/y3HJQpD5x7esaiwa554ncsmebNYf0g/CCt1FaPKJmGwrOH?=
 =?us-ascii?Q?aKrc/0n/0v9kcBvVRKh3uJD9SKWSksMqN9FY9eJvHSy2RBXfDBE5Mdlj+vAm?=
 =?us-ascii?Q?APCakUEPZ637ZrYgAKPtkBs96U/8xGjKm/59XkRoOCezT8HVMD+Hq/82R9zW?=
 =?us-ascii?Q?VKthf1lkayJpGQFH744ma/QQtpRQdhYjfQ2KRYMqYctDSfmfQp3EXgpiPTWv?=
 =?us-ascii?Q?3XZnojA7mFBW0N+mL8gFQZ3MOVaVEt5SY9F/xu/ZMe8aYxKAqNe0ZoMYHMSZ?=
 =?us-ascii?Q?qHIywAxC4YgTjarj5NL6oI3pkhbSVBpEaKUgsL2kTHTiACR7QLfWe2jWqZU7?=
 =?us-ascii?Q?E5JvC6QPJlyvQAkqsQNuG10XD/1HGADCcYKZgYcbqhBZ/7HKl3TkA1kKCdXe?=
 =?us-ascii?Q?+oqm0TPikHMr60ZrsxcOFl//7BMZGwduNjFVfeSPoonwFLLaoadXK2o2NHxZ?=
 =?us-ascii?Q?29Z2fU4GF3T2YTJGJUanAbEChb1iZxoP+yqSnjP/15Nmt7YtoDJ7eo8BCOqr?=
 =?us-ascii?Q?4WbYrRuyl8tfbyb9CNKeK0MgIquh7dOCbBwrjcQkZAQJT2nhLzIZhLC4s/Ht?=
 =?us-ascii?Q?IFWGELKR0hbBp5GZzxFf8rqQ5LXjBLbZdQtDmOqd5Lgk6FYJR+j44J/P9cxO?=
 =?us-ascii?Q?c4G5isVHDlaSdP5SkZG1XpOdOMoBWZqiUlZxAeedp5PzM+UxF+KDxEvdTaXp?=
 =?us-ascii?Q?TpGiSMOi9qtyEEcHZBTItf0cC+7SSoHAih+Zf0QqsFuYgi34T2HmZhnoxA3C?=
 =?us-ascii?Q?NH/mzJBIGmLgD9SS49niU1BhcZduE9pk6af+6cihPCSHiU+dQUdzVJlNa6MK?=
 =?us-ascii?Q?03B0W4bOxNGBuols6kBDQ+P/4ikNn4pju0YC009kmVAG/0hG3CXHXa22luWr?=
 =?us-ascii?Q?ntanZl38TKQlWuU903V09yCKOparv2Nr7QbDmhbxd3cCt3cgot6fbI/jsrOo?=
 =?us-ascii?Q?o0ba2PNUn1nb/y95Trm9/ww4xm5yFjPNX5qjG3p08CTLQNFz5gnCFXwIbAA6?=
 =?us-ascii?Q?zLaDroqlOgf2Vu+gP4c2RxOu3jehlFvM5oZMAAylHoaXLrKJVn35dkprez7z?=
 =?us-ascii?Q?oIKis/nb5afShg0IBVDu6xUBE3KGKjzBLsHC131GZx+al/LX4Xwyj8uv/V+l?=
 =?us-ascii?Q?MGpJaF0txKYFNyjRFffPwKs7cjjCSibbFd9aF3rvVD3/15OtTgDKj/eaTN7Z?=
 =?us-ascii?Q?/e0e7ioE4njEKgeEdIQxN7LRHgWJYF5usq090MDkclzb26WQ+gfgl0tVKKv8?=
 =?us-ascii?Q?Bmw0ftaQVNMQxy6j/bVuGwDwlhwqHWA3PbwkLQgRP2Z/+aR6A5wT0TXBQXZx?=
 =?us-ascii?Q?/Fw6nUr1tl59LwKjyFcvpISdh8pmshK5fn3wU1C8XYuR4Xxgj9JINntzNlG+?=
 =?us-ascii?Q?i04Le8zVuFo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?azmqkqUKa/K8cKbcpQHGMZpuNRrW6Q75Zl0vd9IP73A/DGkVBF3ILA42U76U?=
 =?us-ascii?Q?f9fXk2m+sgYQqml9lMYJpyjHYVv1yy6ar24xfVYbbWFQrRZj3pbsmu1zM7J1?=
 =?us-ascii?Q?Uho2FYvExHtWwXQpbO8Jfe7uf1V8dA9XkWZCQ9i5XoENS879gDxgp6Rn9Lrx?=
 =?us-ascii?Q?03JkZVmup/3L93kLPNSQcxzEnNBW0kPoiWMFP71MtW74h9RjpbxrLUbJBQJx?=
 =?us-ascii?Q?43GdOg9JTZU/txxZS0VnMbhSVivocskHCTX4Vt/FWM1YJrMPDl1H4yOw3k52?=
 =?us-ascii?Q?JzwX8UFWcO2p+nusz7URKI+ACHlNB7Dr9+xwM4wsj3O8W9f3NH0EFgZWsVdW?=
 =?us-ascii?Q?18g9yix6h62efxCd0WSdOeSEdLoplzmAvEqOhNPaZBa6aFLfXL66fVWe/m4W?=
 =?us-ascii?Q?55HwnERS2YuQDkiLFg0TkL7j8dP186OjRvIjFSfwPXQXU/A2HpwobROqk4xF?=
 =?us-ascii?Q?R+hWMGFRV1UrYCtECerfq0EJf+qfyGZNYEHWmfVRLkCNk/2ChUjcYhzGfJUR?=
 =?us-ascii?Q?Hoka8p1YHnIa+Pt/IFQ61qjuODZ/lQjTrkEzfkSiRxbT/NBssIW+bLKGSqw7?=
 =?us-ascii?Q?qDn6paBwcX/6NDnMOACh8aX6W3JRis1Orx8USeuctI5JMJL9DZO9xd0YLDhl?=
 =?us-ascii?Q?8uqXyj6Tdh1t09ZseqX/4pw/N8YXW1VbD7/QNAck9f/LTpsx2wExCSBg1u0g?=
 =?us-ascii?Q?LxRQ2nCvBNyI0ZeApV5adortFM0eTwqckVl7w/CrCXLl3GYdpLI2av1NWDhZ?=
 =?us-ascii?Q?UhqLDuUXyCOHqlWXLTUfOxbAsxMbyJVObp5JyfCITgXGhZskuRkzrebeKIFk?=
 =?us-ascii?Q?BSFwYLTVj4XX4Qb2UQackpl8bT+6y4ewu+sxJdXclRnA3LW5sZuP1PqGY6zx?=
 =?us-ascii?Q?b+IRpgYOltA0zGJCJ1GaRs3BpHHQjSKTjIRdqzyzHljAwCaUhzDWUnUa3bCK?=
 =?us-ascii?Q?KGhHKlkKx3LWS77ZzbmPIjmiUy5iLnPgMg9xucOrqyId+nW8Z9rddw2Fegnu?=
 =?us-ascii?Q?CtiBWd5W9JCItq2EWuvcpsYQUzmpb3GzMdySIBR84do0klrMNp3UieU20IKs?=
 =?us-ascii?Q?PR6OH22LO0jt3l4WyJHyQD8MkT9mv7iXt42sZK1mANpU2eYGBn0mrhpOAx+4?=
 =?us-ascii?Q?44MoU9O4LrMGIH0c4Rum55FQkmCzLJ6a2+7i0ePKqF7V95Vfu1+hf27+rsFB?=
 =?us-ascii?Q?P4uJZ19tx5JUIvgiAKuRiARAgRVVSzAc4cF2Wk2IguxJMnoll7rNz5yyhhjI?=
 =?us-ascii?Q?DXObVwkTFuPuzXipvFAnWGonZfaKmk2k9RyhkBHmUAc1c10l1xutBZnLxaAs?=
 =?us-ascii?Q?8dZ7MexsT0RtT+FOsTboYiSd24zFwN9ftK+BPKe9w5UvsU0OT1iDph0MVj8+?=
 =?us-ascii?Q?ST6ApmywfOKK2wt0aqtOXv7rnuDPDfi6a851fnrpsf9RCuiw2U5uUjSijyBq?=
 =?us-ascii?Q?Pn1jL+Wn+r5he/jULsSmW6BM8arXGTVaS2/Iz0DqZ0+ZXTFL95yw+coaTaKO?=
 =?us-ascii?Q?ggb8kbbzO9maAWF2YDc+094iSdag9LCK9pBRUg5M561aRRz0m98SqW10fGf2?=
 =?us-ascii?Q?1KqWOol19WW4cTT++fKjFJwFljTXlbTiFVB5JESa?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 436de2b9-f021-4bce-60bd-08ddb48a6b69
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:16.1204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZOV6XSlosx2YWp34GZGNlniuy6SSMcsYkKVbpBeiSISK0PMFCp6EKofS9iWwgs9ey5ygCW/52mUoiUMcTLqX5Q==
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

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, ensure that if the failure
happens while reading/acking a device service IRQ.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7793a72983abd..7eb208d2c321b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
+static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
-		return;
+			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
+		return true;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
+	if (!val)
+		return false;
+
+	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+		return true;
 
 	if (val & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
@@ -5412,6 +5416,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 
 	if (val & DP_SINK_SPECIFIC_IRQ)
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
+
+	return false;
 }
 
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
@@ -5476,8 +5482,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	intel_dp_check_device_service_irq(intel_dp);
-	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
+	if (intel_dp_check_device_service_irq(intel_dp))
+		reprobe_needed = true;
+
+	if (intel_dp_check_link_service_irq(intel_dp))
+		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
-- 
2.44.2

