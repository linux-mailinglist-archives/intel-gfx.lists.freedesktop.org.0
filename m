Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A2C8FC53
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE7410E85E;
	Thu, 27 Nov 2025 17:50:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFub5yW2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A74910E84B;
 Thu, 27 Nov 2025 17:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265857; x=1795801857;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=rRendyRn7SqxsfMx4hk+XytVMZkTya+noGo+wBoC6ZI=;
 b=gFub5yW29uCBPepwWfor9C6HQ/osnbXSPIMHpjy6X8JBwUJbfAurX2r3
 UVdUslA5oSIsuEBQOSJa3emKctEBLs88+fO51rUkHrv0d1IApb64JP4PN
 dzhn32Foh8FAs7hxcnNOuX1TVkEzfnG6iWwLhJNqVVyrDoUsD+iFnWQbt
 W3kDU7K2/khq6jaThDgQEt+NaCGgvAWz96sIdpixV8lWI2JPp8rcnp5IW
 hkVTQUqilKrHIIgAtBelxzZKYREOf3Kp/+zp6yxxMO9KaRoCJyuymBvSS
 g/AcqjEIb4YzRSUWXgO88TFngzLy2WyN6YOg66jaaIUjf0i8jUs32au+q w==;
X-CSE-ConnectionGUID: 8kNYXXrDToS/2snJ8oFb8A==
X-CSE-MsgGUID: MkmzJpEWQGWURqlSZSx64g==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002939"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002939"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:50:56 -0800
X-CSE-ConnectionGUID: HYHgODiGRd+8KdWlzcYGAA==
X-CSE-MsgGUID: MRY+/SqES9eCep418j0icw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453521"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:50:57 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:50:55 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qsXep/klKMPPse7hbEMI00xRyy6IYsgPynosfLEPPZJ0UMHFaDW9m5/y8Jzap6XAqP+ZWayRRpYstLTftfGdOIMmjRnBK0Bak9dUHOxPTYakNdmSyR5vLBlPIRDmWU3HuXx9K8iYhUILHjyRiWtyHEdbpFivmvOJUIKfTq9ZCFdUKd2c3KmlpmfmMEQKX2Nb+/bGVTxAoMkgOnD49kH0JYF5UzMmu9ywikADuNNFk+oUWIjkqLiiFFSOSy2L1hYeL2ltTcuc4otYn+3vBiEdSQBHtSeiYq9ThvHcciT9ZVYYqyiS7Bkg55yafJW8ydRtTULUyQP1G6Upz33yB4HxpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYpdjz/9sOE8QK3jhXShLWiJ56bzCSkzfjZGu//gJyY=;
 b=vQpRSxAiy3T6Kj1EXom3r2+Bm2HgRX8sOd1fop0At15gID0H32M7e30G6EWsA2tG7/lePtkI2FqpBqoMsllbUWeaTwfIw1abeTuIyNL6E9ZLWF76VamHyXm+/CFu35V8bUdJSgAkOHfAiY1kby6zfwGhXE9Iy7/nVyST7amIfirfQcRJS3UnqE0rOhjkCjtHA7KNIDfM6RBwrzd04hRRlGDR/yn6utFekEm8YO8I12gIgRcdvfIcU4R0Xpth9u1ACvBcrvkvFZ8xJVPWe3sTOgD1MZfwkwQVTt3fjAcxCAHsTND8p7cG3gFfABB/DR5FbYZYp0P1JPUdCszZp6Kkzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9035.namprd11.prod.outlook.com (2603:10b6:208:55e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Thu, 27 Nov
 2025 17:50:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:50:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 04/50] drm/i915/dp: Return a fixed point BPP value from
 intel_dp_output_bpp()
