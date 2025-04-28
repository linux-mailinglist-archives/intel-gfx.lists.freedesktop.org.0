Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABC8A9F267
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CBB10E50D;
	Mon, 28 Apr 2025 13:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3nBM957";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FF110E50B;
 Mon, 28 Apr 2025 13:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847115; x=1777383115;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Z0nyhrFlJ/PL9J2L/RtzmfCJDpq8VxFHvTn1cjQhOgI=;
 b=B3nBM957ldKluKpibt2Cm0aIrKuDgZBUoVRaOS9GY+MzH9b8Us9onHGF
 adC4DZHCF16idJhf7L6TF+pyDCL0xb7QeI/FjjBnyLMBILhYMZoFgu2oH
 i54tG7wHkixN8dId2NHyXADeGNltpHHYiNyUz8xwTPYlawvRfVMLf79TY
 gJEmTDofvihIhd0Qojrq50On5CqY5CUSNUsVXbIDK6yDsjneW+OoQkQxn
 tHyeyIfPOrtrE56oZvDpo3s98nD5cQ6uCR7L792DY1D+9BXrlE4gri/5B
 OTAyl1TTZSYLM5viCtKWF5jfKQirRlmC31ZyMMjJUqALMPnt51SXLFadM w==;
X-CSE-ConnectionGUID: PWu4JtTYTNWBmnXJxJjmCQ==
X-CSE-MsgGUID: D7W6OSAhR16EPSi/NwLaew==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51256751"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51256751"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:55 -0700
X-CSE-ConnectionGUID: eamWZkIpQnWbw3ZWpPK/qA==
X-CSE-MsgGUID: mdu63c0hQ02RYkedIJDh/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133418883"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pE7uNosAME0Y/8sHchTD35rBwIAIYcbwIG+Imt1EZT+nyXRKSGYLy/XJUKjGkA0YGwOLTe0etc1o9gs6eVHBNvfOpTo3Ogw3UkMjofgsFXuemgIq00RrZDykjLmMsxzFbcD2GfbC7vYIay1tV47jK0s0gRbL9jDQpPw00Ui9T1P5uyhcFXV8JI9Yyu9unm5Llhri2pxomR/H9C4YE2yjIGdJillx3aGb2AfJAbjO7VPjB581WT+/baONbGA48hkvSC70/LzsjP51Oq/XzVsTfFxzNWPOLMzmVZpK/WEao472n4hQM0//p2SqT5ye+DmZEjIiuNHJ6aIgR8LAhRL1Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n7rVdVVyJZkLNjnhj4IJmccWNS6RPxNQBYFSqQOgjYY=;
 b=Y9I9EzDKmaRUq1KD+p7UBi1G09Lfu2AbwQvYWeQ7oecRSa+5k+ucltPcsE+IvT0hW66UJto5y+PaRYnBHTRQN1jWVi8R29zVnD0GdFNC7drcl23O+TmmmkN5QJGVC4C14iaoacNCVABQdBrJcog09ZXUr8QcUcyGuD/RWnNWpgO4vdphMWib7da+Rj6KaEpZ1pmkD43Uolyt275pMBONpeG0kh21QLBf8TyxdbVR2ruWOKz9Aim2UYqNelvawKjsfKuQBklYlMlbe0QxmfCem4Rof9O+t3yFeTX4t2hjBrqCCXahjBQzipKTiOljYTl8/moeE6iIWhFY0e6GnwDfFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:31:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 09/12] drm/i915/display: Factor out intel_display_{min,
 max}_pipe_bpp()
