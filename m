Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CRSGlQjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0824C19AA27
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388D610E7D4;
	Wed, 25 Feb 2026 16:29:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y01mpoFh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F2110E7D3;
 Wed, 25 Feb 2026 16:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036946; x=1803572946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=WAddwR+7OP7+j9vBi9kgxE6GZmVcvH2A8dZnyxyyOKI=;
 b=Y01mpoFhlMRLYDh6tsUxCniTUMnWSSi4Usj0KbfjUvhYWgMuUv8UZOur
 I/N5TCZKDPpOxaD2Y39xDm1wmLz8M7Mt4AXpRvB6ieT4OBT8czcP9Y6Z+
 ++qhAnOFOFfRxyGpxw7HARTnfS9dDXLE0+9vC8NJM9XZKTUXi9U7ixpPA
 DhoWQ7VdNex/DRO/9rT0LeVQ+kQrnuf9lwKdws+XREt7FaokIk8BKZ/nT
 KHOOK1SDChfGCp9ic0GaqWqeYD1C8GvlJe8M+bQYXz9EAdrDPv7JpMapm
 07Dhucb+C9jKMMKAXSa2McgIHpXE+DXoUsD/yHGH0WIf7C6vGE6a8/nuV A==;
X-CSE-ConnectionGUID: lNRbsv5OSCqyxuNArnoR2w==
X-CSE-MsgGUID: tAX1YzwNTfah81sL+9PHFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175893"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175893"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:05 -0800
X-CSE-ConnectionGUID: dUiw9NmYSp6X4f26u17ZwQ==
X-CSE-MsgGUID: 51062cB5Q2i88iDaLFeZuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425955"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:06 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:04 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UivzxB8QgnWiXfS9iVErAQhfU3T20oO1jIGMZPc4l+J4YwoQkeenuSS+amsYj+sOoCK5GJs5Q2DoaN/Q30sgVlI/PEwdqSKGG+XxnQldmgck7OJ5GPhVSCz8ojsOqerKPsKl+1LwKcte6WRUZRl+F36V1ao2zq9xghmJXrJb54gni/Bxxt8QSRaYrIiUjbfMXB9CD1lGERRYuYJWiBPJr8bP7hO9cscXl42dm5sJs5b1y8P+4CDgk1YCMWIKB6w0YGwq9L2AbhVUaZLDeOVq2k7TCViHBrRpmX2hHZlaXHvO2TakEAY8KbWD+pCGbnSiuFCIlIyzcoPC20+BXZBPOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqoYXpnoeENijG2wQOyIi7ZSVGeAwqlLovYPAKHpKnQ=;
 b=YhlFiPJrg9+xqDUUFCAtOPfs8OtsgXlLT8tV3D5UCUybHcNrrXbN+nA+5O1NbMxlNNtCYDr+Gcinij6rlzY1Vs9xkT5jQytOr1i+5rHCnyXSD1w0Bs2V+s9QsKarIcOkZouuFZrCdgubbaGl4wEv7jIH7m6fAOoRwQEFTCO49N35gE/8kaJw1Lvd9Zj6ukbfGTlktzmjFXTkPmivctfZQoVsZ7qjjG420Sz/i+k0tQ1kldDhd96zE8gEqKoRLYsUcRIivt9GN+RbnCG+nt9kLkdrLwrJ5Akmh+eQXhIhyreJ/Lt18vBWd8k/1IPTJBYCZQwBM4esROac8RsO+EyZZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:29:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:29:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 15/20] drm/i915/dp: Read/ack sink count and sink IRQs for
 SST as it's done for MST