Date: Thu, 27 Nov 2025 19:49:37 +0200
Message-ID: <20251127175023.1522538-5-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9035:EE_
X-MS-Office365-Filtering-Correlation-Id: a97ee028-3ef4-402a-2cdc-08de2ddd828e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fP1lNRQbE6tdMpsyfl/OnOjhUTDsdBmvKnhsflbtUIy5168HhUNmUIyylVg0?=
 =?us-ascii?Q?XgG6TtfkJv8yZaxSsH6tfcPxznCndOcPuUqJ5cs2CKAF5VQuTWELoNC+gAyZ?=
 =?us-ascii?Q?VBccF6ydwPtZieFklcezzNcdyL7QlkthZxnl5OU70i/er8eI3b/MsHIVvUqx?=
 =?us-ascii?Q?lLnDN8DvQxaqQ5vzgNHOh9KUUJvBkbDmPqA+gPW9HFLoZ8T4Ja6ba2PkZdhm?=
 =?us-ascii?Q?YZVxqh41nSL7EcMuGxjyeXqyQmt/EXuUQc8Tr+t9dy0M0yI6MshuoDNprzgX?=
 =?us-ascii?Q?oRbHJ0C6W8V7sAILPPUt1LEg6F8ocUg6i1g4DIGQHWxYAoQuzpRZHfnN30Hg?=
 =?us-ascii?Q?CnowKpZl+GMqHnDZaG6ba/9HWM9uEEaOR3dU8y7ErZ5DMrZeUFPuDSBvGByY?=
 =?us-ascii?Q?UnU6o/ruxwUJcDmCADeujLV/EhVINEfEPzA7J0XbPW5JX7vov27ER+bIV5Fy?=
 =?us-ascii?Q?7K8kZJq4Pi34wSK65GrD+suGXt5FK8iWQIppaj5U7/j9h9TZsUxiODH+caIS?=
 =?us-ascii?Q?ZzUXWspLVxwK6aCxmtnBVMYY9FF+9N9J8covRgCse5bxzs4gJsnz5iUomLNH?=
 =?us-ascii?Q?7Kiqh0K5OFY982UxkHG0ILiyF8LXQP+yh/j635WutgclK3TplqPdLPsCzPBY?=
 =?us-ascii?Q?uQnXWAtz9WepyNhyL0kGjyrIku3DKdwIwhiOAHcv991xE2Ob8KWagGBfAeAB?=
 =?us-ascii?Q?EaUA2ri5jqIArNDevxOJw3GMCB1mPXkUu6wGC065uropQaPAg15IXhiVghzu?=
 =?us-ascii?Q?E+4EH/IfaorADNo77BwtUce6BPLk7JShK8CCPIy7ao++e76P1zke02cGqiR1?=
 =?us-ascii?Q?GhCNYw1bN566Pd3wG3swlPVobAnoFfttRdHAfDWc++Hsw/RuoBVYSxf3LN1q?=
 =?us-ascii?Q?vVt9r2pIbaqp9tDTsEDSvPcR/iI32vJKtv5RnKcv4MSttGAzYlL1ahQlxoe+?=
 =?us-ascii?Q?XWZa+4VNYLtJXEcEYwb+k/4/f00mGxGOiHtutKliijRWQ0EkrfVR+dWypeLm?=
 =?us-ascii?Q?mrJQTdpnAmEoPHvGcXIp62Yd2o12KUvbrAy1Mhqql7GYkVLLmElra++Clu6O?=
 =?us-ascii?Q?qF7dh1AwDzGmKW46g8WeJAr5dQOixuCv+TufhLdvyGtAv3ceg4f5muKmcQB3?=
 =?us-ascii?Q?FPE+FM5Oa2Pjhkjbc2XX9vzI/MBFJjHQicDbnFXej854SmrgNgTkrGPOT6WJ?=
 =?us-ascii?Q?xJkocAXf5sEUnZJsVUHaUOgrzlc/GRvjhusKdMM1GuUb48fZQczK9wk2haB0?=
 =?us-ascii?Q?H+RAWiKPyrYdTkOe82VmhEVuKcb/JskA59jDPgJ5+caxLKXnnqBf/HSF1Fji?=
 =?us-ascii?Q?mxwrUzrY6FL+ZPI551fFVcxduualkegAZIB2HKLuRXCcn/KaQ5WBhr33ooNY?=
 =?us-ascii?Q?DMsSfbUR9GLRmfx9k/2105pjjtz37Tw7Wt6ortzEjlApXs2rUbmt1YtIc+Ub?=
 =?us-ascii?Q?6M1yv1bGB8QrWqcF7O/RHrRvRilqdLCI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fi3izh7ADDjNGHj8uUQgjsgN0c5P98R7eaV8RjsGkS6/wSqNAWucDX5leGUm?=
 =?us-ascii?Q?Sfdr7pwPC8bUtsQ3G2iWmK7jy8BFebRAut5HBIQiaZQoLmt6Inw1usXSFfhX?=
 =?us-ascii?Q?6nn0wuqouJy5bKocCLYHxUUhPNcl76ECMjuXbyhkowhg3P3iMnkXlUujSoiS?=
 =?us-ascii?Q?cf4MML8y7x7d9nfQBLL8XT7ZKhI6MWze1IkcFrPXjpanCiDikrChSVx/th3c?=
 =?us-ascii?Q?7xidFrLr6Vnsw8KgjMpg6I/RZ5v9jpt0fhOhVafwiDNlY9UuXN4sl/+Fgiem?=
 =?us-ascii?Q?unsC9/tzz0W1tUE0vKZoN9+oNmsLosLXt7KeP6tea4wM/5fwHJtLFWIIPew+?=
 =?us-ascii?Q?FTEm1yrQyqJmRaJYU7oNv3hPXmKSQxQva2LHE1NWVfRlaCtfWfh0QUnatFbu?=
 =?us-ascii?Q?9Dt31gjHX0kfyEGLXuy7Kl7l9Yzy2W5RldS/T4BtC9Rr5zVpGsk/1SNPlqDP?=
 =?us-ascii?Q?7CHBrJW0A9swfy4V/wZ/yL+vvmny8eT/MB5j/vALrzEqkQVGCbGSdtpVSlQL?=
 =?us-ascii?Q?AuSIky5YA9vP8Z3RhbsI3ES/U12Y9gqlB3pdnowFM1kcPTG9SfDK9QEgXuKi?=
 =?us-ascii?Q?KJk11SQpMInnECmGtAoSHzHYx86GLb7B4k7W9bMf60Re4EuaElbd1o9thmp8?=
 =?us-ascii?Q?8eN9jJjgkkcFUApBIAvaIxCXpme/oCUFWzTqRx402RyR5I+8aJJfdWJjY2Qb?=
 =?us-ascii?Q?k3heIt/imbddvXM+hsWBVfeAAoBzcCd+Cgxj5qCSwKzIODpc8X2bNh7G8EvH?=
 =?us-ascii?Q?OiVIKw+Pm8D6kQrIAjHB350MrAxfalU+HkVe0nTjqkOItskZ8y/o7qoIA6sR?=
 =?us-ascii?Q?5bcgJRQqUr0TPuy8EzSL+qyCOBO4e2MW/0AO3UrxcXPefM5kB/VfZB/RG4MZ?=
 =?us-ascii?Q?zcWIKEoTyNSPpK6V3XWDbXlOSAYcSFz4x3WS9AGRyE9Ensh6+bZ2IzJqEZoL?=
 =?us-ascii?Q?HTXstbO8s0FKNc8kBiUPSA2H5FlDjtESD/P7cnkRffliPsTTs+hQLJhYyk1p?=
 =?us-ascii?Q?4QHtKStXLrkwo+3w+zJTg20wp00WB7YjZtAjxKeBiBvxbpT6+TYGoGlGehBB?=
 =?us-ascii?Q?5fI5VY39UWIE0R+bfBukEhMWK9FH/u/M2j/ejKmrbTyBJtwUAtbn1TXyAB/s?=
 =?us-ascii?Q?85HBgne72uUOw/xCVsbOf1aF2s2nFmrskvXZ2CRcliIuSNtrcGCoD259Yn8z?=
 =?us-ascii?Q?ZJHiH10x7we9L6Bcg2usRvCg5nzKecRzYU+xz4mbJvYOdiSoG+MOJwpU11L8?=
 =?us-ascii?Q?H9b0VCyzbQBChAeWm6ZSyswdlsrJNXwyT3QBGn0a6ajNgDnr6JlrZ4zRjXLq?=
 =?us-ascii?Q?9PbDPeTj0Ax1YqbZrO4FIGiKW6H4fDmkwLRg08lygEISVxCDjbW9wuTG1nmJ?=
 =?us-ascii?Q?cwufmQd8dTaU75tfuoFjSG9spf8rwqqddN0RPSCwCDWetWuz32AZUr28P0dm?=
 =?us-ascii?Q?rOR9m33tiluSlOerGmFkjOQoLZfDW/ZFcK3Xe8hAE5Otd5JZqD9YDCy0dp2V?=
 =?us-ascii?Q?9X2+QDKFRTHcJpRWN1vZR+q81b40XeJ5O3MiXETqLHEURUpUPgPOvWRKjUb3?=
 =?us-ascii?Q?MFM61xa9iCJuUc7Um1zEpCzKm9dz+9Zwe2J/emkcN29S1mlo1XilEMQAr+pw?=
 =?us-ascii?Q?m02MbkyQBsmWDpc6TCC7LvRh16axpYnyg7BM5UO1h6Ip?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a97ee028-3ef4-402a-2cdc-08de2ddd828e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:50:53.5686 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hb/JcDB2FLaiv0GMWmwP6zMh7WhVbtZpARx70v99kxYHJKWsZmM0ibJsjWU3rxxi2bsij/hpagoxshzXAJvJWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9035
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

