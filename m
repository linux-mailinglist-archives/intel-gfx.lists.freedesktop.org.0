Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10916CD6942
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E3410E6F2;
	Mon, 22 Dec 2025 15:36:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYpmkwWn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871F710E6E6;
 Mon, 22 Dec 2025 15:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417791; x=1797953791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mqRrF5iWlRXjVGwRrX8xxq8OmMZR6crGuWcSF15v8Ew=;
 b=cYpmkwWnm9gFeJOh02tQcYPrlrNPbdAb9EuY+xf8h53MW1ts8zYDq6N2
 GwJG5/qUIvR1C2BXsucxwByr3oMq6qgRmYj5kf1z4kBiVx8NIWkUBmaEt
 sQzQ7ObY65oJWTKtU+vjl7LFgDG3bqfteNAa8KngZkqt6hfgN7PBCYtAk
 sf3lpXWa/9kf1MkgprgPvH8l5Ve8YU0KfwT27dXl+anedg3ksVmtD4vSi
 sdnLcpMq26gRBG49yc2i5gMX1SpAD9F4KWEyqbRRGPUAH4ttKqKNQlPfl
 Zlpxbv++hOq6W3Jo8sRwLBbKORTRRlGtg8UzW0KPkgcjn9YK7mL+gBFF5 w==;
X-CSE-ConnectionGUID: a7MS8O3nTbOOtE2eMfz0SQ==
X-CSE-MsgGUID: WeVMmmfGQaqsRnpiDvBChQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211493"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211493"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:30 -0800
X-CSE-ConnectionGUID: DBf9x8FNQ4CB8m0pf2Uqgw==
X-CSE-MsgGUID: 20Yh1zkLRmurTs5x2grUxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854972"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:30 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:29 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CsuxUyU1mJ6T9Qt+ksa3K/zzHl/iee/XR7PVGv5GhjQMhYPtSRxZJI+iLxfywsVqd3nqGKTGhMdiuMVcG46oeMW8rkyqSUD75tqhenZzsqFOiUS4bd5oGXmgsBMIHo7+VId82KNNQhDqYin15wwkL4kZHE1ybphgLYTDHEWtqZiEgbCPF9qOI4EYBucx1DYbByX8smhzPAnN8c6lfNqqtM3VqmU7Wp8txtNhPG+UpVM+BN2Bf7y/PqWgxSd/GLdyVYDEaXxZSp0Ukft/KmL6ZUB4nJdPoOw6ZlknA8Nq96pt3RvrnBI68MjopYI4oUyaXugQ8Pq7tc80t54UF7nj0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oecZZ8yvA3gMVZkjfdWu34NYzJ5NsVn4cVZRKlgTLVo=;
 b=K3T1JIyorBCA4q31AAkSYPL2nawCkUmO0acEjTxgCJEZneZGDzbzfgjIM6J4/NeNT0eQ0RXCeUg/D8r8mpeqV/8b1lcrpKMRUPsO4JMXjT1FTRX8/xMyWOU9Dage5nd67ukuPyjzg+ow/am2x5NAhOG4Imok9Gx7azRxUenZlHYvG2fJsxgQil2SPAn7Cvvgrptm3CiR56bfNfkfM6Lnl7CTYifQ9E1nWLMjprVfXZ7o+MQoC8xJGMeObxONHc+Jhr37b+NdiPGjCQC2Vk1jeQLwkYM0OxlJsGoTgnd8sMiK7IbHyC+iM5N4pNh5rKBj1w/sF0dN6McVoHgl6cPMkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:27 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 14/19] drm/i915/dp: Simplify computing DSC BPPs for eDP
