Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E14CA7C02A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC02510EBF1;
	Fri,  4 Apr 2025 15:03:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8tl9FrQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A11010EBE7;
 Fri,  4 Apr 2025 15:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779036; x=1775315036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ydQ85UmsIwVXjrx2p/i5GVCaHa4UxlCwy2SVwqjsqmY=;
 b=Z8tl9FrQk5cHmbWtdwZN8X3oAgx/gVi5qPckxceRUN3FRVhv9mHHZAzC
 oEb95plKUQHZKaU/0/K5dMtsPaN36ccKrdruaMEJ6K7kbfSL6k1TnEpEv
 qWInF/mkAo7VO+WzDD3axYiF+zXtHNZ1K+hR8Pv34mUhHTw16qmO9CWy0
 M3dngjqBj54hXthE+J8J4lcXADAn5i/pjQmZsyBOE1FAxMUCgjKFqmz9P
 b8LIbL0JQPRC2mBpIAynr+65+QEjHYakoe2wfZrYbdxgtpa37G0ROQwSN
 +8QTc8q1IQEEVI7enVPnOd+dVPL2ogsF+20jDHJBSNbg/P2kmpPM5y67/ g==;
X-CSE-ConnectionGUID: 2TAxqJHlTyehN3s2gEXnWg==
X-CSE-MsgGUID: 4rw+M7eyRz2qbB2OZes6ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="44373314"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="44373314"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:55 -0700
X-CSE-ConnectionGUID: EV8/AyB+SkS1GxQ2YQYbFQ==
X-CSE-MsgGUID: 2SyHRnZBQPei8tRQXbJ3dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132189841"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 4 Apr 2025 08:03:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 08:03:43 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ThB8zc7XxYP9nUhZEA7cftQTKtR/iS7QXiIrddrqYWPjLJ7Aiz2mR/Na1BEhI1JPIrVLiPRTaaB6XhhkhOs4N8dWt16pD9iBW2zUSc+FvzbW/YTys6Uth1Xq4XDrFUhu4Qb3Mx+8hCSYv447NqT9Wdz4OYDe/mQvmqW6NLTR7KUjZj6bneVIWYl9uHv/axbdOEMx2v++eW1aynG+eBa4cVNEbuIMoqaY0ska6TA6HkU+AzSpoh07INOW3WSGfUj9PxlayaFffLAFueGGThVCkjQVB7m039kRCk11GjbQoxmbvf0O+uRZPzFUhobThG4udautwPzcEw9gJTnTFOOh3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+fQCeRSOhHX2sYZinnppx4I2k537ivYKvGUh1g9PsW0=;
 b=v23an/a8Eiz9iohiJdhXDNXE2XDE5WZ3FVyunulE0yPWdmS1uC1yLfh36WKYdLNWCDLevpsNO3MKlwaUSzN3C6+gNPHtMkRVYzn3pAdqVKb0a0MP1mP7Uxz1sYYC/CkOOpSqKrPPUmAAu8n4P5AUKrYnH8pK+XWHX5Io1HZEvKZ6izAbMG+eV7jq9X1OSG7oOWluuSiE8xoG8Sojo5Dmv2kl3K0TRhNc6LjJEOMsZtDZ/kVoYDURT6g/VEUC5VZnIr4fLW6ajJXNM7bsAknodgaAAPtyA11yG8OAk2TL5uym9qFSgbKwMgETYiomKBqE535Y2puUE0UCAwOOENUUKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/6] drm/i915/dp_mst: Add intel_dp_mst_{inc,
 dec}_active_streams()
