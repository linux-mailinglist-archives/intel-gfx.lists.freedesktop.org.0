Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VypPGj4zRWpd8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B76EF493
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DBpc+ln5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7997110EFBA;
	Wed,  1 Jul 2026 15:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2200110EFA1;
 Wed,  1 Jul 2026 15:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919994; x=1814455994;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=eKFQgUBI1dhaowGDqfCxeMjPM+8FPBNZNfro8q1zH+E=;
 b=DBpc+ln5FkyYDj4vod6jAS6i3UUqeF2zSac4sZbFoCDoj2GNzvg2mT3S
 370YPTTr1Sdv69j9kfyTHaeROxYyicaSDDibYsYlaqSjmB+GIFsnCRNON
 z9G+6p6ZPJBa4ZCHkMYUYEvEvnSkdcRFwp0VRaKiS/N6sq6JQrR6sXBKG
 NU6mv19b1Y4iBrufgNmWpwP5cd1n+qS3QDswiTc+wHG2HgiiKB0ptncRe
 7wvNR9BG7w3U/cdNZS3RJ0xS+CKy80T4B8E8FbR5roaJJKnQ7ZgURhN2z
 d3U7ivoqJvyMkb2XLIhGOo8n4qlZzYL7KGdeqiLfVTnZxogF9Szw6W9I2 g==;
X-CSE-ConnectionGUID: iM8lnX9tSvywZ22HDSZ9Ig==
X-CSE-MsgGUID: RTcdGseyRTGhlNz3QRapdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310134"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310134"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:14 -0700
X-CSE-ConnectionGUID: RjKbDWtaQCObyPLr1DY8sA==
X-CSE-MsgGUID: 85UQySBKQWaakAjZACc6cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515682"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:13 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hw/jtWrKmS3xFKwdqLrQmJf3UagnTrkER6crRVao4eFZsxmhW5gjZPurpmR5HtZGOpapfwYNlrySVLqS4i2bX+r1KiW0ToMQWi1DbPL+D+VOUIb9yGVHMZGoUxQBkR/FP5iKI+q9u1LqEogWst9KxrAmL18JImi/LXRUXKxjxGGP0QMgNIyoJuBxtWOu4wVm68s6QNI6ofvx5onmvlolH8pJ3SOTFIVd5G2r8t4D9/RZhSqo97UykPnpUhH8hj090owlVY3wW+9fsPC4DCzWNxG3woeh6dEw/kBK24oVY8dRLj397jdZNfQAsqJRwNhbJQu9shLFI9673I2erpSfxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SrfIl/1472FQHsIAShv+rmgXbA2ir3LlbH36SaU/IQA=;
 b=GjqGtg6NbDyh0/maFD2xul9rxvg98YvjQiKy9zmx42MFINseWaCnEM/lVAX411h2fHI3hNIl904c9V9feL5cjMwmtWqf8Fi9fF91NXxUGrPkmCsqUzCMEfWYr0gFmAvvrrkLUJqI0i4YQw3rqdtfLRN3gM9qMcnZWZkvqDXC1JnEzl7POws+x3BWlrju9qqY6cpe6rLBUGaRoakotjGSiqmJWpqbDGQyQSHy+RnOThvZzqJ+pd+kRzle9eoDhK2U6Kau2IrmdCobd6OPfoh8ueJkJovpzqf7HIouIEelt0ENjxlh1SJ6m6mj+19cuzhUFDtQKAxglttWkN4llBeUxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 23/34] drm/i915/dp_link_training: Reset the max link limits
 in the fallback code
