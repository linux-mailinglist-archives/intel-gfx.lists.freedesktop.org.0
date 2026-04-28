Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKgxOkCu8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE5485556
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B20C10EC8E;
	Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdwB4G7S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3C110EC75;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380924; x=1808916924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=t2dsU068hKq8DkBkpGm1UtqSJJ3K0Ix52x2KV9wNT/U=;
 b=HdwB4G7SrpWlDyT/JPg1FfpXdkw7Cf5m+647fZGDIAWFCyaOlOQzCbcC
 z8kpu3APkLMtmXO77cY5Nd6iqE0KJrCfnCBx01MOtzLRKC0fjQQkk5v+p
 kvsvNKYVEIlcRq6aHCNPLF5tF0zIDcJD1hGhwmpTmemsuNcgQFSA6GL86
 C6z9pkNnVoTGfFA/8JIcU9NdVqzI+V5b5EvnS/fdicEydn3PlD1gaXgVh
 pGLr0GlIkeGm0MizMOgcM0MuM0F9CRCnUwlfHBogTXnJL3FMPGXdiCyzW
 TrS8fKqrgzYf7S0865EpPgZX9J1lDB96P12+r2dVi3JaWTbopdPrJCzMR Q==;
X-CSE-ConnectionGUID: 8e0wx8IWQX6zT4vIHz7uig==
X-CSE-MsgGUID: Gavr/uXGTqSK8s//NmMbXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883659"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883659"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:24 -0700
X-CSE-ConnectionGUID: iwX1IqLgTayIVi4/RiAmYg==
X-CSE-MsgGUID: WnneAJupTPqqtyPs77p2kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795101"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:23 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:23 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kk7hvu7GnnnfQbwIsP8zCfV6u40HGZs8Pl+4Wgk9V71oZ4cAiy6FBC5CyBkTMSL1PoKrrtwbvvQN4hcVBdr/O+YGm55t6f9ufZ3kAzs2UcmRu3san32IFSqfpnrNlxaeuqpAcMBv1BmYt5fMgg9lz/ecftgs2W8DLlPCMvhk/xwuWCM0BnvxzPOftoK1Ip9cOtgaY7TlLJo0rsOxxA2V9dP3HVHAbvCJByItFRNM0qdUv4F8DsTVt4MVLp987md6Vsa3tD+hkheEbeHdMMH8Ths/t7/yItQ72kp7HJmgAf22l/E/wHo89CGfEpOe4ISwx/umYoIS48Ls2Mmz4FaZcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XzEMPRUpvfC4GlR9U3drBA/n5noy6uQm8SRrCyCx7FA=;
 b=kcgomDXHIdXnosdgKknMl85sDKEKEN3Yq3iYQo6XsdZ7krHVcSqxghn/nWV+2DJw8Bj8DLkYytR4MoPlAWxwU6L4hdvWC090M+OgcPAO2O4J2gBdKQchVJepjW0MucflL6uJS+wuDB3aKJQxHq68pKnw2YYXHW/qBlSiiaDsjB/Av5oSMgtot9Y1pMvzePQRRvjlaBZDyrJxzXZXBaZthAd3I3nJmTT7Sm3KqYYu9r7I9grxFCUbKSw6j6NYH7J/da5wRrfvoY3lrk0Rf6dYAPFBKOmw4MP0eTGiJYxa+M9ha2my8MuguVKIvVdIYpuW2ulH9GBEM3gDAp2RQ0p/fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 084/108] drm/i915/dp_link_caps: Add reset and merge update
 modes
