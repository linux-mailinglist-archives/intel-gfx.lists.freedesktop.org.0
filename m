Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KmrKWNmpWmx+wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 11:28:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1F51D67D5
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 11:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688D610E484;
	Mon,  2 Mar 2026 10:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPcUhjGH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C2A10E47D;
 Mon,  2 Mar 2026 10:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772447328; x=1803983328;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=TfkoULFu6xB7yfQTwL8Crxme9i4JiSeMPKK4v5Nle1c=;
 b=KPcUhjGHM6qc9dnPXWHqqSm0uAvO8uP182vAYYR5LxIS02Ex3ndkc7sp
 6wTx5UJbyf6lH9B1UoqurcjxyjJ0ZPS2eoJjBhpINssdx33f14pNFZbjK
 IWnuDlb7w1N9cZk7RpC3yH2RNv0i5ESgXsgBGW8n7fLmqO9/pwnPCbmCx
 oeZWpLIa75U1gsbIwx1KIQCsOPikbxQfhcXjsGcUrivN3Xgi7gEBH+Yns
 J/H0qAQAtZKlBC8izsYORKoRvQhgosIwCQvexJUTgAlcP3O3UsmLdklWp
 ChztQF92HBNOwsJZ9GeiptKFVJs0rKz9aRCEoKm/TeTSR33xoiWM9ePhV g==;
