Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910BFABDC46
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 16:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CAC10E53E;
	Tue, 20 May 2025 14:22:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VbIvjOLk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2787710E538;
 Tue, 20 May 2025 14:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747750965; x=1779286965;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=xdJncwf8Y3SH90il6k6y6tDzmffjGuIk6zl+rO+UJBM=;
 b=VbIvjOLkh5m9PdHBtezVVZpQ5YbSFBiBkmo0jMviYnSK2Z/bd7XGc7qd
 9xgLUUbgV1gNOZBoxyyTnZ03hyDI/5+2iDz0n7o+l0K1uj0cFqAgKD5jf
 aqYMYVwIswxwT1gTudFYCNRbs59bkon+ceBOSgJEvSekmrKv9gK9O0S3R
 c82JL2c1dWDx4s2R7SY7h//EBcybglvnYydLCeTA+gfhegUSz+KgS+v/R
 XItZr/ni32cODHvqQLubt3v/bQemKpMjpSA5qb0043xR3Fx9PfZE5zB9L
 PeDl0skGnCYJV2s5JtWrmwaMR9P8OS7HxGp4e4UMD2JrmIlsMsGag1iuN w==;
X-CSE-ConnectionGUID: 18cZf3ASQX+bLiziyqNAMg==
X-CSE-MsgGUID: YFPypcPUTratbEkDl6DanA==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="60346183"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="60346183"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:22:45 -0700
X-CSE-ConnectionGUID: MQVBSzp5RzSfpTYe9DTKvg==
X-CSE-MsgGUID: /Wb8EpixQlCcFw1RYCFwlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="163005625"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:22:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 07:22:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 07:22:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 07:22:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ycAJjqO4oA5g6egUavkcXWORXz7D/XgcYJpBic4YUnkdC3fEAtPaLQt3y969LjwWIKnZw9+U7qXC3Q/fF9LToCyv2RM4nOdcmJZFyiNOipx+9MY+/l4f0RIyEqXmv7m1qOG8OuzLKtRv32A5Oj04Deuaa4xA3pvb+c2v+Xl4Au6G/nn6VZ3xY3+p7L8WIwWSzRt+YGOqkvlGZb+6wFVpWEYvzGmvw/Div/o1Y6JzTYknFhxZfPdXRC2dUf0SVbieeFsmSWur00GMBqKB1I328oYB+34iRHonDAxqlit19fajHBHcJgtF24q1+lv5IGAJWPJi1ZCCfTuoYwM3UVf3jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3tg/AR1ap9eY6xcD9REEsB3N6J5ZPAeivpoStXmWf34=;
 b=kAIkKWlp3xdqohmVkWre/QO/Q+OIxlcFpXWQ+zaUX6I/AKLj0mOqcZmR3emaYTxjuwGwJ7xZwaRY7xj/CcNp7j8GW8s5Zw7lxs7JwDUUL2Vm/fiWOJ64G3Gps/AsuguUujBfZ0ddVJw/vG22I+RnVZfk/Ylr81wLAnqp4kbvETUIn5CfZIY7ebuO70Iztx1f7Uf54j7pLq3e9zDNWVaBUmJ62BOrGEJWyTlQblmkFAp28nvS04fQxZPgoaqen00DYjQP2lhByDnPusS7RTqnM2TdufDvkdiGZjKdkPtABN0YIZVmTbWPlfk0TpFhPyY5ru704K5y/1BN1KyCyzNKQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7178.namprd11.prod.outlook.com (2603:10b6:610:143::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.29; Tue, 20 May
 2025 14:22:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8746.032; Tue, 20 May 2025
 14:22:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH] drm/i915/dp: Fix the enabling/disabling of audio SDP splitting
