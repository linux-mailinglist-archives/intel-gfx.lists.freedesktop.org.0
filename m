Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059CFAB1BE8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9489E10E2C5;
	Fri,  9 May 2025 18:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMzGMAr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652E810E2C5;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BYwfYg4ClTt7/H0ghDYcE1Lb+ZBjygW6SatrBmTBxYU=;
 b=BMzGMAr4BCEQIFPxPY/9mG19k0/JuqX7ehIOGAMbHaxAh0FONb6lVy+2
 1N/C+fySUFrt9UvSxzpVcVxohohCQkevm7CDWVSUHp4rdfRf5PzAQgHZO
 CyfiCH4blNi+lerbyT24Bu+Q9Fax5ZZ717MwBYZp1zmvDTEgonqq3Yh4Z
 kpj3Kholn02dRyE8WlqkKeAzbf+GRB6Mfu5PHmTmrvG2Dq9qsnaWzPcyr
 fLGQu06bas9BdZZIKGBZZLn1Js/42pyy/dl2xuq/5CBGrLPbOluWoXt9a
 HAsg0pAoVb5wDan9swK+iU2PoTTlTfDbLp1Q9v0M4eyukYHKhpUZW1Y/n w==;
X-CSE-ConnectionGUID: 07bal65cQseqshXcghABTQ==
X-CSE-MsgGUID: QnNMJxurTLqIh2FbrFb5CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464885"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464885"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:52 -0700
X-CSE-ConnectionGUID: EqQaBHgfS52A1NMMOpgumg==
X-CSE-MsgGUID: 2HAZJiLrRsiLdMGIZv+cBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564170"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l46HboZC8ZqJnsztSyUJLgID4om0hZMYR57oQWhCrxLIqZOdXMIQpwcGIlQyTsN2UkmEEIvYHN+Jy3TVjkXH6NUtpCIJaMyGaZaOwf0rXvTP3CKRxNM/jUJWF5qTHyQ0VaeHgTcJqfT/5tWfUceg1khmAKt0rV8wCGQxnd3TCtmKrsReFXRw8Q9LWi5LhQ/AFr7l2OCQtxH9rdqchWa3KeagRWl0mzs2gvoLTZsL+BraMhmhBDVPcIRoSbo8BRbthGYPe9xfJihu8WB7CTT8GZtnz/uWHzUJhmukfoJ0zJQlSqr8VAyvkFAv5p6VKBk1HdH3UIeKRKXIf0sPG4Q/Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5XJscp4HKxxe3QGxnJb3fhfUO2VWgwfN+4orl/Gjkc=;
 b=S2pBhkZtgtTAm+jzOvmUQOz6TQKg1iqiAtXcIBHuZ4m7XBxDBITuophQrFv96z4Jofa45ARwInZmiW+AMxbHVnR9IY7SXezrrCcod/Xtd39P01gcs5n5EqhfpE9h3JEGtqSmQmzhUBf8mujjH0/C77SaaFLOUru7bglNvWx2/7c3VpXOxc0+bcm4OM7GAXTbDc2rQhhR2XIsmL/kofZKvEvTx9xBLcvTDR5Sr9rFEg2p4zc6Q11Q1nkB4gI24CrAW8+VNmcQUfsqCGb3yBTlyi7yED1RaxU7uZJTdhGxBC1g/dCL7SWaHGvNrF8eSvsBDVImnJuJ0rBhuRXSrYkfbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 05/12] drm/i915/dp_mst: Check BW limit on the local MST
 link early
