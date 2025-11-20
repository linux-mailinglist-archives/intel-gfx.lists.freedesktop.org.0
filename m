Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613B6C75A1D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 18:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B4710E79B;
	Thu, 20 Nov 2025 17:24:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nK+fI4Eh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C3510E79B;
 Thu, 20 Nov 2025 17:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763659479; x=1795195479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fUkIeNvz1WxEhR9AknfoXNQV4N5C8Ruw9FpET+2Ayn0=;
 b=nK+fI4EhL/LKY2C4HlLmi2K9iobdlCtjXjxMTl4ttpz856pr17lIRCQq
 BYV5uNGA0309HpvdQNugVedsHTEe9TM8zvXy9apZAqg4fR+prNfk3MCtH
 /7AIcrmgfQ/BV1R1GmGru2HkQ9ymBGy6MhLm6W2wINoN14+KH4LxkFT6i
 HovbXFSEnrTY5LrRuHa1hcUN/PGOBO3lZ2alqq5ax2enouR5EfuIvf3GU
 5zKx53fAgiOauAWFEPg1GNs3eeP5hND2CRqCubZ0H/lHk2pco5IbtFvy0
 rtMdHZ4wjBafOim2Vy8njavtMhm1U74AYPFqArIZJBjjLwhehqFEGaIJ8 A==;