Date: Tue, 28 Apr 2026 15:52:05 +0300
Message-ID: <20260428125233.1664668-85-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 62bea6e3-33e3-40bd-20bf-08dea5255a37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: gfo7MQjgKJhAA86JQ9CI5Bv2R9JqdagJ2yGkFKaqcmOWmVi0ClRGC/EfxgtwNVG1PdCp6ZoRPSC2yjhDENIWZQ08JXrC8tJD8S5Linpf4WDdRkPf+FU+MQaBh0EV/w9q0JCuhMacgHFwM4+gIx4ZjEeLQJtvuSLbIdkrN9Ktag0dDDXs7XTwCjJ0Fh1l/mcg3LZM9cG7OaMzzfPZMKmkYuc+0cW2hr2BIuLJgfxEhvdBmz27LPsMDwtEYG+hbp1kShiogS27clsJm0PyeATJVgD5tiKvqJEUCPLGo7MZq+HSHzStCRTg9alpEq3rK1m2fS+GfXCGVIL0p4ve9x/yHnnQddYJNwym0fRNomQXAMULQIePjHTjN8HpvB33QxJXbhrsgmYgSOsx+c9C8KXAZYmy/meDQFnKWeV+bDphBGxgTPtbx/s14Jq672p8Fo5i7hauama/tTwpLERPkkA448BOETffDXv9ORWxqHh6J4HgXNVQwqSuj/qmSYyt9YEijzWr2iqEFUcxvpMmc6/DFnSPB852jtF1g8uwbf/gdALExtsMbc7PM2NnqqonqrzLT3Dk8cGC37vwFAGblvpQcrxhRfLSVqRSmSXCDSRK+byKiFmk9Old0m83E8e3e1vTJV+w3ILeybtgfVdcbjMQ5akG9C+LsT9WVqdEhgNIUxmSKFmd4wlytkncfFsmVOYr0+e2U5y4eVChISs8568YmHv06KS5bjKbCobpj9nRzSI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aw8pFYWYBVdh8asbodCbBtnYkBPMPu9QACZD/bfaf2mWngce+EhJQQoVrtvV?=
 =?us-ascii?Q?6x9FyOg2x21w+eaQeGBytI3lIbxkzrCIBnN9ZNJJJgTVrd3mnQp9hRiAmG1R?=
 =?us-ascii?Q?fXvkK/WNtbAacjZN3Cr+KNrQHKLnoAHo5qKlRG2Wwh/urKm8cM+2iPbxXJl7?=
 =?us-ascii?Q?BgTtRUIxpTDJScQbClGY82PaVC7z7QJlqmjRBqS+dMfAeMrlETmnG+aiKvEH?=
 =?us-ascii?Q?b4WJeRo6hntc9B07ncuvnTONcEHdReEfVb1hTE/Ryd+dDnxV6HZrUX3h6NPm?=
 =?us-ascii?Q?oQm9IO3RlhZuhxUsrGW98Dc1KJxuKTyEkW/5mfg0QGb5S81CzPztIod6p7EJ?=
 =?us-ascii?Q?BWrxTJt/2pX0i/UT66UK59mCyWE0kfgy+g3oZwqOBVbblxPwZmJyODxXhCIk?=
 =?us-ascii?Q?ZlC4L5A9egqSPaxXmfhZAbNUBUzmgREerjMTSwlhOSzRl2HZEeRVNlZqhNFg?=
 =?us-ascii?Q?/Ifq2ZcOaoocLhlcf031GKDOEtGA859KWZsfSwWW/2yelxMiQLhHzgTEcKNc?=
 =?us-ascii?Q?i+tCp4zpQQ/oJnNbjElQra6xBOui3SO5lMY65daJDlD4EFrdW6IVhvNsB88W?=
 =?us-ascii?Q?Ax/93SiusUFAWW7oyfSEWVZHdJBkoO6Ff+wGoeFxuSqC5P2YIX3uBmrTUyde?=
 =?us-ascii?Q?TlVCB8hi2jMYXTHrQbcVMztl7M5q03kIpivUgBkcPNLh9iyGaQ6X6RV20XDD?=
 =?us-ascii?Q?O8TeFAivve0htSv/7n0MjnBcb/8mS9lFFEpD4vBt+j/Y7KY4uz9M2yh6w84h?=
 =?us-ascii?Q?Bpg3M4LqUvNPMlEQhIHqT0shQTJdWC0TP+UmSu+8d9iyn6InzRAvxE9aKVn3?=
 =?us-ascii?Q?VTOIjzZEAaqEKT2CY81qtBlOQ2eyrpH9iEyE3KmVaZcA4XCD/vnSgg7Tzm/r?=
 =?us-ascii?Q?aicsaN+7e78189OAc3NMWkgX8JHchietEuDV26p62+N1xa6PFG50bz2ZAzBb?=
 =?us-ascii?Q?QTWzWyRFZ3HnQyS0u8gNaWkuXkYkywsXaS/yyQQT/K8Z9kWjebS/Xp6g1T+P?=
 =?us-ascii?Q?3WbvZB6Rph9+IQwgbHU81ei5chlC+E0ekEjyxEvFSroQkQlqvUUhFbnSRQAi?=
 =?us-ascii?Q?cgVc7EQfvV1hJYWDEqSb9DKmOPCQKmxaoq3a5EV1GMS5PnGtbzuRbGQTZIBJ?=
 =?us-ascii?Q?O3mP+4oPK+6SeMYxWdFZPpS1Nm0pUUtuCxg5PoMdMbGObPDBWsiAw0uhJAei?=
 =?us-ascii?Q?rzxj8MGElBhPA7++BEZuy32nCqqdgCdCGuqaD/yWYIN7NcGJnN2Tr66ywAHM?=
 =?us-ascii?Q?uPL5tQIR+tnA0cIDXBtvNxgN6Mt8hR6KfHOvKNiK2jCXOVYyDnHFQ72sffXi?=
 =?us-ascii?Q?K2EH8Wd9xOQUtsXp8cBqa8Q7UOydnvq7i2BELm3Z25+B59f+WKwT1mYOJh6P?=
 =?us-ascii?Q?esnBdtc7zv0BMq7WZGccl/mY9croX9FSEBx1xAcn/BZ9PCr2bBoHu24O36Yh?=
 =?us-ascii?Q?v6TCQ625lexOief698VvcSVgpLRnExaRQ0z5OvZMxnzbPx6mkH7fFkK1KyLL?=
 =?us-ascii?Q?lbp6wyBRr8M5hon3Fu9iEIQWi51wipYxcIH3GTrJ9vY/R5La/pdusKX5Z2Q8?=
 =?us-ascii?Q?el5KzMvOrWsnp+tOnQDn1fhw77S1qNYgyhk7XpBhO6S/aBop159GycVVbvi2?=
 =?us-ascii?Q?tUxXrfVYDVXq/r/FSeZsD49dBbGwcXEBX5Nf6Aw2Vytqu0ZsfxzYWNXejpJi?=
 =?us-ascii?Q?vORj567UEmN4o4Puj5soWeuz6nRC81VGKVPeTUOiYiV1QUiwN7BJk4zV5R7N?=
 =?us-ascii?Q?nvLklt+kig=3D=3D?=
