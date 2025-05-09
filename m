Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFFCAB1BF0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBDB10EAE4;
	Fri,  9 May 2025 18:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="giwl3daI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B026C10E125;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=IVua9iO1UXaMN2e6+3I0RKZRVTrB1i8TApY35l6GS+I=;
 b=giwl3daIXjgWWa6ehMrQChyELE+hEbw506BiCLsC69z/dhvn2ELTmYL5
 podhL5reoxO+dQ9iFPq+vzjgb8RE2k0fy0+0ZSDFSA0T2GYzv1TQdIv0O
 0nnJWSjNHtI3djRWrD9dQvKHcKRdmd5EsCsD9USx5dDoBjTc8J9Los/o8
 2oJQlavXEOVhJnojTGCnL+nx8D5724t7Bb2679XB5NSal7AQhKMDDyv5t
 ABWfFLoV/i7kwbUTtuEA2+6IIKx0Ia5quE5XJlinI0B3g1+LQmynvicPt
 W1yL1jD/GUPcWCIeEFbpSbzYREK4blZCG10NpUdf8vzoCxm/BXTfuDVOC Q==;
X-CSE-ConnectionGUID: wU1yJoVfTpW4bNoXzm6yow==
X-CSE-MsgGUID: Nek9BDw6RXSY+nEuZ+1mdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48523168"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48523168"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:59 -0700
X-CSE-ConnectionGUID: pzLJ9wWOSAeF/GVQybLEgQ==
X-CSE-MsgGUID: 22qXUJFOTk28K58patxWGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="137196681"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w6dcUC4CNHwqtkg1nOBiKmU/l9vHFQ8OwcgfUDifpn8KK/BGUXWc/sckeS09nbyjmpq9JEQ6amr0kt09kVAU58L54JKCcja37v7qzSiCxJ70wD5axRHOPBh2s47gov8TIYU9iasUuwQTx2zqpyBpBS+wTGL3ZlmnTgOnSkG88AgnHxRqic9du9CqwhPUgCdG/yTgV560Ivpqi3rbqe8KlDwHctLgjC/YBZWlZdTuI/Hhbpu6riHLY0K3V0RY1zbFdX5E/wQA5+/FemHZgCdCntFYz2/nK496BPaQnahhgx3E6ToF1OhlTzPys7VGBpnDKeDimnYRF9tQXDVb6Q5FFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmaNvy1caA/YSWPNgMRtpCQEJ0eQ896x9GEXyh6+qxs=;
 b=jXuadMBviKUAPmPKT1Kyz80RTH2uJUNRFtxhtNMaoYZlBjQXbUI6YccwLc5vBIlE3Urhqs2rh/N9LTJRf0TlsGCCcsjO4FtngrNjGfGBm/3uvEQljMbkw7G9/d+mLrdcoRDDF88AgKFj1f949E1uULwyYZJrplJGTDmMsEGLSgAQHP9mtqB+BbuQm5I4lNL9vW7LxvpEaQp1GLdm46BbF1IY5v1P/iNxlDzZUYYMnShIFZKqxqhJ1RS8FMfyI7XZ/oCOxuJjzGv8XFNhHbJBzW5Z1OPv/WotEnuZCEXhR7MMrP3aK4KPkgNit4brTa6yQ4k02n5mkJvilqpnvq12Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:51 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 09/12] drm/i915/display: Factor out intel_display_{min,
 max}_pipe_bpp()
