Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7544A9F263
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D4C510E50C;
	Mon, 28 Apr 2025 13:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mmmmE+wG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209A510E501;
 Mon, 28 Apr 2025 13:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847108; x=1777383108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vFle+kDn56rp92MnudrDCN9mq0wxA05Z5eBdPz2qmSk=;
 b=mmmmE+wGQO+OndiaUZ8kRu8ouj2pgNo0IPDX6DN9IuyNlFCG6vC6yZAp
 reKJn2AZ/vuIwwl2lOqcdGpLxqhz8NNS6/kIIeME87Kqj1mBpvMN7Untx
 CHNdMcCmHzeYFY2Tw64t5C9AF44o/3vyLoADtwcZHYGjFZPBbFoS90HgM
 4TagxB/XZ1X/YCK4AA7oMSB2e/sF5wIyY92wmVBrDUWfuNDai1oZTsU61
 oo8Pj2yxTxx+XPI3ueyUpIfB9I32RQ2w/bvU0scGQzx39He9dVxDFcdkc
 A0hK8+inwmgCdoPjjeenc6MBfvirDSZyC9K8ciAfv9bxh4h6bgcwxjLyg Q==;
X-CSE-ConnectionGUID: 20Q5sD0QTRK7055/Fhn4AQ==
X-CSE-MsgGUID: /mLluvFHTci/QuBq5E+3FA==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51256717"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51256717"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:48 -0700
X-CSE-ConnectionGUID: dHWotR0yRxKVozzMz0Tb1g==
X-CSE-MsgGUID: URMvO/FJSkymyrkvlNvwXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133418822"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:47 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6a9BxG4+6z8rQl8nqOcKuH41XYsQTYWOgrkaEQ9GL8n5zWDqMonHuKYeMGNZWVoC3Qk84d42N6ufPP+px3DiDYszEC5boFs4G2iE3R+XkDMQV2GDnmKWaRYvUI2n3+y15N4N3A0xbnw53HUMeXqhJDq5ajsD4ubUS03uDIb1yc8kkz9gjKOCjCfKWt7po5KJmpsAAa6ibUNN3/SfpQM0vR0lJbHSne4irkhmAkbXa63kPTgoHVoiU0iYlv6th9OgNhttLZCSaSdZ36ODpj5QJtS0wVdpYlKzudDBe8rc9OOFXWw40ftL43EULOFYaZ2jbIbN+mCxSJVX5FOhzQQZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oEUgZw7ipOwic70QBOAaMXBcvqwa8CEYLB2ZZtLj9WQ=;
 b=XsXPcoZBKqU99Xp4PH6bLj8hEy20FyCcdmm98MXYVCU0Z5TmAZSOeVllbhWoMF31C3svmXdCa03skZERNU4yNDnilcUqBW5+MlV/XAzrI8kw8WqX1vV5SCi2nw6OMQp1N6KmsafmFk7Q1W8qce4vkED0rrKtFP4Xf44RWLZitlzdBPapGxJagydEKPrvjEmzrKLU6ZgpeR2uJV+0upH0LOR3MwzSLeEW7endJt/nW9g4gIdqB8VRO0eSBFy2FeY+NIEQ73ZX31Tjna8o9xdJgYlktEQ5D+NSozpFbD05JUsAFF4BCXn6kP0Fo8+4+rYn3f+rLRYxXwzqKndcWkA7Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:35 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 04/12] drm/i915/dp_mst: Update the total link slot count
 early
