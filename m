Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6L0HCyYzRWpO8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB96E6EF45B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Z1mbL/gO";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298BC10ED12;
	Wed,  1 Jul 2026 15:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD95310EA40;
 Wed,  1 Jul 2026 15:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919968; x=1814455968;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=JrfzdQLHg5Kv1ClmznzEa8r+51xRi+9289+Rze5UDf4=;
 b=Z1mbL/gOMOqG80bqXnxyhq/7+72YoBQrajljaKSKobrlHzY4thMUW+FD
 zFnpyhi0Z2J0+fdYoWxLrLLmcK0abEvGhwYUIywRshXDaVfH4LGgViCBY
 3A4cpHlwm2ztPb21SqA/w89jqS1Aaz6qCXsPQbxksMxDIBE6HfrSU0gg8
 ran+kPH5pE4DpOuNgxoKb6OcpvUPzqzaB3wK3BeN2x1D2p/9vzRhCmnP2
 dWw+ulvqUvLsE+OphlF2hNxrBUbKDscDBM9fhx/vfFryr4FfDM5J+LQu2
 iQQPHReuH+ZrKKaKF2giTNUkM6eE4nE8B7/Oqug0mWWsZNPB1niF33wDD g==;
X-CSE-ConnectionGUID: K44PwL+hTIuBSLMYk+wp8w==
X-CSE-MsgGUID: FekgUFGkSB6wMHGWMBcZ5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159185"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159185"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:48 -0700
X-CSE-ConnectionGUID: Zwd2McL7T1euViumItXQ2w==
X-CSE-MsgGUID: FE60LaIeQve3t1OSEsb0ZA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:47 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.39) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iVydaq80r5nCNilWH7hvh2xOMwU9JVHKo+E3SkNVz8bT4csWpAPVCOw6gSTj1spJ5av6d9ruqs7ttcmZ6rBfd/eMCi5+MApYlvbbaGS8KFeNivilvbvc4mGCZWMt2KqkSWVjUPcjFuHTFPuDyF5ODAh6AQCiad8maD0z96r7tU2uZNptTzFdaJojGGXHCQw+7Jtoxi1IczyB2iLR0dSjCEbZf8WKUBLGdcv0jftCpeCsuTsAMWku3VLu8xXO21nk+AKuqX5MTL3DbHbBQyv+MaNCQhSegmrkCiU5o5lXNiHb3YP7z4Hq/KdKab23BAOr8kZVXXoCDQ0KarMBnjr1aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KvotXCynH/qc7NH4mda0ihMElKQw+ydIKW4y2KeMc9o=;
 b=IDUHjCgTLk9fOLsXWWMn6jvg9GlfaoYnmTV+6faOimWTRGNZ56td1d02UI2gqFZPikcihwyKCmBBe0fpJtYZoebkxq8ZnOcAUiqydZXGurnc0aqVmdK2ejL3AKvjIj7X75PdZSc9LePrYtSL9BDBFtRjOVKQvlvTdC5t6ujkCx86hQ8x/QDqpErW5QPFYS4Yrlrms2cTU11mFCZxRh3d9CtBfVve3qHeCSowMXnOCV2oY0f6OZ9viD7wMpZU+I9n8iZSdmdaIOI6sWQApbGldS1FEz67z3vH2Vmn1Oq9RZT1J9UmKrJXtc1MML77DW9M1WyZYrHKzceKQSH1nQHrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:44 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 06/34] drm/i915/dp_link_caps: Validate max link limits
