Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG1+NW8nn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D1919AE69
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B321710E7B8;
	Wed, 25 Feb 2026 16:46:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QdmNeHQA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D1E10E7B8;
 Wed, 25 Feb 2026 16:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772037996; x=1803573996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=M+aiUB1xQBNnesSI6ln5yyuGIudoFufxEhOHc7l1gAM=;
 b=QdmNeHQAEfVj3A5JQPFZDFODMv7+5nbEQA64VjxPZCnEfcTQS8Ruv5Np
 CEZFOIwbrWtVuPDA2w2Z6bGWyRvlDQuTAvO262jYu2b6doEmpCes++DIe
 OhDFrEsGxYUrQutvC94a29HuV+9HkTQFfNRDNdW+kgNgLgMSlZBoEa0qV
 Jocb4d3Cosa2kdRhBC6gEkaq518/AFb82zTVV/Z4fJvyyR5DIns36WGeG
 heGXWDvNjuTAgnh1AqSr+YoaSuRQrkItYYR8a6ZLOz+YMnPH0mA9YHFml
 gEq5Jk/4smPFfoRH5Gv6rbtxCTFXnCcSQ59YkK8TKw9XqVevReLrpMns3 Q==;
X-CSE-ConnectionGUID: bAcbQISVSTyByrWFMYCwJg==
X-CSE-MsgGUID: ct8xWJkrR0i8+//ssASeOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90495814"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90495814"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:36 -0800
X-CSE-ConnectionGUID: JXgT/xZQQ1WIsYC8eUaM2g==
X-CSE-MsgGUID: Wv4WkV27Qsa4lbx3rCj2ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220424208"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:35 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:35 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AMi1h7bXVC6cU89XOgmQdo3pYdyi7kqRRjofI5gDi3cA7tqlPdvS9VRExaB2S02wdFI9z0FfP4Iu6AMsVA83G86MAs7p47amiHPZZXHkvKoL79wRL4yN7cuKMzEE2DBWt4RzbtGOdKQyC4woNdCoaAGJHhdr1yQWpOMTbbNqv7bNk9Wzs16poOIWrFSAVhSLKgGsq+n7OCx0/c7zZsWR/Cd5ShdRzPK1Udhvs5oJRk3UIU8gj6i1qsNl7SWy5Md5rfUTpNlCP0jPguTJDfZB5oOfBolNKWXvB4sRYpgMdPdSG3YYpR/dbDdM1CPYy1Xz69szLfQ30shCHX0rLvLN9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+H5aY+yZY9VZrUQPdRLtV2/wcCBhCgPT1KRmOjGjLo=;
 b=v70O15ZeGdCfCCrTYLlQu6qMzkIqfHzHPRMINZxxdYaGZfBBRBp82nm0Qz7iKMsYjm9liLCjukmGPCXExLKvBUVCitMA0MjVh19S67Uzox4qOrSLptFbNDZPAW6UKmRZCP4PzB4OhiQYgp+OEayK8yjBL3ITiq0xzF419DJg+nHsr29eyc2ILuyiXiSTFaGIo7LONND1VoyXUEdvrQCmkvX7KsGqfOqEWBv3nzC2beB9Cy9d8d5TgtcZ9il+bL/f6foBLcIu3qth0m7w5w5D39sBk6JDrxH+eylaBjMKG9ZxlI3gTZGjWGTJd87m5mTzNFqzTYXnFd8c/mzfQuEujw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 16:46:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 01/20] drm/i915/dp_mst: Reprobe connector if the IRQ ESI
 read failed
