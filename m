Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BCEC8FC89
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAB910E86A;
	Thu, 27 Nov 2025 17:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WY3upsnt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43F110E87F;
 Thu, 27 Nov 2025 17:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265885; x=1795801885;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=JIAo0XPY1+xRuyIfIhCD9P9J4kuWc1AAuzAVCYDKikA=;
 b=WY3upsntnuv6R17jezmCJ2SFQbeMEF9gTdPvWgFLKH9YOHn0OY9fmanS
 NUexHlir5Y2JG00HtrDp2E2pyVQIw3lCdvmEqlNy3Bvs4ZP5Fd8uDVC6y
 6socHXjiKwASSwDnjBoydJtPX4kZe35Rk4ZV+K8pbHUTXmQ+OC4B7M+Mt
 NKljA2he/6LiZ8+JCELVnkfaCw7x+bz6urADAGPYg0DTwNV11oA8hMVxF
 p5FUyskb0j+wOyrcvcDi4QCzNgVCGySNSJujSSO9vVUUufDuuPaRCfx+3
 997fxOsIfK44CDuFtUrgjZXYdw/nq9EqasWeUjXON24/plbyRw8E1BXuC g==;
X-CSE-ConnectionGUID: FTxnvRTwQ0C9k+GNTTQt3w==
X-CSE-MsgGUID: 3fvHcZuYRL6fsUKRlbiAxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002980"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002980"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:24 -0800
X-CSE-ConnectionGUID: RsjvyU/oSAiES/1w2wibvQ==
X-CSE-MsgGUID: OoCMKAiQSjSoEjiBx5scvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453617"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:24 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:22 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:22 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mORJarFNK+QVdEHF0+QaUkorc1sTwnv22eZLyBdJeBFvZgkTMSmCfKYdTdcj177RkhBpMdJi0VxInKXqxnzKzXRiOX0M/1x6Dp3wzRoZxmLirw9YtQd2/w2eNEnMIzexE4lY6nF4pXBIjS8CU8g6Qe8qwXydmHv3GKnoML4XgvWl7IKl039GG7g+jMHHBhVkzBDtTglU7mtbdIBqJPUwV5XQFiCTm03RRhyw+86AUCvn+o4r1kAsxyoplzIWqOJBiHDoTGSqJX816tiq3itmMxRiCHOlkkI1OAw5OVZBXUFRrUFGms6/dxMo26hu2ybeuqCpec2aw/03IfDV/V3XIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWebqjpILfhNRRk+hFWIFIiWYeRZ86vJBNA5g20pEKQ=;
 b=Cktc1e2V0mB+j5fYWaM69PLL00xb9gPPOoYuAyLtYA/dNFyazWlUVdzW+OnxLJslswJSRWkprpuu2t1YfbSwLDKXD2II18CtPPbgcIZPyQnW1H+EMxEMH7Ib2IU2CNp92Trdkw05mZljPNC2xqF94rm4FwaxvShxysEoeEF6UcOz8b5g0gcTbUy3ctBQ94r55hmaQQMJ8YdEqf7V7e8PfdOI6GWVaYV6rnxW2qpHulCDvDlVcU6LKXugfYAYuMLhdzC5287YGxoHd9AnBkVzBsLCf2oVZFUkU+Qft2nmfKR9qWsHnMeQD+Rzo08MVSMw/D9wrG4Cu3E+Tow0bXF+Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 24/50] drm/i915/dp: Pass mode clock to
 dsc_throughput_quirk_max_bpp_x16()