Date: Wed, 25 Feb 2026 18:27:46 +0200
Message-ID: <20260225162751.1255913-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 2425dd87-c6d7-4a16-5ee0-08de748afb19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: gVfNjsu/mFTtRmv+WYgmyjHvFqRQf9Mh8FMzvWW+2f/grCugwg2EsuGi/7yzotTSjw47HWsg4QU67aZX2OE45RIuXCAmGIiDYtKb2tYkWAYo+6uS42YcIN6/uDnIb1q6AtbqlPV8Fol0RTS2j4iu7aVCb5RNl+f0TmJNFMtmDnCpv5z2SDyHLTFiFbqEaNratoEkhyCuuTRedRFoFan8SL7mMTerxgof3eXYEKGg+0Cs89/7n7FK2EqrDyIqDB/tw6nAP2Q+gO5OowL20zBgJmqEv9t8IQq3tl2XiijEwOXx+0l5EOjpG7Gso9pgWTDkpZVhWJwj+VM0RxVLTO6+L1wm2tx+vcRgZ2p+VXvNTQQFOn8jxvo+0qJWO8v3MpmOCnI/tf1ILskflq+1igK5+tfzwmYijhdAXHEOvRY4iNCQ6+UzroB1X9QjTtkIaHdahbbM5lfcbApNlKiGuHkJtTojhp/OqBnoiUeX6BcBrStRbal1T3xK4ZERak1SoJ4qDPClggTlcu2oO7QwWlSGNKlxSuU7PAknVFVUAnOdjA/JmFEpImfMTdljWJn2N95jA7RkVGFc3a62sOTs9KhRuwgivUhqpCYdMqGf9LTCCForieTQtgAAlLQdHub2KqoXvCHWMfd2ffs/n3HMzPprB2qePzflyljTpabDrLZanfUWqaasOUQXG0IOqq/SqQ230cTxwIstHLZZL8c4mbAOe0ET9nW5g7GlJtM+RuyTOro=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RGKpwi3SjbYbbUCP381q0eOnSuAUk/gXnR6XDcaFuQ7TDpU5tSLOMqCCupX2?=
 =?us-ascii?Q?qimEDWj80NLU6eCV9f6VPKmPACi8q4N7NZzNPEdQ73curYw1VYFgMqGgnhKj?=
 =?us-ascii?Q?22UGOOFZMys8w85kvgTPSe8vxBCJO9cWdMkikPGVPJoSfVXdbM+lrd02oFEV?=
 =?us-ascii?Q?KKR86W+nXGM67fIAHb2MKyOQJVNsWTGCG5NB1XvG78DER8N+YkgABz0MY3p/?=
 =?us-ascii?Q?BRv4DH4H930qvu1Emc2mIjiMN1GSBhZXTORvTmfJXW78Ic+Rmk0aehmRItH+?=
 =?us-ascii?Q?OW2D9m3G/irbPIYpsr52/9hrxa6qaXk88j3b3OeaDBL7NYDeteraTr2OYv4y?=
 =?us-ascii?Q?9aesqFnYYok7m6fptWeUDA7LMa7VQNcVXSDVTYHhHNyNba5PDxZwuk/1roW/?=
 =?us-ascii?Q?lbXr4tiD3HnXNy74wabulzimy0kuIZB3b8zRU6uCdCDeYiW0RBpSTTaH81zR?=
 =?us-ascii?Q?kIOluLKcNJYnJUtcCrA/H/pnz+lz3Uhq0vdUkitM5bcmVDYrTsQa//jbAZTP?=
 =?us-ascii?Q?JJp+9C1MZWkolvTXDzioAtxYUjo9l19peKhfobf+SpRt0Tqviedc3NjJXmMJ?=
 =?us-ascii?Q?hA+s4iWHMkS4mSbmaLjyYeTPjVP59PbbIOZoDFi2XWyeHHoLuvMGCrYH/8tf?=
 =?us-ascii?Q?ynMdv41pYvSW4IuUCRQppmaVdUN4FWAG3ln7NcX8jUQWezbB4e/E8dzjHdhC?=
 =?us-ascii?Q?/rSxsoqDIgvs+aAxN0k1fYClIls+sQX9uc6ielsZz7gReSrpmD+/tnDk0xgK?=
 =?us-ascii?Q?Yb7p2YqxPlkJUzDNEzhucHUC2y5w+uvZe1DrwAfLzkgD8MdDYVHMeYjDIwlv?=
 =?us-ascii?Q?+msK7/L7ysqXyk4qUPz90ivPu6wyVu5tvhhIqmBwyTAvQG+eWW2Ofe8/PYNQ?=
 =?us-ascii?Q?NC3/d/njttdTSQ0d2OF61tYaZRDtA43CcKJQ4HfEbxiC8zXsi3bkPDOuA2jn?=
 =?us-ascii?Q?3gMaKn8hRCl/0Lc2nUDvRkDYY8PMobvJMKpPo1e7HBopATrY79DXMBuFHefF?=
 =?us-ascii?Q?i4gdQ1bMiEufumCoVctQEwxVXNxWt9+/fUUUCEagcRWubNiA+CE/ke1mCQFb?=
 =?us-ascii?Q?gE7uvROtmNinnbtU3IaMEybKhVpEH0PTMSDTpAFY23BVy9+VX4gGQT2tDtQM?=
 =?us-ascii?Q?zgVnTXXJo36GmrbqE10bx5rxDMS2AX6cKkbfEQvdOuDLhw1J5oTflcPyJELF?=
 =?us-ascii?Q?G7QzVuC1VTlceUaPPDz+ZcNpzlGn7lRROvWtT1y1Od3awNAOuX/p9USWZM4E?=
 =?us-ascii?Q?1XS98X7DS3WF5w9CO/LwJxLQW9qrF0aGmV/xTpp3prbCifbQQXIT/AlTmaku?=
 =?us-ascii?Q?/3Li7dPfpBacpqFTXIwMBheoWJNO7HTmKJTxZIITfz5+tQL+z9I6Tuc/MGee?=
 =?us-ascii?Q?yMmCOFmt9lt33gShbbGvx6NQ0vFqGX3k7NyFpdncf+qGV2bkX564CO1EV1o9?=
 =?us-ascii?Q?r2S+vnoYz86F/C2++hEXvXSNI4uHp+yRnGQZUAruriey9uyxlM8vXt6du5Nv?=
 =?us-ascii?Q?G3PZMtaHWfBLXPgQ4Pkh9dxL0gAlGhFDShgK9eqjV3pmKtCsfbtJlnsMval3?=
 =?us-ascii?Q?I4RWj1bJ2/MQyQVhI8GJIEzSch1cpMED8XaB7f7mPY1py/ysiaG0mL0kmEUV?=
 =?us-ascii?Q?lNjIH/UD6bOXQOmwE9kHzTfzsaWnPrbOr31OB1zcmBE8Nmjd36ECknpttEcS?=
 =?us-ascii?Q?6c95O9L6htrRkQWFoxxHt9Alr/HOY2rOwAe36VBtbigWCTwLCC9Mwg9PGI5J?=
 =?us-ascii?Q?q/xExZcOaA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2425dd87-c6d7-4a16-5ee0-08de748afb19
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:29:00.4561 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zf1Wiy/FYv8MEj5/rH0Mn2YSMreK+mvpQo6dYxJiKUHa2o6ITNcOFEaIxPgYKEzzB00yaf8JmcaEK3EF8ZOLDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0824C19AA27
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Read and ack the sink count, sink device and link service IRQs for SST
the same way this is done for MST, the read/ack happening in separate
steps via an ESI (Event Status Indicator) vector.

