Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A9CC8FCBF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 068A810E8B0;
	Thu, 27 Nov 2025 17:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HbJWj19A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCF510E8AF;
 Thu, 27 Nov 2025 17:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265930; x=1795801930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=p4Jv7XKbgqkysG6dODoSKhaA3p2jcsYyzB3VX8ZsO+4=;
 b=HbJWj19A5fB6OemIdNLOVr2ELsXAXPO2jXqzmQRHOBmV4MGy528oeTM1
 +e2zz+iSrpO7/rHYm4OmFnUC0JDRsJuPnNPcdiypVwgho/wrUZM1tiYIv
 L9xg/f6ybbVOMCWI0oXQU237r/3aJO1UeCJ4zADppMGorNAYJcoZ3qwDR
 RIe+HNsnfgjc7LW23+JvLMo0u3jqoqu3e3EaAcwH00YygrtZjOCxd6+rO
 DZ9QrG4EOJP/V2kucdXFuwTIvFla8wQIad0OJ0eB9rfa153LnM1KY95ji
 vN2dyVVVERQWuvGcB6LyxdBg6flpqhd9pNKn17WgWESQ/fPZWCJKuF3L8 Q==;
X-CSE-ConnectionGUID: 00EvxmafRJaMU8GJaz326g==
X-CSE-MsgGUID: k/fAgXHTThCk8/w/iH94Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174656"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174656"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
X-CSE-ConnectionGUID: d0uk/VlIQU+hqTwueKYk7Q==
X-CSE-MsgGUID: qCA55IEsSH+SnaEHyfGljQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409421"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:06 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:06 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hp3G/i/6YlTPcnWwmWah0Fuw1QngASERqaYFyDB2iARNtUheIjWHTEOTp2/d8cT3sMcf3i3QYK8cLD62FzgGRFDweufbvhlhcECTG5ZYXqzL5bR4Sbc0yZMBG9+7k71DUqTDPcCfA4qduKhfcgeIMBH9/dVfq4bYPwx3xQet+5BLdWJmhveRftbQXeOi5iS1OXYshb+ORf/3pi9nL/5XD33uIhj4NhqMONtQVvsoNOS0B0xQRL0+Fan08oByAhzS8SDJ0KafAPDwybo1aequ3nQPuLy0f/PeWTqs6BmfZaPrYkg1fgYSye9JhKnfnh1W9C3FFAFwRXiUs4AnBiRHDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FQzafEz03XTsqWCzsmWf4CZ99E5Y2YcCDfRKEr2DTY=;
 b=HoP4d35p1N2cG+oMCIyUi80hoeUvy+ldTwVGjA+PZbmZBbEVZHfTHvEiCQUEcAgcg/k1uIBb1SOxLz2eO4aJVPAL4q1TiXbaAchfAG91UZsYVTDW7bOOce/Y+EN+Rm/6XwLYuP3dOHyP+XHWVk2sZ/iHDsluJwEh2U2a/zmb9hMQAB0nRdjQB7t4adlsRwALQLHYOwK0IZoWbta3dgKazcGGKJY3eWhDT/RBcsFtlij62fO1alhqYo0+8p6MzgPqJFL+G9u56lMF7KmArDaC83fSZjuuBAXUq39Yzi1I/Zfn4jvhTxiFlUYdNAiZ6O4b+EBSwa4SdGuE9xKMAwHHjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 42/50] drm/i915/dp: Factor out intel_dp_dsc_min_slice_count()
