Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKGpDosnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAF219AED0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202BB10E867;
	Wed, 25 Feb 2026 16:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UPkjMbsw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3F510E870;
 Wed, 25 Feb 2026 16:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038024; x=1803574024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=665K4wEyJQ373/NjfLVOccQakTxJ7l0bTmhY1SSYJyk=;
 b=UPkjMbswtjL9EC2KQqFQaZUBrUfLyCb5Zrh6+9oO9Q7QrgIGflQhVCtu
 MoQrRYBAW4OYBAUiCVEj7o/ILYbJL2IgmO5fknZtFYzNcJeenL6Xm6zlV
 6MybRTbU0qqIuZ0ewbfUgDplFY23/kE0s3uw17x9WyVkd+ht0BC3WL9Sx
 qIcxsaAxmZk6TYgm9qKPeLMaFo1hA1VsVhnJaAg8SZqPUa83yQj5Y7TSX
 D/W36AgQRx8bxJG1pS4qNkVmd8NiNkUQKWPgWbP/lRiPcarJd2MPQgJX6
 oxJ79CT3Jjn/KVSEQF+vx30bvIeCR0tDeGeinjZ6BYKUBMxg4ZHlVNp9r A==;
X-CSE-ConnectionGUID: AqKwXOE7TCeZHpChsGS0Vw==
X-CSE-MsgGUID: SPPd6SmDSx66qFCsSq8FfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76953594"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76953594"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:03 -0800
X-CSE-ConnectionGUID: UZbdd2ZERH2aPU8rO/E6uQ==
X-CSE-MsgGUID: 8V8XiAkVRauORUyjWA3BqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220895531"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:04 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:03 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:03 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.41) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SESzkBgfqtbhC8fQ4AjlrZLy67/UFnUDORs34WBEhDLY7I/LhO9inszoDXNcTsKmxZyP0xeGtv+b1WZ05DtbzqeH2O5oypR0tir/ythehYC3EulA6hr86QfzD3yaWsNmh8OFcjxmdY0Sp9XDJjBLLfRMObcEeLzp7VjK6SC9Rn5PSLiLP1+5+zgMmY3UnVbYi+yTl7kv+5DsnlMA5T4EsY4+dFVxDp0ISPPP2n3SMPwU5Guqf7OCgQ5Hu3G6kyth6Tzos/Lnkb6susQVUqM2Y2whNiKNnykyzki879n/7bveWIeULqLYRafXBt5Ihp5cOnCILQkthlCaJI4YOCTiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O02Hg9YpsFklpWwvT4NIoHs5Q4mPr5FSrollVxssgXk=;
 b=gCBVKH+Y+qTDCvhqnHJQIilsF0Yvsdf2QqoKOVABFvTiCaaQNHUkePlNjbP2QVzMonmqfu/p8Y+iu7COL4TTFFQ1AGWL53wxnXMtOaewUw1HGTtkZ380ESL8+6EnADFpTVT9Zd0mXfVpqQ5MOOJDJm1B3alMEhz6sCaLbNsyMInLcF/AO2HAdZ6LVNguoAKnLIoBue5u0jMwq9qPU10TqSxuc9BoJ9dAxUWOaX8qHDv4ERSYx1W2F7wU7hUP3nSAGU8LlG8oucm85BsDqlgZld68rJTyWVqpa+sLYemZDJYnvl+JeU9dxD0u0M8vCvSQq+8fqjEIuGMP7Xjj8TjXnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 14/20] drm/i915/dp: Return early if getting/ackink link
 service IRQs fails