Date: Wed, 1 Jul 2026 18:31:35 +0300
Message-ID: <20260701153204.4124150-7-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: e86b8600-f16d-4c5b-07f0-08ded785ff02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: SeVqFs5DnuM2uGeqdz/an9ZPQn0BD1dF1RB8Ui07CcqPS/zFk7j92ubZn1Ul11pFxiTDdTEDpqzgmyZEkU6EA5TxcbGoWjPCr8Xeha8kIQC/Qsuw8zqrQjmJz2osOnP5/s6aCc9nRPbHGHYzCu4RI3C4HFq3UE+nfBS1QTLKsyA+JmU2r0vmP9ufzNqy7pEsNEizZA4VbDKyzNEaC7lFnOMwoM3Do925qBlv9OLvVUZXgRupkwNYKO2pOhf9gx90KmNZro4q8dlNdubfsNiGGA1RFSib5u3qIcLUcAc8xtww532x65+Rr42opvr/dkuyDP+RMkWukNmpPPPe4XP4/kXaXlVEYAUcvY9xxyqAAECT3KgnIw2tnYB+3x1OyiviN3KBgA0kSxLSC74/TTNfy4SSGsvV5SVIxnvqz0NerazItjIE04fJMXr+hfVMOi7fa4RDGXTqnqvv6XVHjrJyWdBYxy6zvOKSJ9n69k9Ffhv1/xOTMb8DZJ7pLderSsPCnRIVlHAf9OhVOlfhduYWgoYhyg2hx33lZmKWHN0JRpnsbQkYEAJxFXqFbJQCibXO0kb80Wsendz3g/K/bxfjXM6iSHI36OiOrwehPgfSQ1vDSmE+9+Yc7Ds85PrY9EzmVTQAyqNxlKbMR8dhNG99q8UtGq6cJ19lf4JIkl8Z6Vc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jqe/dD1ALS6eBIcNA3uexY8JmJP40JPLHCT1wub+2eCF9TjY36l9wsbyff7E?=
 =?us-ascii?Q?hBPo+2W5HncONf5ly1r6di87NR3R3AktSmI/0cydDFsfZEI1FKif6QXRwQx4?=
 =?us-ascii?Q?nZ+0r6jaKkhSCI/jhui834Wwp3ojB1z9dHEPwuUtPW3vz2DhYe5IWEohzjac?=
 =?us-ascii?Q?hrKR0FYVVKlUk39+yOr1S3vDLeqY5NHiMNfpyAODlAaUSDxJKg31cY9VAu1K?=
 =?us-ascii?Q?tNAh4RMhUf9msAtIrLIMtCtyb20hNmHTBP/RFM3MoQ6jFMgTFVvX1xpUruow?=
 =?us-ascii?Q?hk13aiOPh73FDWMmIstKG/cM6zsXkSZ3JKWC2+qZALU992Hv7TQloypZqFxS?=
 =?us-ascii?Q?xbzQWBp8Q4+56Ds/h/0YvGw4kLpoTmGpD/po5huBwsdtHncEXwalgP3kk1NE?=
 =?us-ascii?Q?VbknHUmojrD4nzLmQaR9nGXChiOqo6DBMjV0+ax+M1byf7Zko2WZYTjO3Qzx?=
 =?us-ascii?Q?X+32JbP8HNBOgkOezieNy0wZkeZrvVDPoX6lmWkJx4fs8UuHs0H+Nd7BCgpI?=
 =?us-ascii?Q?N2UsS4Q1Bm6J4tAibwEW3Ww2rS7bpaHkIRa9kQa+7iU0aWS970LlJFoESVeS?=
 =?us-ascii?Q?e/asxqqbXGi5B8JrFBBFiRWyIJTl+osPkBb/WzdzQ6l5KfkPsuNPLgjx5D2b?=
 =?us-ascii?Q?pknyTyTSzoT3bxL8bxypzhSLFm89KnEhy+LvUq6/DOSHWmvicreNYN893Azd?=
 =?us-ascii?Q?wgVjSDlY+telc8DyY12K+iPNB7/PCtsVX7DxCGko74a20vnE8SFozV6SCZ1Q?=
 =?us-ascii?Q?RERzunKDEbcw/SsGT20bnHej0vRG1+jv1ch3GFTOHtZ+1pj+cSoYX7/lkFl/?=
 =?us-ascii?Q?3IerXud1+9mW6fy8t5QlfBYm9udq72N9KcQA9NtkCiVhchhPxrjYm1lsRYAC?=
 =?us-ascii?Q?/1gx0jdATqIaFP7v3yKqGto5qnH9mbGGjyRLjHZ3dw7L8b8RfeKsPqltOBx6?=
 =?us-ascii?Q?XWw/T/sbGCj5/DPwvyhZusRRNZpcvAD9g7UnoknESCUSIqyxjIPTJURiE8Pk?=
 =?us-ascii?Q?Zyxs05dAVcQ2c2oENnGbjEkIWYdN1rqOEDwffi+vV8FG2NQU8yXXFGaHkTDW?=
 =?us-ascii?Q?oahLKgIFnk8R4iVpDg4i6THgM6CfPFxN7cXEltMUZ4jGfO2oYezXRuMjLqVH?=
 =?us-ascii?Q?fGdhheMbfrfBQ1jjdvsESGOKVk0RradyeIlBzxM60TYrqfc3DZeTSBHEmzEu?=
 =?us-ascii?Q?dBenkWSICEGe85W7pCATTezrGEf5obQauN+G028WXn5rVQmyesrK5BWRNzsk?=
 =?us-ascii?Q?GmJuPW4oFscflmjlVAShnpzOfPT/Iwd7w6yA78ldaOkuI4nk77LsGNDPpfWm?=
 =?us-ascii?Q?8SIcFNf53A/W9VH06OH07C8t9h69njAPkZU0ZaEEK5V3xA/QeWocf4qinn83?=
 =?us-ascii?Q?tMR1eagyT5gloICx2leM3qpayz46F4xzQ+vy0kw9NeFpT34dWPK59br1fXtE?=
 =?us-ascii?Q?637zHajapQzsGFTRrUt9+cWYWO3pPUBpkBAMW9/t5sWB5KWAi+jzeGM3axaW?=
 =?us-ascii?Q?Yva+R+H/d7YYD6PpXigf++XBO/Fea69pkUqW9Tmq3WN2uRj1WkxlPF5jWY59?=
 =?us-ascii?Q?MqaWOWQFE7FKvwGeRV0JoJfAoGWJ7QcTD/D3SHJaL0uOzf3R6j6Pjmmttwxh?=
 =?us-ascii?Q?JaKSXuk2s4cRuPNaOfWptQdIY2B/m0eqYcLy1DhY5l23t80Z3K9nEdURmWLF?=
 =?us-ascii?Q?BlFIv2AfTXLjZcgGesMdiLOpRikoqwvCx+ZQMH8GV1dvGG5UtvJsL0vqRD3D?=
 =?us-ascii?Q?o5xmYz+edA=3D=3D?=