Date: Wed, 1 Jul 2026 18:31:52 +0300
Message-ID: <20260701153204.4124150-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 859b3b0e-d476-4a63-0645-08ded7860c11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|3023799007|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: YhPIY67AqrBFx0o+KpLdQY4tntztJk4Ls6XuXiLpi+A5vPppJs41xDSwxy1+NOQVlEwgX9gJZtiHV0USEsU1Gmc0hI8FCC/NAwHpYX/Mi30pGkJnDdq+BPiv1ZvsAlW8HVCKWwbb8XF0bjsl9VuN0ed6Z2SwX5a0/f9Mi1EyuoCXwnSbRVJXuJL6sqiyIPLA+R3KBtHlYerKogtCFoyjrl7Ouw5yRs94YxVcR8Tg4P1HXqaqZoyNVQckKMiLIXDwjYlGF94TvY6ccKGMQ1LuzFBuBdnjSUUol57uZwtbAaRlNCREgmmcIvq4LjPUgWp8GwQeVlr2v/eXWw5SFHZ+3IFaT90dL7kjssJtucuwkR2UI7IKFqBz5dsi1+it0t04pBiJ6t470DsqKkIDKI9tjcnJvjwFwX4GXJUdpl3MSAB5qIA8ycfeetrybq579GDfJAGJ0+egLUeA8o4zcD2tevXfcl/MnlFpnsGlULd/tAtsARe3B13seeEk7ZQwkethIgGLEhKhdN5OU4TcaEPdXy20a0FIid9qwno8eb8B4kb4veLKgoTBKQS2sEky0Zif5mnoDHSWm9yDhOBDF1rxLTtwdBpLWZ+FAICNu27PHTaeWe2KP4gOtIrTS8I0qfHwMbY4BLhhmxbw5YIwG+hDsZlh1xHGLYEK7aOjpmZ8CCY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(3023799007)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gaaipZU6LSsLyeneJQX1tLEf5YCHlYvcy0Iumik+NFuCmknAWGT7IcjljkEA?=
 =?us-ascii?Q?ak/ShRxX25f5WwqIWAKnaSAAKObK1cxW6fyOjvPdPwDkvZeAjanP/gETrgpW?=
 =?us-ascii?Q?wS642xtKNVw4YJcVq/MRn+WS4J1/HwUI+/aGCbr9HNh/GmFIcT0qCqjc1pHo?=
 =?us-ascii?Q?g7YyrffDKXLtIpQxZn7TnN/AlhWYmeN+gbzsuV+z2qva6lQi2D29uA2fMKfn?=
 =?us-ascii?Q?qB5jyo6VGHmn5qrE920D/2bqoiCC/oBlrb57cNVE4oEx4j0ZSqwA6w/GeAaJ?=
 =?us-ascii?Q?ZRhYeSXaLhxfkoobcXTcV2yc7LpmxlmgIzq/Psy8h0ulBgBf8VCK/knW6+nN?=
 =?us-ascii?Q?wb2zEe9mUpY7tUSXKkos/sGjNbZfvTA95Pk7Ksh49VIsRE0vOKmuCqaRi7Js?=
 =?us-ascii?Q?Hu3WAxe4WZ0XtaQoLMWVv58nOchpI7E+cnQ3w8C4Ko7XTfFCkeFiiy791t8s?=
 =?us-ascii?Q?xmaUQP33bSjD3F2U9VFbEfQLLrh8re8gv8BBTYDcUmJXWlASEK1VMQjsdp+F?=
 =?us-ascii?Q?Lzxp17W5bHupO6JV7D98QlkxdZ2vPCnLCmWwSQd0uRql7/1hHwiSlx+5WJlg?=
 =?us-ascii?Q?Rh/b+YlWsFOcxP7+Hma/FA9HpG/ug7RWq2asC87+GQgtT32UUVaUiM63NJwn?=
 =?us-ascii?Q?s+biyT9dr0QAMi4yx7eMfnWyaND4sZKcpZqN5R/nGSQlWfNj65jqfYdV9Pf5?=
 =?us-ascii?Q?jQQ8eUWPcnuJRrzLmnyaTit57TAcjW8hVWKwYrWhmfvPBDZkCJixXd6/05Xb?=
 =?us-ascii?Q?iUVRjplDMlnZfHQ1avf9GozbwCDK13X7QPbWy66juwf9aFXppP6pA9TTQMCd?=
 =?us-ascii?Q?y3jml/bbg+aJzFLT3elvuoFqrK0jdCr4jy5vsuC7AQjMTyUOTyV103pykbBu?=
 =?us-ascii?Q?Xni+S1zTTsZT3hUmpxKWErS6PkMkh2TEXB7Yh+GrBgxnGlwu4QnD5GINoMiw?=
 =?us-ascii?Q?DgyEXdePZGeau7VRIDCaDh9QqnRhiglAOHuxwVxzoMPFNMzwFLleDRBxsdJ8?=
 =?us-ascii?Q?XIJ2mUkBiJfPKGAjxXCkUg3QVtymoH5GeayIjEL/KIevkh4MQQOWDy/1cHvx?=
 =?us-ascii?Q?GdOyVdAjRqlyH4AajEs/z8ij0ry/+fRjQxJ0BLvzXSDROcEcYxASlBsRT9k0?=
 =?us-ascii?Q?1Uf1zSFcnHrk7rToR8PbC+4sHCAfX1OXKp9g01Mp7enlZP25L2XZ1R/9sTvq?=
 =?us-ascii?Q?JXSzhXyRz27IOW7gwVzzIt/OL06SkeEte8IP6C+zUjh/lbExZwXOQg33q7FN?=
 =?us-ascii?Q?XPjNFxv3WzpgVrMHyIcfk+PsvIYfyU5b1Ud/zonNetj10LLbMWzSVpRotC6E?=
 =?us-ascii?Q?t2TOrJaVjsYSpMov1lhCVuHriFsGVojqIAgkb7odW/8nJI8SFl2yxv153/AK?=
 =?us-ascii?Q?CqXy31kO+AI89uuQSDQna87/ML0GtTygMcEgzsINWf6/EFt77ra3QAGrPznk?=
 =?us-ascii?Q?RtkyCeWyFB48MxSsUTZjQDVFX5muSPiz3YiKfcBVtff3XMPUcz4UtdMCsK6i?=
 =?us-ascii?Q?j/EkJsbCRk+FbBWORpU7ghvetMZnI0fDIGDey7qfuitsVOa0gw3UWyfEDK9S?=
 =?us-ascii?Q?IJarU5vthKSlP3kDWxLtADJdRi8vu4a8/b+n4tOpXnIOgWfO32nCJ7c5vqc2?=
 =?us-ascii?Q?hNh6xdRMFvrfFi+VUaDS9pXrbz89/Me6CDY7Ls99EF1CvDg/tQ57wwMev53Y?=
 =?us-ascii?Q?NxvR2PNRhbotLbq1P1fSJk4mUspjuJebtVH8brrh/YYADBjxnO4ObA3uuaBS?=
 =?us-ascii?Q?QIYfxVJIJg=3D=3D?=