Date: Thu, 27 Nov 2025 19:49:57 +0200
Message-ID: <20251127175023.1522538-25-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: 3dd9b250-47d4-4640-dcf6-08de2ddd9233
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OiioiS5eMkxngFjCw/1LIwP+gqjlzZ78S+Kn8IElqz7fNJoyCKVwcjyexCyH?=
 =?us-ascii?Q?7fqhpWhywHnJIzZcOeUxjzCL69o+5Ng9oHzqL9dWOXR1PCAph4wRPsr/L8JA?=
 =?us-ascii?Q?+oYpF/F+IzT7emX79w+WpZtZAXmRFZuV5o++trljgRTlrQAtlOHnJ+/FWlFV?=
 =?us-ascii?Q?wyndhRDvGIYN4Iva7OQ6MYGEGQFG9/JEfcbcChFqmtFKvlu0/DBiz2c/8vpT?=
 =?us-ascii?Q?x4FjH7MQV3z3Gd+ufCNHxX0BUBOqKflimu/Tkwt1m8vCXT8OO+p6g8q17FGI?=
 =?us-ascii?Q?IfcrB1INTVNJozGNofZQAKbxrjMgW2dSj5ydkI8Kf6ETNf/bgQ3iQIOkOnFd?=
 =?us-ascii?Q?aRd7IrCcuPY/cldIKhwf/eN4xdwL4rquGW5phXy86XIgOhwEm3Oqr5fDa2eS?=
 =?us-ascii?Q?0asNiCcCib+G4/rHczMhYv6wYwwzd6IMuk6EmAMsqpXO5klvgxA7Q2Oanm1n?=
 =?us-ascii?Q?7no5tk5hFw5Kcnh60gCL+pLH9lRtkFDQEGMdaOW1qekiA3cE5MEemqXazJIv?=
 =?us-ascii?Q?NdOcX9WprWQlWCivGOMx5q6wbNTmFNgNFcaAus3C2d8II0F8z+GVIHTlUD52?=
 =?us-ascii?Q?LCmYaSVdGZ/8ItpkmBk1AS2eqStEbAAPFEGV3K16evGSPjAx44jh9AAfICHn?=
 =?us-ascii?Q?isSC+9ltcxhLkcIPnIKsw8fhHb36GpbIjNeaNRrac1BObEhq/l99zsg6lNfX?=
 =?us-ascii?Q?ZCjxCMyvIzrljNztzuzStRGPQN/O/WVdz9ACave/P3hQp9LKZ3Jeh1q8J9D7?=
 =?us-ascii?Q?zCN1tcAy+1NSkYbxhZ+v38pkjmN5hnQ9sHeFWqAkewgEaYpIz+3uFjRM7CZ5?=
 =?us-ascii?Q?uQAkx/vyFhuP6QiJhPHEncEcNfUDKlQuxV5PPloTXz3sf4EhnAQAr4M0+1+P?=
 =?us-ascii?Q?z9KYwL0BcSbxrsWkHWogtAWW0gC+/60j6nyKrLVlxE/OmttWFY1RrG3Dh9Bv?=
 =?us-ascii?Q?TvfBuEJM3+pZ7TEzIXxdlOOCRPWNCqBSU4mehwPgsjEHW3ZYNbm4bbGt2YIj?=
 =?us-ascii?Q?u+esVoV2T8HYJDi/n2Yf1uNBhCMZXSAKgGRq93zgQNUhWs5o3XkTLTXV9t5J?=
 =?us-ascii?Q?MWUfQWJLA61PwM19E/diBWFx7f1HqSQO/sajjQH+ILaPdggzLEshuqrxcPM6?=
 =?us-ascii?Q?QIWDN+hNUpug6ueo4oEjDJAloShNM4fqwhFUopJPjR14x7/s/F08oL5o56I/?=
 =?us-ascii?Q?J+3lfkJjmrC7vxvHKfnTcNWt9ocSVZK3wyLSWGRDMnCMGwIr9b/CjH7kKdIf?=
 =?us-ascii?Q?WKUz2Q4JUqCRWilvLtwRSz/fXXQ/JmpT5a/xZJKTJd9HkVe0HjYV/zUxe7zf?=
 =?us-ascii?Q?8Is6zH6pquCREWxbh4OEVbfmGYrNA8HapJgpNKrLGzpJuGDT2Nn2OgPukZZh?=
 =?us-ascii?Q?OJE7MBMmr2ii/+yYgqm38FdFEziPhydViw5Nic97t4z530mBnNdQvktqT/2r?=
 =?us-ascii?Q?FU2uozJ3JC0eZnTj8T5uD2jDQbZDlApX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7qzNDPizN3aVIAgI3HI2ZfErKBR4/k+6bWNb8MsVOPNcrskUwevE+NmRJM/f?=
 =?us-ascii?Q?6xCHTjwoawrItMbhkkUfwP6T6Qyzv+c6na/HVMrbyZf7GlXrtp914Staha05?=
 =?us-ascii?Q?gIdUdvr8YDpEXJUFWqSmtiWVYchZ5zV4kqH1ua844NN9IcUJCvoohq4N6X+l?=
 =?us-ascii?Q?cMTH2g69gsv4XE++lMjiQTH+VUb03LKAiwZt5irAMGcTy8J6/u2sRkNP7etz?=
 =?us-ascii?Q?m+imfFcQvaxkhh3yd0fQadOKRAO8u50fNhUwxDIxNmF/7LfR4n2vIpC/cvZu?=
 =?us-ascii?Q?Jd4XQcJlRaMCrCl+1k5Ul7zUsk/t3TDq41OoizrYHYjpgHYJjEqbcPTFjocW?=
 =?us-ascii?Q?YnRTgCSp8s8d8kvfRE2DGUW8TMkXKlF1pPJ5ltMoCkEW51gf2dAgU0JwexRn?=
 =?us-ascii?Q?3AtmRl0uqCS0rk763A6fEJCgCHacmZbHaPgLskNaLGN45QrxnuV12p0gOaJt?=
 =?us-ascii?Q?zMc297DQO1COIGgPN1VxbC3spYg7Mww5MkNqfR3zk42S7SQFy92JuJaTqusN?=
 =?us-ascii?Q?CPLx24T8mHR0RZ7vn0wibYaEyJr/vPHOORXHQSpiIb6/+vzIl6g47BC65DDk?=
 =?us-ascii?Q?o9VPgxz3wZsUEFmxb7mcc98rF0zRzolIzHOFIWToQjNJKHYV6O/PGsHIKmmK?=
 =?us-ascii?Q?H3tLodaQV9qKq5f05qXOjGPp9MOTaf7KxBxwZX+K4NHB3Xcufl8UOGqp7+dn?=
 =?us-ascii?Q?4iXF8W49TUfyFNbLIXSLkIUNYjMmySi7YDblgTvvDv9w8uEASWqOPUUU2NEj?=
 =?us-ascii?Q?lAoDalvVH2osXd9VLMWXl0w+hDcROpO3axfEP+8N2Hua+RQ56NAZRGCqa6Cm?=
 =?us-ascii?Q?PIbZI9dmH6ZZUDzALtI6EEmgmrG/bu3ToNKxYzEhJpv+nCUtpa3s5Qx7W6Lk?=
 =?us-ascii?Q?OvM0JBnwUpYSHXhpKljCBajS12En/qHYNyw7yLt/EtYCI3OdiY+CRMa5Jd8d?=
 =?us-ascii?Q?qFGewOQCCyJsrUs2JXK2M5PZ4YmyuOJ4Et9W0R7RQCVkyWMifwGTC69Bd8cJ?=
 =?us-ascii?Q?iCjT4Jt5t+/gwC/r/+qz+LQD97rN32S8jeU+v4s8Hz+oLmE+1XcTA5u96vdk?=
 =?us-ascii?Q?J8bY2lGz1/ohdKot5Mz6q0gsDTmg7Rrnyp1ivtto26228+p38YXvXbwGwAMH?=
 =?us-ascii?Q?KLZMUYxabsCn0rcYkEXNtJ8BCqsQMTF4MHlCb8gXYLw5MnTUDnVkzO5111xO?=
 =?us-ascii?Q?h7pfOJtnHX2tiT428MSpW2Vw08yTLVViw6yJD6BuZnFTVu/hdqhnKyPiBsf8?=
 =?us-ascii?Q?gyDiGpNZ+ckMKgUWyEn2I3JTI2Ozx38kLlOnJFFc7FqtDTIO0siBFUQXx4bD?=
 =?us-ascii?Q?Try2dh3DtDsEF6RjdvFVsWASD5jX4wroKHX255IkjOliL1Ci0SYhWdKmwW6u?=
 =?us-ascii?Q?kTKe/TJu1Xqw3Q1FYvkijwAlYCB+odu79+0RqvdHzlPNqwjj8GaoNQk/5ud8?=
 =?us-ascii?Q?PONdjDAfl1JM/3GVnFnXbmAfp2EpkgFBb2RvPk1KzN6cPfRba8VrgDYb6MGJ?=
 =?us-ascii?Q?nuaicQ+zmf5S2Aa6dBCmzMyh7jB4tEtyf7El4MORywIC0l37MrIipzAIdQbf?=
 =?us-ascii?Q?Ur6NHTxgOgiW8xUF2MXp2BCoilO6kKjtKJdLxp3fFHwkTSGRH40bz3Y7aY54?=
 =?us-ascii?Q?ye7nF1iH4HGNCqaIgP5aEjbgO/J55goVjeIFk9RLyh/O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dd9b250-47d4-4640-dcf6-08de2ddd9233
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:20.2448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1QpioQPJbzGCyagctWujLN699XsmbDDb2QYgSWNndaRL70DGos8nXQGJ+FnXcTNiOfCW/O0Bus3oTvOYpEz4WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

Prepare for follow-up changes using dsc_throughput_quirk_max_bpp_x16()
without an intel_crtc_state pointer.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54a037fcf5111..193d9c2079347 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2616,11 +2616,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 static int
 dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
-				 const struct intel_crtc_state *crtc_state)
+				 int mode_clock)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-
 	if (!connector->dp.dsc_throughput_quirk)
 		return INT_MAX;
 
@@ -2640,7 +2637,7 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
 	 * smaller than the YUV422/420 value, but let's not depend on this
 	 * assumption.
 	 */
-	if (adjusted_mode->crtc_clock <
+	if (mode_clock <
 	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
 		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
 		return INT_MAX;
@@ -2704,7 +2701,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 
-		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
+		throughput_max_bpp_x16 =
+			dsc_throughput_quirk_max_bpp_x16(connector, adjusted_mode->crtc_clock);
 		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
 			max_link_bpp_x16 = throughput_max_bpp_x16;
 
-- 
2.49.1