Date: Fri, 9 May 2025 21:03:32 +0300
Message-ID: <20250509180340.554867-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: d81945a1-7107-44f1-3427-08dd8f23d5f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UCKIhrNBwY4eak1DUQYGmqykWFmqL5opPV+UyKAklt1HH8S22+kV5aLL72ev?=
 =?us-ascii?Q?SCALr7uZGcLm7eQ0vq8lZBhTFzoYSBgQ4sjYobMLeKLWregYXJCkQQ95VPsU?=
 =?us-ascii?Q?12QkOCWkHqEYG6npSCBmvJHTscdTduSMW9fpwEkuLgDHxPjoxFKx4QrApCIP?=
 =?us-ascii?Q?AX1KwtVzBejsxatppRqksaYFG8etcaKOsvDAGgEgb098InAr8NvA28JhqBCX?=
 =?us-ascii?Q?Zq4xqoRH0YZH6ciJc5iaknL6woValRnDWMVXI5chYeQlJQbLUpH9ZVF/ZuMk?=
 =?us-ascii?Q?Gr6Wz8eJOf+fTgJslZRtUGNXoIoYlDcMLh/GF8HgU00dVndIswMj5Bw6d4ha?=
 =?us-ascii?Q?+MBMQGczczzz1sYi/06lCoYv8BigbjLbzDFulAoqk0JCtfRsb/CZDD3PlV1f?=
 =?us-ascii?Q?WVuwkZpOCzpnpoAANiBtkRZBrtEEefW3h9D66MQsmxWA22/UwTV2Hk2K9uci?=
 =?us-ascii?Q?PMDRMzY846hkvOzLrJamCkcaWYx/+9f11EQS5V/k73rIyNoI3jwedQzWh2xI?=
 =?us-ascii?Q?JpaT1TYE2Y9eoO8ipEAfyF/K7ygw8qCup7QzUlcMMF0/9WV95pTl73KRqxgX?=
 =?us-ascii?Q?fweyi4BWVmQFIYXbBqD5FzBEF2d+lIp31uckjsRO3iOGmvDJFFBqWJu0CWWw?=
 =?us-ascii?Q?V03YknCo6A+NRF9JDRiOvXdnZTX6chQkFy5BideDddas5Ah5aekuuGfRhlK0?=
 =?us-ascii?Q?holDkKbdhNPr+v9SAz/U15QokrRRqGBN0zZvs0s6rj0tZq0yxPC0sgrJHddI?=
 =?us-ascii?Q?hp+k1kAwkORqzDc2HkbD2ukj2yRG8ZWoCEGC2CdKSFGyeSiRVHNJYHt6QUOj?=
 =?us-ascii?Q?Q1uOiZq3VEDcJc61H/KHgQP5jcSMGqDUtr7azZDtKLpnOf7HehhYX5FBK5GZ?=
 =?us-ascii?Q?M51mteEpsjIo8xpeLi+h5N+A4ghCBnEUCPtljQi1sbrDC3iPOwIXpVNwEwSk?=
 =?us-ascii?Q?Cn+Jpojyu9wpM3cv9GU4Jo2SR1UajJH7F7/7MtCAKnql+jc/nZeT/XNoR3E1?=
 =?us-ascii?Q?mbNJAZuq5PAdPO4m68Xtanvt49CEzlMNWvpasjTvwOvPGmvEnFdqsLlFUa4W?=
 =?us-ascii?Q?LpQgspdgUHB6wQiG1S9b/hORRaxzZdv+40gk3DgX7ky6geFZIw2Zf4jbXZ6B?=
 =?us-ascii?Q?rBQsornmwmiv/wrlQ0N6H6RgemPX7Uv3ARVfTa/mo3I6/N8YWzbNhZADQOl9?=
 =?us-ascii?Q?VZhV4bGnmrHgeqY8TkrjxwAP7y0/PuIjN/kEjokHFmbVJsv9kV5By9YVphwV?=
 =?us-ascii?Q?NSMkjoglyzZsQ7aa3+Jjf1X2FMAGdG0L6Vt8Kx2RnZyRDJVFfthXw53qlQcF?=
 =?us-ascii?Q?HmHk4X1b3c5bFnj81rdJn8a/uX5BnAIkwXv/AxHvhIi+bIixkJx4Uk6COPaO?=
 =?us-ascii?Q?WHxt6Jc+hDPPiiyM7qLYvL3JDHSZ7BajMgk+Q/Swmw8+8zpmc8FqaVDCiyVK?=
 =?us-ascii?Q?fbchDFXXR4g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MO/M3UuO5uSg2YLV1vI0euIGKao7XMRDxGe85pYRQVZAqvrfYfuRbUnvaKLK?=
 =?us-ascii?Q?IXmPn5uvM4BJSZ3dYZTos7pDg09Az7e3WosLgwsWuA60Fm6QBhKohZwFHwyP?=
 =?us-ascii?Q?B3dUMVzyfnKDCijr14TsvO6gKXx5LjICH2XpShx0DGjj3lbJUB/V2MZYMc7O?=
 =?us-ascii?Q?MHfzkQoHwd/nkwGx3oIjrcMz1W85uJ6nQ6lJQTjPFfgxHoDUrduAT8GAIukL?=
 =?us-ascii?Q?4lEeygmi9Kr626Cgfdr9do2ZuqiEmC0Dx7vZXyUG/xVTiVSC5mno8rJ6jptb?=
 =?us-ascii?Q?+WM4OCLnafZ5HQGxg+OwoaIP0XHHLXfw2pbjtsOD5H21G0zjtVbqnZtipVwX?=
 =?us-ascii?Q?YE3RLqwEyI8z04bKHB18tOfjD8O6jwgwV5g9KbWB1TyG8pjbwSsLZYOXq/yX?=
 =?us-ascii?Q?Zw247BoZAgDSJd7qlTQ3n9nG2hDZ0CjPJvuvKzdk5TF7bGE/SxB1ogtI4zvw?=
 =?us-ascii?Q?4+M7YsnhI4E9HCnsFWi+1fH0rOdb4KVdIAT+YuuujVy4HdsJu2saS7k5vrFn?=
 =?us-ascii?Q?q+MRoVz6gR2hpps+/TDWpbH+EGAtqLN1Sgfy0srG69+yTcBBOMBogKbTK+xx?=
 =?us-ascii?Q?OchHrjzPVVr7zqKbB/fTaO5clqywNoCoefCVO7N9TS7xquISfLgDDkEbBg2d?=
 =?us-ascii?Q?oBE7xojlZvvdNvVB8jqVd503yN+DpQ9LDuG6FnJ4rn0yEtchsffGQSk14YX4?=
 =?us-ascii?Q?dv5wox8jAI2KIbJl1/US+FhzVzTAv6UzreJINlv7O4/TeJe5+CYtvP9oYc/Z?=
 =?us-ascii?Q?BrN4701mZuiglhBZU2LVMDgox0aiqSAJfnp7J3MbvKTpcX8VF5PC54YsNm0m?=
 =?us-ascii?Q?Mai1XTkuUetk+ySkgHJUJajpo4RuNYw5xwhvOWvODFy7QR1MkMCA6hjcEsO1?=
 =?us-ascii?Q?t1eiHiNC4oTmm73FK0Pb/7KIMTDlXLktt70OUMLLTzdqJNqsCzMDdoAQAxDT?=
 =?us-ascii?Q?dbNQxjhcLmXsd4G/43amMqQinfjHHYRPaWkDioG32FvQpHgXPaORGjw0CyOh?=
 =?us-ascii?Q?2bVtTdxG3HG7w9TfhyvMzx541Sg04yo4ZO2q6UNFCxVL0alrxpC8oxirIYFm?=
 =?us-ascii?Q?yFQBGB0EVBWDXAzKSJufn+B0rKvcQwZkg6iFNSMysTCRQhUT5unR0TxwDktr?=
 =?us-ascii?Q?4WfOpRnpSddEDkqmvSJJvkjhTdLGGz7R4yZd+SbEP76BMVgF0f1Z2opg1pW6?=
 =?us-ascii?Q?ble90orTQRZzGeWcEKQj5NX7W8Az0PTYlrH15q4bo8wLA8L8NieEpNXo++FB?=
 =?us-ascii?Q?oVVqgaPwG9bLHFlBuqHhhD3iibFn44Xs+VfHWLAR3FxzDfcKGaSdyMX8YnOl?=
 =?us-ascii?Q?XQzGs5Q7YkZBM8ggUCuk0TJZl2zr/iTDt3FPVHn9f2skq9CWILa71tBdX/fR?=
 =?us-ascii?Q?nQxAUpA2hI2rN0s5zSV/jVHKmDptlZgktI4pAmrOqnOe0UrAgN/Muredjh30?=
 =?us-ascii?Q?sYIYa44ZRrSKDqk6m5UK44eazAU/xw9+4TYnXSLyPVOc1pFIOOGlNmUZH1eu?=
 =?us-ascii?Q?XwSKqJBWEFetLVw+i3mBmOHesSFIclXAkqfI1oXN9l3Pv8kn+A6EECOEB1rE?=
 =?us-ascii?Q?9vpknFYexSM2Bh3N6p4TjxhcWcqUCwV/EeTuJwuj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d81945a1-7107-44f1-3427-08dd8f23d5f1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:43.4388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OzmKjqz5HgmP5mSISMVUTHNkFuHdl+VJ2tB49mY4a+WJPwshBNydnL1enUo73K+7dZAiZsZzmDRVZOUxTDJE9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

