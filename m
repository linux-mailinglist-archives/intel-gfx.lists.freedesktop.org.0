Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B978BC1464D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 12:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9C710E3B7;
	Tue, 28 Oct 2025 11:36:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N2EhRXEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B065A10E389;
 Tue, 28 Oct 2025 11:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761651373; x=1793187373; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=DkHi3dZBA/Etm+xc9biqQ0/hnfloM5olSl73Au8nneY=;
 b=N2EhRXEPPFYUEdZasQ88bAqHfn50eG7OiMorv/CDUIMtACrkwkIpJSsu
 +L6JIgaDzFllsCw04a/4OVa9ASyMOhlB8JsbGqnJic0C7W3e97Qdd75tg
 PlPt+V4xsEvFJI6pJJJOeKseIU0F7BxHLGuqXvfxIGcfKsCQdCbdQvVku
 L/fHbYTBto7ar6DpfazhPDlsAE/Sk5SDiRqibsxn8hVguByGjq6ztE2GW
 87ax6CzQtP75NCnTJSQ6mpCXmoFnSDzbCwwZKXHhcZ+eIyVan0nYdR4p+
 gk+vN1OYpgRXyHUQoQ1hlqEnqIkI+PeTEH98S3kw7VC+ZbTW3IlKtgStH w==;
X-CSE-ConnectionGUID: q91f6aZnSbaMrqqXmBHzCQ==
X-CSE-MsgGUID: gkw9OyjwQtWy47aBg56Wgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75194910"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="75194910"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 04:36:12 -0700
X-CSE-ConnectionGUID: zzE6Xj8JQFeTX0NsOnX2dg==
X-CSE-MsgGUID: 95a2zBnoRjy3ir9/MqcetQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="185238899"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 04:36:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 04:36:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 04:36:12 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 04:36:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M9t60RdzdlLOEs1EztWR3c/0ft4pcoKqaNvlhK4dEcNsKgwFEZ3PzrDD0JHYDSgIMAYKPgcq2UszixELH+sCNubARDGBAl4dE1QWKfFargLYKHf6lqDiCHCEGkGC6dSKXns62v0yPkGKEJgHlwDSS4Z9B2oaMZAd2VF8m+MS7huuCuHmoAlpCZBitFV8w0G8HGY7ITQ60yq83wT9I/XzVGFyJRxOdRSC3BCLDKvfUpfwRMzyMKj+scmIqoZfmJNbt19dawyLtc3jWB4kKdn4rtOWNHu7v039kjBy7irbehBkCBH1XFnxJ2iFK03avnZSfB97nLz3y/GIdUExOrOR2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q08lxIXW0Wa5xvIxqUFqEH44VI+Nd0SH8qKaZ5EyZ0s=;
 b=haP09HoCF4oYKHFbR+VywMzkYGjr0dFl7NOcwInIk3cCnBK+bsHjTOKF8Ni/Iw+mbfX5JKjfegogtvb9fktARSeewV5/TdtbOss5qZXYyzliKif5RzEj5zA6eZhJLAXly/RB+d+Bi/vX6NEWx90VL9gtZaXpHJXeHzc3j3OIEpVwxa2KNrusmIefp28Xr1Pm1izMXI2Hvp+jeTYjU/POMTjC/PCXiXnzjkdiJ/uYXakZSicEsom77C+ktoyQqXsf33iE1RK+2tWCb/A66lHXDXsh0c6fzYXvcRQuTqy4s2x/0jpahURi9PPYFi+uef/uFwJxdbZMDf3gznU/90rpDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB6956.namprd11.prod.outlook.com (2603:10b6:510:207::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.17; Tue, 28 Oct
 2025 11:36:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Tue, 28 Oct 2025
 11:36:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH] drm/i915/dp_mst: Fix check for FEC support for an
 uncompressed stream
