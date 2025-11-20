Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005F1C75A29
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 18:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8597810E7A2;
	Thu, 20 Nov 2025 17:24:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8UkEY3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908FF10E7A0;
 Thu, 20 Nov 2025 17:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763659483; x=1795195483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=UUzsrpVNGQoUrQJzUBCDlVyijp44KSBKsWlzRhc1Wa0=;
 b=l8UkEY3C9ZfrZJzmk5Nq7hRsyuNjAMAyf4rLTqh9A4OWIPefItEQSZhs
 fR1K99H6vH1mhjv4Ttt98x/7lbgKPUsM/UHHTaOb5JU6/ivo23HiC8JkP
 xeCztSiYMvJXGBzGNCotMKgPhXJQ8RSHYdZvcxMyO/E/kQhTzhzAPePEt
 36jwarwAv1/14m/TdDL66vkFXMCSCyR6pd2PA2+0dYqvai7P2XHYT2LPa
 QYsRogXL3rwGJPD5jzs2ujRwv7aFXnZN+6Rli3gZrlVdjqO/zoX07tyIK
 cZXbq/ZcEnF9jQMv3RnO5EGIzHrAggZKDOAw6JeYox3lYKdJ7ss16ftpu g==;
X-CSE-ConnectionGUID: cy0Pae6TQKOeJRTh7XxHqQ==
X-CSE-MsgGUID: mK2DTVQ/SJul8FpdssQs1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65767756"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65767756"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:38 -0800
X-CSE-ConnectionGUID: HDjAF4k/QPe1j4cobp/MHA==
X-CSE-MsgGUID: I1uKKYuTQgm08itXUnVCsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195728086"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:24:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:35 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 09:24:35 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 09:24:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LumAQT1EAo9CUwVTbWgXGeh/BDTD+q8hreB1l6QslGtyspstmAcOsh8xiOVHoRhuFsy1MsKadRSjrgZWB4ouGlBQMFwzMzDIkSPEFCSl8kQ+gGeLixiIT1hzOIpBZfovsrWJPCUzCkdNI60+GTIm9m0QoXXTElr0c9PtSPG3L7JqNnAf2OH+cmsxPH0zUBmEClDKIhUFhvbeavqC5C5g15I5uatR86bj6/c2AVly3rbAFIYJDBmBJxQ54cQ+kzHD75uV7U8du4nsGXYZjNj1ylr4EPHsC4OdGfqXJKSUsHaH8nBX8FcXoHqtZGhxLkbyyTfCTKyenlwgJR6j0xfxag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HL5/icd9SqqxOy4PW835BQRcE4e1oY2Acj7NGk/PNBk=;
 b=jmlesO4lhaKP5ncFofz5UVNwfkjWSkVtorkCDswNo4R+ZnpPK46hyE1tPI++tDA2yxUp6nBOxISmN/GK8GN0K+4lVxvB0C52YGksE+021ADHWN41ujS2OzpINAH883LCngw8tp83Q8T+vskiEXD50i0O010AJWWCYICZHM/nZmkYeVQyGTAfrahGDJYWgz/tzL7xM+s1DyCqQ2X953q16qjbfxl8oFYMQ8h4DxeVJ+wRlf46iNOORQNkuGdFTNX4++uFS45Ywp4INCZ28OeQ3jIKNDmyEc5sIf5x6RBXDHV3aJPMr4WYB3E04bNH943zmgcF9DzKpiap21uZsPQxUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV4PR11MB9516.namprd11.prod.outlook.com (2603:10b6:408:2dd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 17:24:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 17:24:32 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: [PATCH 4/5] drm/i915/cx0: Read out power-down state of both TXs in
 PHY lane 0
Date: Thu, 20 Nov 2025 19:23:57 +0200
Message-ID: <20251120172358.1282765-4-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: dfe289cc-576a-4145-d4b0-08de2859aacc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pXlisR7bcQ8eTpkPn9F+iS4s9aMS7o9fginaO2XwrylTi3/XiGYSN+iuwMFm?=
 =?us-ascii?Q?M4SgiWXc0v2z0TMWia0GUNd6hoaejbwQfBIew2LOiy5Wvf/G02JfHU/dB93C?=
 =?us-ascii?Q?htZH4KOs+Lrgie+xtLSPFZ+PcHoXiJlwDir+gKcTbRavzfkzDXpDWzEjvnTm?=
 =?us-ascii?Q?Jmq80U1K5i4T5XxNHvWq1dXVMQtHdNayv9GR4fYTLueC1RkzYXHFO+Fc8Hvh?=
 =?us-ascii?Q?dZuk2189srM1wQDeHNteHfI4U8eii0IvXIeaAnO1T/rS5MdtSKFdaXjQsVoZ?=
 =?us-ascii?Q?wY2deLRqo16cQYeJBgCcikDqnHxP6aUiuRzmk0RVIcVt35G4TDoyv94hPvvS?=
 =?us-ascii?Q?zip4Xyj7+g5RBeTjl7X7rm42BQmnY5dOaJA69Jb1q8l30gdTaDdEyoZ6HeCu?=
 =?us-ascii?Q?i53506uqI3Ix3GGwIbEDfE6varyAzKtaJFVXZ9EFh99G2O/TBUZHxYRBNGqL?=
 =?us-ascii?Q?tH+DhI/tCpGIBNAG3xZYIF8LGyvDEsYB3QWwu+reNnWvppP8PAh6t+CnrTpO?=
 =?us-ascii?Q?6QyDJqndpB72wf03P5L2PHNRe7V1kJIfzk5bTVazDjbVjglOmA5pyPzGHryx?=
 =?us-ascii?Q?eFkrPQq/+ZbAl3xYBwciY4mv7cILOXCD0P7SoHDRHykbA25kqmW7rPYNo06T?=
 =?us-ascii?Q?3QobBdo1S8rx0KhkACY3ZZDqj0AZIATeng8Mk2Lp4uYs6ljR6Xce5n40dFeh?=
 =?us-ascii?Q?QHbscAUmErSdpXiQnX/gtEyFUGWoAvsi5sSAECn8xnXSrRYaz5eFhVKtzS+t?=
 =?us-ascii?Q?Y6sG9fsCD1RkYTv7edtNiiBpg2xusPFCteLGcseZ/sj8Y7bZg10Dli38u3rE?=
 =?us-ascii?Q?msxF6E0sTW3oCV8FKOXG84+QKLUGmejpH/PXJbpjpXsb4HRyV9lAsDKou3ro?=
 =?us-ascii?Q?u5t8O8qov/ZY9CwluWJ1rjSGdIz1sjV88lu4X8B1nWv76dhl30PGUY8Y4I9e?=
 =?us-ascii?Q?zYuWtLMhLJ/hsIyYRcNsnm8+6uLVb+dQinW7Rf+m8CLtWfJHm3omEvPwVaw+?=
 =?us-ascii?Q?ERDsFaGCe4g5sIP/MMRnzvbZOepL2Jwyieb1guPvdDbtzD6gbXGAslR9Ug0m?=
 =?us-ascii?Q?Gl237r9vdFXev56KJG8tOERdTp7axAsmLwGWjzZNXNSoHOQHQSEO0npR8dtD?=
 =?us-ascii?Q?j3BHMwoxRBwxxNudEZTOZ348K2CF7exxXBlrJsCGXj9Gd0C7pZVY0w8SVEAI?=
 =?us-ascii?Q?ltzrzgVpj2e/7L5n5QDPHvlDw2T7MB/jcFnljJrOpXXkFJ4vT65aHViYN5iU?=
 =?us-ascii?Q?4i0S4AKgSYIRQeKONRkcalizAoe8KwesLWDD8dGXdpU3pRCvGAm1d5SXaPpA?=
 =?us-ascii?Q?Vrf0RJDbJau485lGUa69xpR9jcaq8RCtSnOzEGJ8fWcVSLn9LOI96Q02SdJ1?=
 =?us-ascii?Q?/x9n9J09OMaEZQKbzblBCf5WlPsCWe39gmCyqjesHdpFieBf5tzP3pkEupk2?=
 =?us-ascii?Q?sGLCn+D3Ik9dcoVisCaDx1ukKj5niQ3Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+J9M/A+iFOpeE6l/kPF+VWxVvz3d4akXQZH34YdyVceOlx5R8tQMttg6KXqk?=
 =?us-ascii?Q?hZYyN/jp+nJqwGfz6Co9OdWRya51y+hDB4+op9AyEkVcE3OJLWpH6bdJjL2G?=
 =?us-ascii?Q?0okgbjFNU9Ml7rXUv2m51X1ZKsOl54lM+C3NXYiEhShApOKY/X5Np/owkL5s?=
 =?us-ascii?Q?HKSiSxIMnMg4FxDjXpJ97BY8VUu4N80SXvP9vbCiql9qIoTcU1lRlY6zo9SG?=
 =?us-ascii?Q?OgG2u3il0kt4oQmSXJmIC+8ZDWOv5QWHuxK90a0+lB+6wA0rQN+pdvfAClwt?=
 =?us-ascii?Q?wkwdgAeo/JypsRDyF7NbcQ+BiynO+nNx4ZKGmkU1iS/PkplEwmkfpmbwM7pW?=
 =?us-ascii?Q?qO81UiHANkyR33ffFiQxAjpACV0/bc2BGLP+v8ls1ogISwmMwAUKlzUWC500?=
 =?us-ascii?Q?rlj5Mf/tokq7NxHZ8aCGW/PUpApFMn4ExR0k8lgMOCxAn5nL4fdtf6+gcGxV?=
 =?us-ascii?Q?x2oFdwUEipdUrwwk5rW4rU4VrYiAmI0sxXKeFWd1PH5e+OiUiT5LLNJTK9zm?=
 =?us-ascii?Q?EJEOJUO6TKbNXrMpDt4Mb8p5YdOOuEbVr/W1ETgb0Llf6HEiDYotP/rZ2ORO?=
 =?us-ascii?Q?tzPz/Wq66qojFilN+0QV6u4og8rDE9WxyOC377CWhf9lzaMTh3oPdnCd3LBB?=
 =?us-ascii?Q?Oq/U0sgbrrBQ47tqN5YPOYsZvfTGtunv3HQSIfx5HEk10bbbBmoELwJnljEA?=
 =?us-ascii?Q?UQLuNeJW5lmhreHHEe8j7Jc51E5U9WdrT0pSNU+P1nFZUjc5okk+SCcnnCNs?=
 =?us-ascii?Q?kTnSYTZxf/HeneEf3vanIS2D/nF8E8Ta5NiW5uNJXOTsCUR0yqYuF4Yp409k?=
 =?us-ascii?Q?M6zFQjyW6B0vmAdXpDBfltGrNt7DzJ9ev4cuVgp8xe2+GKETf3vMBGZXUnc6?=
 =?us-ascii?Q?QvcCtJHgMPPOSZqLlan+2lwFFiu5EMWBaGs9/nf4SxBtWjO2YuAK9EubML/o?=
 =?us-ascii?Q?LAqDdx1i83BfNwhqR+JePtDPtF/hcuB2Q/Zdn1C9Dk25OgWdKNCDFxFSedb8?=
 =?us-ascii?Q?qzLkXsd8wN0QGkzNOLkflhKCux+fHnmKvd2P0pspr4bZ+2arTk3zD/BHR50T?=
 =?us-ascii?Q?izSbgEUJuF77hPP1Kkuhfoi+bE1NJ68R+oqi9R0l/o987CjDrMCsWa/1bw5P?=
 =?us-ascii?Q?CbJvPOhDA6SXjEtF3th1nH6E+Is85gd9SrtJhli+iXiZNWcnhVB3zwTzvfPq?=
 =?us-ascii?Q?W7gCRtD4OjJK5Pu2nwnvFJd4Edh/Dfsp5fcgrGk3LzvNPzD/iPajTuG+Srwq?=
 =?us-ascii?Q?T9G8rixsCSMV11nugE5fZu1L3/3NdO5GGVgON+mMSWp66v2AeJY62fu7E7se?=
 =?us-ascii?Q?x/sW/pvVvzycdcAQTdRadq0J8sFx9ayFaf4mt72OgBa3IS2XlDlOuyN+edFd?=
 =?us-ascii?Q?Lbnvw+MB/btkb1myu8cMIAXBnaJUbC8D9Fz8it+Zu3G4NtElBlQfHkXtv4vZ?=
 =?us-ascii?Q?Cq+CGDZ29kHaWGz44R59XKm8Atm+DjwB9rmJyrIk9yluE+7E3m+QefNwn3dU?=
 =?us-ascii?Q?6H+8hDBlvuaPh85q4LWoSa5rELRI/fUvAXOWa6/2C3i+/unfN7gZ3IYtSIGy?=
 =?us-ascii?Q?sgdfTeofAJuk+dzV3mpkN7iGLJqC5DgMt+vJYKhdeu1ub1XF+F1DUYl3QtlY?=
 =?us-ascii?Q?kqHyMNZG+q+TNvQSfha0Dq/U+KuXcAcY/XVJDPTSixVf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe289cc-576a-4145-d4b0-08de2859aacc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 17:24:32.1180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CaAPB5VLdc1ZfzcNszh6seRypG4b+7vTJhVOZpjJI0zyUV5JvcMbVpdVsMDz3h6xcyJovTVKYzMd/mDvlad4KQ==
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

If the number of used lanes is 1 or 2 then the power-down state of both
TX lanes in PHY lane 0 should be read out. If 1 lane is used only 1 TX
lane will be checked, make sure both TXs are checked in this case.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Fixes: 230d4c748113 ("drm/i915/cx0: Track the Cx0 PHY enabled lane count in the PLL state")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 96ab7f3b5539c..0d524735dcf95 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2209,7 +2209,7 @@ static int readout_enabled_lane_count(struct intel_encoder *encoder)
 	 */
 	max_tx_lane_count = DDI_PORT_WIDTH_GET(intel_de_read(display, DDI_BUF_CTL(encoder->port)));
 	if (!drm_WARN_ON(display->drm, max_tx_lane_count == 0))
-		max_tx_lane_count = roundup_pow_of_two(max_tx_lane_count);
+		max_tx_lane_count = round_up(max_tx_lane_count, 2);
 
 	for (tx_lane = 0; tx_lane < max_tx_lane_count; tx_lane++) {
 		u8 phy_lane_mask = tx_lane < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
-- 
2.49.1