Date: Mon, 22 Dec 2025 17:35:42 +0200
Message-ID: <20251222153547.713360-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: 70803770-9ee5-46db-7daf-08de416fdead
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x0GHED5uerm5NGkpSnwI3x9hHQOJ9+yt1lunjlcMF1O2+9lZWkXGAXhy9osD?=
 =?us-ascii?Q?MgB4yyKt6mO0zTWUAp/yvYUdUJeSpyZUkqxzkR+XSBH6PFX/EIa6nexrD2cB?=
 =?us-ascii?Q?v3Yw1PXkI+oCjxUEj/D4LEBR5LI+BjcMFf44t1MbzCJ7YHgE/XyyWNvx3MaW?=
 =?us-ascii?Q?NEhkouU2QJ4luyGpAaS5wEF80tnCnehK2jNi3Xa66Ptr53e3pcO6zOk148Jy?=
 =?us-ascii?Q?pAA256KVJBvunERA388M5dtqZCzAr0P3p2MjVbI6zOPWhvS4R0+gsQQMXln5?=
 =?us-ascii?Q?wxFxZGipZQZFjUzXR0lV3Mx8+5VWCgTT8CpTalwogIT+PmV/Z7x6GaV1KSRD?=
 =?us-ascii?Q?pRiiKf1FMZhasH8mwsZDCn8xu5kRf6bkN4WyOhepUaaVq9A/EFeeNRUNZA/i?=
 =?us-ascii?Q?IkJOYjaW/+Gp8dvqH3tHLOAZnmXU5Y1a1KJOJalevyBBej67qwp4WCwA2mRe?=
 =?us-ascii?Q?3ph0ErFoe9xIQhbY6JPBM4KvL9yzPEQhIHqytjPRNQ6XKB+F1TpZRnIQoflk?=
 =?us-ascii?Q?kXPF21HyX2lWzsfdZ2QLLqD6+8HNI+hXcjVcwp+t//Pnc8AhMwprFJ99LC1E?=
 =?us-ascii?Q?+KiW9Bv93tZnSPiQp6A/OpELXV4ywIE4bivi6ezXNb1NvOrvdvGayFYxeFJt?=
 =?us-ascii?Q?RVyduvA8soe243hBIVFc2YWmQ/ASatPu3JkFuf8Lb5C4x6T5yg1UGLEjK6sH?=
 =?us-ascii?Q?+A4+b91CxLaz3O+aulolUTHQyKTwHmvbRWhf8lVzyQgrh4qh/X6/8HL3THUZ?=
 =?us-ascii?Q?S5/P5byd99mbTxs6j2ZL4H9K5ul6pi1uqoKk2/XX8jhp0uDfhGnrXpxBhho2?=
 =?us-ascii?Q?FKwyJNUVpMEMt4sQgWvdvkSMwymZxBurzy8kVOnzNXQhrLViV+9ZCQKkuAQk?=
 =?us-ascii?Q?Bzi8YtoqVVrsJxt5qta2D2yfm26l6bGcwdIB7lFzbDASMJkEIvxCBHmk1C2r?=
 =?us-ascii?Q?nTbXOOjOoF+amjSYm1TmjHgJYQceEzILH6Wxe81XHN8iHLwhZj3kKBR9B9kE?=
 =?us-ascii?Q?ZG4HNC6z1SwvApL6w4buANJHE/pzE3wjuXaHXEFyTJ9TxTD3bIZhjUaANWNW?=
 =?us-ascii?Q?VhqmgKvVKM15pMYO2TvsdCtosGYSTB6rfGObiX+rdJK8H6j4Mqbhu9Pi96Fe?=
 =?us-ascii?Q?Jje97HitlfbH8Q3xGi7RQb5Kge2SMqHpOtXPPLvA58xQQ5gP1DPbGVclFarE?=
 =?us-ascii?Q?QhxmOadelma30scKqXk41Rglju5ETsgDlPxNLTKQsBRGFVPONF0q+lxiuhIB?=
 =?us-ascii?Q?mw7fWtCnWbJLViI44l6XXt3cyU6YDUc7xNqbowb0zTnchn7YGYb3tv3GtLCK?=
 =?us-ascii?Q?jl+7m985w9h9gOfQ/ddiN8RxqQkeD6uOZkh7/tRltW5QJ8PR86aS+QoXP6me?=
 =?us-ascii?Q?jmvEvmkI5+JTdpxNlHgTFRPeVFVWz2fqvBBXCy6avMeRvDs1UbI1F7jzwcQs?=
 =?us-ascii?Q?lBEQDiEtrQ09pNMRJcjJfw2h34iC0xNe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VMWX8uiVDSLe0WdrHs1EaOkOaIykexKm6rebYRwObP44VznVYfTlLsyeAjBC?=
 =?us-ascii?Q?Nv+2myCKiMgZZmHGEwbHTy9XNTHRxV/NMtpmDRY1t5CzKx1T72Fmmto1wuc0?=
 =?us-ascii?Q?FBP9LRyh5UT2fOl4lA7vvp0BcVuQunqapDDj6+kKYBxq9V2WJsrPgxzlQk7j?=
 =?us-ascii?Q?+nnDBPynGZQuYo3hxfwKXj2FmcAC8yulO7ZH2iEDbYF0yb3FQ8Xd9z1upSqN?=
 =?us-ascii?Q?WsiHFrJYHydCetQ97BGA0w8cjJEGLZa50V9/Oe8xY88eDxeok/WfdVqkdUPw?=
 =?us-ascii?Q?g5e4Q1KNimacXLJ/tpweLU7cPuUq+psuT8qsAJf2fI/9TdKn8F57hHAliobx?=
 =?us-ascii?Q?ZDvLJt0M8uCDZitfyCIsCkZ1yHXstw3P3a7RSTpg9Ltso84rcUKP6lPu56oe?=
 =?us-ascii?Q?aLK17v3ktlNl+aOhx36mEsr20RfiX6Kuwt0x4i5/W8T1v92mV8KC/xRUzFJS?=
 =?us-ascii?Q?PGeUZMEArFUVJTJE/zZOzpwqjszGthxx8fc26vXlZfL39exgnt64aM9mdGqG?=
 =?us-ascii?Q?Oqx/R9Atu8NE8mxDw7h+eiUTEV7LvvNJkNfPY66vPk/9JF3KPbBrl2O3/jmI?=
 =?us-ascii?Q?AFhK10hNHPnMivSXYCpmeohXD0wHM9frg79cRZ6jLUBCrizkGq7/kO0XIUl1?=
 =?us-ascii?Q?PWJkqhRcbYblunVpwSDhABZ6gizy8sWx8WzvkR9Uamoece0jZoGrEsoaANcS?=
 =?us-ascii?Q?KxWl5Y66RpgvlStdR0EZrzecJFGTmSwbZBEYeDI6S/uVah5AUDCUFbiTlEVq?=
 =?us-ascii?Q?0J7Hfwwt+Nd1UhhgE94IF/anvcolavPv91muK8tcRIXfN3AbVK3ctmuCdMNE?=
 =?us-ascii?Q?nQxGLeOtwdiPasOA1CXO74pH9w+EQGL+S3PHw9WnzuniMfCty2t8Blo4qNSZ?=
 =?us-ascii?Q?Hah7JIInppojIea4v4J8v6PbFv0E+MGVpwUnvgYeUJUxd2hsVsoxB48GAOQ5?=
 =?us-ascii?Q?Rfg2FKx/uZxQpY2QZd4E6amZHBvFViY3q9qW+qE5KFZFrqJ6ZFiZ+VJNNuf6?=
 =?us-ascii?Q?4ymhYCoVZ4jxHrztEY5gHRG5JdEtd0pnO4zRlKmtlIfNzEMR6o3TURnsRU0e?=
 =?us-ascii?Q?cZYFGKklw7xqCkrypQpOf8zyuNDezqeLYicxxqT2877dr+Rws2filclYs3vT?=
 =?us-ascii?Q?K/GzA9iztsnno4OZASpEhwB5dNPeexf0CRKUw0iOWkwOHDKbscuxBrVkCmF7?=
 =?us-ascii?Q?sa8hnug25WlVR8+6qLyDEoL6rfpQY6g21dPAIpa2LbZdJe2v5t8ZrxKze9SB?=
 =?us-ascii?Q?OKT0MoPoXZ/bmOKg1lkBnpCkOv9uPk/NmmPlNbZj0qYKV3xjZorzzFE+aLpk?=
 =?us-ascii?Q?aocj7IqZhp6hemKpKt68sSK5gqiiE9DGCIfpQipipuEGLwS5eqiIfQGogBCW?=
 =?us-ascii?Q?IMlkq0LmO0FEd40mvXGW819V+Le66aWo/945ul77qb6wl9njpHI4vL7TL/PE?=
 =?us-ascii?Q?Tg/h0fXxhzGp5KgWTSYmy8M2oZ/79z4brBJxzfb4tB+fPD7SbBv9TfJXVkpX?=
 =?us-ascii?Q?c/RZq9P4kSndp+1orhimQDheu2LhiYQaJW4/RuM4mo5cYOkOATIN/4KbOju4?=
 =?us-ascii?Q?B9xxbx3Kc1jWH3qyomhFHCvK3hqZGvNL3tHzz7nFHZm33dGx0PB8xg8GfokS?=
 =?us-ascii?Q?FAXmMDlkv5CXKEwBzWVLdhB6dzh01BELgIji+8QX/19OOrDI1lq6uOcalbuZ?=
 =?us-ascii?Q?pFGetWoo8qrtG1N0jdD79wUCNWpnAVpLMOunas8gqbqjx8t5kdvqwTxqdBYe?=
 =?us-ascii?Q?D2ucsAPbIHSNBFU3Y1VWo6HmMB99AmTtk52YvcPcGo0j3TCVazq8qVsJeJQH?=
