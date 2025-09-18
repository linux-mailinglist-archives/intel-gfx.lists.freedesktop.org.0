Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A31EAB8708F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8044B10E914;
	Thu, 18 Sep 2025 21:12:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j8Sf6QHe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E7610E90F;
 Thu, 18 Sep 2025 21:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758229958; x=1789765958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=t0ye6sVbPIHev0QOcmsJ+2kvOUD+lNcd8mAE9hQY8aQ=;
 b=j8Sf6QHeGuQ/KghNZGWygeUVryxGC2jzU4jvASyICZ6QL82dwMJ+ele5
 GcSNKlb7RWZNBF7SVPZH6PoMxCJLbC1vkWw/Vcz6ErDlRxlOSXSL/jc28
 BLirEcpq83zT+mRSXKqzIDPvR6zSBzWBXXUiSR6EuRYE57Jnj7G9s16Ct
 UII1C2NAaeBO0wEqs9/0A2qDVn58BxVlc7qkMz2SXEsgP+6IKyrtZ6QSp
 9dhAzIYBabtY5DZ9fQcJlWePwQuPioX3Qnm542tOm/u4+JPFd3Sfjkhxc
 38MKNtI2FahI5r7UDFPkYWJi6qdq1cdjktYqRD3uB/GB2YyCeJwO0vjLB Q==;