Date: Mon, 28 Apr 2025 16:31:15 +0300
Message-ID: <20250428133135.3396080-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b02829c-76dd-4dc1-d620-08dd8658ff6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TaltIkhEgsPYS46SI+0fCJexNIXUmKyx0uUC6XQwItDyTmi9F9wKbYobWuBx?=
 =?us-ascii?Q?zCBjc7b7vk0wD+tVIvOdrnM7PTbB1xVcPccmbpeBjFhJp4WpjY80mllixt7O?=
 =?us-ascii?Q?GOUw+TvnCT0jpOKoVFz1DmTox+9Fa4T0jFc6AZOAaFmI6xk0CZqUGQF0V/Yo?=
 =?us-ascii?Q?BiIdG4Wa8LeCOFKyW8EZ79EYczo0LfZEvB7gXv9P4ElclbizrDtzz1h1UMjE?=
 =?us-ascii?Q?qOAgb+gAT4cHo20Y8x3pbfeCvs3d9qfAIwZcClzYVEeaGcPocazIngWVBQxb?=
 =?us-ascii?Q?2KWF+Oa97iIydOvr0QigbJGMIQrFmaR/g+Xso3SC7uUPo6PcsatDJV4sFWk0?=
 =?us-ascii?Q?Fs998MtL0dFoRhiMv6M2EpER/U10thV/pcGTqbOz57juImG6CAxKl7theR7Y?=
 =?us-ascii?Q?WJLqo6D/3KCJ/UaIeK1q/tGBqqUXExbRE7+1gXQZJ7e6VdE5HUf6XG2hd05+?=
 =?us-ascii?Q?eJrS2UdZJfbR0gh9KPNiJqGN0rVRJsNTnd3FyqsjKLUgecZt3e0NTsycVEMy?=
 =?us-ascii?Q?zevrmEBbyGUK1DPyyd1OhG+UY5wH4ZKzW0mwwm4nNd3HiYmmdbXAKmfw1CUp?=
 =?us-ascii?Q?mF2VZ2L8yW3bIPSIQdFgbd+5RzF96oJIjH9dc++HvN1Li2yxs8ziadc5RUNG?=
 =?us-ascii?Q?R1l62DxftaceAlKQy7V8jKj84Ot7s0ansEItdipaTcApSzKwcMTQxIoviw9A?=
 =?us-ascii?Q?INJykuUVUlIH6rKYLUKG6GOutxRvS0blP2WHMlzvRuhkD+Q1Qmp3XdXX0Fqc?=
 =?us-ascii?Q?+D4zaa+mFxvNVbvnBXT89I784bZ+NPdAz25uOfueVfevVG2hs3B199ytSHHi?=
 =?us-ascii?Q?lfY7DnR8alhxNCctKNYOYTQnsij/eps3+hkNQ9yrkYt+WI9SEYkiXIGVkVxb?=
 =?us-ascii?Q?5IxYfNhucP6YHQYtM8zKliYAy0RcDfEOfMalI2TP2S1bNwBQnB4fOD99AjBT?=
 =?us-ascii?Q?szB/AWw9LNimTAKWZ7NCcD8W76urWHLfY4HiHJ7JTYXNtcGMTQ3uVOWcqWaj?=
 =?us-ascii?Q?ubO+nGr2IcmUNo2owYJrBbfrwdo6J/JDMw3BJYJiOACS19IWliG+32MtIe+4?=
 =?us-ascii?Q?7UNqF6xMCi4xTm3Ejbl4jkCJ0ABN3bd049R5gd2ojy7oRYdSRWxlcNjLhsvZ?=
 =?us-ascii?Q?QJs4ZHCOqFu2B5JPG6LHPJQPHTM+K6sUCFoxrb7Icl5qKSi+SHTY8wJpNVCP?=
 =?us-ascii?Q?ZI2rCb4I1OIt+kXgJ7cqid9BjC2c4qwWbxhtIVTd+I1bXVzWLjR5DZzt9IG8?=
 =?us-ascii?Q?zJ42oCRzykq5Z5TlVQ5Dz6TmfVMhoCw8TnYVLc0HBurwW8PkZhr6t4q6SuLz?=
 =?us-ascii?Q?RC/fvH7uiCvInpk9u9qW8Voyy/ifOQBKAfJiYMT4FnwkcYyH3+aXiveop1v+?=
 =?us-ascii?Q?4T50QgwsFc2ZrVaMtQuOQw6K3dv9r0VzVR1AJnDTKhjXXgJ9p+eBhrRBbOT9?=
 =?us-ascii?Q?uTJtLuBxOXA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k+cdpJbIQAjZpkSRQnQIgFaTreBcYsNnE/iRWJhHN1SmX/H4fWosFtzBfZ/3?=
 =?us-ascii?Q?aTPMEuP+Pq2kbM42xpSm9nIWJvSvQqT+ZZgH/r9Ni1PmzVTzYwukfHf3rsxs?=
 =?us-ascii?Q?VDEJWh5iyAmOKCMuUp6Oea2+aWg7q4CyGMlxfKHD/WUF/vFFsXOe9vwYGUo7?=
 =?us-ascii?Q?c6z3TElDWtokusN5T0LMjltAff7zeSwLi9lHeLJ8Tf6SJpJPEDm2i0CBDWx2?=
 =?us-ascii?Q?fVgRlwbOrBBNRvnHFqAaHzsZERyjn1dcDQVs5rhtE8pCJtzAqY3pW1Ixlkch?=
 =?us-ascii?Q?7N2+Fp+pHiQrjP2a8MD0MzQ3zYdbXkvPvaurWcJJL+3ZbzcGvtS8Aqavrybk?=
 =?us-ascii?Q?XlY3SnemeUQDzXs/vcPNyEAYwjBs0eSaywNqXUD4dVdH98n98WLBNScCrVgw?=
 =?us-ascii?Q?tTjl9FfcTJRSBqnx2zW4Us3ayiPyZzYNFSUcQGseN2MwmYOeyPNlhbAKIe9G?=
 =?us-ascii?Q?7QPtj8LuHDAkWIMlbiM9xwcHUu9q9ivDbUeuFI4yaShPFw9vhOElUCOoORkv?=
 =?us-ascii?Q?HL0WcP70nLVg343NzmNxw6mgqX4/pUMMFljt4ylpT/iSHP18cs1V4unlMIGR?=
 =?us-ascii?Q?uW46QB66Um9X0Mm3A77bxRHucb2U0qXVgCiZ9SZhsPYALd9b+GeGMPoEQE9M?=
 =?us-ascii?Q?t17Tl/4QmcTUD3ktvDg9101dBXYW/waOBMF6nDa7KJQg0mbEDNYX6KWiShBT?=
 =?us-ascii?Q?iNDBNe4gseDWyuPTi3E7U0sJKlDlB7O7Dg4t0Upuk+PT0jNLtON7HY7ArPdS?=
 =?us-ascii?Q?THUDoBHjOxXPmAPMxcZui7GtyA8FI+xB5alVUPU0v0TKNzSVawRUlkSvveGk?=
 =?us-ascii?Q?WDr1lSgiVBs0GzDM1cdZgCdFRfyv0qOCar42wsccQYEK9r2S6fCFZniCTYmP?=
 =?us-ascii?Q?+MtZUKq01u4VfeZI008n7I0WhQOGSevCRBXXytyWyb51CW4lzda3CyAhyxpA?=
 =?us-ascii?Q?TnrZJS8XnDJ7vCMi+s3/0V+LS2z5dECnD2APIE4+P4ifvCS6jdb8IPA/b1hn?=
 =?us-ascii?Q?x/hjv6RwF5mMX/LHJok8thmggSzhnKI4uRfmyNvnQYqX0mZslnk4NFEGpH3s?=
 =?us-ascii?Q?bU5ymiILgp7KdTjSWJOQLzhpXevmC5Z47O1W1hI5p7wPVV/x3fScW1HDBSIG?=
 =?us-ascii?Q?Q5iO/Kw1NqhCODeuVFKKEHn0jano3BPc5dWPdrld/PEm/NAkWKuVfhZhNhVQ?=
 =?us-ascii?Q?X9ObfN7Pxfb90ALi0yyh7QLIP0ABl4qMPrUg66+Bt3ekzmUXSVR5V0jKv8y1?=
 =?us-ascii?Q?nGgHxGiVvsNzb6mBqCyQhgkHYNGEOUaRiY+U9v+BT1UUSmx3zKvqfxOIIllO?=
 =?us-ascii?Q?xFDRk4s05v5FMbr7tMGkDEvEi1KCEM+8wiDUEi871oYMQYa+srAxoWV+cvnv?=
 =?us-ascii?Q?cMQ279qDBaJHdAUSiM6GtUFPjofAwbKDl98F3ue6gT5CaeER+AeTxBCk09XW?=
 =?us-ascii?Q?BlkPM6YDKPjwTo+iGDynyZuYb5DNdYMDjcBRgfBlAqcwptThycWadp5FbL9E?=
 =?us-ascii?Q?19sB0sXhj2f/MX7UXafZo8UMKgMxg4Zw0djjvhGLTHNVZaFeIHjyCJRb1hmg?=
 =?us-ascii?Q?8nU4OrUIkCJd7hSwl5hlI8vW4E1HA7i+Sz5Pop+q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b02829c-76dd-4dc1-d620-08dd8658ff6b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:35.8944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ybb9hVhoyK86egcUyIHJklRKFI5xZsSV9pA38hRAf97apaPMCNZWf7KU2jC2y5bIhTHdMNz76Do7lsTuY9oIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

