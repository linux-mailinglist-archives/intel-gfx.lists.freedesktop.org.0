Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4D9B8708C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A993D10E911;
	Thu, 18 Sep 2025 21:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhdfWxqn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF49B10E90A;
 Thu, 18 Sep 2025 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758229957; x=1789765957;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=J5K5uCgrgSMySvrdDW6BM+Rbgw3rBUsMzJ4Qhzt6+2A=;
 b=lhdfWxqnBHiOixD3lT5D/RLc+nnLucWnhCefoaCMuO9pApXN+QmBq0+H
 mh3SQMvo9lLtfHWdYtndT2QpO0wJekfGod89+f35rgRAx28BijAon81vt
 ERvKYNJOCo+zZmKHSpYlaz57ZkPzMLWYZQCDQmmk4CkZUNjde+8nQ9NQS
 iofrStsJytp/nNeV8nALiJnSq7ayrVUYlFhjVBpNvjpv2IidlFq5AYQj5
 eBImceJWgGfXgrwYqCSKhMksCQJJAFGsi4IWwQG1+blk490P0T7ZdiaCI
 BbPh2e7Atp1Zg/cHNfiIHyq2DMYNalkZF/jcp7wigQoeWPzTvn495eJeD Q==;
X-CSE-ConnectionGUID: b24ncwCSR72R4Vws4InJyA==
X-CSE-MsgGUID: QiDLoQgBQiqiWvVutt6S7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60640390"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="60640390"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:36 -0700
X-CSE-ConnectionGUID: yon9NaglQ4WE71nT67ZuOA==
X-CSE-MsgGUID: CVAKOu8dSrC8CUpahmc02g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="180941511"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 14:12:35 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BTPZm/PfcUnxX4edJjNATTICxe6K6IhACbD7l66lh6t6+ENo+p8IPt87z/S/P+HXMTAk9nxIEBteG9a0S/PAK3nJren7vpUWbHNrzzw4R0EYvH2MT05fmoJ4hy4VROgoNzmfSwTTFhtwmbFg2MNuKI+xQLpbA1L9kL7uBw35c85ROhvFphIcyGtHfnGDYrnxbLtZ4uF536uSiBb86VvkHtXi0QKCDN43YrS5fmffQz2YJU34h9JK8G83nxGy9WuLnIzeboPZWw+Ho35eaWPE2M6yP7Hr4OL6bQpVmkfyoE/ppVCpFFWbDqDjOfq6TZz/Hz3nJdrNkzWkxFzQHlMtug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBtGgLmajde580iNPxi4UI6tkKVYPZcOwTp/0vR4S7U=;
 b=t6+uUHn2odt3vTndQt+Jkqz6SfDz+8EtpD0LzkSvOAjdVyV/uVvJn/96xwSLx8xaAW9fCtz9VWDKaDhnG/bAihD5wCOI0Wx+i4mVLg95z/T+rMKonSu4QFW8hoDLJMh/nCQ0pRkNufx4PQMg0fil9AQROaB9bY+DhtjvDCphWIRJalKnxLQWXvFpRI+LWv5WksZJemEINWS+hqt1YNJt7yoR2M/bB0XzKPKeNnp+OgYXXkQNN29YXutilnu4PbdNYvAKM2erHgQrNCD6fHL4ftgf4ozRt7fSafCETDtKx5INAeqijZhPQXA1+nZyWAEJIe4CsATqv5AZOeH41ysfjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB8296.namprd11.prod.outlook.com (2603:10b6:a03:47a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Thu, 18 Sep
 2025 21:12:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 21:12:32 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 3/5] drm/i915/dp: Pass DPCD device descriptor to
 intel_dp_get_dsc_sink_cap()