Convert intel_dp_output_bpp() and intel_dp_mode_min_output_bpp() to
return an x16 fixed point bpp value, as this value will be always the
link BPP (either compressed or uncompressed) tracked in the same x16
fixed point format.

While at it rename
intel_dp_output_bpp() to intel_dp_output_format_link_bpp_x16() and
intel_dp_mode_min_output_bpp() to intel_dp_mode_min_link_bpp_x16() to
better reflect that these functions return an x16 link BPP value
specific to a particular output format or mode.

Also rename intel_dp_output_bpp()'s bpp parameter to pipe_bpp, to
clarify which kind of (pipe vs. link) BPP the parameter is.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 41 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
 3 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6d232c15a0b5a..beda340d05923 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1234,7 +1234,7 @@ int intel_dp_min_bpp(enum intel_output_format output_format)
 		return 8 * 3;
 }
 
-int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
+int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_format, int pipe_bpp)
 {
 	/*
 	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
@@ -1242,9 +1242,9 @@ int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
 	 * of bytes of RGB pixel.
 	 */
 	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		bpp /= 2;
+		pipe_bpp /= 2;
 
-	return bpp;
+	return fxp_q4_from_int(pipe_bpp);
 }
 
 static enum intel_output_format
@@ -1260,8 +1260,8 @@ intel_dp_sink_format(struct intel_connector *connector,
 }
 
 static int