X-MS-Exchange-AntiSpam-MessageData-1: RL2554afhclqZw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 70803770-9ee5-46db-7daf-08de416fdead
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:26.8738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jnO3XJNN29qVa7f1TGpppz4xdTW3j9OFhwBqbye0yFi7fWTepjUUpx5FSDsVnTQD1oGG1VYzmRTwcn75smT04g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

The maximum pipe BPP value (used as the DSC input BPP) has been aligned
already to the corresponding source/sink input BPP capabilities in
intel_dp_compute_config_limits(). So it isn't needed to perform the same
alignment again in intel_edp_dsc_compute_pipe_bpp() called later, this
function can simply use the already aligned maximum pipe BPP value, do
that.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 36cbb6aef2434..e38e307bddfff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2338,26 +2338,16 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
-
-	if (forced_bpp) {
+	if (forced_bpp)
 		pipe_bpp = forced_bpp;
-	} else {
-		int max_bpc = limits->pipe.max_bpp / 3;
+	else
+		pipe_bpp = limits->pipe.max_bpp;
 
-		/* For eDP use max bpp that can be supported with DSC. */
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
-			drm_dbg_kms(display->drm,
-				    "Computed BPC is not in DSC BPC limits\n");
-			return -EINVAL;
-		}
-	}
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-- 
2.49.1