Date: Fri, 9 May 2025 21:03:36 +0300
Message-ID: <20250509180340.554867-10-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: be5c00c2-1797-4902-37a6-08dd8f23da6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/LmEJU5Vrc35E3nIhWh9bjqUBcK91kYomVZh19/lmSkTXF8vEc67h3lT3ynU?=
 =?us-ascii?Q?pXhVU0fryUtiy0FP1Kyr1boLpcsHJKrrSskVwuZPlilhFMTXZyVvkyLgNrFm?=
 =?us-ascii?Q?Eo7XMmMbQHxeW3Ehng077QjOZGZV7XWjK5VcJVnQg4Gj3hoHps8kYzxSh8Nr?=
 =?us-ascii?Q?QkrHdRNXMDzK/Fjajo0jFGy2gkYlshchnH8h3kqYwvur+s9QrYNg3d1zjuj7?=
 =?us-ascii?Q?dRHfu57Hv62kFPEjz0lzpIZZM+D6nhMgk9d215R4avuHcIjOwbt5IrHezcfw?=
 =?us-ascii?Q?qxHhxV8rKEwRhwihWRlpgYb00rieFKNXI/9k7OOoU98JQrKvYW0IwGOA1Edz?=
 =?us-ascii?Q?i50jmL/Pl9YwTkwZJ9U2/c/v4JP2PqpD6G/bk1aYDoeMF9CnmwstvsAkKKex?=
 =?us-ascii?Q?pZuQd54OwKj78iAMrpoXE0SbOppjMvf4ZgqcsQMMiJR8Qvl6Zow95V/b84B6?=
 =?us-ascii?Q?ge6gzxliMmeQ9HkDUha275LFeIZ+OxWj6da6cKCEzI9HwHloOYscrhb5IfsA?=
 =?us-ascii?Q?sOF/QdJ/ccyr1hcmKDNpKVNiCeZDNEWu8GjgWkS+x2WZHDRhEpioMUHdfVFo?=
 =?us-ascii?Q?r8SEbzAs8MYI5ib/zA7NJOqTH+RzP02KmkOpCKJDF8GE3l0bHpBw8UPdsrAJ?=
 =?us-ascii?Q?i0bvMmAoGM+Sh8GBjbxfYeRsH7FGh+W76t8nQcxqerWeNIE+4f3FdWxdYB1X?=
 =?us-ascii?Q?EKQQ6B7N+IJLto6pld8XfL+0HTKmG21yvrdowSeb99W7lHPQ01KejEnNjLP/?=
 =?us-ascii?Q?DEbs1xMrXAh3RGqaBYmss8fqyLVt8BNgnfYqN81tuRVRAS91Yb3svdKnWj7N?=
 =?us-ascii?Q?uNjMFZsm9xvrCk7AQXc3jMkyPq7psGxMQf0fTorcYUxy/3/umkeWj73xr4C0?=
 =?us-ascii?Q?zlbv1X//kt0f9lWkyxo/uqrOpAP+wtHNpdeHiPbeqvKUkw4OYH828l3poz6N?=
 =?us-ascii?Q?eosR3QxB4nYVIPrxrtXRiToAnT9NIYWUtwqlyPY4wrBDS/0RpyUDHbTnmG2H?=
 =?us-ascii?Q?3h6W813LUPo5sRsMDy4YvdNIgDPuCqo6BNatZJSr04lxcGJpf+EGPnfzbReO?=
 =?us-ascii?Q?GxoYU+HVe0cKwy9R4PJkW5kka0yL6w8GdSaTbgFG3hNC++ORTaTklW5PM8LC?=
 =?us-ascii?Q?wwl+AKimMxXkDf15qK7wx4fl+/Gxfsnc8hLod/bgWqSUYoMFYGaYelm1DIDj?=
 =?us-ascii?Q?ChDtQnM5gs835IAMqnISScgWqrRo6KrPD8quHqtMI5t7wRS3f0ugv3f6EhaP?=
 =?us-ascii?Q?Y1YKWu9sAzz0t3cSo39x7tr8dj7MaIxdI56wiuxHQib6DsJEYKBqxY52L/Ej?=
 =?us-ascii?Q?4N98pizS3NUd/r/vwag9XRl76EAThBtm+GgtGOJ7knRonXNqCD5O7YQUTUL7?=
 =?us-ascii?Q?uyU5Deu3V+fPx1/u7z9JHu5+9Hv7vat+DLkb4CUa/amJJvSlJ7Gtp9lUdXfD?=
 =?us-ascii?Q?n5hNjq+b1cA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QUFrba0qfjuvTh4xpnOH+mjR4t0T7AK4pCipE2+UkWActbIGWIX5O4/yqpnW?=
 =?us-ascii?Q?OMSNJltAvUd4ze1p1mUMj3/0d1z0bLEUTvg1BFjR1LO4aG34RTURaCbZaSnH?=
 =?us-ascii?Q?MakzOIvg8Do8h1IQWJXf4JHwy6bZRVLR+NXPH2UMVhtLdBur5ChHQeuhECdf?=
 =?us-ascii?Q?xhSJnho2bqETsqWj52Rb44dRmv8dEzZwDCBWMnEyvB/pRqr32ux0eXDwRBXm?=
 =?us-ascii?Q?zBw6D+Cjg3KaWzC0RVpTD00rV4MgNLF4e4R0SWchMoeKMjGfFAIU7NnI48e0?=
 =?us-ascii?Q?pFwvZegh7p5wvlnkqSO9o4snPpLjOw+HiFTdeF8CPlUrmfO+oRVvXhlp2Xfo?=
 =?us-ascii?Q?21bNFyXkTypoORnGGQpE6FCAEFSm1IthvDF3erieU5rC+2L5ojun6F/0NI3l?=
 =?us-ascii?Q?6EbtR1MzpVWNg34naQbtQ4+mtXtdymT/jQH7zf7DwqhO2BNeO4u6kvwh9Aqc?=
 =?us-ascii?Q?cb8jftl1bDkWF+MfIzBOfkyTFunifnCv8MawzZGGbtXVuC4SAsDO3uju+8Yd?=
 =?us-ascii?Q?rulrdCGCM7eZKKwRw/Np/1wBlSOpm957UlnSclMzMDGXcM47ZkiGrKNhIinm?=
 =?us-ascii?Q?3S8Yu1rHW4LI3L3r4DwuZ8MyL0sGa8kTKwpXN54dxDkYVqpbEy6Q39Nlo5VN?=
 =?us-ascii?Q?GTae1XXXi8zxUKyAr6imCj6kxQWkQRTFuQICJSa4dt7vdawjcpqI+AakWByP?=
 =?us-ascii?Q?2P0CHT5oI6AiCM6YgSi11Huc3GkNdGAj/XhyLyG9z3/guprV+bLQkLr55VOs?=
 =?us-ascii?Q?+HIZOF4BUZPC7bdrGIzJG5Weu0ZckHZ3wV28Z5yiCa/loNQRILhiog98J0eX?=
 =?us-ascii?Q?LfBhdn3HqduherTcTCTmpMo2h1kF02xjOTNW18WyfVAZhXolk+pMIqj13PPD?=
 =?us-ascii?Q?HtanOjK2V8WfMCSeoi5DAwlm9aAjzLOKJ3EAVwndPg3fTGT6D+xMErZ3MCQw?=
 =?us-ascii?Q?dtmKWMx9aCdF0gANVvHP60zYrA5CQSlDHnOCdremgcL3ecePR57Xfl02DhFB?=
 =?us-ascii?Q?Tz3q4CLE3/sy5dDzZflE+rlh2y/ArUDZmiIU70yi3/zZKybKCotZFojqqVrl?=
 =?us-ascii?Q?Jbq27zDxYrW/70PsfelRd+ggVI3s/EHbrlMMCPU7MfraIAbZqySCHq5thi6k?=
 =?us-ascii?Q?CIhPPgg9VQBfEosGwoZE6vwPcuZNMrx14H7gl+Rp+xKZx+8cpneRXK6NnKcT?=
 =?us-ascii?Q?hm+hCzAhNPFt6sU0H5nX8VuapCWGDYY/Vrnu68AYwy/Rxk9TWkJ4OAbpAY0o?=
 =?us-ascii?Q?WrSWmQZgAQ2Ay1K6D/vvWGff4zPeqfoAhGUEzRba9Ifae+iz9q2hmjjKNl+t?=
 =?us-ascii?Q?CPDYrSJhosvmjbvqPgOL+fij87D5ga07I0y4zf8Q5ZrEODSZMW/SDGZyx19L?=
 =?us-ascii?Q?ObWOPEF8moFLVFzaNj+5t4wH6G9fPCmMaq+RQPhtxH9OVAHI4HVl+dsmlpBJ?=
 =?us-ascii?Q?LWWJY68MkfgQrAEPGHpxbVfE2MEiQdr0i42sUiQEBBC1VmpvHbc86t+JqtON?=
 =?us-ascii?Q?PvGNdvO7WIFpjq1yBhlNvrqQKaQ7v6j6E1hSESXBqfTqPPrjaZ2mwE9cM2ou?=
 =?us-ascii?Q?i8Gi0zkSFyqQvqrZ8RWfhpujROW1yfUULHw0OkFz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be5c00c2-1797-4902-37a6-08dd8f23da6e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:51.0701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: npFI50Hzzw5ih/XYGae7T5cPIuR5Ow59p2UQyROPN5e5AMtXx3CLGwOwIRxn4Uz5o3o5V1fV8tsKPdeH/n2peA==
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