X-CSE-ConnectionGUID: 7snXSwKjTxO21UkFkT1HfQ==
X-CSE-MsgGUID: o1jrSTQVSEahv4YzkuJJKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65767753"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65767753"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:36 -0800
X-CSE-ConnectionGUID: RqoN8ns/QlWmmbtoo0RrxQ==
X-CSE-MsgGUID: CHIWdp6OSuGziK+vpnil5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195728078"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 09:24:34 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KUnLLzXXm1S9rBtuyX+xtiJwzbJU25xDwzAgzuY2epKcTmLZ0liFFk6iPgl7ebyxNqNdePyHBNI7l28nCPwjIJqN0UUi3Mt5MBGMPYTbXesrjr+RHm+tvBwKP2xaWWeWTb+fvOEmMl65fHawq11eHA+09Ovg65gFtiF0hWA6g3e5k/X5lW4WiA8gA8WD2FDJLCKXXJ+wqUwYItfFzF6CfbxdjoSE+RoF2pCXSq56aZtnt4uM/0GGAauWskKh3T0UDSKBfE/mJ14lN5KzGTxhAK5Ml5N9h+SDSK3OgyY4mtNoSeuZ/WcaMSQ7ymnle8SwaObZ75KxV5RV6gF8Ndkvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=znuQlvryGokeBuArncsO36gOVfLQ6DOyEGBQ0LQV5xg=;
 b=NIS3uXa+pegq0rGXa1Q7K7XLYndNDpY81SGygD89ZF+DEfsRx3Fv6UMUJAxBjhbxyPkaWpds6Tg6eI2wfkjfgsdVvNAwsDN12M726f4cZxZJrDiUxkmSymwrTbGJoJxfbod9b2LaUW/5844rUanj51YJnyLafSnWsRA0/qbD7/KLWqRsv1d7lHJBL1kviYhWcHel13kwvpcZbOlpNAWVJXBPkJRoIg+51Eunkv4E8ZReqbpESxKSFpHph0pcMOvvmwHskHkVeDrJvmuSLOR0BlguEdUitt5Bj8DTh7hel+N1tKIQ/D2coSuflmMpyArwibwwQvGvrmve3j+esGnX7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV4PR11MB9516.namprd11.prod.outlook.com (2603:10b6:408:2dd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 17:24:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 17:24:29 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: [PATCH 3/5] drm/i915/cx0: Use intel_port_to_tc() instead of open
 coding it
Date: Thu, 20 Nov 2025 19:23:56 +0200
Message-ID: <20251120172358.1282765-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251120172358.1282765-1-imre.deak@intel.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0268.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:194::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV4PR11MB9516:EE_
X-MS-Office365-Filtering-Correlation-Id: 69e82b82-38ce-4bed-f185-08de2859a8c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5hB7h62x3Ae5L57lN58Sn85qdlsHX6l4jS3ukaW3Um8j4bwulRkafElSadvd?=
 =?us-ascii?Q?wSGqDjhibcmH9Cq5It7Ty5OqRRDL7R9yPjrypHtusFQKK38EpmbcSAzN7fX4?=
 =?us-ascii?Q?fXwLollZ0+xq3WJMCXmX+tAEHMBf3nwPx8TpRhellEoGmFleQMNJYvuG4mxq?=
 =?us-ascii?Q?0RS6a8UwuhvxcZzXRrKTFoTf1fYmQc3DvV6ZYZNomcb/eEqlzP5l6snt/UXf?=
 =?us-ascii?Q?HWPH2cljfEsIeNYnXi8fF906q4Qe2oeKycKgCV9g8s38PMZkkZF5t7DYoEuN?=
 =?us-ascii?Q?Krli0/esYay/uqAK0bJT8zaK+D1poOyUYDlvMvUdDodGGPHFy9R+uTDUUlTD?=
 =?us-ascii?Q?3MnAgx8MyDJPmHwnwExaG5KKQSdlN1yTWRTwv2fs4Wo3Ya0Eu1qfOHXBoRg0?=
 =?us-ascii?Q?2rlObLbQxgUw09+6Ragt7/l977i5gCrglDugDJ6oJWcaYRtqkL6vr4LRwRau?=
 =?us-ascii?Q?kGT0SyVCXwpCbINykxpKlUGE/meO44P2U2nwbU5AG04X/ESLWQrWYG7u6nLF?=
 =?us-ascii?Q?/e0sMu4fsUWeAwitri4G7IbEiFMTK9SReW2tVDz45b3e/VGR5mb+pYO/HYBR?=
 =?us-ascii?Q?3NHWmefz3JIZkFcAsVB8Mgi0//LqlD3Ig42Ddd3PsG373dZc+sbO+y0j6a4r?=
 =?us-ascii?Q?4EkUjag63ULYggdocnzyTOHonYUa0AXWO9gpkyWWD56UN8HM4gU4+4GhM4bh?=
 =?us-ascii?Q?Xtxp/YJrGidcVTPmQvFkQ/OpoExJ0Ecm+BcBFU27NBlNFoYDPLqJA4DTPDEx?=
 =?us-ascii?Q?wrjwt1j1DYN4+SkcJl9eJHhy4gLcA+TjtMFSXHsh0caaTpWAzKn4h/oTz8HR?=
 =?us-ascii?Q?5Io7vkm7EpTWhjWoBr6v6t90qc6G5JmtQ+Gj+MZDxoNhrY3PbEipR6Rz5Z4n?=
 =?us-ascii?Q?eV7oCs4c4bcjE/Yz0Iy+rcebPbC7XPXK0wBjhIfiyrjSa1RVV/JVSaJdTivt?=
 =?us-ascii?Q?iUBP5UpnuNpMT2MrDrJMEdt2FggYKcYs7OuDrMuxKioBZwKWHggKgBfZ8YG/?=
 =?us-ascii?Q?telH1/Q2AdHq63aY75U3nuDG6bdfL3kaXi+fuGFs0sGYsDQLJOqcUheuZ+7X?=
 =?us-ascii?Q?hNens3PmBO5OopaX5k/UBzZWn0b2mmZYw07svIpSVr3G+qaPPNkzp9NvJiVM?=
 =?us-ascii?Q?UB9JC80g5KcVLki9uCJ4u6Cg2adWYK8DIsfwkKaSrbdHJENi00CZjBuVjm95?=
 =?us-ascii?Q?98u1X3vdvwCALQxDW413vo8G46c8ox1Ar1kC1BLeZimC6C+odECox5vSXp+0?=
 =?us-ascii?Q?fs2UX5pWAa0UgRoFTfCQXgOrBLETMj+Zzzb36aYG9EvZQzNm2yBiQGQVZiaQ?=
 =?us-ascii?Q?PfwuVrgxx3KUGz1dn6+4OZdEUl2P2n17mRNk7WgkVTp6QxPdsrkwb0c05dIv?=
 =?us-ascii?Q?0u+WFwtiC6ie4FCmVwFa3kD8pCCzDFUSIxcqetsejygLkMXgh8nA/r8EZf5l?=
 =?us-ascii?Q?F1dQs7HABhlMdoxiMNFbfOKIrfJ2x6HN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?id8lvfM6kkDDnVKvcr0IzWVrhXx9bYcFSsjtJoZZmNIIMBaohHlOAjqeYzbo?=
 =?us-ascii?Q?DCtBbF8oFwsAq1XJ5j1XzFuxdBN4yuYYZqPtpQRVctNMzFhzT/G6B2unqdMg?=
 =?us-ascii?Q?TxQJDzvDP/Y+nboj5p0e55YS0kxnSKUsc+2nIVpeGN1yHuAn0sAaXsSKHWcu?=
 =?us-ascii?Q?4V0xr3PxZ3V9GPi74TgYncXKJOQ6Wfv2o9Id+zG02nt6lRfLu5LAyN8Qf7OT?=
 =?us-ascii?Q?RJTGyYozJl7q4me7qHS7jTpClg3xZZxBTa2/UqLDK3IvbY/klDWLrZw8e7eU?=
 =?us-ascii?Q?b7UXyaPx81ZlH4l7I6/lv8AkaHmI0CerUu7S7sfHl4UByvnm+zhTs5gHNcgD?=
 =?us-ascii?Q?P6KQP5JtALR2eW8FJWzP/3duE0Nz2dlyu2Bb+TlU+NtkB6JPCPRldEnsqGBQ?=
 =?us-ascii?Q?yuXQQHKmSmawPBvsAsH+POiJdd3Hkw8nFmMdYTybh+dWYdV5qjGCfjWJlVj7?=
 =?us-ascii?Q?RyCpRlDksDd7xXy9u5iHkPEtKMzqORDdqaz3Y213lpFWecfncMWmodrV2coP?=
 =?us-ascii?Q?B/VEnzEcHY1wmJVO+E1XbF9jzLkMiofAQD3Ly0zl3ipGodSZb7aYWUXUVWLT?=
 =?us-ascii?Q?8eBsevUm7MsvbJQa2XYamZYSnNb0TyGdFfGuVdkMiKGV4egW/surc194316p?=
 =?us-ascii?Q?j7+toh+gRq3HC8Nq4QyU7UqRuiGRDjz9iOH8iBqRAJyHV23s/e+/uXBcxI3j?=
 =?us-ascii?Q?Eqy3XdVHVWl32obqhfRmUpwxuNnOfwSWr6y6EtBIhsW/tFJt51D5sBKHsOtg?=
 =?us-ascii?Q?GdNvEeptp9B3GBdxtC5qr5RjY+PQDxaarNmEgch5jWVca60xoK1mm5K1gk/D?=
 =?us-ascii?Q?R4BNmNHdhlts/VVIBAipQA49SVaSQbgcVxOFUV3XllYRlW9Nv8QWoA5lLrsu?=
 =?us-ascii?Q?td5KqBKi/hpJptHSgjyjLuSXA+JNacrDeAjKS9NlJ0xyVASWB5cWKuNZhhwO?=
 =?us-ascii?Q?JeqPYNM/Mwc+Q90cZg1CFm5OzWA6dDF6Zxa9x/YHUiGeV8eL4ltpX8RL9Tut?=
 =?us-ascii?Q?9GiteO5gPSqQtEmgC+V38tflqeF1CNa0+96McfLR78qGp4B1u2GiFduRqZsD?=
 =?us-ascii?Q?rDFqcBc+CwGr21vFjDAg/RmFdS/FJjPEQ4rn3TAs2ZqONZ6L7ZsQlpOreiAT?=
 =?us-ascii?Q?IC0QCFLNAL0X8Z0gPOu7x4dCrFoPLe171vuYOrMAzpsAgycFEK95dg8Ufho1?=
 =?us-ascii?Q?P9lznpHav4Kap30n9Uz9I+cMGEd0w/LepAj9qIi/Pqfj5YzgaYPdltlI/fJ/?=
 =?us-ascii?Q?Y6y9eiOgHXQbeBXW9yMvUvn9qHgaZasAGFoccQYZseDlnRUPx+Bs4xLZaCPl?=
 =?us-ascii?Q?YgOs6FLnTBp5NosATs4XHRolCiJ23nNOTTRPlPS5YsFyHuPQnGzm+RnnazFu?=
 =?us-ascii?Q?/pKsoekpQXN1RbgnM6qRY7EnIYIOxs4idLPC8tkmt4REGyD7/f6SicM7E7Zv?=
 =?us-ascii?Q?cHaxfVDqooCD9fr8tPJHQxoFXuwqx4DPMYLBLwkkqQ/xOOK/1OzEayWlOAMf?=
 =?us-ascii?Q?hxm9xkz/Qml0yfs8x/4TM0grVb0aN+rsoRu7SHj88pd/xoBJ9OYQ/4VV6On5?=
 =?us-ascii?Q?yg2by/tBeOa1PcBfhc1qy3/N2AmWBLvnfL1mDCNzI6IUMKoC2F0K3QiBYoUk?=
 =?us-ascii?Q?ggIp6DB3yAgEHtk7xjLLmOiuhijq3SgQPoHrt7bfCn0M?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e82b82-38ce-4bed-f185-08de2859a8c2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 17:24:29.2477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yN5ZxrUvvWBRGHbIPNDVVibzVxxDPXi/vsimMJVz0PHelaQbrWgLUT8oZ0nrUijL9UqWAiSRme01xsPo1Q11XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9516
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

USe intel_port_to_tc() in mtl_port_to_pll_id(), instead of open coding
the same.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8ae8cc7ad79d3..e0e5e5f65d193 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -206,7 +206,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
 enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port)
 {
 	if (port >= PORT_TC1)
-		return icl_tc_port_to_pll_id(port - PORT_TC1 + TC_PORT_1);
+		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
 
 	switch (port) {
 	case PORT_A:
-- 
2.49.1