X-CSE-ConnectionGUID: 0wSqmVsiQUuNjYwmWgZRhA==
X-CSE-MsgGUID: jRgjdb9yS1S0FoVETQ5tow==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="84544635"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="84544635"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 02:28:48 -0800
X-CSE-ConnectionGUID: WHc4sp4oTe2Ie8aeIfaXJA==
X-CSE-MsgGUID: wrMJfy0RSJ+UU409k8k7qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="222584550"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 02:28:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 02:28:47 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 02:28:47 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 02:28:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cmg8E+lv1q7YWMWW7wpS4FcbeeDO5NMNNTAncVl8sElFxq66QWHf0z5IzKQ3I1L1N+rChIsTm26j34oqtGoIbjrDEgk6zmkUCPOGsvZRjgM3qlh85PdZP+cpWDSqVS9OJU1NmcfDt6uOEqVE9QE7P/BABaRR0m/QG4MJHLqzvXfI7/zsVJbanygwnYFSiZWfDWMgTLMQarRzOkLAYuY1n2GbZkSvilE+0aIzSde2ja/BjyX2N6UCtnd3kM/f8yNuL0u8EEDRDU7D8szTc9iZaZhEZiECaeKyRax5meyRkkrkzYK6JgGZMBf1KrfO2vPTQb5+cxpKbNNResIQTbH70A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PGwEUJB+P1NZJaaM7lPE43ifu3lXoMArhpwomCkQ700=;
 b=aKiSOI06V3vzVqwxTw81pwkIXt86SnTROBy7mI4zsQxFTkHo/MTr2iWi3Yd420hEL3RgUFFWcPDYwseBEsOTqkn+WpzZwPcrNZhNraDqo4vuVUybGKBxGO3mYqhAnoFvk4wtJVXG5gkaLbY1eVPnwXJ9Cs3BabrrwZKd2JIWEbbtcmEmcqosmiMuRjQRvwRwF4Qto6oyXQp0wPe8/GrGZjZ8aUmHtJrHiTrAkKgF9QV26/BdhqqFtMFryZLvfN5hCBrhoCwO1IRyDRmqT61F5vw11IF6YqDiBXCuQco/fjgaFcI9X380Yc43Y+kvh5LTV9WZy/MLfDCyRzGVsxcQ+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5879.namprd11.prod.outlook.com (2603:10b6:510:142::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Mon, 2 Mar
 2026 10:28:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 10:28:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/dp: Fix DSC state computation
Date: Mon, 2 Mar 2026 12:28:38 +0200
Message-ID: <20260302102838.1522499-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVYP280CA0030.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:f9::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5879:EE_
X-MS-Office365-Filtering-Correlation-Id: b6a06eae-69dc-4962-ad01-08de78467b4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: E/xrxgjUCNvtcrvDlWt8/d9ZKUmJ9rLOiuRMEPwuD9mnZNI9tDM77YnvMrWa83vibjwMUp5wGYcKteAe1TJ/lcD+0ljtpsCDrBjWnnva+gOez4vtW/4LLUtsgX9DAg5lWbhpTJC5Sf3aSjl1aO+fojpcTaudNp4z7KR0ZlqqPDGfcyaSwp8OAVyS9AoAW6ovX2RdNG6Ws15tl7gbmNG0dkfnlzkyqQxP7sdswulTiO61FBoG0RAwMp8jjYXUNzk0HqvX5qdpMAFoFVE2UBXVJb+7NXe8m+cQ57w3Q/Y7e8hC9c8Y3yTaU3b1BoCy4xY+fgKNidd5g7as5eFuER3Sgb+8LcQE+eVlOxjrTxBYsElJcua5EdtO81rTALX5FwuXRXsg1lyBYa+QC5QQyvf5M4FV8/XpxJwyHIev/Ci8kbJ881UNshgROYx1YyslQngJxKkQI8Qx9dDsjP6eNrJJsyh1TDNniLb7rsVAWJo06UQ99L3g6H2IlXUvN/CJ8htyo+AlbCSSDFBjC/VmPhxGpNpOThgVaW38gJPgSVvJOLYSW0NMJ16GApp+YtU8LlLgjDcy7NmmFsT6Cmt9PxcqwspbjEFDPqGW0aPXEGO+7m8ex5B0iWP+K5fA43G2WEf/ZmOchkmr4wn7oZllNOM+z/WFQwabxxbmOBhF/+KLwW0korYcQhscffFXW/lAqErL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Fw6iHa21RrFVc85DqJBcwY0j82j3vSjsuNOJgSSVTG86bzTfhnKpmTxte6fR?=
 =?us-ascii?Q?viWSbApKjjDTzyfWBKCqHj2vwZfkDVkIVLidwj0myo2WLaQVsTBiLkmOLynL?=
 =?us-ascii?Q?QZUsPryMsw6QK9Yr/IkeAn6FDSHe/5kXJzeRtEVzM3IbDXrCMzdMfwI+JzdU?=
 =?us-ascii?Q?A6er5pVEZuTCJe7shinzvG8IuyDS9ZzmpTRXJF/SWAC51Lfjx162TCTmBscT?=
 =?us-ascii?Q?FBX7yPWZUg81tRtyIXPFrQ5GzZepRivwPCr2FPE7FRH0ea5vXKOsO417v92P?=
 =?us-ascii?Q?4g/WRKSIrjyqVFMCRnJgGj8KCTvAO90BypkxKGVTebhAWVQ6yStOoDF2+FpA?=
 =?us-ascii?Q?gOzDig7socDcrpXflj5nuIUQNoGZK199pgUh8f9SU07/yMPTb0SOebY/i/eC?=
 =?us-ascii?Q?GjSw1Kpfl3YzlUrDPOivZS5Nikek8lJGm2z9ukO8k2vT0CNBcfZZPhLNQ79o?=
 =?us-ascii?Q?Q6rwmPRo5TDSyGfp+sWL8uF5REtkYQbCe7hDlD1CfuucjLHAItl1uLjI5RaF?=
 =?us-ascii?Q?LuO4qJ5xnCC2XLKU540gAzB4aeVhFKNY/1FVffzfQoJ0xmzvoVvDMHEupLl6?=
 =?us-ascii?Q?LoV+U3K/SgTzIXePLmUgDxE/TsTsyIJFpnFV5vBrJQwYdBXV6zp/11PIrOwV?=
 =?us-ascii?Q?mT98mC1vdRkNzVzusZQGURNXMaqgOEWMSIwsjYgMrk9usZRjQS+4h/raXc2P?=
 =?us-ascii?Q?HRE600i6PUAcEQMPHNWAgScuXCHGVk2yQg4xXkWNSSeODTh1sliIyl5eZ5kV?=
 =?us-ascii?Q?Phf9UR0GbX47FNlRWatuHjtQfNdmUZhu9H2pI6pvkfwJQOvm8c8UnpueC3pS?=
 =?us-ascii?Q?lwH+sGQgiZiDIkx+0WURiJJLzhCbGEOB8PNZ2ZAWeu60vWQHvSFce0LjvDW+?=
 =?us-ascii?Q?dQSKPTaFRXwQT+jP+Ak/sHGfYKNWSsAnUJ3gKdLSXHcEnTk7oyfT0s/hmZXq?=
 =?us-ascii?Q?1Pm5LIJbvpC3Bueenu3dDdO/EOfTCtuJU5T8ywkDxzkfeV+gCNR5oaOpDA7g?=
 =?us-ascii?Q?YCbA5gIhM7xvul8VnyI/XPFxT6UV1jsCiTCYFGedcXfnAqwLJdRkGweeYX8A?=
 =?us-ascii?Q?YEjXmCb091d6dN86Lr0RH2xTbw7C7Qt67aUjX1k51h2ZL8VtymGWecVeRJAH?=
 =?us-ascii?Q?XwnH9boG4c8M7vcVtlLp8IbZRqATEqzMwj5aW1pNVKr3VuC8tbV9uk8qadfl?=
 =?us-ascii?Q?GGPNqR/13yxi52k1CUuoYMR+M94t3IS1xei3utBFCn4cRkUtREDAcc7oo3Pn?=
 =?us-ascii?Q?rtn87UTO8naov7cdD5MF8JXu625lAtVsyaaABV6kVNYy6vG2g8Imgc5ZktGy?=
 =?us-ascii?Q?AvpL4xYhD1PPN0USUZqLsQeHnLgdAyOHGonVuDT0Plei6h2c4lGh/CbwW00j?=
 =?us-ascii?Q?PGlH+cqutdLdWiis2G4DBrpYfOslV/8Xsk9BKLkJT4aGWiKhoaV2nkvvc72m?=
 =?us-ascii?Q?/e/H9fZ2ddFOL139mlLXgzLQ+fWvrB9uz/EL2FmSpVNFF4tDqfOK+e5/E0o+?=
 =?us-ascii?Q?X0wFHpcXLx44HuqY+51ggUtr6wOyZOZhHZfA4FVAZ92igmd7qI81lL8YrDRq?=
 =?us-ascii?Q?Em69oAzNuO+/qYOFo5OKvjPeGWkz3GRqqRWtBYg6w5R8moW8OS59VI0Fd4EJ?=
 =?us-ascii?Q?PrZnmTuzcZo5XhbLiY6esyjzp6YV05vvJW2wkd1bYGnm/YICFrzw07CPOkCC?=
 =?us-ascii?Q?jskfQDenHs0uASrOGhvK1t3Efk5HRXneBm+AcBVHazk4Kbk8Y4iZ+CEbya4R?=
 =?us-ascii?Q?v7NNeMdvzQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6a06eae-69dc-4962-ad01-08de78467b4f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 10:28:44.8098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gKEk6LsBkCtfrKhyRz1lC9cUBpi7Ilixg7x6EQEIcUqs4oPMhSZ43WKBtq7vi33twqJ22qwKc7zizu1/WGs3Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5879
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1F1F51D67D5
X-Rspamd-Action: no action

When computing the encoder/CRTC state multiple times, such as during
iteration over the possible pipe joiner configurations, it must be
ensured that all state is explicitly initialized each time. At the
moment, this is not guaranteed for the DSC/FEC state within the
encoder/CRTC state. In one iteration trying a pipe joiner configuration,
the DSC state may get initialized without computing the full
CRTC/encoder state due to the given joiner configuration being
impossible. When the same CRTC/encoder state is recomputed in a
subsequent iteration, the previously set non-zero - now stale - DSC/FEC
state may still be present, which is unexpected if a non-DSC
configuration is being computed.

This can lead to a DSC state mismatch error if multiple joiner
configurations are evaluated and the working configuration ultimately
turns out to be a non-DSC one.

Follow the existing pattern and compute the full (DSC/FEC) state on all
code paths (including now the non-DSC path as well) to fix the issue.

Fixes: 1f1e3e5c65f6 ("drm/i915/dp: Rework pipe joiner logic in compute_config")
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7512
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6c25c7595c48..2d9ce21e5bbe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2457,6 +2457,17 @@ bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 	return dsc_enabled_on_crtc || intel_dsc_enabled_on_link(crtc_state);
 }
 
+void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->fec_enable = false;
+
+	crtc_state->dsc.compression_enable = false;
+	crtc_state->dsc.compressed_bpp_x16 = 0;
+
+	memset(&crtc_state->dsc.slice_config, 0, sizeof(crtc_state->dsc.slice_config));
+	memset(&crtc_state->dsc.config, 0, sizeof(crtc_state->dsc.config));
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2888,6 +2899,8 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
+	intel_dp_dsc_reset_config(pipe_config);
+
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 57fac7fb837f..fbe43ca3d99f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -75,6 +75,7 @@ int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct drm_connector_state *conn_state);
 bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 			      bool dsc_enabled_on_crtc);
+void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state);
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e73ae4956f9b..90349819dcfb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -610,6 +610,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
+	intel_dp_dsc_reset_config(pipe_config);
+
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
-- 
2.49.1

