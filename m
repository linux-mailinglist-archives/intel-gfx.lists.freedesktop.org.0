Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN6OLlMjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578B219AA20
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1519B10E7D5;
	Wed, 25 Feb 2026 16:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YXAIPSx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776A810E7CB;
 Wed, 25 Feb 2026 16:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036941; x=1803572941;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=TFcGbnQAtJwSFtINPZYKJZyFolzvcYPiuaB9B/XsCeE=;
 b=YXAIPSx9T+T/4u8Nse8X5fYYw7bqrPHNl3UcMDlEma8sJH5pSQ/dXkU8
 9gxC/TxvsuL4iiJmwDeYoHlPX0G7WxptGToM0ZpOc84fqYAKH6+hDZ2Sk
 4bKosDhhBI14hC3NzS0bvshVJATUuQbzgxe4vRPY85ghbXkblDM92EINE
 nUc70d+egdUR5oiY2pCFa5yHjn3vQz7QmhexmLiXliATSMlmEPAyvnMon
 qf/GAmq+50SqvkK1ly51VjEQ5EUbYcUSXAzeGB+pARjhX9rBvo0dA62mW
 CbsKmsqF0u9QIA9KhA0wnq+ukkyl4g8TPQi2oUdUA9aCBeqbCoje34Nd7 g==;
X-CSE-ConnectionGUID: YjY3+nLfR/uZx++ow5L/Gg==
X-CSE-MsgGUID: AuydH9aTSyONMbzY17+3TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175881"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175881"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:00 -0800
X-CSE-ConnectionGUID: FCuKz3fyRM+8B6r48PxWjg==
X-CSE-MsgGUID: n+7B/TITQi+SLlZlj9h0Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425896"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:59 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:59 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=coQ70+K2J35cA4h8wB98lLj4SbMs5W5NSyjqX3RU5fNyDId9z5gVnqRIC2tL3CmzgMx9q/jfuJ0x0vufG2mG8IHA5UmXu6K/zGv/WlmopY5nnK0exUCPmFmVo9Snxa18A8nlOHnEg38Uwzs8cldU1LbP/xgxmr9vRrGMDr+lrgnXuo29r2dNH2j+J77UtnR+B2WU1QAG6K2sHl+Ghit8T1gZUUF1DxhMrbxV6z0yig6pE8wQ/wXq7i4ZSc7wjS8vYnvWDmJ9J8fJw9eoW+bZgSezuhKwPF6CHSRF0fIdcDQpJ7f7TVvfh0vh9yNfgcjJqn9OwJswBwMvF0/wBr2Blw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RiTjMTe0WccX04g8AoA6BwZAHV5xMqWNddvRqNGabb0=;
 b=SSBqEnPf8v26lxSI4t6S3LLdfsV/T5nM/QVE/ivTvgcv7PQBwKdTxXM8QwuTf690jFtIYv8y8zrAwunP1XtVQI3ydwTaI8kK6ihWPHjWN717BrJ6Sc6TdCqD9aNLKS4Vucl3GGXb2PbHtHKOVdhxrxD6vOtkKpBXsEQRzCHWXKpfvJeUik7vLzEjnZHn0Nn9U0L9h76yWsoGBKO6fzhxIpk+aCzATf0dH+gq1hrGEyifIDBx95rtFu5hc5N8pX5s7XILYkllt1AKR+5qSXR6PI3HGMwU3X0EI/cF/GlWdVpXbBlUZEzo0EiC4WmDa3uuwKg7gTQcVzcdgdUv5h5dUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 13/20] drm/i915/dp: Return early if getting/acking device
 service IRQs fails
