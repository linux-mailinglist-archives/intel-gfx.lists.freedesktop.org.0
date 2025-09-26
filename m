Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA33BA52E3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 23:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FB310EAF3;
	Fri, 26 Sep 2025 21:13:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/RyoanF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D611D10EAF0;
 Fri, 26 Sep 2025 21:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758921203; x=1790457203;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=w+qRrm8jDXXwyhUu6GqSq4Bw3X+tu1IPBxTdmJgLrk8=;
 b=D/RyoanFFsuina98NgqDLo6WqeFAPlntDYKYyvfc9PuNz4Ydolh3wC/s
 tfeBiwoSZPH6CKCJhNqC2QHjuhV9sq2dbtkIF6DYdfb+E+OhASkDpTccS
 zWR+6QZ0UduGfuji56YZw5g8oIN/8F0r6ilRFu+60oMf6FXAd1qgG5n7k
 Bgoe4oPj+YpcxuePb4MPjM3+6emxpF3leMvg6jdKQ/+BtnHl6PeNWG40O
 /56r5QJPlD4B67esoUIKzoh4h+U3HQ+sewYXGCpsERcGHvYj0fpTgxKzV
 sF6RNxg062KzO/Fq7urmAyyJ7D4Ra3vBQaHQGpE566LejPomk2qtuh7ND g==;
X-CSE-ConnectionGUID: AptuxWCtSpax7bBm9V9Mew==
X-CSE-MsgGUID: voqnx65MTr6uQSPfh23nbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61310401"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61310401"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:22 -0700
X-CSE-ConnectionGUID: GUmQAYvwRt29pa4pIcZcpA==
X-CSE-MsgGUID: Gx4ZPB+pSIa6W0uz5E+gpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,296,1751266800"; d="scan'208";a="177763714"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 26 Sep 2025 14:13:21 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p0ATVbhnTa+Ftdo9cbm7Kqu55uRW0tVvv6f7zZ2XkxM+mpEftt47FEE4+77uejymyyiKKwGcQOl65NGqfwoFCVG1jOLiHGdsthMJ9zVbumA2pz991BxiCkSJ4l9FKOo+ZGIqEvd5LYQD/loj1Ep9KHEwkYedzQaZqOzI7Td0zaw/AFJd/KWyEfCawfzbwnIvjuLtmNHpS5IyhoTLlvQ89IQmBHXI0pL5VbJkq1i6CZPalkWsBa6yn/REUskz3wpYAEfq/aFquteug5MmFkOeaC1AASlTElWhQ8/H8bLtrVhDHL4boN6lYOGPa+9fCtrFBt8y1+S8sO8zBgLtufpNuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XFFOUkVaCmH7XE2UCwkwXoZwX4uANx1gZdLLfUNIvp8=;
 b=Uo0EunnMT++kHH5DD/fkdkIos692Wi5HdLiayrcFyI59Zlt9SN61o+LqsrTWHa1W0B+XFGZmc5327s1I+IrQODpyi8a0jOcZge4cGNV2uyI/z7oEd1XeBfmOQGsuoLwGQpw6c9fqDS5Gduvdr2Jxtjmy1I+d2EjZE+tX5JM8Eg7ILYaLkOmzvMfWYYhhS2gHsKtfyFY6CS/erc5dF2lAveuNaYNXqC+CWYR95Tor1SYqTXTDX4QBYCqHeiqbMJ4BKmivRCY9PtmtFq1gpuBr8QVsp0tCbchCI9SR+SCjiEFCTLSwuPs+BdJ2vecH3WBZv/o05sdttu15MTE6PXtEVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7392.namprd11.prod.outlook.com (2603:10b6:610:145::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Fri, 26 Sep
 2025 21:13:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 21:13:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v4 4/6] drm/i915/dp: Pass DPCD device descriptor to
 intel_dp_get_dsc_sink_cap()
