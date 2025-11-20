Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F29DC75A14
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 18:24:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D3710E799;
	Thu, 20 Nov 2025 17:24:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l/Q9NITq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20AEC10E798;
 Thu, 20 Nov 2025 17:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763659468; x=1795195468;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=WmkVCMVfuoQDSKLwBKJKxO2XoZqWOOBdqiUv+v1gJJ0=;
 b=l/Q9NITqzCz8X2LT9Irl4gtbYi+TSraSNn1AS84eu1tuFIMpOZbdK0U8
 W5bA8ODQpKqRHfbMlNK++hU6BcTo0etPPjhXxGUj/ViNx1/+sFQn+hYYf
 IWLxsG1CwJ7OyUtkvE/5OEk/vF7/O0jgbm8703Nf7aenswb6ZCxpKgBwN
 9ZSHSK1Qrf5f/utlyeBAHtaoaQ3eIMbfaeqVwqNbGS5RNRYItLoTI/vQb
 8cKmoIfiTbRgx7vBQq7DTC+/d70/SSu2YKO/UpWLvrud+ir/tmrL4M5pO
 1HH6h1bioC1Lq/x+rpdjaIe+1GjhmqlPWS8s+ZsLJCFNMT9xU8BYzgtgA w==;
X-CSE-ConnectionGUID: c3GoeEKEQC2FGkRLtWKTjQ==
X-CSE-MsgGUID: qoHmEB7oQVatGp7zN+doGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65767723"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65767723"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:27 -0800
X-CSE-ConnectionGUID: Y0a20nsJRNCOSDxVFfA2yQ==
X-CSE-MsgGUID: a8MW3wR7Qp24vEodR4ws+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195728031"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:27 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:26 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 09:24:26 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.12) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lNXV1F/idc3NLKtMmP257SshfGoYJXeXZkox776ij3bueD+V+8N36c2BPhRCAypPPMZAPa488/FS/NV12rhBxxSJifrTr15nFbQrvN9vQjAcEoN2Lq8+KjAiYQvHEMSE0ldMGt7YwDA9mlw/KGkANgYmw/kNFJB+I326uxRVEssoR3Ff+0uecWHOu/Nlwnn6xkDldufGHhNUmesgVg7xMaI4oN3k6ee7G8buhIHZMNZCAg9ZSU0Gdc1hxwmOh7k2mnUMSICKNtrwiz/l93n8tBUiko5B9G9jV/UDgksoHQD44IpIzalA5R2EAfYejmgQWpEL68UVCttllN0m13Q1Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKF1UU3cp/OR5kSBD2CoV6xq0kb4pZ0wgQzhYC/fJmw=;
 b=mhJtF7C5NKh6AXoCLdaIob0mys28IVH4KQZUxBlaOv8iZRpaDm2Mx7yLepnAsvE0vJN070Gnpz7rOJGhayX3WhpbZWkyjddqXme64IChzlCC0e3Suh6rrTyOFkejMmzJ5WKcRiqqKUyhkkEJUYGRA2lI507epmN1lA5Uy7ooDoVYktoyznq7yG2iGtxhhYpEvv3XBh1N1x71qCk2qbTOiolZ5C0wnzGVeDDbS5MW7x8u/vNACAadqTf08VEHBC7Q8GprzgCtMeJNCnS65EC15Lb6yuRNzzODw+8mvotkac05KtLtS2oN62VWbF3KBBbitZe7F8X5X+VRHVoyyKgRew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB6966.namprd11.prod.outlook.com (2603:10b6:806:2bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 17:24:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 17:24:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [PATCH 1/5] drm/i915/cx0: Fix port to PLL ID mapping on BMG
Date: Thu, 20 Nov 2025 19:23:54 +0200
Message-ID: <20251120172358.1282765-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0268.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:194::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB6966:EE_
X-MS-Office365-Filtering-Correlation-Id: f0cccd70-8673-48e9-705a-08de2859a604
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MbDyWAotCFio5iITN9ns9zfCLH24ZBrmqSkU/DMXLG0TCStsXiP48x9pBDyN?=
 =?us-ascii?Q?1h/RFb3d404ZCj3jqBXTi7OG9GVpGUU0oIAUrfTcETyJ/QAyCEBDKCW8A55q?=
 =?us-ascii?Q?u7wMeTJXjtJwOVHAF6bzCmHWY5sgysyz0e5aVlO9H9qfBKxH8ihfzlUrEBwi?=
 =?us-ascii?Q?xHZMN5fl9VLfXaRq6kB1Ajm2Ua5HiCRoVqBLlRCSYy+WDjpYMUFd29XAhPUw?=
 =?us-ascii?Q?60uhCQcxpzUQuCP+KN7n8yOw8TKUFCibEQtXYpzEDaPlgr79h0rhE9nd5Zxi?=
 =?us-ascii?Q?F4qDw3OajoQ0XD1soJYvEVFPpC+38MU653MTvvWTtoCPaejLIGImgvWJbPd4?=
 =?us-ascii?Q?u6iqEPf+7X4a3TLgtaNeHDhWT6BIjuDxYzKxhoToRV3drF5rCTkim21XlC4s?=
 =?us-ascii?Q?oSEQBJ1TVlAsZ5IClvtVuj48lLWrDEefP6LB7pUqoFMpGke97xAcYDuzmVbX?=
 =?us-ascii?Q?yVgwJ1M2ibexityhPWVb8vLNFecijFitckMrM13k8p2OSLIKpNuLmTD/zx7l?=
 =?us-ascii?Q?AMnzBDwZQOX9AbWSTTpyB2DQW8uePmchzwaRiTEAhFdkZ1yMEgtckldHuNoY?=
 =?us-ascii?Q?izeCwGtTeyoOkOSSIBrcL6ELq8VYe9KcNNzrc8NH3c8ReDhPmywmKwelgwvP?=
 =?us-ascii?Q?8HXFBNg9HHW8Y9NUYnxG7YoA+7Czk/WX40Ea4YJJFwz+PuViv4kASqIKgTo6?=
 =?us-ascii?Q?k26g/3PFVQkXRZlr4tcaxqtie1Eo9wwEBAGsgl1Xsy9MAY7Pf4IwZ0gdNvKJ?=
 =?us-ascii?Q?laR326tZOZRoLHV6zvcSYtOtFie/YH3/aHQWuoU6mqkFAGmRlNUkZHITienK?=
 =?us-ascii?Q?SiJDBekSCouy4BKlnpSgozMb3qN/9lpTcRbxGwEtDpGcFtnmWUsR/fJ1AVzd?=
 =?us-ascii?Q?Zf/8JbMLfu6BctTXWO1to6aPxSbEBmLQQZGHwzloJ8usp2uw+vho1t+s1p53?=
 =?us-ascii?Q?2bT1VGoHFC6nf+RJHFsKL/aw7fe/y3u/0aR47Q9xXS0/M1/lFt0Uv7zlfgHo?=
 =?us-ascii?Q?UPWKqyEe48vdUZgLaa5su4TyXmG4+Zsstp4G/ySmCC++Ag1goA5btRcdApKm?=
 =?us-ascii?Q?2Jbdne3PeUFHSDKuB9eqYYxSr+3S/+r5CFj/o3KeUY4KBW87J1ORazyRnrK9?=
 =?us-ascii?Q?vWv6vU+5Ugw/dgQhsNDHa87XM1uIF0HBhwuQRg16WD89sVHqcNgUxNlb2vy3?=
 =?us-ascii?Q?vDU7tl+1PPSOVaYRSzmxOhIyZgFk4Jlal4TnXoIvmAhHClbMhDMx9KSpufnP?=
 =?us-ascii?Q?ORDiQVhEO8AGiTPtzFAkGw9YSyhYI6hQYh4hgl7HQjQBXSo/hzrVOFUussF6?=
 =?us-ascii?Q?UEnhsWNUyiRQdw8CGUGYL92Thzzx7rKUDWFHuKkHg/zqfPDprZ+4BkQQxfol?=
 =?us-ascii?Q?8N3FZZyzAfBdA+CI5U6lp7WjMIGtx1/HE4jYMs3vg4r1gQf3oqulhEEBIRZT?=
 =?us-ascii?Q?ERAeWm2+kBbU1anx8dLs0PtO1nGOYbD1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5ZOpj1jUryi8T8LTEzHAN7zFxbW7/FSj3ZwjsBKKJsyE9QWPev9dIJRbt6N+?=
 =?us-ascii?Q?JLM3Bd7KTDAGcSJikkCIAeNmp0UdKexwyWHFsMZX4dniPE0fvAE0LGJF61lf?=
 =?us-ascii?Q?phrJTrg2AkzgZ/gi02mCjXDhR6LTU5gIHZQw7cxeAQLKZP6N20fmKngpvjmy?=
 =?us-ascii?Q?+wKLrIqRGsYsYU2hkSgf624XG7tzpyZt0GkNXMgAeCpl36xUWcmY+20OgKHF?=
 =?us-ascii?Q?+SVYc3huO1ONwy/qY5c2zi7AzpvaE9lxh+tOVPhdiflWwLpRkiZLMzhYsW+2?=
 =?us-ascii?Q?pPiwVvUO8KYq7wNGvWoBmk7DKb1eNcTnJDf/CqvC5gjoYwRqi9kWLjPU61KD?=
 =?us-ascii?Q?mOnSD3uCHdXzNGNJNNUZIIrhOPpZB95hcJnOT9YCF/bKGkEnWt/GbgpkSSz2?=
 =?us-ascii?Q?CT+IsaLrvY6ORYW6lj9v1vaLdUKgp4zh6U3SoMDjmN/i8YmHQgUcbdeEtlSp?=
 =?us-ascii?Q?0yaQqWSQjpiBkNfIGYemqMUB/qEbH6yohyAROfa3dAElj9eGYDGAaupx+ubD?=
 =?us-ascii?Q?C7qGasVF79uwkhgtQQzhzfFK2DeBvmjuYXIo6k6SSY36YQCiuWQZFm8IzA7V?=
 =?us-ascii?Q?/ZxN9o7S6yINjt+6C2wgDkam1N28Q7Lqji88zTsN/ZwPC6IHwrcp6H/kyg3C?=
 =?us-ascii?Q?RUA8XyMLObxv//SoYHwHLAnjj23tVrQZ6woKkunIiKKRP+yMGx0yHg4kiK/L?=
 =?us-ascii?Q?XSAJTUzKCt1FCPgYXL8p3SFOui4TIFCIQR78FAxYUVOcY11hn7dp7stRjIVb?=
 =?us-ascii?Q?oRdwgUlKhvqtZlNbW/sP3XwC4Lc8QJ0cKx1oUtkXUVNPSzbJFGQVOMEt/2Gu?=
 =?us-ascii?Q?qbtBdbGJnhgLJQKiLRxEZKoQhN6m9yIz/YnqSaEDiy3KqhZeSocRp1MhL6GS?=
 =?us-ascii?Q?zcaWCVgYMzdbbx3lKRNm5ZkKgjOwf2XGKOGbz0mUuCE43y1uR7d5mJchsOsd?=
 =?us-ascii?Q?tVc4jd/VOmostTPCz166MigRYqGzh4FktdyT3sMqPOnvJoBoM03ZoBDCS+Ln?=
 =?us-ascii?Q?zAc6ds7xakiCLuKfpXRlRs+SgNYrd1a614Eu0CF7aP6K12W+fLvc66ROosOZ?=
 =?us-ascii?Q?UuQdPiz/FqzLx0xVaCTrD5/JiNbJN7uA8SSvZFLB8nlDavZ9+0b9MC6SNnLS?=
 =?us-ascii?Q?5gT37TSwseHec6gDJNyXmuUKPORRm9kb9Cvs/K6WKhoPZCsEWYVTYlT0kkN1?=
 =?us-ascii?Q?HKXMLNeFg+9RTlSF/CeYJSSgfHu8JESgyvxXkJRB60qc85Aw0E/RfwrpmBSB?=
 =?us-ascii?Q?XTykJGNCXHrxuvbmkQh5jnFSPldtw3e0jLM8/mwZ6tvsSLhhHqil3hEGb0vv?=
 =?us-ascii?Q?NKLBuUhcm+X+1T5ds3sSev8bHp8Km2PLql8uKsJ9u5gKUGJ0K6GLJGY+hO/l?=
 =?us-ascii?Q?NxJM8jtvV8/4aZCziVqYVVJWU4/fVNaxs8FhcFLVY29THK81NAcSoj6HrEVd?=
 =?us-ascii?Q?d6VwJTMjiDlV1GFUc7KXMiLllVorJx7KGkqmJ3JuIzTOc/a/XVuYEltDaQ9F?=
 =?us-ascii?Q?J6YIrZDeDbzVkHHwKAtmIJicC/P4RFLeOk70L773toZa5ttoO+ho6CW5+ujP?=
 =?us-ascii?Q?BZ7c+nF3wbq0C0nz4fwBdZG4IKYgj3S7dxkxq28hE9hg98uSYVwaCtuSC1Lv?=
 =?us-ascii?Q?dIbo04JZflihLkCcHKw0S7/mkVYa0jCAM3MA4a+HDqmv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0cccd70-8673-48e9-705a-08de2859a604
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 17:24:24.3684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vmsvao9SZK2b2S9uOyAZaFMWSoDLU2Zo94FFJnecRO64x4nNROiIdj45t/5nZULHD87amuMzYPfZfrOh3ogzFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6966
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

The intel_port_to_tc() call in mtl_port_to_pll_id() assumed that all
TypeC DDI ports are connected to a TypeC PHY. This is not true on BMG
where all the ports - including the PORT_TC1..4 TypeC DDI ports - are
connected to a non-TypeC PHY. For these ports intel_port_to_tc()
returns TC_PORT_NONE, which results in an incorrect port -> PLL ID
mapping. Fix this up by using the expected PORT_TC1..4 port ->
TC_PORT_1..4 tc_port mapping on BMG as well.

Fixes: ca1eda5cd476c ("drm/i915/cx0: Add MTL+ .get_dplls hook")
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 9 +++++----
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 96fcad6dbb2f4..8471bdab5c62f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4294,9 +4294,10 @@ static void mtl_ddi_cx0_get_config(struct intel_encoder *encoder,
 }
 
 /*
- * Get the configuration for either a port using a C10 PHY PLL, or in the case of
- * the PTL port B eDP on TypeC PHY case the configuration of a port using a C20
- * PHY PLL.
+ * Get the configuration for either a port using a C10 PHY PLL, or a port using a
+ * C20 PHY PLL in the cases of:
+ * - BMG port A/B
+ * - PTL port B eDP over TypeC PHY
  */
 static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder *encoder,
 					     struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6d7d5394713d6..8ae8cc7ad79d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -206,7 +206,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
 enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port)
 {
 	if (port >= PORT_TC1)
-		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
+		return icl_tc_port_to_pll_id(port - PORT_TC1 + TC_PORT_1);
 
 	switch (port) {
 	case PORT_A:
@@ -3507,9 +3507,10 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 }
 
 /*
- * Get the PLL for either a port using a C10 PHY PLL, or in the
- * PTL port B eDP over TypeC PHY case, the PLL for a port using
- * a C20 PHY PLL.
+ * Get the PLL for either a port using a C10 PHY PLL, or for a port using a
+ * C20 PHY PLL in the cases of:
+ * - BMG port A/B
+ * - PTL port B eDP over TypeC PHY
  */
 static int mtl_get_non_tc_phy_dpll(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc,
-- 
2.49.1