Date: Fri, 4 Apr 2025 18:03:06 +0300
Message-ID: <20250404150310.1156696-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250404150310.1156696-1-imre.deak@intel.com>
References: <20250404150310.1156696-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0054.eurprd04.prod.outlook.com
 (2603:10a6:10:234::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: 28253780-9126-4b80-5abc-08dd7389d18b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dijNz5FSxu1B1COYBuORrDQmHgKv+qooXAbvYV5tEE3dRv8pVF/dwePzDXzC?=
 =?us-ascii?Q?bn8TVqTn8YWGgzPePPwzKEIhzENQRsR3Cu/8u+ppmcqT6Bttg0aElzqzbKjg?=
 =?us-ascii?Q?pNl9nWc2uyzumyZfszPX1FfOFFN5zgjroddg5MFsa1tglAGePa+1MzojNloq?=
 =?us-ascii?Q?W59X52wuMXQAzQkaC6XicSnJtAb5hA9Fy0YCdO9IaBOvNY+2Y19QMsbcDj8J?=
 =?us-ascii?Q?LjTnMG2DigXZBcFPdlIDm5V4pCrJLHXXZn3LmkX1Q00QwHZ2Ro6YpY8vsT85?=
 =?us-ascii?Q?11pON/uGIHzN9ctyQ24CbTG/UYwXNlLY5PPs8jWT2WBaShN7pXLIPsSkiapa?=
 =?us-ascii?Q?sRepcXbnw8P6Tuy+HD47qofdK4gvAHhhwg8R+Q+SeqofWQ28veRURfTG7NIB?=
 =?us-ascii?Q?AoGrGGsFrXC5sZakI1iCu0Lz1McZQxF8Ghjraey7tyljIHEg8/YNF8Ki5mmx?=
 =?us-ascii?Q?PZpQuClcN/w5KzV98w/f9Jyuzr9/UCnP00fM5BO7t71iLqi8MJ30uynVw/so?=
 =?us-ascii?Q?fCQJwFoiaQ+iHjBZjfE4/iAHaBDu+Xzr7g7U2mG36CYm4jAstqQGiozl1tkC?=
 =?us-ascii?Q?lkHP+Wy589RIEr57bnM91uOXri2HaoIy+U9EDUPWYrqF/KJbBMdt1cy9CBgk?=
 =?us-ascii?Q?rflTouXlaz2svfD22yd10YhKupB4tzoPiCCTAiK7JYwx88ZBVp0k7/EVn53H?=
 =?us-ascii?Q?GC4abamX65Q0NZR8voXBfsP/Xp6mohAZyqhSNB8AHjw9ICNEZ3jsObgSDdeA?=
 =?us-ascii?Q?IvCPcdH9bvcaO3SIsrYsCiVJjSDYopXxBbk0HvfSOx7q2x8XYgPKbgkqT0mN?=
 =?us-ascii?Q?K2sfVtRXk9KRWaG54pQ7KzhqUK3dNa0K2Pk3+tt2af+Ju1kdmfepnQ9SZMIw?=
 =?us-ascii?Q?Rv4OWkAcUZpsN8kF4Cb36Pi7BMKcWz04zc1Buik+FOKcclC2J1sHR3YmAZG6?=
 =?us-ascii?Q?a1MoFjWW8h3xNO2COd8R3RR4A+/xjc1BC6SSzNPiifWlyx6Wew6kl8lfSQqZ?=
 =?us-ascii?Q?qT5zzWlVc9puQW2fYOKKWVeY6vgarTP3nJs61biheMErqFQKxtNQRd87ZZwh?=
 =?us-ascii?Q?ldoCXoUk/90bbqpDsyDgxEe8wrBZ3qduAoWfB5F7RO0NdW3+xHpk773lHFQx?=
 =?us-ascii?Q?tQvcpR/usthcyhAsPTiOQXngeKpFw6pNMGGB/RKqlxkcGVp0PklmFVIHNRJY?=
 =?us-ascii?Q?lv0qIsuY2jh/uwIIXL4lIvRvWPQzodVw5JvPO8C1Ayg/GEKRPgHxezgm6NEp?=
 =?us-ascii?Q?g/3qfaZbq/wfRXnk1Fu2ohm8Ae8czuJHBxwesX+GlKFlbKjfKAPa52j60508?=
 =?us-ascii?Q?gisABSSeZ4evqL8/3kr/77CNXanAYcN0+hjJ4yWRbuQOMF3cKVOLUvo7PnSl?=
 =?us-ascii?Q?Tp4KoFdTZ/Va55fmZvP27/HyvROi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QcNinM50z1QXM5ku46LgEU8fGFHSQSd9xH9a4PnSPm259YtyeOA8LNJiQjqV?=
 =?us-ascii?Q?xmr/EBR6SPYkCNdeQGPLEwH9VpxtEj9kKOxhScs2Cby3fOs64kz7fDCZ6KH9?=
 =?us-ascii?Q?Uq5WXkBQ8UYhpa1YPLc4FO4YNu9EOiM/znW4UfJpapSdL5XbuRmT59NMA6MC?=
 =?us-ascii?Q?ztWmQTmoIjdDm+0ZRq3UBHS0wLfnwa0rz00duGTB3TCCtgiVl+ktiD7Nad5s?=
 =?us-ascii?Q?FyE1FoxLG6NPMypQNsQ3YIJJw9je+TS1/7BuAcJc3T+iJmW4R2UCRqw1LnFO?=
 =?us-ascii?Q?e62TVv4hd2rSGBcf8C7pE94VrsA7XmE6PpSy5tVgD4PIjs8CoJFKiEtLVdQu?=
 =?us-ascii?Q?7HjCvcQLMzrrH/m26mfiPrFYL2feh9h1IZJyfPklgMg5YMspTGnIkUHuVCjh?=
 =?us-ascii?Q?TaQPaDXVK1DExw3IjOgweti+o8LTppPdqWIconX7Oe1q2vehjpD/Ej6XhVw2?=
 =?us-ascii?Q?CehJKOOaw/R4NUN7ALfZVlLYinbCnUwEN1mD1cR6Oxm5cbeIsyKsMijN4tCV?=
 =?us-ascii?Q?//GGtP7KcIUKEgdZqC+4jlao9Y0pD18KaeRgW2Knt72csxDprf24tYsuO5JW?=
 =?us-ascii?Q?+kypw4ffhFXH06d9t5RmxST0imRJa30sYYh2KgqT8L0XA6adnTgbySc1w3UQ?=
 =?us-ascii?Q?ZqScv6o72k4t4lIvjg4742REBT1lw6mMTYOmQVfCYZVJVTT3kMNikZfJ/cJK?=
 =?us-ascii?Q?LoCGBzSwCOBXGeP7i4doDcye9THXr+zTlJexY4dLcaTFkqj2ijfoIfvzR9rk?=
 =?us-ascii?Q?xCehblhTF1tV4GYRYdrn/AHTrp4LmfDXWbgu24DuQI7+ZJ37VlmTHi1KpLI9?=
 =?us-ascii?Q?OckL+9kPQgqko0/epPzv1y0ZsW6r3V+ht3xjZXaz6VTz7Er5KEEytaqOEaiI?=
 =?us-ascii?Q?CS+IHPcDcggW4EFluS7HQjKmgxLTWFU/iV8zAv2IQDMze0jjukaxh5AZBu+z?=
 =?us-ascii?Q?jPFtkj9Y8lCiM+dmx/7laR1KalBhsyP2piqOgRqe4jRzegrn+zr+Ica5EiTD?=
 =?us-ascii?Q?cEUzB90Vc1x8gGa1S7tDItjwlPEi1gFO0xvKmpZKxCPoEcoiEzbBR30n5KZu?=
 =?us-ascii?Q?LestgMIXZ0JJGKl/123MpMDKl914Mk5C0MrP9Jbg9GcHyN2JfgOom8Vqxlg6?=
 =?us-ascii?Q?2SSYA2EUl7gXWogh4fDTAHhiwHG/3OynV17vQ8gobVUgr69d73TISonEehwS?=
 =?us-ascii?Q?DVyKFvw0MWrypDAp0eMYaxJdaCn9Ph8c4bkD4d4yp7FFbH1apKaTl5hVkMaR?=
 =?us-ascii?Q?cFypRMKlByyzCgYg/GNVb34UqTO7vOJQCAzLhzOqXUBnCH9iGlKSHM6iLi9m?=
 =?us-ascii?Q?wp2FbecROAI3Y6XNx4IDsgo82npyD2ol8IwZrbsKF7qSD3irqqzQvYIlTTEb?=
 =?us-ascii?Q?s6H3uBzCELM72E7dVRvk5Edmb6s6peNSWHOy4psQUOZAmICgnIV/dJSPzmR2?=
 =?us-ascii?Q?cYnUcGsy7a9fx0BzP7yfoNZZKuCk9rIRFkPxSpFdqFIkbVOuLxlQ5CYCdZP9?=
 =?us-ascii?Q?avgtn4dT6KetGfBCFsnyO23AjXG6PIOYmGSSCfBgFJXw9NuU9Z60E6a+AypV?=
 =?us-ascii?Q?mfJrWQEQhzCQ5vj+HlHEVNPxkc0fQnqa6U/Xx1BO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28253780-9126-4b80-5abc-08dd7389d18b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:12.1971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K0mGVt3obHSr0comrRZBImclV1truVNkjDIYqnZk6Ccc1UjOMU9koQnwSYxzq2aKPuh1iOFM0NUam98P7zPJTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

Add helpers to increment/decrement the active MST stream count, instead
of open-coding these.

In mst_stream_pre_enable(), the increment will happen earlier, this is
ok, since nothing depends on the counter between the two points.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 43 +++++++++++++--------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 325c2a0346553..8084e7e8cf114 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -105,6 +105,29 @@ static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
 	return &dig_port->dp;
 }
 