X-Exchange-RoutingPolicyChecked: CX0IRESNCQy0y4BM3P0ttItcl1/XYZ/HZTpx/+o+kKt/zdSv5BcV4RXabt2n7Lreefub8XA1Nst0RLX1vz651BMWsw7O+/QVXWDM2OorX5lnMzq8O817YHPEWcq/5vWwnu7rZJouFnkS/60Ie7NN+PgAY/ud7Z3sLvAdf3PWFNedswBCzuG4sCz7zhSGP895oYcdff9Iuw4eBPHqIgj+Zb7dPiQROgKhUSx2qqOZWyth26g6siFngV4TWcNqyMewLakipLdLz4oE14hKeUEVRue/TZEsznlgwcPq1r4iMS1pS4CYIZkQaQ6n41yH55Y/zV2/FtpHzqAsZ1LBN2dYgw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 62bea6e3-33e3-40bd-20bf-08dea5255a37
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:58.1363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eZpDcEZ6XrFv54IzcuJNcBTP/3RbiefSsuNzMl7tVp6MalPsTh9jXHN/ToLj3v/Xu20lHtT6BM6RV92/Ctv1vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 96EE5485556
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add update modes to intel_dp_link_caps_update() to distinguish between
resetting link capability state for a new sink and merging newly read
capabilities into existing state.

Reset mode is used when a new sink is connected, after
intel_dp_reset_link_params() is called. Merge mode is used when an
already connected sink reports a capability change, preserving disabled
configurations that are still present after the update.