Date: Wed, 25 Feb 2026 18:27:44 +0200
Message-ID: <20260225162751.1255913-14-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e6419f16-f8c8-4e04-3a7f-08de748af8d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: SxhcKicvtjDawkShrqkJrVZ0TmONd6DfQwUerTafVTyLh9GtUfVhEItNJHtizXvq83nNFXX7Fv4whztUVSsJJnGqBVcDG9zT7H3uqfWX8wb5K4MHdjNNzeI0aVyFFz1EC9WUCtC23ek/huZ3hRld/dhxcB9jLUDP0bcDUwaTuztv07lIfLBQXTG2765vMRZ9LMjAxg6itIQGfhGqUvRduphawtxSt63wVcrVpP14YGKTaWCJDFqQ+TPBP6hmTBCIJZTgdhmD69apkPzUoj2p1JjEsX62+QT8/wkOsYb6GcdYBXwfYFWLxoqrbYmUqem4b1tOb39C2iGfno3pTCDyVowHvUy6DiKYhMuJ9zj7AAgasJdvm8AEyNJzk5CMkm1cjCPJyw9DUNHNr7zLp+aHayD75fuljfP97VhIN5wLLIPUGBObexNLMAMMDyWonvgJpUNqza+1QWMsGAkz6pohUTqKAfLKuZOYb5NqKxbtMgwhY8+GyfVvprwRTNfeUInvwPtnqa0UIuwBXGNktMmZDv3MiR1vyDfZL7cIkASHbEpY6KfjP9c7eqCsxwQl1OaPVU3gOSsSM9iZv662ng0D/2kQd++lOdUhnvVAfnHcFMxw8+eun/dt6xCCxRGuJ5CqqcsVDcYghDIpUWApU1Hq4K02eOd7YXhJksdHzw48UkYqh7zQtjf7vKLRHEiu/Lo8nuBE37hhpf7n3KPBZXumDfze6tiX2j9erYLVMpbcI3M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aBIxIgvPvR7cvQxZOaf+JsYQTjRnP7NB4MaCevuBmOdF4wcwxKkYm/uwGU8c?=
 =?us-ascii?Q?CTDaLgxZm7uiNLalLtd3uWsih/iziM9km9KbtpDpFQWvayfZAny2GMENA+Qn?=
 =?us-ascii?Q?Zku9v7YJV8CTbCBw5pJaiTMFVcIQ3tHiCMbPRm8mftlnxO37hFX7lP9n/QmF?=
 =?us-ascii?Q?loI/EeHdu4O3VsOSvrGuBh9hPkwX9I5V5ZfY6TuasfZXXTHdpz5czbGPNu+G?=
 =?us-ascii?Q?QMZKoG1sjjlqpsiB1xkk5nop+QZrdqWXDBwBtalO/T4cD33Nu0OyEi2wsqJB?=
 =?us-ascii?Q?UjncnF2wAaISoOIa+qQqJXDp9agU0A0E9MYhE1su3FfGlxKH5fMOzQgynRWM?=
 =?us-ascii?Q?nSEVT3Xc4oGPP7cul9CLOaoWPuXP1YTuKH3zP99BtRmOCshzPbw24H6WdM05?=
 =?us-ascii?Q?V+XrGOCeoIeNCm0/jYHgHs4m9TsFBUBQpi8Fi0HVTdzKFj3LuRbB3kcK42+q?=
 =?us-ascii?Q?epYEYrWMhndVVKAQ6liVg6/ybjqTP2zxLf8l4BWrNmh1pAMiVku2ZtkrQC0m?=
 =?us-ascii?Q?DKJR8HkG/ySNhpxqW8F6UG7uTIFOT8PfKSJ6jqC9c5BcGiZqY0DPdRL9lkSL?=
 =?us-ascii?Q?kwAiKC1sr58kX1YGm3fYtfUyTpnnF7zHYAJqv12ZuTBOl/67zmcMRlponzDL?=
 =?us-ascii?Q?B4zZVW2oNft/fKBE3V4saeoH+PP4W0++7qlJulqTSsSwSd0DJ//dF23914pf?=
 =?us-ascii?Q?6DuuQsDjNALBA02uxw1XKiXMDuhPu3by7D/atIeOPMCQcGs1TGEwuPiP9wG+?=
 =?us-ascii?Q?ws147CvisXRxHVtKIImHoNuN33IHeo1FoNii29NJ4pQKtIRCeNxcPhwGmHzg?=
 =?us-ascii?Q?kv60OKcMMB6G2qf9Dwz35FN7ctbg+T2Ecf13xB3mu1L1pD4Nx4+rAcaKAR/r?=
 =?us-ascii?Q?UVVN6q9GYQLMHxBTEhyFzf5C06RHNDTW6r9SEy3QX8oGCK6dngkP5Od3n0Cj?=
 =?us-ascii?Q?PtLk1JqKhY14fdLCsQMe1Sz/MnObAMG/uZP5s5VBivN/ufP/CjVy+zo5mo1A?=
 =?us-ascii?Q?HAsq0+dWGxPycyUEaOLQEG7gS1A63SJMYpITiFkcTuVnEPm9lV01Y6igREhr?=
 =?us-ascii?Q?ur1/llchRI055g4suclx2HvyDiPHPJvaL2lXDYkFmT2oTIir4jIrCx8TrviU?=
 =?us-ascii?Q?x4ml2qH8WCewtRIr9WqODxFehunY7aggLLWisjwPFH4gwFZEVOkKU+yf/cSU?=
 =?us-ascii?Q?1HtqK5AURS5qaoFTFrVtHtXHkpGP/Ig2SHnQUtCvB5vp6DS5i14SpgUv24cN?=
 =?us-ascii?Q?8SvJUhr+URKVpYNepciQqL/4Kvkl2H3sE/zbPnSMXoieiXjCwV7GjVQyth/2?=
 =?us-ascii?Q?Z5ttS1/fb3J2uhGUwtv02AulCaqqZDpYNTWeA8USwWoAP+zpJExB7u6cq05T?=
 =?us-ascii?Q?LyxA++K3qb0s3h84ynWscgQBzpTDb9gM8ZjLwSGCzRrXaeBe2xTkFv4kColF?=
 =?us-ascii?Q?3EdwO8l5qxgtrXhU20zwEQZYHP8kNTvILkIG8e8GZPifBcMGLD/pUGL1llYQ?=
 =?us-ascii?Q?JyNM6JKFybROVTXghHqBCKb2UJsw989mADb0jULm6YLBkWBcC+nABw3RxzLR?=
 =?us-ascii?Q?cGjW0y6K1bak7r6yRYo/uhThJL7t/cVOp7LU/5b8Dr4m4/PnVIJm+iivnKS3?=
 =?us-ascii?Q?79QhBZxaFWSRRxwIzJ5152rAzvfI3ZLYT25hyqMpeDe6ZDDlZEydIJvC5iki?=
 =?us-ascii?Q?aIQlVJExxkJw1i8HRAczTCVzphi3dOD4P9K4ndyMadKYcATSyU0REJ/ke1cy?=
 =?us-ascii?Q?IskUlucI9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6419f16-f8c8-4e04-3a7f-08de748af8d7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:56.7952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZLkW3sHN0EBTg3DHGXRAgSaXLtq7LvgCVTAgcpg/1jXHD7tcOCQjw5D3C1AoA56Mz4bMAQNbjZclgiT5agbHow==
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 578B219AA20
X-Rspamd-Action: no action