Date: Tue, 20 May 2025 17:22:19 +0300
Message-ID: <20250520142219.1688401-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0290.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7178:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a497c03-05d2-4183-d670-08dd97a9b594
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WDg3emTaXkFDUgjK3oV0oodumnVH/wpsxpS+M90jjCmsVbrwpW/gKLPckYn6?=
 =?us-ascii?Q?patow4muRnnCnwFHoGo+nFaU2vcevWczKUhi/Xw86ikfHEpHqEmUGuLV4fiJ?=
 =?us-ascii?Q?/lD/P1fP60SSBm3cQeIyAcCgvWOralMCjkNQbqp/5qcv/nt8j2A7xo5bbYtm?=
 =?us-ascii?Q?iPpgN8m684MWC/tt0/Yuh/Ypbi1pBat8n9lIHVC7zXMl1dj5kJVrolF4JJbx?=
 =?us-ascii?Q?hO2u43Ba587lJ7EDX/PAuYyDSNMswslUlxEj+2MwE8Tb1nank9oTf16GaEMb?=
 =?us-ascii?Q?eSiQnnYVRRwWMMnTPN9DvDf6ztZBeDS8X3eTMJ72b1Qt5kYG1u19zzWxgSby?=
 =?us-ascii?Q?qW7/xXRfXHjNpIaAbK1lNJJj+fd0MPaPeflJoxnVRsorLk6hh/m8KzwVmCf1?=
 =?us-ascii?Q?c8TJt5WMv+aHZNwk5DWGDjIAr1ZajGj4zlTZNQQhjxkHicoCXYoC9u40UP+z?=
 =?us-ascii?Q?yrGMnVCo7I+aJk8WOsgsOPOqAo8SuuXc5OGnzEfH15dx0yh4Z4NAIhRV+eMA?=
 =?us-ascii?Q?ywqtfom2yiQe8xE9phhUsmgmJrHhjyRUigyCZqXLhmXbustsk3a8/jEcMNCA?=
 =?us-ascii?Q?T5wsptXIXC7frrCkraOwfDP/eQooYDa2Gu7YmoBKuOPirmtkObudSBppNWvX?=
 =?us-ascii?Q?Cild3kMrrizlWcRG2byotARn/RxwhsLAqf8nDus43VC8Vdq0/qeeOIeErwVD?=
 =?us-ascii?Q?Gil9IvXtxBleARHwoJodwxO6mivUvlku3ErHqRhEOOa8aXLLtUjuPx5ES0Wh?=
 =?us-ascii?Q?1OU5vHPrm8n9vnuSIu3t9KUWpiElCu2TjIW831GomSmnlBuB49kpVLvpIg3Z?=
 =?us-ascii?Q?4uGxZwuHrcYI02ialrA5bLioSqDW3FteNFZlJLR34tlTbY+RTvSbAl0yyKP0?=
 =?us-ascii?Q?wOXmITWyq/NppwSQXz7pe2qN/PZvG+W9XU9bc2l3ZoX/2rUdmujGNk/uZ4qe?=
 =?us-ascii?Q?+Ad8rY/ee6T6F1+YgbEAp9CHex5RHkRU/3NOkEdCu84sDriNTpyUcjbXeH2E?=
 =?us-ascii?Q?M/S0zHl6VFc0OvfatESPD9AP3VscAGQ8NAxf7qwoJEJaFEGucXYeia71D10h?=
 =?us-ascii?Q?olqC1icAHSSj7PVhlLbtWl/YRKzmKWHI7fodqWqIfeR4CyzTTa8cOg8xs18N?=
 =?us-ascii?Q?Ea5Sxjs1h6yBp2EoqWRSXPI3oXwE4FANKv50nq8MvAZ5sIFjsMAIcLrlfhAP?=
 =?us-ascii?Q?dP+JKvpu5cQz/9JiECvnZ6BKJwFk5A95RfVxC6lasEL926EkEOvpDlikcifx?=
 =?us-ascii?Q?zKEk1x0J+8n4HhPlNgIg40uUPdKZ+/rh0UhmGUFxZKu7eIkFtEEc/OYW5QDW?=
 =?us-ascii?Q?F1SRoifGeISOL3yNSFYP+oZRnr4OfR60WXihpfA5CDQXLOnSmE3jBfcYzoWw?=
 =?us-ascii?Q?XSpHndK+4QIDC+U8JoR+lJOpE4IXuLQG4DT8jwcsNQ0pdNI+0yyNKjfijz/q?=
 =?us-ascii?Q?fcp/gf6tGHI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fOiVpZGQ1ib3PKA6zqGPr40cW/GMa+FrEJe3O82vu8S2hx6LUKNRpniRhD0x?=
 =?us-ascii?Q?Of5Rx8gnLuRdXUI0nrC5gMQ0bvYwYMM0n6b0juWXZoQlFYdXJBN8vv7vtkyW?=
 =?us-ascii?Q?QFeMdWIPYuHROAIIYCmaresAIA55a8wrWSNgQBrA7EwCIntXyfzKIJriovnv?=
 =?us-ascii?Q?ufbQUOwGAB7uNY1YoBIOt+IB68E8XwW/06WHcWIRYb2uUHpJswZQNQLp9euP?=
 =?us-ascii?Q?g+tzl6N5Paec8D1crgWJSuCgn/+uSu9VNBJpGwZmDX6KZSVNaegL4t60CgH5?=
 =?us-ascii?Q?INWWehPT8pwLlVEIe2hqiJQqNVcuEEMC26sucRk1BMPF0fdHcmBzwWno3Hc6?=
 =?us-ascii?Q?8d0tABFsZn9bzIFmMa7iL1fzWItbspSCXCcyZAzFSqMzubPbdvCWxOLJA69t?=
 =?us-ascii?Q?LypdIGk+fH6utnVcjnPvVEF3g0wl8Z8agysggjBjNMeXy2Ri7QMQfwCwewJ+?=
 =?us-ascii?Q?dber24Uhg2Tfp2vFdgS0vbDu3gl6sQW7FLBdEk+xrPfQJYY0GN/bVsAZEjfe?=
 =?us-ascii?Q?NZTno7E7Uan++kxyP6sEqOX5o0aBJSqapyOzr0Yd/iRJ0q7kPjO2zmjwN0wb?=
 =?us-ascii?Q?No2F+OXfnIx7AnkoHzSkO9pH09/YzpuKeGF6KreF5tcQXVVTBH+JJIryOGjZ?=
 =?us-ascii?Q?D8CK29+Izl1vEZ6cYWWyfaEtIkPSj8b0iApB/EI7eoTuH4Pve9ieV3h40Qba?=
 =?us-ascii?Q?xOcDx2tlEnCIMIBpaXsiMUUrd/d4RHN5Yail07lFJrWDPdDqFE8C/ErqdLaW?=
 =?us-ascii?Q?IHjRovi+SITyQDAEZSBdaJ5pN1j3k6c5TMPOJOu/o0OZGkHEqUsazVoFkTF9?=
 =?us-ascii?Q?pWziqdBY+BRG0gs8ImqeM1ksWlC7HkHb+YER+IVpbe0Q5tSqLqeyL8sWLwAG?=
 =?us-ascii?Q?3sq6saq2H/1/5nuV6+IiUou1kurs4CwZd2C+qlogMHm7b6yRMVwPVfCwHS1i?=
 =?us-ascii?Q?WJsqWjHjVtGHmYKTFENAiD5mGVYRUVwQBhlO3xN+NVAcfeCU0byx9e6bqKT7?=
 =?us-ascii?Q?EB9bTJpNjHMb3SpIISRb2gM7uipl4DXhtnh7cZ0gDcm4/GsFTzDnHsrUO9zb?=
 =?us-ascii?Q?m7z8y5xpWl4s7OB+FaA+pcU8+XB0pRDV+GzVH62f+ifNu1834KTs001iZFWv?=
 =?us-ascii?Q?PZEgQN00V1OACrpDlpsc9wGzmfOANGn7AHrHjvMGUqpCmyv8R3TwialTTlQy?=
 =?us-ascii?Q?kP3jerd6elaMSj6/9BwvSF0LyjZr7JRlQDlWY/WIB1vmGa6mAz1U+7dQf1Ea?=
 =?us-ascii?Q?AiMKI7YPEhwq9/QDaXJWp4Np3/TLY2Q6OLkZMoXMr8OqmAwzp4uPnc6RuUxY?=
 =?us-ascii?Q?d6pRnPqO8Y7mEq8RVgg/EPZ7Zqsb7ZxQIe+7IuSKrqfXOSc6m62FlIgH4wnN?=
 =?us-ascii?Q?IokmUko6JjWsUNJI5kMH1rj3BEsCsp7KCEXq906y4sRee58c7sxHnwi3AQMc?=
 =?us-ascii?Q?ChQQpk8aL1KPcQ6aariW/1mVU6O05+923ox+WoUfmQaooLyhOsF8lEOu/nXa?=
 =?us-ascii?Q?dKg5S+6fd9n+tIpK3LS/UpcRf9IN/rHUWxxMPsRFh61aPflXVUOZrw3ZcLHd?=
 =?us-ascii?Q?frCZHcIJpv+2hnlpbDScBDxRlGvq4dWXHMj0q+2s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a497c03-05d2-4183-d670-08dd97a9b594
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 14:22:11.0360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TlnLc68pZAr/9hOF5+CwGaTP6ny8hCO5tyq3ih1VRSnVkSmxwq9ozNoRgA++TERq6Ti+2loQaERkyPEgTyKq0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7178
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