-intel_dp_mode_min_output_bpp(struct intel_connector *connector,
-			     const struct drm_display_mode *mode)
+intel_dp_mode_min_link_bpp_x16(struct intel_connector *connector,
+			       const struct drm_display_mode *mode)
 {
 	enum intel_output_format output_format, sink_format;
 
@@ -1269,7 +1269,8 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 
 	output_format = intel_dp_output_format(connector, sink_format);
 
-	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
+	return intel_dp_output_format_link_bpp_x16(output_format,
+						   intel_dp_min_bpp(output_format));
 }
 
 static bool intel_dp_hdisplay_bad(struct intel_display *display,
@@ -1341,11 +1342,11 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
+		int link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
 		int target_bw;
 		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
 
-		target_bw = bpp * target_clock;
+		target_bw = fxp_q4_to_int_roundup(link_bpp_x16) * target_clock;
 
 		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
 
@@ -1460,6 +1461,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	enum drm_mode_status status;
 	bool dsc = false;
 	int num_joined_pipes;
+	int link_bpp_x16;
 
 	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
@@ -1502,8 +1504,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
-	mode_rate = intel_dp_link_required(target_clock,
-					   intel_dp_mode_min_output_bpp(connector, mode));
+	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
+	mode_rate = intel_dp_link_required(target_clock, fxp_q4_to_int_roundup(link_bpp_x16));
 
 	if (intel_dp_has_dsc(connector)) {
 		int pipe_bpp;
@@ -1815,9 +1817,10 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
 	     bpp -= 2 * 3) {
-		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
+		int link_bpp_x16 =
+			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
-		mode_rate = intel_dp_link_required(clock, link_bpp);
+		mode_rate = intel_dp_link_required(clock, fxp_q4_to_int_roundup(link_bpp_x16));
 
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
@@ -2201,10 +2204,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int output_bpp;
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+	int link_bpp_x16;
 	int bpp_x16;
 	int ret;
 
@@ -2216,8 +2219,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
-	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
+	link_bpp_x16 = intel_dp_output_format_link_bpp_x16(pipe_config->output_format, pipe_bpp);
+	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
 
 	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
 	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
@@ -3267,8 +3270,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 	if (crtc_state->dsc.compression_enable)
 		link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;
 	else
-		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
-								   crtc_state->pipe_bpp));
+		link_bpp_x16 = intel_dp_output_format_link_bpp_x16(crtc_state->output_format,
+								   crtc_state->pipe_bpp);
 
 	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
 	hactive_sym_cycles = drm_dp_link_symbol_cycles(max_lane_count,
@@ -3378,8 +3381,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (pipe_config->dsc.compression_enable)
 		link_bpp_x16 = pipe_config->dsc.compressed_bpp_x16;
 	else
-		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(pipe_config->output_format,
-								   pipe_config->pipe_bpp));
+		link_bpp_x16 = intel_dp_output_format_link_bpp_x16(pipe_config->output_format,
+								   pipe_config->pipe_bpp);
 
 	if (intel_dp->mso_link_count) {
 		int n = intel_dp->mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 200a8b267f647..97e361458f760 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -193,7 +193,8 @@ void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 
 void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
-int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
+int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_format,
+					int pipe_bpp);
 
 bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4c0b943fe86f1..1a4784f0cd6bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -344,8 +344,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		}
 
 		link_bpp_x16 = dsc ? bpp_x16 :
-			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
-							    fxp_q4_to_int(bpp_x16)));
+			intel_dp_output_format_link_bpp_x16(crtc_state->output_format,
+							    fxp_q4_to_int(bpp_x16));
 
 		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							     false, dsc_slice_count, link_bpp_x16);
-- 
2.49.1