X-Exchange-RoutingPolicyChecked: gGhL8B8CO3/o5IK+qO5Fs0FWJsH5UbKMgvBjHgfQJw4sx1NMKOA58HKDhdrwO2iB0aaW5uSsiR0LDiAIh4TexBdN8kGTdm/lkuR7U/HN6+c3p4uCuqkO9MyC64NG/PHzETIWpmkeCR3483qjeUvUIK/1bVMy3MjUaVILZ3AFM2/2s8h/XgdpXXgL1jtYtUHqjCc+6BOu8Ra1KNI1I1fXbMJ7ToVwAaXbBlUKehRSJ9pRlOX7pRkKa+4Xg93Yc+fKClBwwBm8URaSmND9i729a9CM12p5Jr2y5N8q1E0YXITw4cOWTZ9pFcrGruw6ej+1IvXHktwttKmKciri6oBv8g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 859b3b0e-d476-4a63-0645-08ded7860c11
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:06.3032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MBo6h418PKoEK3DCWlANUw1xgostQ83vXsA4A8CXoD5UYOvXfqPl5NxAddCgmF4lyPH5YeiGjZ1zQf7plkLIqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 114B76EF493

The target maximum rate/lane count selected by the fallback logic may
exceed the current link_caps max_limits' rate/lane count, the latter of
which are used as a limit by the lookup functions when filtering allowed
configurations. To ensure the fallback search finds all relevant
candidates, temporarily reset the link_caps max_limits to the maximum
common supported capabilities.

After the fallback search completes, set the link_caps max_limits to the
configuration selected by the fallback logic, as before, determining
the allowed configurations for a subsequent modeset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 39 ++++++++++++++++---
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b521dd11b62a7..7fdcc299daea5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1960,10 +1960,12 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
 	int new_link_rate;
 	int new_lane_count;
+	int err = -1;
 
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
@@ -1972,14 +1974,32 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
+	/*
+	 * Temporarily reset the max link limit before selecting the fallback
+	 * config.
+	 *
+	 * After fallback, the current logic narrows the allowed configurations
+	 * to the selected config's rate and lane count. That can make a later
+	 * fallback candidate fall outside the current max_limit, so reset it
+	 * before searching.
+	 *
+	 * TODO: Constrain the allowed configurations by only disabling individual
+	 * configurations and remove setting maximum link parameters.
+	 */
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
+	intel_dp_link_caps_reset_max_limits(link_caps);
+
 	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
-		return -1;
+		goto out_restore_max_limits;
 
 	if (intel_dp_is_edp(intel_dp) &&
 	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Retrying Link training for eDP with same parameters\n");
-		return 0;
+
+		err = 0;
+
+		goto out_restore_max_limits;
 	}
 
 	lt_dbg(intel_dp, DP_PHY_DPRX,
@@ -1990,10 +2010,19 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	max_link_limits.rate = new_link_rate;
 	max_link_limits.lane_count = new_lane_count;
 
-	/* TODO: handle an update failure */
-	intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits);
+	err = 0;
 
-	return 0;
+out_restore_max_limits:
+	/*
+	 * Shouldn't fail: setting max_limits can only fail if they drop below
+	 * the optionally forced rate/lane-count parameters, but the reduced
+	 * config was chosen to satisfy those constraints.
+	 */
+	if (drm_WARN_ON(display->drm,
+			!intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits)))
+		err = -1;
+
+	return err;
 }
 
 static bool intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
-- 
2.49.1