Adjust the enabling/disabling steps of the DP audio SDP splitting
according to a recent Bspec update. This moves the enabling to the audio
codec enable sequence after the transcoder is enabled and disables SDP
splitting explicitly during the audio disable sequence.

Bspec requires waiting for a vblank event after the transcoder is
enabled and before SDP splitting is enabled. There is no need for an
explicit wait for this, since after the transcoder is enabled this
vblank event is guaranteed to have happened via a flip done wait (see
intel_atomic_commit_tail() -> drm_atomic_helper_wait_for_flip_done()).

The bspec update is for LNL+ only, but the HW team clarified that this
has been always the intended sequence on all platforms and bspec will be
updated everywhere accordingly.

The way SDP splitting was originally enabled matched the version of
bspec at that time. Adding here the Fixes: line still, since this
change fixes a FIFO underrun on PTL during output enabling when DSC is
enabled.

Bspec: 49283, 68943
Fixes: 8853750dbad8 ("drm/i915: Enable SDP split for DP2.0")
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c  | 27 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_audio.h  |  1 -
 drivers/gpu/drm/i915/display/intel_ddi.c    |  3 ---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 --
 4 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 40d8bbd8107d6..55af3a553c58a 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -397,6 +397,19 @@ hsw_audio_config_update(struct intel_encoder *encoder,
 		hsw_hdmi_audio_config_update(encoder, crtc_state);
 }
 