Date: Fri, 19 Sep 2025 00:12:21 +0300
Message-ID: <20250918211223.209674-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918211223.209674-1-imre.deak@intel.com>
References: <20250918211223.209674-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0251.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB8296:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bce978c-f4b7-42aa-ca5a-08ddf6f814d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6srvGpoTJOHOaJKoqjN0ZqqB2JAxcUwDQZLaqbJ2RauS+uKGPHxu9qzLFUb0?=
 =?us-ascii?Q?gZF+BYyiz0FBoJ4+WcD6qf26AJmUf4pJFoYO13PHWhzFkEC6IIVSiLaW+SPR?=
 =?us-ascii?Q?YRzunJOiPsYUnCxAwVudGvdLuIf24p5iULWqppwXBiCtl9OSWhGZW0Nh+CMJ?=
 =?us-ascii?Q?+ByT0h6rvddWz+GdPW9fYlUnq/MxSWnG5eDaA1kdKbu6LF33R1bjrm2EtcU1?=
 =?us-ascii?Q?VnR9D0Dqr96H3PBqPpnFHrKJsaUMANIvZE4F+lXdOMcHi7oXszTdJ1WFJ+6M?=
 =?us-ascii?Q?9RJKmFIF6HL9OtaXYEWxQu51BoA4jQaG3mV9MfLMcpqH6GwjYh3ZlI7uS94E?=
 =?us-ascii?Q?CwH1bcrgKAcHcmX376fEHC0IdU1XdAjTs1fA+7zsZtCynn2Dc0lpM3AgZkEW?=
 =?us-ascii?Q?+EIczPA6qFWnUH5pVCeF60UObLTrKyRcX8QFOVKtEt2gaEQKF/GpUrgIu+UT?=
 =?us-ascii?Q?94eecpaB3ArCDJRX3UnR/pCo/Q8vr79sFBlsn6rN89VMTK6vUJEM3QGb6tuh?=
 =?us-ascii?Q?3YkSO2TwcSVCKqz1O9+Xas99MpMClQeWesEwd1Y1HL+KewQ7clX7rawCbqYQ?=
 =?us-ascii?Q?jyWvFKupmON8pZNJFV7EsXnp22d6ubDV2XmzO3wHlGr/2asKReRK0p0w//0T?=
 =?us-ascii?Q?IpeOUx4T8pHVsTbRUEJ2cnjWY/0WqplkGachzMyJiv4wbECRevclMy8XVdNK?=
 =?us-ascii?Q?sQAO60+BdHoo5cKioJ6Vkf7gcV2ZdAaeYUm3uPXpkJoeFMjJewcvU3D1xG38?=
 =?us-ascii?Q?8ilvPWDya6EBB3peono72AJ2pbXGJTWWXlkReqOcd9N6au5otibxIPpXX57b?=
 =?us-ascii?Q?/Gqu8qsvBStN8n+kyC9QjG3XXTtO2hPrJVB0ngdaI8p9286v/NI90uMPS6uv?=
 =?us-ascii?Q?OcCEvWvwaMIXzRC/b41n/GgCupmO3VDca63cri5I+6TnrWDfTkfW8lz9yENn?=
 =?us-ascii?Q?yC3hrXdHp805ONmLUQaom+BBv5GB10bjGNe9pXwuE7Kb6H5YeSGLAYTvdH89?=
 =?us-ascii?Q?u67oh0Gd6L8dGTbxBDFiE1QF3Vls5H955vlmCG5Xuo8xUyACo9oate8wdFOs?=
 =?us-ascii?Q?7kPUc7B6nh4J7373GNWYAGPmkAyzZl1V+8wawJVuRiWod9UOKzMtM4s+mjnw?=
 =?us-ascii?Q?F7NBWKhLoYgdjp3UsUWf/hIouM7hgrKKDUCZTj7h8lKEpeErYgM29oitxayp?=
 =?us-ascii?Q?903Ziav2GvEYOVFLdV8TPFrUEmEao8kWaNEaw0uZxH0+T09HSXETT+ifgpRW?=
 =?us-ascii?Q?UZzKWYj6ePKbYmLFHeM+5DOYiIqsJ6XBBckNI6uICCCSjM4wNLQr5WmZJJr2?=
 =?us-ascii?Q?6BJhVhTx+AXBLYJ65gT6tPjFsACSiYOXJZtOfEb1sTYWJGpo+ivKCF56EB0X?=
 =?us-ascii?Q?yp8q469iBmQwdUbjnE90xx5rdJ8CkbBtrX6Ac0sNb4ztZFBnXPrlZrzsJR3q?=
 =?us-ascii?Q?hX/FwzDvOgY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e1WWBPJ3pqKMSzUfO6uRGNGCI1SeydyIp3TvcNEwJM7S8KKLUWtHjWBV4vyu?=
 =?us-ascii?Q?l3ERh/F/l3qFsE295MsvRUN2+S+FOHNF1CXZtW/mDUJLAAFqzqHlIrWEdX4W?=
 =?us-ascii?Q?rsI5JA5BDT3mXwCYYWcr6cLHIPOVfrf5UdG9BiSM+qZ/3Yk+q6XKgRl7VaTq?=
 =?us-ascii?Q?rs1yPV/nH9dzPZz/3LKFYI1BLRyys0/QtcMJCyCOL71Q3hNG2JGi3YtA0nqK?=
 =?us-ascii?Q?0jtOfnywMLo9yu2wcNZauyCbdHKbakasYbW6+MAbiZjtNNc8OuoJh/SLbO+k?=
 =?us-ascii?Q?ND1De6RiVicBbjssCDpS0Q3GwBiwLuIiviw6oeX/vlp2kUCncIJqOzICWqGY?=
 =?us-ascii?Q?Mo+pNg2kJrrLjHi/csJ5afDd+/t0gQiLYBFChbdNnYuvI0NBPu4RVlqEDkET?=
 =?us-ascii?Q?LKWpaGIWkLpmv1necYpDLUz6u6RF9penlJGKC3MpKFmX4Dnl9fcgXY87Yz+3?=
 =?us-ascii?Q?GEI6RFW0633WLaxMMfoLYYKLTnoaTrexxWuoWRQ2+UofCQ2PPqoOqM8q5x/y?=
 =?us-ascii?Q?FVH/rYkH45oIdmQH/9HwItVuWO65U6KJlvzwQWh8WYEaP+BFTusuY8FsUzUQ?=
 =?us-ascii?Q?lWhI8JahWCBYZSyQTfhQ9c017C7fJR5AMgQP+yHHy5LnrZYJVmJ21WRUXYzL?=
 =?us-ascii?Q?ZyY/4cxlibYlMBsPZKH9u0hFRk8+Q6Ba/Z4TvglP4ZIRE2kJNNZ4si+Pn/Vb?=
 =?us-ascii?Q?ONsqJ6wHKwqYSh5VrlTO1NqTeDvu5Kf9AUf8RfOMU8bEg+Hh+hYhfkMy+p27?=
 =?us-ascii?Q?4EuurZa8Yjg13LL0Eilbx4VKnxl2WblGNnCl/9fnxJ7XEotnv6LSW6OJbzvs?=
 =?us-ascii?Q?ppOPTm46IJSfPWRvzsUzr1SHmAWCd6sGUtu7rHe3DB8PabMIZWqFyxB558Ve?=
 =?us-ascii?Q?ai3idZbRJHk3hBGgJX71MsPTRidT9yIjLT/Ny72S/1oWqX68moFiuOyKZxgj?=
 =?us-ascii?Q?Y60y33A7JEyUy6fgBTNC/5UnIohMYNhm2kshI+aaCL9PzDEeQ1uw3zdSWdI9?=
 =?us-ascii?Q?tNg4xPThrZfOU0DP1yvpBKqq3KtovoFeu0s0nF/MdTp9gyF4RrNysvcltjBo?=
 =?us-ascii?Q?PSJdjEwzuJsxtn7PC0QcoYKtdU6+sDTGcfbm+4V9fRjvROFmD3MuUEHMoaZk?=
 =?us-ascii?Q?M5lYXhIOtGeZjCVR7PmBKta2edjQFvV8vGM9O+efaF7rgAOK0txFjeU6O5va?=
 =?us-ascii?Q?J95LARJa+9op2dg3Wt0Tv7KOakHI7jM3XLSbZkNSuF7zvmH9pjjUZkpkWnuE?=
 =?us-ascii?Q?U0/VwALVyjmqgmZvyBnIFrVnxWm1AZsMSXwbxdqXVvhW70PyLVe3fJFDNTci?=
 =?us-ascii?Q?it9CPj1HlNdkYkDw/6feikprc8GGievofxtQbCY1lE2OxEtTlpW8z7Chlrqt?=
 =?us-ascii?Q?WydBjFdcny1qTPa169/oyO2TevRcArgXKbvzzuJ/XRtQD1lO3EYanXYb0e5S?=
 =?us-ascii?Q?DvT7/07eDAQOlBWD7R7o22VWtHgQ8ZWc03oT5PAU/f9wOAt8F0oEDEZVfAab?=
 =?us-ascii?Q?L9UcNSjpknnkTVq27lISzFGOHIP9P/2RJkyVW5fww1A2No9f++Z+FI47cx1t?=
 =?us-ascii?Q?1Wu/dIzO12qL8Zma51FDforTs52ihH6l7LLwWPIi8MqIfDAsOb3uFVEqmWj/?=
 =?us-ascii?Q?GVBcxcRf6pI6lHrAiS2KsT4rt7vSLASbOMglB5m6ndkK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bce978c-f4b7-42aa-ca5a-08ddf6f814d8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 21:12:31.9715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1wmMiBKq82b78NVE203LwDTg0vwWfjErufAq1i4qR+HpSw4hGrRVsu9q6ydFeD1zzp0tJ3HDjHGBSQTqUBH9kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8296
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