If getting/acking the device service IRQs fail, the short HPD handler
should bail out, falling back to a full connector detection as in case
of any AUX access failures during the HPD handling. Do this by
separating the getting/acking and handling steps of the IRQs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 ++++++++++++++++---------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 208b1027aeca8..0b57d90604198 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5772,31 +5772,39 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
+static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
+	*irq_mask = 0;
+
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
-		return true;
-
-	if (!val)
 		return false;
 
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+	if (!val)
 		return true;
 
-	if (val & DP_AUTOMATED_TEST_REQUEST)
+	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+		return false;
+
+	*irq_mask = val;
+
+	return true;
+}
+
+static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
 
-	if (val & DP_CP_IRQ)
+	if (irq_mask & DP_CP_IRQ)
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
 
-	if (val & DP_SINK_SPECIFIC_IRQ)
+	if (irq_mask & DP_SINK_SPECIFIC_IRQ)
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
-
-	return false;
 }
 
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
@@ -5850,6 +5858,7 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
 	bool reprobe_needed = false;
+	u8 irq_mask;
 
 	intel_dp_test_reset(intel_dp);
 
@@ -5864,8 +5873,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	if (intel_dp_check_device_service_irq(intel_dp))
-		reprobe_needed = true;
+	if (!intel_dp_get_and_ack_device_service_irq(intel_dp, &irq_mask))
+		return false;
+
+	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
 
 	if (intel_dp_check_link_service_irq(intel_dp))
 		reprobe_needed = true;
-- 
2.49.1

