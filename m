Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D79CB1DFAC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56ED10E49E;
	Thu,  7 Aug 2025 23:02:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0twu546";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8BC10E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607735; x=1786143735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=P2qhsW+6I+4HjMKbtb7ZrL9PWl9nU+2UJzyPLx8btUA=;
 b=D0twu546Fo2u4F3IOtjZtoMsS7lBLP6oeHL43P52Qn84yKcQWBZagu6G
 LratlAK+6luqttiJLortmk+V53E/k2pQYbUIQCG2dNOjprVPziq+tW8jG
 mXb5SdhXm33KDrCU/tan6/twkN+DLxDSHyCJdf7kocJO7fdbAgkl3xvUf
 RS5LMg2U1UToYMGQVuQVZVbOqnGtcTNjy2o6TGTjwPNy3kX5OP4fm4s9c
 eFhFO+Sl1LA/tttHnWuj8QPcOfFaGbJEmThHfL7gkHc5QwpnweghFtvZC
 Kx+NV2XOj1GjQq493uNn2Enx2EhGLKp9mQR/DdH7TxfgVm8b7q4BnJ0uw g==;
X-CSE-ConnectionGUID: NAGyQYHkSCqopmyaVccSAg==
X-CSE-MsgGUID: +tR8JsJxTdauIxsEZJjIZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="44547717"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="44547717"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:15 -0700
X-CSE-ConnectionGUID: hLT4YthwRPKSWTgQh4OfjQ==
X-CSE-MsgGUID: JML6M3wVQSih0VMJ8eUCJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165080055"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z+xBfdYhqc9S6iqOAZ51OYWOUcCf6DIj10ESotXda33XGjLjwwR11J4/3nl1WvEjBzhL6T2453H3tQsnFKILLlbhV93L3GRGIMBaEnvv0wqWQ8YldM5Kz7kEO6vTxOREVOf2PU1cWRH9alO+m8eT3XKYwfp9qrCm7MuiiCdRMFrZialnzmgW8i6SsuZpLKcd9FMnN7ciPvICI8uX3aa3uNJVT7f8ZpJQWuHoSLI74Q8GFVhjlMXSCs7zOB5BTp/u/jIkRjmECBT5nyKYKJv65DeH3nVbciNLkoVsV3dFOH7jjDu9UR6iU9FowvhXseDO5SMh743G5vXZMbgvOrhG+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/4LFcUf7Kr+UMw/UX45vOUYj1u0On6HKX7VrbKFKQw=;
 b=jsdvtl55t/HeauCUwf/Cwm6NFM/KAYFK7ucp/VUhBi9tqYDcjf5Wr3Gffe8wGEPkz38uKg0CDwK7mOqT0akuzrdwSRJH1wumY4TcScPX+QgUD1BZTmL37RKA2kc6/UCbYz+HFxXpJfKP7G4CSjkLpuhv4YYVx2wZerIVyz+1JmT3CthkIQrvd4GJM2j7NTwDAbeJtmdLdUJfi8kWFv/4j7jpeNuJYvGMUQj3497gIY9XecZiS97pir+igR+9YFMv5nIc9Gz3WdzsnNMt0xiZoMijGCGFuxYsLxMfD8XhY0EZ71rThiXLgt4l+EeE7NTrvtma2TjOl7ONvtdPEUWoWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 23:02:11 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:02:11 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 8/9] drm/i915: Remove unused struct_mutex from drm_i915_private