Factor out helpers that can be used in a follow-up change to query the
minimum and maximum pipe bpp supported by the HW.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 3 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6f0a0bc71b066..abf1db22fafe6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4318,6 +4318,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 	return 0;
 }
 
+int intel_display_min_pipe_bpp(void)
+{
+	return 6 * 3;
+}
+
+int intel_display_max_pipe_bpp(struct intel_display *display)
+{
+	if (display->platform.g4x || display->platform.valleyview ||
+	    display->platform.cherryview)
+		return 10*3;
+	else if (DISPLAY_VER(display) >= 5)
+		return 12*3;
+	else
+		return 8*3;
+}
+
 static int
 compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
@@ -4327,17 +4343,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
-	int bpp, i;
+	int i;
 
-	if (display->platform.g4x || display->platform.valleyview ||
-	    display->platform.cherryview)
-		bpp = 10*3;
-	else if (DISPLAY_VER(display) >= 5)
-		bpp = 12*3;
-	else
-		bpp = 8*3;
-
-	crtc_state->pipe_bpp = bpp;
+	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
 
 	/* Clamp display bpp to connector max bpp */
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 3b54a62c290af..b6610e9175a7a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc);
 
+int intel_display_min_pipe_bpp(void);
+int intel_display_max_pipe_bpp(struct intel_display *display);
+
 /* modesetting */
 int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cdbdf20a46b7d..eb3898a49d1ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1199,7 +1199,7 @@ intel_dp_output_format(struct intel_connector *connector,
 int intel_dp_min_bpp(enum intel_output_format output_format)
 {
 	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
-		return 6 * 3;
+		return intel_display_min_pipe_bpp();
 	else
 		return 8 * 3;
 }
-- 
2.44.2