Date: Wed, 25 Feb 2026 18:46:12 +0200
Message-ID: <20260225164618.1261368-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e74b792-271e-4636-a4c9-08de748d7f3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 5B0we/XWnZ4WyYKF2nBwN1PSxls4M1c1gzWoCSFwPFwhwXWx5v6SxEsBy0UQHiq/WQfT5qJczxCz48cNMFZgKCL52UzA4RPN2nCjtv8d24z2Ww/6hbpvNTh2Lpf7JQj+Wjwhiy8XGCYuuYRWOInKv4zyK8ogg+Bf0u1sD6coE8Uvy30nG/KEKdDwjY0t7gT18zxQJ2zPApv6OkZi0wU/HwS/ZwCFV3tMXnHeoGeUBIECVARdskXhEQ9n7DpWbossl6QdyOgafd9A/3Xa/FcReYw4YZXzVFSccYRstpFETCoEeqW2OpRDwsPrxfUSTM4qmDH5vsTul4raJERKQEGa9Yca/hIcsxGNXss82oztYfyHLyYAWZMYhMMuOH4Y50lLaRxJr58vbw+eBVmKoN9kp+kwvHF5TN8PIcee9VIW5Tf/IHSCvPmd4Cr3ePp0w5664hgQ1ab5lL85CeUDWMRTJWJ5JGmsb9GywWvYTo4OHj3BsCwx2JVu+QRuM+nYzKmZ5jsg6T12/wvmL2ZgSmhC3WecEkTAQ6XWYxm1zc9GMTh8Devqdhj8B2ujhjR5jLnJNbdysOc/YVXZJNen3a2qg7z545lIQ154QT+tRW9ytlk4rHQFeejub6sKhmjRyZoooAeXYIXUL609TlU6cwQVEoWZYfvaOw+19axICXP8sX9TkFzC+hd/UWAZ3eoNdfIXl897jSRyEh6KoLUB0ads9s5mvlq2CP3GCeNhMNYyREk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ljuoRx1poF0n4+UCHnF6pecDtBw7ulMZeM0egdzI77lP6FulNrUDla3JWFAT?=
 =?us-ascii?Q?TzrP4B47mb1KOMfn3McIIKefZI7Mt1w8ZGjEOJuGestARspKXMt/rUNpL811?=
 =?us-ascii?Q?VZIjcSy8I3CAHXzIcrcXEttgPFK+4/dRO+wQ3jH2+DrxY80cNlt285REDQpQ?=
 =?us-ascii?Q?/pBTC7b02AtDUh2RUAbltaolXDgxdVOpJZrh7bgE+gG/JCsNoj5rsJ81mLZf?=
 =?us-ascii?Q?98NITx32+xVihGZAATqlCDWXYCjAi+os7L4VmgwNazQxo3cQ/PYzNA7NN4/8?=
 =?us-ascii?Q?1FlI3MqFBJl6PCm5yzGI4mHoEuMhGvpyDsyr2Anj3xi2U7Zk2RTzo2tQdLx4?=
 =?us-ascii?Q?cs7LjQM4C0OqgWMDoBf7Off3wowUWNoxrAvKyH2TnUw3C4bKWg2YdgfmPo2x?=
 =?us-ascii?Q?oof3H64tVHWtR7+3YPu9+kleqMf3wTXqr1iUNlHSgtpZq0nas85IH5aBL1xf?=
 =?us-ascii?Q?VKQa+3i4kS3usJGv09wbXFprtCRMdY1eexgrrafGzWg8QIXMOEm/c7N+J2+R?=
 =?us-ascii?Q?dvpzhtcliUoj1VWKrpVCTxjbXGh5OPciEIiA1I2vDjTeBJBXE3PyZnA/yAYp?=
 =?us-ascii?Q?MoSAx/LnG3T6od2GEbfy/S6h28Wu7Bfg2agWU7RfYB6Cdc0aiyb8qSVpDAFz?=
 =?us-ascii?Q?UzJF8kwqw91bOj1Gxee8C+wHdaGzpH39Uolotdbh/c+jkp4TdjvsZ0y+fgXw?=
 =?us-ascii?Q?mdaPNRBCwQgxotUTVyCQNpuuAsWJIr/kYBqolD20r6Zs42P81BUsLVmzmPwQ?=
 =?us-ascii?Q?3qQv1eXOsnAjHV8fhMBco1ND9GLOfsmeoLS4bCb/FZrREbkvNeq2WQsJM0Nh?=
 =?us-ascii?Q?PxI+vFPzm0sUoW/DWdCBL2/8VHKIXjtn3CDKSuH/ASIg3qHsfLvDGgJ8vTGz?=
 =?us-ascii?Q?VoDHKdrjeIAQ8qKMgKou/gQWdMvwnleovGxGg9bID2SvPRPtti0kS27DyPgR?=
 =?us-ascii?Q?ApIsyRc3u939qXh0mlelMUNeXDMydxZU0A6mN2qEekf1acandqryuabGf+JD?=
 =?us-ascii?Q?WEGcSc/YRxoIaIR2TfKrGM0ng0Vka0nJYAoDdrgNgBuCkIuD7NKdmQAkfoMU?=
 =?us-ascii?Q?iSfotiO31YL841Pa/ggtXxn3GDFoGqlbhTqHYZNncZGoiio/QjPANma+UDQU?=
 =?us-ascii?Q?uHzynMUX1Qjhwe4fENXevlpCbQDucxdf0xXETuegyw4wZd4bnhzGyfSohq2J?=
 =?us-ascii?Q?l9Wji8voZWde+5JxOsnyet0rIvRMcpacC0uH+G2K+7xssUGaNZ3qGs1FH3Iu?=
 =?us-ascii?Q?/IzNMiQgzO/X0GtZv1ELg2curIKI1qmM6a543oY7MfNZcUKZL7RX2zo8s7qX?=
 =?us-ascii?Q?kaHlFU4no0h/41tkfiQk50+ZiEVVAvi6nRmzCdvZjTC3h7ly+/ea/ywIPCbq?=
 =?us-ascii?Q?uJvRE6znx7Zt5bWLeqLzNxDSBrS9WoHMWUP+rVZton96lUZ5Hyg4xZaZ1vYz?=
 =?us-ascii?Q?WjdVOxqkrajlPb7plbgLlewCB27vdTSHzut0b7b76xUpmZZxxqRF/gdOTSh3?=
 =?us-ascii?Q?1Swc9duAbamYiDLneIHkTDk3mu46TCm1/bE8+FQoT8zlHV8Be1M3g9f2oGa0?=
 =?us-ascii?Q?0U//+6aP3sDwDZdJXcFvyU14h+fmoeEbmo0uVjSp4dtJLF2rVP6EtmoLKEVG?=
 =?us-ascii?Q?7ASDnAzMbZAETZ8GR+Tr4hAEdIUgEbwITPwTiDQJqWpsEkvQ85VlJot77LXy?=
 =?us-ascii?Q?ip2xVLOFoO7VtvD/0BbrYNK/TtefFnos6BdRGec3uazpHKk88C98w+Lyxc1p?=
 =?us-ascii?Q?MdrCvtwegQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e74b792-271e-4636-a4c9-08de748d7f3b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:00.9042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FqZuenl50SpIAOk7lTiiafHOMrlpRuOjDmDoMhIb8Awr9SO3EuFPHPM8byyHBdWF6K6Ywk6PhChlU0AEtjV7bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CDAF219AED0