Date: Thu, 7 Aug 2025 19:01:52 -0400
Message-ID: <20250807230146.128362-19-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0352.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::27) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: b0ae8db9-8d24-4daf-c883-08ddd6067142
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1Zz8jOL5Vqv15DM/PTJUEyyIvSzUf+jh3PbKZDq/f+Hy+jGSdEtiZKtxkJzm?=
 =?us-ascii?Q?4ZhzwRLztktn1lwXR6LCjhXPc+/p0+pFjlGqUEmeRJtjEU25sgxN9Sr1y2jP?=
 =?us-ascii?Q?XuVHQHMe0U6Aa+5YEr7ELyzFsIfT1ujm5GC+Rswk8Jsu4QDJp8yan0heYaqJ?=
 =?us-ascii?Q?pMqxJKerwsfLyD9W/G89ns+1/LFN4mRiSt2gPifTIkna8kOZiqOai1n6g6tG?=
 =?us-ascii?Q?cZqNUCv6y7Xb33MlvNgaTgp5OL/2PEh2VEKG+bo1AhQ+cdSXblu4Pqs1FwDB?=
 =?us-ascii?Q?VzUK+EpgWRm5YBqrOWP2UzRVtXSRpR1CwK4w+bWmebs2qzKmagefrkrXLAdb?=
 =?us-ascii?Q?N8IA06fPavZsfAdTwMYvhVFyA6mBre2pHk2yHmoYXBVN8llRUc1XNqjpfkaZ?=
 =?us-ascii?Q?5QxxeWoqi7ZLO57vMnXCuQcLvBYNRh2dZwqy/cnlsdOqunXhicy0A0CM2VKU?=
 =?us-ascii?Q?BoN+Eu/sNwxVzhrZa/5yfOIjwE1gP0s7hlMphtP9zPSlshn8GCnu8yk5ifF4?=
 =?us-ascii?Q?TcJQEKsHju8xDWLdEUe1KjBLvilLwsLuDU8x8wkbPmTWRLk2wORhfRPO5SiT?=
 =?us-ascii?Q?vIJfPgBOCNAuWNB4wW3yinh0gop7yBREbUkyRhEVPHIzzGXY0bXq+/gKt/Bj?=
 =?us-ascii?Q?XyjuYPEr+T5YFjaX2eTQfx05UiXaC9sVu0i2FV7jiWDszuwdn7QSCZhIeIZV?=
 =?us-ascii?Q?TBc21o5ESjo8CVoIy1Q7cFAwhnBbQvrGkTB5oqdWIzOH7Ak0PqvaV+Mq8rzp?=
 =?us-ascii?Q?T+9MzfNEKefFbpglSZ7SE3ihmD3vXfTqFse64s5A90qzGTN4u1rUJVthT1bw?=
 =?us-ascii?Q?/1hbFOU9173lKRseE+1iqN8S9SV+85InENHis7bst5woFQxI56maam8DFnoB?=
 =?us-ascii?Q?LTZu6Ch033ZXhFg3pkqxd6sOuOgkUlCtXf3UlutGgT6+idhrkR8vjBJfBRS/?=
 =?us-ascii?Q?daPhxW3Jt+5p0qeu4F2A+8DCR0wK6c97e62E2kteiKQRxu2vu4g76UopYuXu?=
 =?us-ascii?Q?KefAXL28Ph8lTe3BFgaW0fKx5rXZfOw9UleKTJETF/N67fM0k3XRCTp+0JP2?=
 =?us-ascii?Q?7CF2jlMXnL7ZavpzkOWgjPjQuqN1z1+EsZXvqvzTyPphiNMJ8oIcEPsW0aZ5?=
 =?us-ascii?Q?9mcaFfxKRsQxXn1JT1JSbjXutjMf0AYm1fiJ424wUFYhsIR6KANwQrJpEmRZ?=
 =?us-ascii?Q?CM6f8gRsW0/uvfMEltF63z5kodooXtqG4A9iVULZHX2nPUwDrOX9Cgsc6Jlk?=
 =?us-ascii?Q?5mjps+X2m2xQmNXm2kc/bsljPnbuvtvb7hQRmuP7yhdnEvM3n5qynXN3MNwB?=
 =?us-ascii?Q?MDFo3eTQLRDaiLSz/mtFIk7ufTedZMJ5RS9KIxRJ818/d7E4vJKU8LDVzSwQ?=
 =?us-ascii?Q?1fG3BCEob49epWp265VsEJG54aTADAnF/oTEzFSQUif17yi/rw1oQdiSpFV5?=
 =?us-ascii?Q?y2gKA5e5w48=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JWHIjRTu3V7Mj0e/wyVLey56Cw4fiBgP2DUaAjqf3RWFFdFEnPfTvHBKF7UV?=
 =?us-ascii?Q?Up2cLU3zWVip17aD5W5GQ4MNlXx5nj2eCuUELEl6xgaQyucVho1Yj+QuTU8k?=
 =?us-ascii?Q?gVqoL5yoRtPK46fl+z5PDdSA1crLCgKQPZxffOqtbV4Np4GfadKr/VanGLKW?=
 =?us-ascii?Q?m4mQ6PCGBQd3uO7KQj/MeG+kIjtQsjCe8x/vNb6F9HWttZOm/kp2R5s0EkRj?=
 =?us-ascii?Q?9eJj6y8Xmwd8THiDTUvg+n646LUoaki7ImLXhgniZm4CFhLqzS6OyRAAF4T1?=
 =?us-ascii?Q?6zmJgGr6PS6Cbwg1weuiPZGUpMwO9cMHQ12XH7eqVX/6NAeuGOobo79sHiVq?=
 =?us-ascii?Q?jOJ1mNoCQ7zPMwgrMW4zKouuDFtBn1g0TC8BDOALIUE2YbQPLEVkc3uDFGY5?=
 =?us-ascii?Q?OvOlmojl/Yd2DwkgvAgiKLoS4yPcusJJrFsj0cHyDjqcB8SauqYSTauTmuSx?=
 =?us-ascii?Q?F0j4J1F+7D+TNTUoirAQBAqZujrK/965Mokg6E2m62cGabLqskstvxBl7Zz5?=
 =?us-ascii?Q?TK2aoIalLSDpWiLrmvwly+8ANN8VwdPZ19SGgtK2lg6vkyskN1FQKvLTUESC?=
 =?us-ascii?Q?OGbE0+SXDCaInaz4wnt+pjWtYp6sjfUVImv7EdBautXE0OyuVk+pb5sQVBMh?=
 =?us-ascii?Q?C6bhbsN1TiDeynvSBO+T2YaiE/tnvWOEEuPRZZDEzu15ZT5ATpU0voYFt5QQ?=
 =?us-ascii?Q?5F2BNZT2oWWiLIz88qznA1s7gB8Uo/d/stVAvYwS8w8zGLGEaPKRmjjs5Jkf?=
 =?us-ascii?Q?9ysFBVrfvdVnUW0XzqOn24jYuC8oqh4NmuCOGr9sYwHNDphfVbIxDESdP9iW?=
 =?us-ascii?Q?E/98AZ7Zcj2L1QOyfxJMHKhaoAqs6Ms+ykSaIhDr2hFeSY7oTnUTD/PSouXP?=
 =?us-ascii?Q?7xi4uMv5CoawVN3tj1Xf0Si9RtYLC+9JMDmHOnP1HZM0UpAfJI0tV68LVbXz?=
 =?us-ascii?Q?XsvioLkYOlNBbOY3UR9cMGQ7PdU5EA+UTXrbj2a/ZX1YrMSUnMM3XOZ7zYvU?=
 =?us-ascii?Q?TBEH+Cze+TyeDmqz5AVhKVD7Rqp3pyFiu6e9++NIKzfi79t7eYZoeSf3+2t+?=
 =?us-ascii?Q?pACh218ZNoVJD0TERC1JxekbTV2581GChKZcf5WSpOu4PJAW4YEjxsSVYLLf?=
 =?us-ascii?Q?4auhZOSZ8l66XkZa/4s4HVTOaaWTFV5nRfrMsTCRZ9OPdNv8KezuUpWdn0bY?=
 =?us-ascii?Q?yB+x3RtqgqP7p8zFvlRq/y6GxPa5CWshj2CQa9QQp6fpABK3JHs+2NdGFz1z?=
 =?us-ascii?Q?iiHV8d+zrzDjrxSBwYe+5uTNFVsOPNb0i880o/ZnzgkDml+u4XGAK6axoU5A?=
 =?us-ascii?Q?8iiADXjr1ETCbtc9q3ZYwqfcDL/yxY5cemUfcvj/FolPqywS4EwMknM08rck?=
 =?us-ascii?Q?thIMTbn0a7LQ/aTqP72Fdt1icd6HV/CMsD+EIxZSHRFpfgqrlMJtUldCSbmx?=
 =?us-ascii?Q?9k8+di2F4PDVuE/VpBd+FRDY5WGkZ1VdoSTNM9D6VoOR4sjZnDzXbBLThSUR?=
 =?us-ascii?Q?VClBEeMfPJkeQX84vrg2zYImckGfoe0uCWsfhkzyn1B0s9axQs0eDHV5infx?=
 =?us-ascii?Q?W9PldOFPBk8J2p2C7Zbi+XLiY6xc1FMmK0V2zIp0Op8r+Jd7C0XfNQtoGQyz?=
 =?us-ascii?Q?MA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ae8db9-8d24-4daf-c883-08ddd6067142
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:02:11.6590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5fZKw/+MUkiaPWSDwwUNgZgPVsStbsoq28ewqpdQWUtC/5JJJVRNQeJUMwPjyFujB5n7GNyN9XVRN9vzTwZDmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

The struct_mutex field in drm_i915_private is no longer used anywhere in
the driver. This patch removes it completely to clean up unused code and
avoid confusion.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 drivers/gpu/drm/i915/i915_drv.h    | 8 --------
 2 files changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d1559fd8ad3d..c6263c6d3384 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -233,7 +233,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_sbi_init(display);
 	vlv_iosf_sb_init(dev_priv);
-	mutex_init(&dev_priv->struct_mutex);
 	mutex_init(&dev_priv->sb_lock);
 
 	i915_memcpy_init_early(dev_priv);
@@ -292,7 +291,6 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	i915_workqueues_cleanup(dev_priv);
 
 	mutex_destroy(&dev_priv->sb_lock);
-	mutex_destroy(&dev_priv->struct_mutex);
 	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(display);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 63fef3873a38..5a8ac1a52849 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -221,14 +221,6 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
-	/*
-	 * Currently, struct_mutex is only used by the i915 driver as a replacement
-	 * for BKL.
-	 *
-	 * For this reason, it is no longer part of struct drm_device.
-	 */
-	struct mutex struct_mutex;
-
 	/* LPT/WPT IOSF sideband protection */
 	struct mutex sbi_lock;
 
-- 
2.50.1