This patch only implements the reset mode, by resetting the maximum link
limits, the logic for merge behavior will be added by follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 15 ++++++++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 19 ++++++++++++++++++-
 3 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 875e835848c39..0255aeff84b85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -686,14 +686,21 @@ static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
 /* Return %true if any supported or maximum link param changed. */
 static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
+	enum intel_dp_link_caps_update_mode update_mode =
+		INTEL_DP_LINK_CAPS_UPDATE_MERGE;
 	int num_common_rates;
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool link_params_changed = false;
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
+
+	if (intel_dp->reset_link_params)
+		update_mode = INTEL_DP_LINK_CAPS_UPDATE_RESET;
+
 	if (intel_dp_link_caps_update(intel_dp->link.caps,
 				      common_rates, num_common_rates,
-				      intel_dp_max_common_lane_count(intel_dp)))
+				      intel_dp_max_common_lane_count(intel_dp),
+				      update_mode))
 		link_params_changed = true;
 
 	return link_params_changed;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index d7ffb8e8e9cf9..9c0ad5cf87259 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -949,10 +949,19 @@ static bool build_config_table(struct intel_display *display,
  * @rates: supported common link rates
  * @num_rates: number of entries in @rates
  * @max_lane_count: supported maximum lane count
+ * @update_mode: update mode controlling reset vs. merge behavior
  *
  * Rebuild the supported link configuration state from @rates and
  * @max_lane_count.
  *
+ * If @update_mode is %INTEL_DP_LINK_CAPS_UPDATE_RESET, reset the
+ * maximum link limits to the maximum supported rate and lane count, and
+ * re-enable all configurations.
+ *
+ * If @update_mode is %INTEL_DP_LINK_CAPS_UPDATE_MERGE, preserve the
+ * disabled state of configurations that were disabled before the update
+ * and are still present after it.
+ *
  * Configuration indices are not stable across calls to this function, so
  * callers should not cache such indices and masks built from them across
  * updates via this function.
@@ -972,7 +981,8 @@ static bool build_config_table(struct intel_display *display,
  * - %true if the supported link parameters have changed, %false otherwise.
  */
 bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
-			       const int *rates, int num_rates, int max_lane_count)
+			       const int *rates, int num_rates, int max_lane_count,
+			       enum intel_dp_link_caps_update_mode update_mode)
 {
 	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -989,6 +999,9 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 
 	link_caps->config_table = new_table;
 
+	if (update_mode == INTEL_DP_LINK_CAPS_UPDATE_RESET)
+		reset_max_link_limits_no_update(link_caps);
+
 	/*
 	 * A failure could be only due to a bug, the update function handles
 	 * that case by removing all restriction and resetting the max limit
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index ff737dbb7f4ad..ff66056adc9b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -96,6 +96,22 @@ enum intel_dp_link_caps_config_match_type {
 	INTEL_DP_LINK_CAPS_CONFIG_MATCH_FUZZY_RATE,
 };
 
+/**
+ * enum intel_dp_link_caps_update_mode - intel_dp_link_caps_update() mode
+ * @INTEL_DP_LINK_CAPS_UPDATE_RESET:
+ *	Reset max link limits and re-enable all configurations.
+ * @INTEL_DP_LINK_CAPS_UPDATE_MERGE:
+ *	Preserve the disabled state of configurations that remain present
+ *	after the update.
+ *
+ * Controls how intel_dp_link_caps_update() applies newly read sink
+ * capabilities to the existing link capability state.
+ */
+enum intel_dp_link_caps_update_mode {
+	INTEL_DP_LINK_CAPS_UPDATE_RESET,
+	INTEL_DP_LINK_CAPS_UPDATE_MERGE,
+};
+
 struct intel_dp_link_caps_config_order
 intel_dp_link_caps_config_order_for_connector(struct intel_connector *connector);
 
@@ -127,7 +143,8 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
-			       const int *rates, int num_rates, int max_lane_count);
+			       const int *rates, int num_rates, int max_lane_count,
+			       enum intel_dp_link_caps_update_mode update_mode);
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
-- 
2.49.1