Pass the DPCD sink/branch device descriptor along with the
is_branch/sink flag to intel_dp_get_dsc_sink_cap(). These will be used
by a follow up change to read out the branch device's DSC overall
throughput/line width capabilities and to detect a throughput/link-bpp
quirk.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 ++++++++-
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a963a58c87372..8cc123b0fd752 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4204,7 +4204,9 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
+			       const struct drm_dp_desc *desc, bool is_branch,
+			       struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 
@@ -4255,6 +4257,7 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
 					   connector);
 	else
 		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
+					  &intel_dp->desc, drm_dp_is_branch(intel_dp->dpcd),
 					  connector);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f90cfd1dbbd05..b379443e0211e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -12,6 +12,7 @@ enum intel_output_format;
 enum pipe;
 enum port;
 struct drm_connector_state;
+struct drm_dp_desc;
 struct drm_dp_vsc_sdp;
 struct drm_encoder;
 struct drm_modeset_acquire_ctx;
@@ -199,7 +200,9 @@ bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 				    bool dsc,
 				    struct link_config_limits *limits);
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
+			       const struct drm_dp_desc *desc, bool is_branch,
+			       struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 352f7ef29c281..f2266b2653046 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1658,6 +1658,7 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 					      struct intel_connector *connector)
 {
 	u8 dpcd_caps[DP_RECEIVER_CAP_SIZE];
+	struct drm_dp_desc desc;
 
 	if (!connector->dp.dsc_decompression_aux)
 		return;
@@ -1665,7 +1666,13 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd_caps) < 0)
 		return;
 
-	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], connector);
+	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux, &desc,
+			     drm_dp_is_branch(dpcd_caps)) < 0)
+		return;
+
+	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV],
+				  &desc, drm_dp_is_branch(dpcd_caps),
+				  connector);
 }
 
 static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
-- 
2.49.1