X-Exchange-RoutingPolicyChecked: KqSbTx+cV7yQxX7njlaL4iLLLyOqeUdWxh/B/9GkdLr/Sf2slEgTgjvSm6E184SXIKezZiAUuqNij/4ueNZcippMXbZW1Q3IObCYl0/DghTSXSVlVLur9yUz+Z2cTcAB1n/zFPPDN+01CaNeCdBEjCmENvf1SkdIRCZAMGdwDCJVCEIIpe/GfbCUNDj8BUjLxPV4r8CBju8A9JdNJi0SqEXNudPApmewU9RFbReKnHLiu0BqdyF9aeVilu5lZBNHQa5ZfThJQh+CAi8wktgnjW5yrl9kr6v0vsLBzz6aGCgt45adLH5hv32r0BzNN1ZeTFXn9lgbxSfAzrgc4V5MFQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e86b8600-f16d-4c5b-07f0-08ded785ff02
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:44.4095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xfAqMkqYqMxXUkuaf9fYkN4EyajwoE+Up0cbU7BkS6iXqQs7qViyjc5hVtplAkbeB4bCh4jw+0156LxP7kUDLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB96E6EF45B

Add validation in intel_dp_link_caps_set_max_limits() to ensure that
the new maximum rate and lane count leave at least one allowed
configuration.

The validation takes disabled configurations and active forced
parameters into account. Disabled configurations are not supported yet,
so that part has no effect for now.

At the moment this validation is also performed by the link training
fallback code, but that will be removed later, leaving only the link
caps module to perform the validation added in this patch.

v2: Rebase on changes using a filter object instead of a mask of
    configuration indices.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 28 ++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 36895dd9d6c81..5976e85bb2729 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -558,6 +558,26 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 	*max_link_limits = link_caps->max_limits;
 }
 
+static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
+				  const struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp_link_caps_filter allowed_configs;
+	struct intel_dp_link_config forced_params;
+
+	if (max_link_limits->lane_count > INTEL_DP_MAX_LANE_COUNT ||
+	    !is_power_of_2(max_link_limits->lane_count))
+		return false;
+
+	/* TODO: Validate max_link_limits->rate against the source supported rates. */
+
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+	/* TODO: Get filter for enabled configs. */
+	allowed_configs = calc_allowed_config_filter(link_caps, INTEL_DP_LINK_CAPS_FILTER_ALL,
+						     max_link_limits, &forced_params);
+
+	return allowed_configs.config_mask != 0;
+}
+
 /**
  * intel_dp_link_caps_set_max_limits - set the current maximum link limits
  * @link_caps: link capabilities state
@@ -566,6 +586,10 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
  * Set the current maximum rate and lane count limits to @max_link_limits,
  * constraining the set of allowed configurations.
  *
+ * The new limits must leave at least one configuration allowed: the limits
+ * must not be below the currently active forced parameters or below all the
+ * configurations that remain after disabled configurations are excluded.
+ *
  * Unlike intel_dp_link_caps_get_max_limits(), the caller must serialize
  * this call against concurrent queries and updates to @link_caps, in line
  * with the rest of the API.
@@ -578,9 +602,11 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits)
 {
+	if (!max_link_limits_valid(link_caps, max_link_limits))
+		return false;
+
 	set_max_link_limits_no_update(link_caps, max_link_limits);
 
-	/* TODO: validate max_link_limits */
 	return true;
 }
 
-- 
2.49.1