Date: Tue, 28 Oct 2025 13:35:36 +0200
Message-ID: <20251028113536.602352-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0329.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ef7c3b7-5d59-4ef3-eaad-08de16162f7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?I0BWMnDgSO9sIXEaiJ+8/U7PuUt+H2xD7jyssEOMrvk4UnGaw+3ydqRfGcRd?=
 =?us-ascii?Q?Vq89HXTyaHPokQ2B/5Dij640EEc4qLToDRB74EhCpPGEO/CFNG8QBw8m/ZBQ?=
 =?us-ascii?Q?nwLDS5LitvQr3AM+EgoWmQZNpEs5l/ZHnY/uVlNJ2skYrUY1eIFhp8YTBsBc?=
 =?us-ascii?Q?EWr+6uLd/+LMF45/6TxpDvltxdAQJV7EDQ7xND5+ezSyZtd1/0PcOza2Ig1h?=
 =?us-ascii?Q?G7YJbLTncCGKnoxxh60sdL53ibd1hRtJcSTj7eaMie5IdlvhMF7h0MDLVGef?=
 =?us-ascii?Q?qR4vJNr3u6t4odvl7yvWsWCyPyhq2hAnm3TOVgM011rTUIFgg4eZk9s39ZDY?=
 =?us-ascii?Q?IpQdH8lm1oygjR5/pVkj3wL3q4Wlvq3q6uLcPmfl2KawSSTOGJHEY2XrjAqi?=
 =?us-ascii?Q?5HejemYy6yd7I0PcgDaUCEXXWDwr9UCee7hxNIuOdLntAFGjU48Pww4jmM21?=
 =?us-ascii?Q?fOApBK/KKqssTRsT5Ts2kcWRZ9e36k0U04Wj3qwjaHTkZVhUwPb4cY9SWtjh?=
 =?us-ascii?Q?9bZrDOCl6heGtL55F6n+KoBlV/qCPJ90rNyF7HFb2ZiE3gPgYI4c16v4yWfD?=
 =?us-ascii?Q?XR2jKU4hvqXorKkqqxOVVSikfqVUjSnfyr4xbwMv/szLbq7FTfr3YdcXyq4A?=
 =?us-ascii?Q?WcEQU/HPuNjg6pFhpybHkBtPjgI7xoYAHxBJdMWG12LDILFopaCxg6haF+z2?=
 =?us-ascii?Q?KJpI9i2KG5LLLAQLyBpLOdbsnsrr8tlATwOTDTKcz+RMjn3uPYkgoZvJ3oXc?=
 =?us-ascii?Q?uJYEUreZZPnX6RxzLfgggh4KqYxHeHW+Id5GE9a4jKapR9Q8uUPKy/ce9Jgi?=
 =?us-ascii?Q?OyLnA2Fytf8Wy2UNqlL17U1tOHmKWBtepVFSucOjNdzU5w90prbMID5ZSVoC?=
 =?us-ascii?Q?+5zx5DKzXicX8F6Yc6fb/0o0Z7vfVeH6xJjKO9F3ziNU5L6+2nhj7FELrnS9?=
 =?us-ascii?Q?82XCwR+bVr/6E5yEbDsv/c7oEd0LV+jkgRIpazRQOWEr3+CPe7ZUPc/NZTz1?=
 =?us-ascii?Q?nZ1BOlZNukEOARycFgJgRescHI35Wy69rSeT+GVrlzTQpQ++ZEj6i39qdJhb?=
 =?us-ascii?Q?DWE8hDIHHYfXIJciHOIK2ejgR1z2vnckFAzWdceapMtdBhniVrgHRxkcCemE?=
 =?us-ascii?Q?0klUIYKskOHQTKU9ueyuQpiLn/4wm6n1yj2n27CmOnrr7Luj4GVlec1Kxe6p?=
 =?us-ascii?Q?QZbzGB9ErBQNJ7zSIbTU6BOCSAjyHtfMpAx1+l38PdhxVUFPP/78Ie0pv0yf?=
 =?us-ascii?Q?NOdQfEsKdssTZalfXPfankWVerwyrto66SLjNs3pcROoFdORWPR80j8R+ymq?=
 =?us-ascii?Q?xTABAOYxgm8xr2Xv+E7uTM1U+LXfSEiqsb7Yg8KSJLuAkC4TkCIHIqWd3XjV?=
 =?us-ascii?Q?7iYHAoHc8zbsqnqhQYi5ZCQQfrXkH8bjam2IsqbOUy2cM0oRkw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jY7y0BpbmAfCTOSBwIYe5FcJx9VTRvxWHbFVSARkqI7iigYby14PMULzzCDu?=
 =?us-ascii?Q?MHhnpKGxN0A9nQu7Mn0fPyw79s5LyQNknHMONAcAniRW6ptoP7GJxs/iEdSI?=
 =?us-ascii?Q?P5Ew6TXkAGmHHU2R3gBGhshAN5OHzgmcM09kETxtIT8rul5g9hU+LL5smpBW?=
 =?us-ascii?Q?31RaZQeaurJm7jsJK3oQDoHsB7VEoFfD1TDMZAN2dYR7NPY+LeuPIA1BVq2k?=
 =?us-ascii?Q?D+0ygzUTcIUUw56KpAH6uIScnNH63W5MGYeigpbkJs2gNgVu6uDGob/k5dN/?=
 =?us-ascii?Q?e9ULCmOeEr70gVpNq7pwFCWhtouRtVpD5m2dDmza59Fs5SAERbZ8gVSVIFUn?=
 =?us-ascii?Q?pAjWJcdHHv7WGz3/7l3fSbi2GM08CPKvdGqnMEnum7+E5JFCXlp/ZJEp0rHZ?=
 =?us-ascii?Q?j5wO5ACusqEk06Ew/ry1MRNQx59oyxAvitRrp2WaHAJu/qBylZrNEmuXHrjS?=
 =?us-ascii?Q?tEAVvkdRkYkAlFN7mJE1Bg8yYMZX/y6mM0xZY3XLmaYgCdXlP6gIsc2Q7aeG?=
 =?us-ascii?Q?m2U8MsbMNIgSYecBeYAcBcfrAuoudfhnzooeUUiePUkQj17JTBYhiBuXMIZk?=
 =?us-ascii?Q?vnCx32L20urg0supoH4ZZ5PU0B9nHX+ppS5WDyoXWPIZNsNLvXnhpPC/hZs6?=
 =?us-ascii?Q?wYsgV3M3uClCar6hiQheF+LSoLBmrsoNRR11b2j00xAkhhmEsHpV/Vfa6snA?=
 =?us-ascii?Q?BGIDibyVNvOMBX26e383LmjsNUK/IXoIghqS/Bk3rRka9pRavsgIuxwT+c4L?=
 =?us-ascii?Q?OX3+bw5UhfJ8uQCaFD3ir6avkCzgpyegONLDRChRnj1y5CzVCgLXGUF7p3pZ?=
 =?us-ascii?Q?KfTSBvOzslHRdJfmdRXSc7T2rwnpaMPMKNXwq3ilFCcF0kzShkDpcHTR5Beg?=
 =?us-ascii?Q?92tkzj1CjtTbcjdtERvYFGOgoOwtds7rpDok0e7qhA4JZJ8ZWnqyysi45uk6?=
 =?us-ascii?Q?SCgG43lryXBZtTVAH59mGOvsuLbqLvd6ZbfTv2TYO6PzfO7dSuaqjeMxCb87?=
 =?us-ascii?Q?aHGvEXWpsm4RcSmBa+qVBmK657/9YM6V9F2qPdLHcyS/Pqug/UStz5xqwVv1?=
 =?us-ascii?Q?/6I+R7TyPcp3TY5SnkZxE+sRaIW294lz0lcDkGOUhMrwgMiUTmcsR0szcEGG?=
 =?us-ascii?Q?uAzmRRBeck0A5TgvqPyJ7+k6CTXlX3FTGDcvLPVisPFGEQN6l62lFGwEWxd3?=
 =?us-ascii?Q?DwEpoIunlEauu8QDh5QyR8b2x4iojEhqCAybv4F3ZGPW+SdvUKQ/KybFVaGX?=
 =?us-ascii?Q?O7eoT6vTLy0Dq/XwNufbfuVklo9qGUwFoybhCwhFBWic40U7zvTajoDeJmSs?=
 =?us-ascii?Q?NdNCUd0/QnHzs0KG+xhnfb4vHkIYDKWVfjWrPbrci9X2+wTVpDaSqOepQsyN?=
 =?us-ascii?Q?J8reHRSf6UyEoU4IXZQqThDt+r/sFKDNozDCJ5jG5mS1ZQk+49ifnWzvsnby?=
 =?us-ascii?Q?CRKgCa8Na+jPeFn14B0Y+3V/JOjeyidnJnbMmCioEm6W14wE+ODwgW4fRBy4?=
 =?us-ascii?Q?OsRyeuim6tFvzKAsF4viB3OE3QBsH78+tM+u71NYSMnI0tcG4ryP/f/2cJSR?=
 =?us-ascii?Q?txmPy7mgaBGcHcuVp6Uyuba8J8ZkULIqSDWykE+NBC1RHzV1V/x6KGAmI+qC?=
 =?us-ascii?Q?KK03OhTGP6NmLVBNS1ekXg1qnAqT1Xsiah9JSyTiyEz4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef7c3b7-5d59-4ef3-eaad-08de16162f7e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 11:36:07.6994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KBMNBlFqu5Kp5+lsXKhDaDxipU5hfdBWi6yrlgn1PYiW+MAmRKzpL5uNaBXR1DegwzBSiIeMBdBKYovl71v6HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6956
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