Date: Thu, 27 Nov 2025 19:50:15 +0200
Message-ID: <20251127175023.1522538-43-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: f4a8a1ab-61bf-41a7-1f8a-08de2ddda000
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RxM/HSQcrnuIgJl7Ko3JyYGFWayY+4eNYN4MwA/YKWQ4athZw+Yk/Zw8WOa/?=
 =?us-ascii?Q?FnIWYqd7EqiBJ41ONoAoFQeXwZMN2cBzUDLqX6oL3e3IRNarQwPdYiepj6fQ?=
 =?us-ascii?Q?3sXUAUJqP+E7HHCPi8kDm5esG7FQoYqHN1W1UVP5pPLgbYgevVNr4YhjaAMh?=
 =?us-ascii?Q?4X1QrEhpjhdda4zM3v/LIzqFeG8ffv6UIzgyPjWoSJ1MHI60e+1AWU+oPxw0?=
 =?us-ascii?Q?M0FvwqUHMDeKkFDHsIn9VS0j+0pyzGdJ7MUlDPds5UqiTwdi+iO2W4f3R8A1?=
 =?us-ascii?Q?2sLMnAfQ90VOrfj/CRYKM2jxOceP2V3OV7A/pYCkQvl2qJ+Kx48vDkMo/GOI?=
 =?us-ascii?Q?092DWSOgcMliMWkOBS9S1XzgI6ZmZGbt24z5iXios5Xc0WBk1xwnFEzJwsog?=
 =?us-ascii?Q?7Kex803lYgtZvcUx5cJJ8F1U1i69xVpWgW/ajF62z1Ew4No9yyd8GQIFV1NY?=
 =?us-ascii?Q?+tbtbxbrEqLNYIo7UEKNj9yUsvkUgBGE1lo2FCCHd8qgAlgiC26y6NeZaPIG?=
 =?us-ascii?Q?trQv4/4ikOnLo5rroIhR9wh9WYARAxRdo2PHiPCmDgh4KiSGFqAxRyW6bDP6?=
 =?us-ascii?Q?wU2N8M91qq6tf2mtn7G6dbMtkaFFLKMkWZChU5R5hHwI64LI5yZHIg5PnT+g?=
 =?us-ascii?Q?dMGf2rA3GvkTG7gIvKQ4iA1ua2AzTb3tZtlXAe59fABykFCmo53JsmxQ5vRV?=
 =?us-ascii?Q?C6LqrlmJmsTc5AqQBnoQoovhT33Auh7k/minXOQGAw+UFHvjT2ewn+J6Cg0m?=
 =?us-ascii?Q?rBKCtiJmCE9tN2eX20FpybnwUmJ3FIEMSlMTCi0kOR6bpKXKToPdyGuw9Ahq?=
 =?us-ascii?Q?RUf7oIB9aJ2yZo2asLZpgKtrd6ZfsBtLl4KFWesmOuG2sD1qkwtkmMhV9kUS?=
 =?us-ascii?Q?Byye54FdssAqUbPKbK/njisDF6u7pdWVeNoYQwgFccAmT6z+nougK1MO/a4g?=
 =?us-ascii?Q?tTppn0CF3xT1gpWKx24hVJy27MsTkUm3gjRIM/DXGMG4A31JMNdWlrNM1/kf?=
 =?us-ascii?Q?7RzuJlxPg3eT7yG+B83YipP+JFflKzAyDKMzX3SIJk+V8LjOwMHs5gfFU7In?=
 =?us-ascii?Q?5XC9X2atlXM58eBb5xBZaAD8bp20iougeDDPFB8qYSCm4toVNwedliUEma5i?=
 =?us-ascii?Q?SiSULNAPL/WC3C3m/KcDfTfssJfKiMphreu9Zm3CPNf830fkCawKQJW7p0OM?=
 =?us-ascii?Q?kIJXjdpUZdxTY/zfE8xqLh0/xDvTcplFYJ2JlPoPihJA+0vBvKal5KtH2bh0?=
 =?us-ascii?Q?3i2vYQJ2YIsUCFA6wasKmYsknAhefuWGhgx3mJbocxjlv0rXM4mfni1rcxGH?=
 =?us-ascii?Q?g71oozgM6L/DbcI5iw6KoZAjwA2oHoNpQsKHJWkGLH6jSimkxBD5S5B24hC6?=
 =?us-ascii?Q?OILtNWtKOZZk0qzGOyz978Cfd4Y4uCEoUG6ztsMEy9dnvFyJRGsZgn0uuzoj?=
 =?us-ascii?Q?pbdiBy4Lt0afXa3lnnBS9C99w+VCQDHO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Pup9RLeEnbFnJSVMNBicFRHCbgx1IJddAYdW0AMkcnF88cY+st8791MP9tvp?=
 =?us-ascii?Q?mJuxLto928Pxql7d41fzayQlPkdhl2uzYoOR1ZeFPrmaHRcmihuGPMaSOruB?=
 =?us-ascii?Q?Abf5R+1l14z4BbYtiN6PB2OR0EceBYS4+fDMPdAhHdCBQSGdzMyl5mIeJKsZ?=
 =?us-ascii?Q?S5nBUgjs1Bae1yTunZX2ktwkWdZbEhunBc4FPjC4qjROcYpt7tmdSXTO7pbz?=
 =?us-ascii?Q?4s+oJ7kRQuS+EGCFMMuwPEirl3pO3t9zsy7+sNA+TeNQZBHkfg2LaVMk7wnS?=
 =?us-ascii?Q?t7Gsg+4L8x0O4WaFibMBxeRSLAPxoi2HtVF5xWMqboFHePdY6EM3unW21Jbo?=
 =?us-ascii?Q?iYlhyz/tfpWnympV3YQ7vd1iqSWLvaS+WkU0EIOmNKV7EP6Uqq9Z1Kd3sXM3?=
 =?us-ascii?Q?uDaQB2EGdO5r7jz2kdsjvlMVB0zUYVjlL8PVtlCnJftpwuXASFPQn7e2L9b1?=
 =?us-ascii?Q?N7hcrX9NelbqvaSuUmGVZuCUy2fvGI3ipTSKmBlmaXZEjGM6ZQB5d42xUHu4?=
 =?us-ascii?Q?GSsJVZjkKQkOKmTx/JIx1ojCEjR7MKTZsRGcJ99Dgl2t2a5ZWPYwumpikpMA?=
 =?us-ascii?Q?HwpZdCdWQlguzEZftEEf3AOWTtFTY5MT7NmoGKkJfUK4X1t4tpxy8leU27Hn?=
 =?us-ascii?Q?P7V+bo/+eSRcgwGkbxfYI85t5kM7PXcKIkEiGnWvnQiP0IJ94XcNAanfs93L?=
 =?us-ascii?Q?4hg/tnQFadnwxpEkPR3Jpk2OxXWnTWuuBfqCTiswTh7MvGHozXq2t2NR3p/q?=
 =?us-ascii?Q?sfViiHf/tMYjWVjgZiV3JgYHPgGmUs0T37eaGpR0n1UxSWGJyWeHN/ctB3t4?=
 =?us-ascii?Q?RbQqVVzgX3P+Gqmv3piSLLGKn/F7UAQ1DF+LNMPWQGTA8DBHF5mSUtIGOf4B?=
 =?us-ascii?Q?yqZfB/k6IZ5FuVPYT3GnhjU+2yN3N7UKUH5rbbBxw2m+1Qx0zdZH/rU/+84l?=
 =?us-ascii?Q?Dt3HKE5X9I4fr6uxN4zf+GtHrKsZrlKmuGDd+sq9vVuJj6ESc4H1DTveTzjm?=
 =?us-ascii?Q?nuwg9W5LjENmuvKqnS6RPzLbrTBl8Yvo2fsAdUmoofVImtzoRFK3r0XFZlE3?=
 =?us-ascii?Q?x2tYulVLo2GEaBSS3Fgz/Ixa4O2xQCmHXbCFipZOvZKeBeNm+1jKCtTRcPNn?=
 =?us-ascii?Q?lisR0K7TTR8xexllt/Yihf+tTT60yLqpXlNZKRL7Ic8BawCsJ1Yi9ye7n4nu?=
 =?us-ascii?Q?NVWLGalbEXb1MHaSnhHOXyoOkEqpPciN7GiY1g2Zh0UVX+aqHmBqh2T45H3z?=
 =?us-ascii?Q?+pf7eKVZ5eZY68FAtufUStzVSDYHu/9ULfDPYUeDIH3DHkGQLrLZvvl87701?=
 =?us-ascii?Q?TnWo4k4zyPPbOV6xAtrqccNjOcipAYJMLJ52Lez2NRz1EoA2n/m0kuaYGfQT?=
 =?us-ascii?Q?aICXwRdNU7Jj3/Iu9Ps4fofYBI+5RetkOCbI1KqWE2hzAM3OLXy4z+tC163C?=
 =?us-ascii?Q?uz4T7MknnaSnzC/n+B0iquOyiwOmqcz7rgThJOd3LggooBeA/3Osq69wLSHa?=
 =?us-ascii?Q?KFenCTYVkbHwNfyqZCKt2dMgz/5l/WDzySpSSOdwGGIzPH1y+oo+Hr6dhI/t?=
 =?us-ascii?Q?wCXOw16wqJ/kS0lTdGDrp7Rgq+vn+t9S2y706wlyWaVi90sHUxyOaVA3hYhj?=
 =?us-ascii?Q?viHPbznTu/Ie1d5sGCk4Yh5jj1THVlBMLkdj8gUyz/Dc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4a8a1ab-61bf-41a7-1f8a-08de2ddda000
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:43.0331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /xhQCxU2uhVSpBLF0zXf6/tUts/UyJLcl4Vc6os0go9cXfzLY2oCUNvRFM0+GcLuRuFKi9SP//wICO6dOUx4Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Factor out intel_dp_dsc_min_slice_count() for making
intel_dp_dsc_get_slice_count() more readable and also to prepare for a
follow-up change unifying the eDP and DP slice count/config computation.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 126048c5233c4..79b87bc041a75 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -958,14 +958,11 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
-u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
-				int mode_clock, int mode_hdisplay,
-				int num_joined_pipes)
+static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
+					int mode_clock, int mode_hdisplay)
 {
 	struct intel_display *display = to_intel_display(connector);
-	u32 sink_slice_count_mask =
-		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
-	u8 min_slice_count, i;
+	u8 min_slice_count;
 	int max_slice_width;
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
@@ -1024,6 +1021,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				DIV_ROUND_UP(mode_hdisplay,
 					     max_slice_width));
 
+	return min_slice_count;
+}
+
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
+				int mode_clock, int mode_hdisplay,
+				int num_joined_pipes)
+{
+	struct intel_display *display = to_intel_display(connector);
+	int min_slice_count =
+		intel_dp_dsc_min_slice_count(connector, mode_clock, mode_hdisplay);
+	u32 sink_slice_count_mask =
+		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
+	int i;
+
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
 		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
-- 
2.49.1