Date: Wed, 25 Feb 2026 18:45:59 +0200
Message-ID: <20260225164618.1261368-2-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB8003:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c4c70f6-f805-4bec-ede0-08de748d6e81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: Hko0gk3CssPqjdBp3g1S6Ys+kQhSI1UgteWQ23Oi0gmZPcnKdxZ8IR8OP8q9bm/VRowLitozzLWHwCAxQIPkucu6wpS0u7rZ82WfDOoTqHFAKQYvzdmGGjgXeeF5KDiaXVBW+hc3xkNWNcFA0GkzLSW5T6TipyGMGD07rCytbujliliWxOlxO30Lb9+O8mP8RQkMlCo9LRxIDsFM27sMkVUm2q1VC9qkwFqy+jXR0rX4n0ZHVVVfw1zPHqf/HKqvGCu45vTdt6X2gcydltQEHEz0Ef/q9I2qaSfJut5ACq596kWLtGBI3d2nkHYiyD7dPPUHLlGacmHFrc+UG60XKz5vB40vo/pb+/aptI6aA/o12TRANNmDbtO0ULAuH+HyfoI7p4hxM32yVYCHu/iyX6aPOryI0LFlIOKkrP7r0plQX1w3ZrL0/7UeSlRfEfsPygDIKF1dWynQtNXo+kBH/3Jd25I9ixTHc4awAnOF9CNbwa9D7RF+8Wwgz2RGeNEH3lBleSqCWaN2+3x0wclqnCvbluqduYcRhwaDGT1ys4WJHyFJTGRrFWZ2DSLH7B/gq2BpIR5LBxUtOR2A3uJElGt78qec8fu2U4MBcRZq7oDJW2d2awquy6iyonobNNmuo5e743klCOLxX9F8D7IkSoPgz9gOIlWkHNpmr0FimgJqCHk1CY0zMjFM+lpS9feWowS97NY55cfT0Fh2TyhTXkgRcAqBRDp0ECV5pD5aOmg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ok/e7x1n4x7D8lw9yTFdPDvMPskvYpA48WCrOWIjvY5RD+KdJBvyeL2sJw9H?=
 =?us-ascii?Q?DbXg3Hvs7i+i9cf8q5/dcTqUU9tl4vybTkydq7lVwTViyfvSGebtGS+m4LmR?=
 =?us-ascii?Q?BToNzT006BlOJxHih4yU1qxA9HLZ/qC8MCY0aRvPhuY1g6emx6WM5JEsZrRW?=
 =?us-ascii?Q?Q8A2543MC1gg7tk5PqZv33gySzYd85VSqW5NhJWzDUFkzYmvEfHTbLKTYIxI?=
 =?us-ascii?Q?CLkPrRjHKN0mr/Zs73oWHfepufO7FZghKQbGB1FCWGr8M/leEJnsSg6hs86z?=
 =?us-ascii?Q?V0Vpg+3z0n5E2N1PtYoPodpdQ3ATKUjnoxzmRo8AkWMYUg0PU5yjmTCvaA4Z?=
 =?us-ascii?Q?dtffEvaf3O3Qp/ArIVnbocL1n3qK4+fVkZ47MS8nOygywzfIAbaf24CL4yds?=
 =?us-ascii?Q?rBj+x513RoB6znj/e2k2zAZQPV9S9fip0ov4vfX1HONBILptKO0RMoKN5IfJ?=
 =?us-ascii?Q?rpNrioDrMuHL8Hr5X0Atx8zTMpOuVg1f3A7OlBpMgtCVxxkHAqouVDvKFJt7?=
 =?us-ascii?Q?4N2WB9WqW5BUYmp7p1GSU7j5Lh61dt0Z6dWTUn5cTAyvCYy7K/qlR8JWVj0h?=
 =?us-ascii?Q?cwtAzvFsC0eLLDWQ/MvMSk60w2cxTwzG1B4IKBW5XiVQvZYlfLqIUlaudAIE?=
 =?us-ascii?Q?1bSIsOHPQRFyxjwg+p4HwR01iRGaomPYUl1GJucc45jOTsUdNBwFaAIYmonx?=
 =?us-ascii?Q?8m4VRe8xiI7oDlDf1K4nBbE1zZQbXDlFPws38b+ImA6n67grhBWYCoBYBJpV?=
 =?us-ascii?Q?1FjxUEsAqiG8oNS9qbsOJ+QPffyPoDDmN/pwqSN3DCvy/oYZEgJUspUZNrnI?=
 =?us-ascii?Q?tE7/Dm5doiQkEqvPsuFUVRAVlB/GlmcpU2Gn+a0xArknXRaFUd6vEvZ2O7Am?=
 =?us-ascii?Q?zb2tKIHQT/ie+bujRGANKixgb6/ng8ZDQ0vRDMXw2stbJ3Kz4z/dPRBM2ywE?=
 =?us-ascii?Q?GKozm/r8fMZ0KjcBttanOh0MNcz3AQOYiB5Pj780qSlBfTk79zLJ06m7MEOA?=
 =?us-ascii?Q?LSmkkV7hVYVqvSvqSSTN9wjrlD9PGFACeVbF8FloZPyd7Pfb5OFS8ZDS6PH9?=
 =?us-ascii?Q?pJVNJf4ccYsPb0ENPwRx9gYHGfDmOYo34m2usO9ZHf3YHAWISq8Q3nMPf2ff?=
 =?us-ascii?Q?oJpOus42paZGr4aFesYvJncrdG1E1O14z2ufUl8nPSxoFGXxhwhZlRRVVKQT?=
 =?us-ascii?Q?+rMx/hlV6xEHbZ9N6b9tydF2tAtJUNE53CRfheWhiff8AMhu0mmi9s6cn0IV?=
 =?us-ascii?Q?wY3ATldbpt+ml15GPA2kmzZO3NPyfrlwffKh4DgmyJoBiy9Cbn3FTwVPUWYA?=
 =?us-ascii?Q?lrlJIHhC4JsjSi2PbQACWWIsYCy9RmwygE4frMkHpz5va05M52CinQHw5/JG?=
 =?us-ascii?Q?w9Ng8ERdD/ybPgjsivhjTTR5fHCuYPDXRGHLcK3TtYc05ZQVuOnbmfmY4RzZ?=
 =?us-ascii?Q?mBlAItlYrqusjdgYW2kPpc9Dz+1HQZegLcLMTcEhoyOHhgFEQn8Plsq3lVxY?=
 =?us-ascii?Q?4zlx4/KP/nk+PZlgHmf1nEX/JRXVvo8HVh/MOQSeIPt3LlmouU6ftg7ilA4j?=
 =?us-ascii?Q?9r35LV2NGl446TjlNZtLzevNdgjx/bh6yeW9RbbRYUiCwuQ/qyqpMMYWGt9N?=
 =?us-ascii?Q?VISJPyAehyR3dyGko7mmMsFZ2RcPkYtw7HZtdr9GKqW1eQMP/0GHsREa2o67?=
 =?us-ascii?Q?dgAVIFCKmC2mk+r/bVabKLB2waOWlRyrJ1wvVQSjaDaeWxKFn9MptMXC9eoc?=
 =?us-ascii?Q?/H5KERBReA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c4c70f6-f805-4bec-ede0-08de748d6e81
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:32.9913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hw2GCug+dzvcRWv2x4k/p2VXVP7tN2iEcH5NsV6QLOpx35WT70E+HnzqE8uFK0uuxyF3FrqjkcWcgYpD0IvVew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
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
X-Rspamd-Queue-Id: 76D1919AE69
X-Rspamd-Action: no action

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, do so.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 025e906b63a97..eb4a1c5c55714 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5492,7 +5492,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(display->drm,
 				    "failed to get ESI - device may have failed\n");
-			link_ok = false;
+			reprobe_needed = true;
 
 			break;
 		}
-- 
2.49.1