The reason for enabling FEC for an uncompressed stream on an MST link is
that the DSC compression is enabled for another stream on the same link.
For such an uncompressed stream FEC doesn't need to be supported on the
whole path until the (DP-SST) sink DPRX. For instance if a branch device
- like a monitor with an MST branch device within it - is plugged to a
DFP connector of an MST docking station and the monitor's branch
device does not support FEC, the docking station's branch device will
still enable the link to the monitor correctly, disabling the FEC on
that link as expected. Since it's been verified already that FEC is
supported for the compressed stream above, the corresponding check for
the uncompressed stream can be dropped: the check for the compressed
stream implies already that FEC is supported on the link between the
source DPTX and immediate downstream branch device. If FEC is not
supported on the whole path until the sink DPRX, FEC will be disabled by
a downstream branch device on the path as described above for the MST
dock + MST monitor configuration example.

This fixes a problem in the above MST dock + MST monitor example, where
the dock supports FEC, but the monitor doesn't support it and FEC gets
enabled on the link due to DSC getting enabled for another monitor's
stream on the same link.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14254
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a845b2612a3fa..21a60b8c880ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -299,7 +299,14 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 	 * intel_dp_needs_8b10b_fec().
 	 */
 	crtc_state->fec_enable = intel_dp_needs_8b10b_fec(crtc_state, dsc);
-	if (crtc_state->fec_enable &&
+	/*
+	 * If FEC gets enabled only because of another compressed stream, FEC
+	 * may not be supported for this uncompressed stream on the whole link
+	 * path until the sink DPRX. In this case a downstream branch device
+	 * will disable FEC for the uncompressed stream as expected and so the
+	 * FEC support doesn't need to be checked for this uncompressed stream.
+	 */
+	if (crtc_state->fec_enable && dsc &&
 	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
 		return -EINVAL;
 
-- 
2.49.1