Check the BW requirement of a selected compressed bpp against the total
MST link BW early. This didn't cause a problem, since all the BW limits
within the MST topology are checked during the later MST topology BW
check. However it doesn't make sense to defer the total link BW check,
since for resolving a BW limit issue due to this later also (a) requires
selecting a pipe to reduce its bpp, ending up reducing the bpp for
another pipe, which is not ideal (b) requires recomputing the state for
all CRTC/stream's in the topology which may slow down the commit
considerably (especially when using fractional bpps).

Based on the above, check a stream bpp's BW requirement against the MST
link's total BW early.

Ideally drm_dp_atomic_find_time_slots() should check internally the
corresponding PBN/TU slot BW against the total link BW, returning an
error if the check fails, however that change would also affect other
drivers, so leaving this for a follow-up.

v2: Rephrase description of pipe selection/bpp reduction in commit
    message. (Ankit)

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4345107aa3e81..ff88888e4b293 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -390,6 +390,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst.mgr,
 							      connector->mst.port,
 							      dfixed_trunc(pbn));
+
+			/* TODO: Check this already in drm_dp_atomic_find_time_slots(). */
+			if (slots > mst_state->total_avail_slots)
+				slots = -EINVAL;
 		} else {
 			/* Same as above for remote_tu */
 			crtc_state->dp_m_n.tu = ALIGN(crtc_state->dp_m_n.tu,
-- 
2.44.2