A follow up change will check a selected bpp's BW requirement in
intel_dp_mtp_tu_compute_config(), however that requires the total link
slot count to be up-to-date. The latter in turn depends on the channel
encoding and hence the link rate used, so it can be set after the
link rate used is selected.

This also allows simplifying mst_stream_update_slots(), do that as well,
moving the function definition before its use.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 36 +++++++--------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8e1ed3b38217d..59afb550cd0cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -261,6 +261,15 @@ static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
 	crtc_state->min_hblank = hblank;
 }
 
+static void mst_stream_update_slots(const struct intel_crtc_state *crtc_state,
+				    struct drm_dp_mst_topology_state *topology_state)
+{
+	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
+		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
+
+	drm_dp_mst_update_slots(topology_state, link_coding_cap);
+}
+
 int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
 				   struct drm_connector_state *conn_state,
@@ -296,6 +305,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 		mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
 							      crtc_state->lane_count);
+
+		mst_stream_update_slots(crtc_state, mst_state);
 	}
 
 	if (dsc) {
@@ -513,27 +524,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      fxp_q4_from_int(1), true);
 }
 
-static int mst_stream_update_slots(struct intel_dp *intel_dp,
-				   struct intel_crtc_state *crtc_state,
-				   struct drm_connector_state *conn_state)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
-	struct drm_dp_mst_topology_state *topology_state;
-	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
-		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
-
-	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
-	if (IS_ERR(topology_state)) {
-		drm_dbg_kms(display->drm, "slot update failed\n");
-		return PTR_ERR(topology_state);
-	}
-
-	drm_dp_mst_update_slots(topology_state, link_coding_cap);
-
-	return 0;
-}
-
 static int mode_hblank_period_ns(const struct drm_display_mode *mode)
 {
 	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(mode->htotal - mode->hdisplay,
@@ -736,10 +726,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 						  pipe_config->dp_m_n.tu);
 	}
 
-	if (ret)
-		return ret;
-
-	ret = mst_stream_update_slots(intel_dp, pipe_config, conn_state);
 	if (ret)
 		return ret;
 
-- 
2.44.2