Date: Sat, 27 Sep 2025 00:12:34 +0300
Message-ID: <20250926211236.474043-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250926211236.474043-1-imre.deak@intel.com>
References: <20250926211236.474043-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0119.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c6::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7392:EE_
X-MS-Office365-Filtering-Correlation-Id: ef6ad479-d180-47c1-a8cf-08ddfd4181ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?E/i/1mbHmsHO8LycHWPqs+rdkp5pV4mzug9PYQeAqLxka+p0ma3z8CxODbH8?=
 =?us-ascii?Q?8w8MZWQ0xRYrfIQ9IBaX00kOY63qCMRUJnTryCi8RO5BdAmelcg+OdTCgsW6?=
 =?us-ascii?Q?UUKciYl7iwUPr4XrOdDkWeL0kmK46CCyaSCGJS2byQYGQcjWWLD+4zVpb0ee?=
 =?us-ascii?Q?0TadNsgShINuO0TD9v8GLKtRU2I4gUBAuZzdSdD659AKaxmRRdp+IRN1rQSL?=
 =?us-ascii?Q?EqoeAtmuG8Qo+Of5IuOvA7jQIQAxseuZ/idziECwHzjhGa6MW2bqAZZ54rgE?=
 =?us-ascii?Q?gcEWBqmpRTzzYnWY+SaTdIikIj08OAEBrh9wE2WNixf6em++T5+sGNmMAN3B?=
 =?us-ascii?Q?3J108mlQ/4XK1TWdpMwlvllPN9Mh7/h6+lNTW9vrLK/H2l9TGgr1VprEp8Bs?=
 =?us-ascii?Q?3Rl3mXcDWPxpB4f5iRcalgfiF4Ts4gaMp/ehGrgDH6gyj6o84N5Nil4FxfkJ?=
 =?us-ascii?Q?mwVyEOmndBji2C0tWbPpv4xi+O3rXA4hQ5hWyli9mcvYp2BbVqkCNf/yTlZt?=
 =?us-ascii?Q?uxPampblGTs4DVS4VNnhUrWQjlh7PkHTioQ2tZdzoucoVfJDCfiOaQ+TASl5?=
 =?us-ascii?Q?DXnQFcuQb/pLt3apCTp+CXekyXEt02N/tQB5qvFjbsapFFdJN7wVBKGBODE7?=
 =?us-ascii?Q?lixuO3f8RunyDw3G2COLEsWzJIN0SpTxh1INo6vMvb5oMKSCw5hahxDExop6?=
 =?us-ascii?Q?ejbVUWehn2LNwq+KgT1Freddlv1B0OS7MHzUWraA5RFn/bwBNyikIv1exiZZ?=
 =?us-ascii?Q?Fu63Os87N3daD42+/GL9fQZBNE6erk1xAENEVKYh8UxdxBPiuhB0Y+Ux4xsp?=
 =?us-ascii?Q?ZtCgDnYlwyL6mUSfDfNdDaGIHC8O5T/JJOkq2D7PreetYtbn1BngQE/QElv3?=
 =?us-ascii?Q?dbCLXEJOt6mJdkNgrxj2010FwIB6grdVCOr8hkT8f+TlXxqpsVnBE9g+cBNV?=
 =?us-ascii?Q?AqtI39/8JNPfCb5WMJuxx2sUOPamM70naBfjk4Kni3qHM67GS1MDt6MFr9Mp?=
 =?us-ascii?Q?0AgAUu2pVnhZJV3wQSIuvJ4SyUAM8FxAUJ8yVOE1AjvwXACRj384HE3TgQfE?=
 =?us-ascii?Q?vrkjW3evsUlNzTFxui8E4yfB6MQKZFtxkfpNzi4lH3gWbP1FToulKwdaEHou?=
 =?us-ascii?Q?7Qy1uzG90cv/tXAgdhnw/ewJnS31ij79k5e49KC8T/yKoJh+iVmHD3GabwAc?=
 =?us-ascii?Q?M/vfmLz6pY8JZvMfZu75FvKwad6yMnRWjKLvpgeVVz+DVozklBxIH4TEEkdR?=
 =?us-ascii?Q?f9Jhylx1gv0zShgQnd68pAopFCR6oQR5etdRGEvfNCMaSnMTolywFNcl9ASJ?=
 =?us-ascii?Q?lpr7hLd12hAE27gUDhNK+9qfWC4BExJNmq6zYunv6u1F54oX8yHROdvVWMyz?=
 =?us-ascii?Q?iodaGaTCJkCB67/iCnY1tOKo3Wl6viT4tM+wsGuPFwQsvOydCE1fiHrNvOPm?=
 =?us-ascii?Q?FqP61p7WJL5GEwJly3lxHYBz/9K7YrlV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ye4/m1SSVKxEozqC5qCbN5HVHLZJ0Hp/IuxP/W3S93WL/RJlLxCmkoAGkM7Y?=
 =?us-ascii?Q?b/DulYa4zVArTnm5fBzybJgm0WkHWrQOqWBYiHNw3WatlReXJj8ILtQUWEUH?=
 =?us-ascii?Q?tNY3Pe74VI43UZCJ2GbGNHYA2fCpMzoQwinyQp8Fk5m6AZ7aemyYkLMiPWKX?=
 =?us-ascii?Q?AMogBxNt4dsue+4O7G6MvUQvALNqdhXX+QEXzfwmrFWb1b9q4fcPKoqHhgsA?=
 =?us-ascii?Q?vXDJ4+uGejt5SJx17bfCzWQjEMEUUvB3k6lvEa25BOPiN5IcG3GrENJcH+BF?=
 =?us-ascii?Q?0oTgMLJmANu4XgIfmIoI4g7qmBAxhbW4nq9gQNI82dOjT+/jg+OMRgH1cD89?=
 =?us-ascii?Q?fQWrXeq+SeSRj3RFJ9YX3hwq49P9aBX3Eur7sVpGwQLEBmQrUcL+rayUGKyi?=
 =?us-ascii?Q?KuDLzX0k96/nGu3ldOEpnYoPMpToHi8zM0/M0mbrMxhLZ+rd43SzdrS/z/io?=
 =?us-ascii?Q?dFDkRJCE5r9nxGbkNA5+0zhPIS3dK0zqOhAv9sUq1vK6JV/jSuWYwn13sPtc?=
 =?us-ascii?Q?5aY12WrnbS6yoitiZkMJc0bioTRVcawD/8gFubMZ77Z60vS0SqlAcGVB2IpH?=
 =?us-ascii?Q?hbfQ+L3XMIyjy5MIQcCk0GUmRLpwF3yhHXDyS/YuEGshzqFsXeUTlUz7bOho?=
 =?us-ascii?Q?X6g+LrryZAm0RNWbD6ea58zczuuS7YIprOeJe2akcD3+ZUCZzYUU6EBQ6QI4?=
 =?us-ascii?Q?aSTd8rUEoAJ7cgdkLKK5wH5oxuplnehV98FC1H/3jQkEIyQ6oAMnhGt4o8Cj?=
 =?us-ascii?Q?K2X5dkpIkcgHwOjY0LdsPk6juSo93TqLTWrQzsDKpRSAbzgA6UYI+aPozLpt?=
 =?us-ascii?Q?dyEvKT88LNBJJ1ZiVWo2TNgEP6RWHb+nFNkJlchZuNKsdbHgY0EQ/dnju6mL?=
 =?us-ascii?Q?0c+9uASzPVcqQ+rbKcZ76Jd0Z8Mix9JDtDPJZ2Nd58SDO4Vl7Dx2QujEHZYD?=
 =?us-ascii?Q?54pyMjwsuTnQqC3uvKnVbDu1iBqKhlxSSWJ1CCBw3C/qFTl32NGhchSTJJvM?=
 =?us-ascii?Q?66ObI6a00wOS95j0HDIkywzKz8NH5rzqgudC8kDkfaRsir7Q7E3DQXmyclDm?=
 =?us-ascii?Q?X+BYgP1O60zYbILcG4kv2snFHqu0gz4wygp903OlU2KdwwZY7Er9KIPMbMNF?=
 =?us-ascii?Q?tRF8GZYrHT0iG52bN5cIp8qK/kv2i4UImfyfNOHt2j6T9shDaWvrubAcIbhq?=
 =?us-ascii?Q?a4wd8h9xg+Ki3/mCz294zG/tqgWeH2B3ESmsfJtywYG1Wb6lKz8GDYEX4dEO?=
 =?us-ascii?Q?JNvZBnz6tAgyV9LVUk3qSOSky/Dad0P0GbWD/Otkhn3rImggFv+3SltqA8ut?=
 =?us-ascii?Q?reYdC/kCocaxlbZ19JK/9tdPG6g7Ke0oIyjW99Q7tQ9BGNYNvoJ/8pbUyaB2?=
 =?us-ascii?Q?te9kuH+9yMe4Q/SjrRM5X4XJX6JBkE0EkHBwyfAfhBp3qMuPbC1GxUZI+S0m?=
 =?us-ascii?Q?rxD6OQ1r29ysoozdiP9/G2eQnv7EPl3afQH5PvYsqt8WdGhkMLoUuXmvQg/9?=
 =?us-ascii?Q?E0wAyUUhIOIx+ftb1h7p+XkH9qQur/ihK5UTu3/PjRpIjcOtO0/DnwdEPrdc?=
 =?us-ascii?Q?aSEgqiq3qSZ0sKM72WNgx7yppmV0usnglSk0OEWxxkXJEjsgrF9YJgfaZwv5?=
 =?us-ascii?Q?ExknKwpuqUaFVqPIiDG9bQw2QOfh9lOEnt220BVJ27ov?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef6ad479-d180-47c1-a8cf-08ddfd4181ad
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 21:13:14.9591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KyV2YIoDox5z4gtpuBpVAkGNl7xr31e1gph0KqAIvC3/Ekzd/i8XnUowX5ShIYyGvD+IK6lafjV3FWPqNzNy3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7392
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
index 491a804c1f6a0..2dcc20bcfa0ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4180,7 +4180,9 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
+			       const struct drm_dp_desc *desc, bool is_branch,
+			       struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 
@@ -4231,6 +4233,7 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
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