The above way is more efficient, since on newer (DPCD_REV >= 1.2) sinks
the DP_SINK_COUNT_ESI..DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers can be
read out in one AUX transaction - and the 3 last one written in one
transaction. Also this allows sharing more of the SST and MST IRQ
handling code (done as a follow-up).

For now keep the current behavior of always reading the legacy
DP_SINK_COUNT, DP_DEVICE_SERVICE_IRQ_VECTOR registers and not reading
the DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 register.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 132 +++++++++++++-----------
 1 file changed, 73 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6156fd91b13c5..749bcb4dfe4e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4952,6 +4952,70 @@ static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
 	return false;
 }
 
+static bool intel_dp_get_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	memset(esi, 0, 4);
+
+	/*
+	 * TODO: For DP_DPCD_REV >= 0x12 read
+	 * DP_SINK_COUNT_ESI and DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0.
+	 */
+	if (drm_dp_dpcd_read_data(&intel_dp->aux, DP_SINK_COUNT, esi, 2) != 0)
+		return false;
+
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
+		return true;
+
+	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
+	if (drm_dp_dpcd_read_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &esi[3]) != 0)
+		return false;
+
+	return true;
+}
+
+static bool intel_dp_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	/*
+	 * TODO: For DP_DPCD_REV >= 0x12 write
+	 * DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0
+	 */
+	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, esi[1]) != 0)
+		return false;
+
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
+		return true;
+
+	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
+	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, esi[3]) != 0)
+		return false;
+
+	return true;
+}
+
+static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
+	if (!intel_dp_get_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] DPRX ESI: %4ph\n",
+		    connector->base.base.id, connector->base.name,
+		    encoder->base.base.id, encoder->base.name,
+		    esi);
+
+	if (mem_is_zero(&esi[1], 3))
+		return true;
+
+	if (!intel_dp_ack_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
+	return true;
+}
+
 bool
 intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 		       const struct drm_connector_state *conn_state)
@@ -5772,27 +5836,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
-{
-	u8 val;
-
-	*irq_mask = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
-		return false;
-
-	if (!val)
-		return true;
-
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
-		return false;
-
-	*irq_mask = val;
-
-	return true;
-}
-
 static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -5807,31 +5850,6 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
-static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
-{
-	u8 val;
-
-	*irq_mask = 0;
-
-	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return true;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
-		return false;
-
-	if (!val)
-		return true;
-
-	if (drm_dp_dpcd_writeb(&intel_dp->aux,
-			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return false;
-
-	*irq_mask = val;
-
-	return true;
-}
-
 static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -5868,30 +5886,26 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
 	bool reprobe_needed = false;
-	u8 irq_mask;
+	u8 esi[4] = {};
 
 	intel_dp_test_reset(intel_dp);
 
+	if (!intel_dp_get_and_ack_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
 	/*
-	 * Now read the DPCD to see if it's actually running
 	 * If the current value of sink count doesn't match with
-	 * the value that was stored earlier or dpcd read failed
-	 * we need to do full detection
+	 * the value that was stored earlier we need to do full
+	 * detection.
 	 */
 	if (intel_dp_has_sink_count(intel_dp) &&
-	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
+	    DP_GET_SINK_COUNT(esi[0]) != intel_dp->sink_count)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	if (!intel_dp_get_and_ack_device_service_irq(intel_dp, &irq_mask))
-		return false;
+	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
 
-	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
-
-	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
-		return false;
-
-	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
+	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
-- 
2.49.1