X-Rspamd-Action: no action

If getting/acking the link service IRQs fail, the short HPD handler
should bail out, falling back to a full connector detection as in case
of any AUX access failures during the HPD handling. Do this by
separating the getting/acking and handling steps of the IRQs.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 45 ++++++++++++++++---------
 1 file changed, 29 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3db2fdc78c92b..a98170f2732cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5811,38 +5811,48 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
-/*
- * Return %true if a full connector reprobe is required due to a failure while
- * reading or acking the link service IRQs or if the reprobing is required
- * after handling a link service IRQ event.
- */
-static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
+/* Return %true if reading and acking the link service IRQs succeeded. */
+static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	bool reprobe_needed = false;
 	u8 val;
 
+	*irq_mask = 0;
+
 	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
-		return true;
+		return false;
 
 	if (!val)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return true;
+		return false;
 
-	if (val & RX_CAP_CHANGED)
+	*irq_mask = val;
+
+	return true;
+}
+
+/*
+ * Return %true if a full connector reprobe is required after handling a link
+ * service IRQ event.
+ */
+static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	bool reprobe_needed = false;
+
+	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if (val & HDMI_LINK_STATUS_CHANGED)
+	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
-	if ((val & DP_TUNNELING_IRQ) &&
+	if ((irq_mask & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
 		reprobe_needed = true;
@@ -5887,7 +5897,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
 
-	if (intel_dp_check_link_service_irq(intel_dp))
+	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
+		return false;
+
+	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
-- 
2.49.1