+static void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state,
+					 bool enable)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder trans = crtc_state->cpu_transcoder;
+
+	if (!HAS_DP20(display))
+		return;
+
+	intel_de_rmw(display, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
+		     enable && crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
+}
+
 static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -430,6 +443,8 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	if (needs_wa_14020863754(display))
 		intel_de_rmw(display, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
 
+	intel_audio_sdp_split_update(old_crtc_state, false);
+
 	mutex_unlock(&display->audio.mutex);
 }
 
@@ -555,6 +570,8 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
+	intel_audio_sdp_split_update(crtc_state, true);
+
 	if (needs_wa_14020863754(display))
 		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
 
@@ -681,16 +698,6 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&display->audio.mutex);
 }
 
-void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder trans = crtc_state->cpu_transcoder;
-
-	if (HAS_DP20(display))
-		intel_de_rmw(display, AUD_DP_2DOT0_CTRL(trans), AUD_ENABLE_SDP_SPLIT,
-			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
-}
-
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index ad49eefa7182c..42cf886f3d24f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -31,6 +31,5 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state);
 void intel_audio_init(struct intel_display *display);
 void intel_audio_register(struct intel_display *display);
 void intel_audio_deinit(struct intel_display *display);
-void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0e6d618b53565..3d47d0ed3c37b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3507,9 +3507,6 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 
 	intel_vrr_transcoder_enable(crtc_state);
 
-	/* Enable/Disable DP2.0 SDP split config before transcoder */
-	intel_audio_sdp_split_update(crtc_state);
-
 	/* 128b/132b SST */
 	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 57602606acd5a..cc00a73898f14 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1336,8 +1336,6 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 			     FECSTALL_DIS_DPTSTREAM_DPTTG,
 			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
 
-	intel_audio_sdp_split_update(pipe_config);
-
 	intel_enable_transcoder(pipe_config);
 
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config, i) {
-- 
2.44.2