X-CSE-ConnectionGUID: C1dPgcxJScS9F55ZqDK7Zg==
X-CSE-MsgGUID: f514MeW4QjqF4gC2emZQpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64378911"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64378911"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:38 -0700
X-CSE-ConnectionGUID: cewV0LWWR7KE60HL1uHXrQ==
X-CSE-MsgGUID: boAVzf+mQK64i3T2WCc8LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="179657716"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 14:12:37 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dNr9P6o20d2lKjtXMtzlGJAmcKd/BUTyBNbesiAkPt0kflEPx4WnM1RDGYPaFmA4mBsZ4yohfYutYfBt9Ph2RAhqeglR7XZY2LjTUlNXbHIaB3EYqVWpLjHYHX4Nxo7xO+GsLX/FxFhZSTKKGEg7/uZQLzZ4vqTA2m1UvRu9z0UPcQfEpDVTrV9UuKT3x8E3K++3w1CZPUSjtR+Un4wLo1sHwdXPfDBZ9ntmrq3ijCHxO62l31CR7pnvmnu5svHxS1lGXBUQPECRIXDwE2k5VuSAmNPobGiJH9LRW6TSUBoq1nu5a7jJMhfXfihc/z1meRXXWQ7RSTMwa9gULITHcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAigxdXobfdqre2UsKst6Y/YHhNE6oHmhTRh6hgp7ks=;
 b=oUD6RxcPThlMoxh0I6m1NqgY1i7vGTuuliStas2InTZn7r3ZQ9SJuNGhv9u06C76yq5ajW0YJQtBblZAJzM9OQWDsUrVvCOroG7HMrL0g2f5LeWJGKSD0n95wCuEfyfxhX8nfW4yQxfRXqCw0ZFUQfOoIdwbMeDHKM3wcY5uGQKNgKi/7Lp8UUEVGqRdUZCKIWCVnNQLv7ctzg184ud7iWLqfXSeCkl7FR7/pPGu0bQqW0JWAbYgmLsDL0b5msE0IVdnsYkYfbt4xGn+Oq3eAKIaNkawurRciaeC7bxe5QxdVpErUWU3wBWeGhAUXzKl39KJImencUqnYwWnd9HQxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5176.namprd11.prod.outlook.com (2603:10b6:510:3f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 21:12:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 21:12:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vidya Srinivas <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: [PATCH 5/5] drm/i915/dp: Handle Synaptics DSC throughput link-bpp
 quirk
Date: Fri, 19 Sep 2025 00:12:23 +0300
Message-ID: <20250918211223.209674-6-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5176:EE_
X-MS-Office365-Filtering-Correlation-Id: 68ec8bcd-8ad8-49e0-41c2-08ddf6f81678
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wC+rUk0jj8H3BtDa/6j3abRfbMk1gG7KFL6tnNz7msXi+o0MhiIfnxXoKPze?=
 =?us-ascii?Q?nn9LTGgFW5hnlvV2iKpQ9XNdeGFFo/Lxe2xCcmntM+i6Mb1jZIk9Izt/Ed90?=
 =?us-ascii?Q?C9rNlmxLoLpF4/DygG0hJfQ9AQXuGt3D90bFS/FmYBdxkG3UoztehvluIBRL?=
 =?us-ascii?Q?FzN4CZytdcmXEC8LDPnfgjKpvognWBjYCl1W/EFZDA7ogK2SCvTbq8mBYneq?=
 =?us-ascii?Q?KeU3gOqDLO0qMhn5qgHMIbPygPT0VyDq2jKv1BCzWJpYPsbWqnl6GedQNHs+?=
 =?us-ascii?Q?saFD2xiiDApzT1eBkTBkpMXgTJlw0Pw4aLJ3isuGDBCYVDJ58GT4q1RCE5xq?=
 =?us-ascii?Q?mya5n2Pu7zIh6eKTD6L9N917Hd3orLUwMOJB5wNl6it/XMSX5+1qvYM0pvup?=
 =?us-ascii?Q?OIpU0DJLfI3+u4YsYJkLQyWRatKQK7cWwGYGVGRHYglBn1dciJRTKSNJFUZC?=
 =?us-ascii?Q?N2FlKzhxrTAVTFsLJlcFFAaJG9SakDskmgiHhu+haEAeift4N0sKHjh8klEG?=
 =?us-ascii?Q?N07e0B7rGf0RYoauwGbVNi9QNKkcEed5dFF8Jt+cxt6i/aHk2Q0WCGqfSpZ/?=
 =?us-ascii?Q?aqRqRMqP+J7sLKH9z8949JspRspdONdK6d13IWOxSU2dYtfjx37g6VTnCfUy?=
 =?us-ascii?Q?I2ohm6i6B7UNgcX+khkh+O4eG2j+nyPn7+ZGnsPwq/w4AF6HGYJOyjatCrYB?=
 =?us-ascii?Q?q2O94RKlBkyk8WK+JndT/u9blu7dmJrsnO5q8CwxwV9P3yGaTqvsdhmpTAjm?=
 =?us-ascii?Q?ZGZITp0iq2k0uAldI5MtM6PoawQhJCBPVB2POfZvNIA+vPj4UruCznRGPFwn?=
 =?us-ascii?Q?gqpDNhwQLVALOXdKjPUjVHF1huYJ+EAFQTL2NiOY3rWS2GCDO1xDOMqi5V77?=
 =?us-ascii?Q?H7BxpIaUWHJBFYWzUnWeYg1kuo2L6BPYsm3TpvDOdLbGcnS5k/Xn1cD/LL5y?=
 =?us-ascii?Q?TvTf8BhzCmcFxqMEpKScj9swF4O5n5DhAWF5Y/Vd9icjjsfZoWSQuO5Bo/+/?=
 =?us-ascii?Q?0R8eFg/kt83aJq+CygOVbkOi8xL/OI85UK+rHJAMthBy2ZuOCJ8bXWfKEFGD?=
 =?us-ascii?Q?EUIKbbUrLDGlX0nwKVvvD3MKcKKU/tuKkYmcQgYqXR5RJvAfC030fB1f9zYz?=
 =?us-ascii?Q?WSyuALd/zCIKmCSKxrO4U1/ucw0uMm80zqIsfPmyzRb/GHpeyEWcFjaQU9kp?=
 =?us-ascii?Q?OvGywDjt8J8vAck1n8EclHUa2zfW+1i4PTWyzxJXBISWsLK7EdT+BfHlc6uw?=
 =?us-ascii?Q?8o2Dt9mB1ficaeWqxwSRZY57InIE0ygbzx4apbe6+o70frX6SlJMpP65J99c?=
 =?us-ascii?Q?vxwq5XFmQOs6LrUjXxZhraI9n9oj1rbLOd/CztoZq5SjaE46QpHisglao14A?=
 =?us-ascii?Q?do/mXdsmVg7v9nivevU6Wo5FHeEPnIEhCJifE1penwik1OQHtrFfCcb+e64N?=
 =?us-ascii?Q?F7ttqxd8weU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IcWVi3e5u165C36xnvONAT/0FlV+Wo6WPDb9KHob0unJaenuflHtDl8S4B8T?=
 =?us-ascii?Q?3X6nfykrBpYhhLXb4kaqh7eK1GY6TYOdo4jfoQd+7C3/6FEGrQ8L4QWAYpLP?=
 =?us-ascii?Q?YoUR2Z4HFq1DvxIQljsUsUpHoAXOpmc92+2MmgYjqEStSbgQeWXIUWPeNdwL?=
 =?us-ascii?Q?bUW0hQ58MuO08nPujhjlZys27VbuXK8/ZBnWndQKjYszHSmjVBf2WwxRq8ix?=
 =?us-ascii?Q?XONR59o6msdEltRm9VuRcORrBv8TSqia387gkREzbbm4U4lc4Q1fiJk4u4wK?=
 =?us-ascii?Q?V9TFyqMwtUeiNA94g/pogP/eOtnufAGtRrZrXl9KXqyEK3b/9LFNxt14F27L?=
 =?us-ascii?Q?GZn+0wpKAHO2KLmXggQBpBxmWeFxgmTRFGzutYt8xU5AvUibKnrnLpLKOW7F?=
 =?us-ascii?Q?lVcy/okQTE9v6CWkVx7tpHKaeNiRE4lLWBVp7sBdLw4IABVNRfP4aJgjXXDi?=
 =?us-ascii?Q?+0uQSXrDIEF0vbLfsBO2fCAl+UwwL2//Z23UlxcioXG9op7VmfVAnw5ivFZf?=
 =?us-ascii?Q?sYTyquxArgXvyx3PkHxonymjJyajffKA5od7Ue2H3UZ/RoXNruK9y35sZe2u?=
 =?us-ascii?Q?UMXSjlCcgbXz0boz10WFNYTpJcKewr3cXR6vI24RWSVrRVNZHCIsbdb0Cpue?=
 =?us-ascii?Q?4dDMT7Ot7AxuWubgyJdJ4BeNvF4oBgkJRUtB9sfNW+iRnixtYO7Ms13LRe1y?=
 =?us-ascii?Q?2W3UX8PLvqFlhQprEjJkYEVk7gph0noSRAv/xlEzBBabHrFWVIZ82Xn2VlIu?=
 =?us-ascii?Q?UTGs3JoXBb7ykNR1kvyHrmAMVx2kEA6LWRqhKW3Fz/tkTygrj6YT4tVwu1jc?=
 =?us-ascii?Q?vt5mxEPb3EZznN85jbUox0UzLtZwwg1Lhh2jjX94tJ0p9v+51pQK48sNhb+n?=
 =?us-ascii?Q?t8bm4GXHKig/NIoEbxcDWlEEVHSkPixyYsLuycHP8L/w93z9/pJLNy3NX8d6?=
 =?us-ascii?Q?Yx4F1XAzG74ZGo9PiDMmhzlaaThJS0vq15O5Op/E2wzcHwgGK41EoQkLrCI5?=
 =?us-ascii?Q?k2d1GyYoRpeQla8UJQ8yopL3rGNNP0aR6d7N2KuvJZIbmRh6Y0GsvptRIU/Q?=
 =?us-ascii?Q?fvPQrP3VgVPqjwzRTAPjHSyVRJCjs7djtkJDxzCtOIN0BtxS+KXItmOBomJn?=
 =?us-ascii?Q?SH4CFmy/6fiwzYgjfTZePWqJRL3rwRDJjS3cl4pTlsLcWHEGLUTRE+b6akBU?=
 =?us-ascii?Q?tq12DbPMaf1j4au2fLvSpN+i05fSGDpPKWDbOnXd6aQc5a2NGiGsisZwbFZ0?=
 =?us-ascii?Q?bjVIi4QSEYcwB7JNBbP2ppxgGOSIQFOos1VIVmzdrEMaf+mU+aIC7D2sqH/9?=
 =?us-ascii?Q?t36Uwp5DLEJsJsMuTE98rX9oPYWhaSHVvZLk0bC+NIDR6f4LRo5uZPDUNT/n?=
 =?us-ascii?Q?oua8RF+vWPA5obdSN9tFNmAZU/npm11dawh/g71tNLwfIeylFaPEdFwMjtsk?=
 =?us-ascii?Q?hjiPInPXCwHRHxwu71GP8ohFHqW03j0TVH6m1Bugff/uapGRrQSi5g4pFn5x?=
 =?us-ascii?Q?9GEb2gXFpB/esLex61aV6jw+DMesv4cDCeqmhFgYte2Fuft/+hGG/58APcyh?=
 =?us-ascii?Q?l/hIxvgQ1WltQ4SMQRJuFjin03X+2OCR+UUkDoTo8Kb/HrYrP7BIe7+hgeKt?=
 =?us-ascii?Q?KJfzlpWVoASeqk1NIvMD+WB2BGIi7tG8Qi9Mhk+Xz+ec?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68ec8bcd-8ad8-49e0-41c2-08ddf6f81678
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 21:12:34.7015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eDa4v0pSenXhPbKfeVzifzM3FOx/+QavVeKnTubZJATPpD7jiPYjjOJfRiObrqv+bawpk0B60IUckgtMxTHRhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5176
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

Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
value for Synaptics Panamera branch devices, working around a
blank/unstable output issue observed on docking stations containing
these branch devices, when using a mode with a high pixel clock and a
high compressed link-bpp value.

For now use the same mode clock limit for RGB/YUV444 and YUV422/420
output modes. This may result in limiting the link-bpp value for a
YUV422/420 output mode already at a lower than required mode clock.

Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reported-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 57 +++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 73bdafae604f8..aff63bf0f2294 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -551,6 +551,7 @@ struct intel_connector {
 		u8 fec_capability;
 
 		u8 dsc_hblank_expansion_quirk:1;
+		u8 dsc_throughput_quirk:1;
 		u8 dsc_decompression_enabled:1;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dd082d2fcc968..7cc9364f9af88 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2509,6 +2509,56 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static void
+adjust_limits_for_dsc_throughput_quirk(const struct intel_connector *connector,
+				       const struct intel_crtc_state *crtc_state,
+				       struct link_config_limits *limits)
+{
+	struct intel_display *display = to_intel_display(connector);
+	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int max_bpp_x16;
+
+	if (!connector->dp.dsc_throughput_quirk)
+		return;
+
+	/*
+	 * Synaptics Panamera branch devices have a problem decompressing a
+	 * stream with a compressed link-bpp higher than 12, if the pixel
+	 * clock is higher than ~50 % of the maximum overall throughput
+	 * reported by the branch device. Work around this by limiting the
+	 * maximum link bpp for such pixel clocks.
+	 *
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output, after determining the pixel clock limit for
+	 * YUV modes. For now use the smaller of the throughput values, which
+	 * may result in limiting the link-bpp value already at a lower than
+	 * required mode clock in case of native YUV422/420 output formats.
+	 * The RGB/YUV444 throughput value should be always either equal or
+	 * smaller than the YUV422/420 value, but let's not depend on this
+	 * assumption.
+	 */
+	if (adjusted_mode->crtc_clock <
+	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
+		return;
+
+	max_bpp_x16 = clamp(fxp_q4_from_int(12),
+			    limits->link.min_bpp_x16, limits->link.max_bpp_x16);
+
+	if (max_bpp_x16 >= limits->link.max_bpp_x16)
+		return;
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+		    crtc->base.base.id, crtc->base.name,
+		    connector->base.base.id, connector->base.name,
+		    FXP_Q4_ARGS(max_bpp_x16));
+
+	limits->link.max_bpp_x16 = max_bpp_x16;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2558,6 +2608,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
+	adjust_limits_for_dsc_throughput_quirk(connector, crtc_state, limits);
+
 	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
@@ -4272,6 +4324,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	connector->dp.fec_capability = 0;
 
 	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+	connector->dp.dsc_throughput_quirk = false;
 
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
@@ -4292,6 +4345,10 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 		return;
 
 	init_dsc_overall_throughput_limits(connector, is_branch);
+
+	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
+	    desc->ident.hw_rev == 0x10)
+		connector->dp.dsc_throughput_quirk = true;
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
-- 
2.49.1