Date: Mon, 28 Apr 2025 16:31:20 +0300
Message-ID: <20250428133135.3396080-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4514:EE_
X-MS-Office365-Filtering-Correlation-Id: b75b7b88-a346-4221-a255-08dd86590337
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CXvTT3NDSdCh6iMfoO+IVi9/IQKObhpCRXOGbPgxHrfEYeAGWnv1RzaIh6J2?=
 =?us-ascii?Q?qI/ZSjErb5WMXy4xajVKowqJKKwuxooGJt+g5Eh4mD1P1VQ1t2IvpX18nSfN?=
 =?us-ascii?Q?dDpYwBt8X2HerRWoZyS5I6QftcNn2Q4VQD5a3hhNUynMvasy8FXpHkJ6XkXB?=
 =?us-ascii?Q?n13m3iB/+OYbOLKG13fFmZhUbarZeUFthrg4bKr66J7LO7qzjYYajSkAcAjm?=
 =?us-ascii?Q?I+/WGwrB4J5JWUEcKubC2rUfUc7JGqR7EOq/dBvYiM3qEzqLtzuuWDNt3NkD?=
 =?us-ascii?Q?o6hMK+LcZssqLKCyq/WNLBauIMrv6Mc//OheGx3F2YzMtf6qr3+sUR950TEg?=
 =?us-ascii?Q?/PUz6I96AvHLcYTCKh1ZD7tErjJPfw18aoSl87hnWBLszlWd49uL7jsuj7Xf?=
 =?us-ascii?Q?k/GzHdIzRa0Sdab7Fxl92gqkXNjda3rYBwThKQVuhm/qEZNslrWrgWEiYlOB?=
 =?us-ascii?Q?63bc4bUn35SIRLtwR/JL/kcK7K9HeLDubZWVqR7flkY5OAtI2QC3MHj6LBck?=
 =?us-ascii?Q?HRDc+kYmwtpZyQRzylnn3PTFD9zEkAE33KJc+E9lP0A/w7Yq5+M1Hzyu3m6J?=
 =?us-ascii?Q?I/hG+hsKzdsEgQezfr2eIBOxjjE24Hcn/kyF0hoA7MqhTOdVpNEsayOTJGRk?=
 =?us-ascii?Q?sxyhOnKiDGI4sS4ZJ9UOLG1TABngDvOxS5VKOCIbZl30G/sHoKPnMD4iDREz?=
 =?us-ascii?Q?o5fO44q0dUFgjcfprVHpmZHJpb52LhukgyHgCYM9rX3Ak+24w99fzB4Bw7Jb?=
 =?us-ascii?Q?0yzUZtJeAKHmakp3aqKZj+6xoJq72T1vc5f6jnVUFQCzMo7Rj46wV2BVJsZt?=
 =?us-ascii?Q?3MCX7NetkrwUp0BewF22tnX0piDjSG0H39XQRr8sBqfqXBQFoRspdb+QC11R?=
 =?us-ascii?Q?y04cTZHYpl0ffp0gPmw8F0TlI1fyQOxwTIq7sWZTjQ527PaYoDNgMGs1p/B5?=
 =?us-ascii?Q?6WlAQoo4sTvyhCAI9WrTQBahhhWdpEq5JRUWFVnIG7nXMyiFUsdTk+u+bOVg?=
 =?us-ascii?Q?aq5Fn24eNUJDJiv7zNzj58/9Xv3Md32iMEke/Nzhe4gO9pi3hzphB6B6cIGb?=
 =?us-ascii?Q?xdufvFcUAua7XPAunwAjY51olCxdSJMv5o01Sa7egokUTGodVpU1CpdnE246?=
 =?us-ascii?Q?UFwpqKKtTxKmLu9DEd+XeK10XmJ1jrjby1+Uq3BoNNv3xqBvFmcYty2CG4/o?=
 =?us-ascii?Q?znDZrjM63IQxUaJej5Gr82fiOs4GMjTlZgSThmAciF/cLJ4TQt7cbbO4fYIv?=
 =?us-ascii?Q?ROulTYIfcB074+ohlgAzVQJPPOB4goM33iTBK8nmfzBA1GlEayvk9b8rcY+W?=
 =?us-ascii?Q?MGnagPf9dKGs1I052RwkSvIDB5wB3R9rtmu5ovfxjIywsWlaHv+CMxK0yjYF?=
 =?us-ascii?Q?TPgLHkETyMuQzkLVp4YQdQYsiyR52qq/CLjcikkNqWE0phQrInMnmjpXSK0R?=
 =?us-ascii?Q?3dbXo7VS8S4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x3bNCozcIzFiRA/a893efZXOrgbm2OZV12sQ/PxqRt8FN5qBTGo7DeyNrHfe?=
 =?us-ascii?Q?rqLX2G7vgSotmioM3ms+TrvuqygzOJ4Rvwawg6xHqeasHS2vv5Orasss4sHG?=
 =?us-ascii?Q?VkmgFPpn4lOw2qARn4fqboJdw1EEoRuxEPfTfNU58G5XApZmcDqnCGsCrFk7?=
 =?us-ascii?Q?fs4haIVGI4/bw+8dCg+AMpUOGtL17zuVidLBwx3wKJYpQCEP75xCDh6Umigg?=
 =?us-ascii?Q?stC62gt9jo2wEY+ot701uMf00EW85R+uQYbMmFNnWa2mAkoma/JTApX/IYdK?=
 =?us-ascii?Q?Cvhan1UfrMwltRTsxK/ECQcrhBu4ognNeLvVxH262rDoaGP3bvSpEX8kH36z?=
 =?us-ascii?Q?gLsx5Bfefh0bFge9BukW0Hl9YZmyItypaLF2jeSUs5jd3ynvvetC1kLQGjZR?=
 =?us-ascii?Q?Wm8+mP8FOi7YWxBIdI7/R4cwX0mXCFAv+zF89NFktk1Qb3gF1cleUeXJGMKE?=
 =?us-ascii?Q?MWLNCuHWMY+Q8RiRQmnyk00k22Ye2a4SXG6m15cOf+vvtETiu0U8zwl2Szim?=
 =?us-ascii?Q?3v8spKYyDY7V2DIoj9INYcVN2lJpL02K0s0Bgw9/2Dog641kafD8BIpy9Ymq?=
 =?us-ascii?Q?XjWOVlg6r205p7DHiqy9260m6zQubIJMAW+u67Zy7h8mYWRoNsNHlacb9m9a?=
 =?us-ascii?Q?szWUKBaBuy1vEfTk6YOxK08xYgeRLcPfSXM1oegQYCpcnI9rXOdNG/zfV47F?=
 =?us-ascii?Q?8/ZPO4AYXpIzApJ//GHviLKNGASvnjfNwFXE027jHP/hinLdy5Bea+ERI4gY?=
 =?us-ascii?Q?megBS32T4CF+7eKGok3ikWUfFhZzNeSn+Z5LL9Auxmwwq+lLqwq8Jc+JPBrc?=
 =?us-ascii?Q?63v6olRjkCwkZVIYhiyBe2CE00MLGj9ZupQ9LBdX6VoqcA6ey4lQslZM1c4w?=
 =?us-ascii?Q?O5yg1Xqx8KFElOg964g8ErMLR3HHpwax3DZZTGR5Rn80qmZuW8WRfcI2HoxN?=
 =?us-ascii?Q?de6eKIeJqYZxm2Z8av3LpC3v+c/8EjDHkpiOS0KzI4zOe3TryZvzXtCeO4WH?=
 =?us-ascii?Q?KiNWnnXGAYtE6VqBxvIGv9XPKJDJZ9EVBbsRA3FF/vS62LGTkc34gMD1LBGB?=
 =?us-ascii?Q?+eLw6qXK6P7VmA6bM/pBh5vWLOHZdFJ5shnAsg1QUl/hpnNg85CD4bPRQGSQ?=
 =?us-ascii?Q?tXrqF1gd/GCnY6yN+PlMMfYsgWXTDKHgETrYUokhO4p3JHKqWLxSv4RRaIx8?=
 =?us-ascii?Q?HJAScBXx874jV99KiqFtb4fH7NFB8xZz3y4PFKMsxit9BtKLsU2YAUwjPBk6?=
 =?us-ascii?Q?8o35ANoyv+nhOS1RNkdxdUdR7j8rT3oJGVxMeo5BWsj1Lhe/nRzrXeap9LoV?=
 =?us-ascii?Q?9h1sLVsD35FRaXXAsZC26DgF0yQAjynHryFpbFFkSzf79SUMthF6RaUR70qO?=
 =?us-ascii?Q?mFK4NJYqCKYfV8n5A4cFkYketdCdydTvf+6y7L5+hyy0GhWRQrc9nUUKhri7?=
 =?us-ascii?Q?99f+xdzjRAL2JXHY4TG6gQfsDSLt9xkFFCrBV/PF/M4DJcG3QHF1aOI0wUV3?=
 =?us-ascii?Q?Yx6rcXox+dVrSB+eu51zo7D8v4rfkV7ONoCMWAy11MIedBKIT82T4UFQQnHq?=
 =?us-ascii?Q?sph4ELYgRqAI7hLwi8eXz5ZeIAX+5J7j/0qrrP3X?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b75b7b88-a346-4221-a255-08dd86590337
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:42.2464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 00R8v7TGIVrYojShCRSbfql8KQheA16FpuNI2FaT5VSgRZCN4rR7/5xEKU+/j2A2Vd4FF6ezbkPt8ybS6k8HAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 3 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ddffe53e23f..cf2c11826ffb3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4301,6 +4301,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
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
@@ -4310,17 +4326,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
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
index 0f89a301e4a0d..73ca9f8efefc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1198,7 +1198,7 @@ intel_dp_output_format(struct intel_connector *connector,
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