+static bool intel_dp_mst_dec_active_streams(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	drm_dbg_kms(display->drm, "active MST streams %d -> %d\n",
+		    intel_dp->mst.active_links, intel_dp->mst.active_links - 1);
+
+	if (drm_WARN_ON(display->drm, intel_dp->mst.active_links == 0))
+		return true;
+
+	return --intel_dp->mst.active_links == 0;
+}
+
+static bool intel_dp_mst_inc_active_streams(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	drm_dbg_kms(display->drm, "active MST streams %d -> %d\n",
+		    intel_dp->mst.active_links, intel_dp->mst.active_links + 1);
+
+	return intel_dp->mst.active_links++ == 0;
+}
+
 static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 				    bool dsc)
 {
@@ -1000,9 +1023,6 @@ static void mst_stream_disable(struct intel_atomic_state *state,
 		to_intel_connector(old_conn_state->connector);
 	enum transcoder trans = old_crtc_state->cpu_transcoder;
 
-	drm_dbg_kms(display->drm, "active links %d\n",
-		    intel_dp->mst.active_links);
-
 	if (intel_dp->mst.active_links == 1)
 		intel_dp->link.active = false;
 
@@ -1037,8 +1057,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 	bool last_mst_stream;
 	int i;
 
-	intel_dp->mst.active_links--;
-	last_mst_stream = intel_dp->mst.active_links == 0;
+	last_mst_stream = intel_dp_mst_dec_active_streams(intel_dp);
+
 	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
@@ -1109,8 +1129,6 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 		primary_encoder->post_disable(state, primary_encoder,
 					      old_crtc_state, NULL);
 
-	drm_dbg_kms(display->drm, "active links %d\n",
-		    intel_dp->mst.active_links);
 }
 
 static void mst_stream_post_pll_disable(struct intel_atomic_state *state,
@@ -1194,13 +1212,11 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
 	 */
 	connector->encoder = encoder;
 	intel_mst->connector = connector;
-	first_mst_stream = intel_dp->mst.active_links == 0;
+
+	first_mst_stream = intel_dp_mst_inc_active_streams(intel_dp);
 	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && first_mst_stream &&
 		    !intel_dp_mst_is_master_trans(pipe_config));
 
-	drm_dbg_kms(display->drm, "active links %d\n",
-		    intel_dp->mst.active_links);
-
 	if (first_mst_stream)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 
@@ -1215,8 +1231,6 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
 		intel_mst_reprobe_topology(intel_dp, pipe_config);
 	}
 
-	intel_dp->mst.active_links++;
-
 	ret = drm_dp_add_payload_part1(&intel_dp->mst.mgr, mst_state,
 				       drm_atomic_get_mst_payload_state(mst_state, connector->mst.port));
 	if (ret < 0)
@@ -1335,9 +1349,6 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
 		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
 
-	drm_dbg_kms(display->drm, "active links %d\n",
-		    intel_dp->mst.active_links);
-
 	intel_ddi_wait_for_act_sent(encoder, pipe_config);
 	drm_dp_check_act_status(&intel_dp->mst.mgr);
 
-- 
2.44.2

