Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cmh2K4+tMWokpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE73695153
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GHtCPR54;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C7910ED23;
	Tue, 16 Jun 2026 20:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B7A10ED25;
 Tue, 16 Jun 2026 20:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640589; x=1813176589;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=pOaDA2khO6ajh3kdWb2hf9bKW9R2BRLQ7iZknAYYgQI=;
 b=GHtCPR54tsgesXz6j3kLMDOPEzyCzbEmSVYzXbXzsQgGX0G1zlvT33lZ
 eyzLiDwwoEEHpB1VS0izLHn8TyadqxcZPvZM8irJjnNQIy14NDjhL6lv0
 Vmo+TZlBtUM5i4jj/8+mYgJxI5pWT32U/OHk8WkUVe4P95j+kqblsgRE5
 rQ4w++mFEeTOEj+8ibqiMX8darJaPUSZs9UJ7GTNB8gh2i5QAvPf1+cEx
 pjycRCIrw2aLuXCSqx0ddYYsSs6ZTWPTZtwxMzWN1POXZ6rjzAxSUsgYq
 ii58NG8mzuNqREMRvnHMBBEI/Yq5u6YhqhLt+3uSTnqd9W2H58WCwDHNg A==;
X-CSE-ConnectionGUID: BCWDD0yDSqKnzfLXMJ7Vaw==
X-CSE-MsgGUID: +pK+FlbxS+eMlT3NR77yfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255859"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255859"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:48 -0700
X-CSE-ConnectionGUID: qBlT+asNQKS4sNThOmCONA==
X-CSE-MsgGUID: zZToAJULQ+anbg46UAyO4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579811"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:48 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:48 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Awwu7wp1g/IgPfUsCJWwMvHeQ8zUKNQ4YGH60u23NNVXWMHUp7BXOswrbOxPhZX7GX2/KyNjUfXmzhv2H5b1IkgDuOZVcriC38c5f/RfQEVvDDis+BUxZvJVqPzKmxRYqw4HeYOGGp8DNfjf6Af63wOiy3+/SXRxRoWxDRPx4bmUzfCWaN2sInrVioLA6YilAG+qQLt87MggfciIN4vSmolEF4gBlslqNmSERmHIPTwq34LpE+/5l3jj4uF/2cj3TKxj6+PdHNcOgwMCxfDpu4nRCqOZawh0JRVLWVR3+Q/9lsMjs1kCOD5vHhWEpRPglILIyrbDZDxn4hl9iVPALw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXgQ2lR/4pcwjBPhyrgS74uKkauhaJorT4SJpBifyi8=;
 b=ZnD0j1DfLO9DLo+82cT7KBHzkQMBD8ChWpcI2Dt2qiU3VKjH9RmW5ACdOfxr1MrFut1BkM2QEDB44QjQZQgEijaYsosnHF/OUOLRJPe9j/j8WiLORNRNlNTz6ycwN20qodbNflVy/jgXUOwC05Nfl+wDYhezJsMa8JBnS7n/haX2Z6j+Cale8bq6iAovqqSCN22Z4iY7hFmFFlUeokiIO1pJKda1XzKCFuieMaDwPV+jhOCDKLS+1J4byFGB8c4A0+2LSFsAB4GpVXRi6/ugDQrgnaZ9KCkBoolv1KIMCHxlC/JO8ktDAP31bF4Fjmhh5gk/KYD9MqWKF/HKzFMlgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:33 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:32 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 08/28] drm/i915/dp_link_training: Use helpers to get forced
 link params
Date: Tue, 16 Jun 2026 23:08:28 +0300
Message-ID: <20260616200849.3534628-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: fdc845ef-692d-45c7-068a-08decbe32bb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: L5DjgWP6CUwkPJOYfWHbB+prrBD+fsxGwZcGv+VhSMEzn4ZrkJENFUsLEPxwSL1d59GXdd47F/7WLVAJmsRqBhIZJxsNnujrv/PnGdG58L9ZHQ5Sgww1JiFq8utG3KdjU3uGbXGVVjltD9zLJVoVIa0n0lUKQH8QkrEAsEd2IqQSpAIApdl+QG44+gYWRZFGVayrW7vyMqeSSum5/N0qC6HvcijMszUuwc0cr4qKGyq08/cf0XChLSNRal3o2BGPyTZcXUhzWxPunw68WWs5OScmDGoejO5fShC8sabtjoclRuEJX5k8WifVPQ1Qi7dsQ7NPQkpXECuTOUBd05gBmYtKL8X1sxDCdDi+Ya+mz+fq8ROukEQzDoPwsnh18DSSqebVw5Orry/ol02NBaoXBN8dHX7ZBI5ruW5ZSy4gtECm6Fu6NvswhpSrAX4x6oE9xiroBhtuvVpDkEttMNvGaD24ChkmIweSUzZpbapm9VogUPHYZwOlKyv9ImwMI7tbjbhQ4cRuuzAhDQxnThR2jVxzMf3vFv9+Y/mxaQNAb61Y0BMfLpQD5882kwJ9G67S1bOjAYXBzWf1+W5VO0BN7DRWJ6YNHysADMwBpdZFHw1dUgDJezQpllXj0RMO392gV63rmKoflbJ0bWejcoAVkfMkoJUWB8GIT/KO7gKT9GXNT5jgZBtwRXwdtZpUwxDk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8bFqv0mhbflZMCXFZRypAxAT5yBH8Ake1IErua/HnpSHb8V9otW62Hzvhd45?=
 =?us-ascii?Q?/WuEQ75mtICHjvsor1kOzdPNyDGyG6++wKyJo1Oi4OtW1TQOgSmQcAonXeGg?=
 =?us-ascii?Q?oM90LrvKZMLlKDlgFvvz5EI7c1kB3tOoY9lEDCpje2wu6Mx+sGg4sqhkcWTu?=
 =?us-ascii?Q?gIsN3V/lUoM+UYf3SQQo4MPYeJhR/hW2NjwZxBJOV+H+ZzrvMTeoZ0HGV+Pw?=
 =?us-ascii?Q?QtZyBCNXJxe2f03iR79WncgldN2YdTcHbqLSBQLg5I9QNMyeIXbTJ1HOdhTl?=
 =?us-ascii?Q?BmqtXjlb8dxgpsnX2Po7kdEV2/ZD2EE56WdgZ9VCe9jwH/Bal/QX04Qsfrkm?=
 =?us-ascii?Q?MmVWM0GSxn2vGE/FYuFT6j5fMFS5frauzi4s+aITm4RA8yRmOJ8YrMxIjQQa?=
 =?us-ascii?Q?Qo1PtDVvubRMIW01T7PIhOJrbWmWEc7MiOabrGcJP+mX5xk9ijD8YWLiiweh?=
 =?us-ascii?Q?6toOTTiQiuB2iGw+eEQzSsklt3nC9vHp0UOz/CwXppoXfm1XyhpppoU5Olui?=
 =?us-ascii?Q?KTgeyHJfgeTb6cExqgZwltQvm6hb5VBLKGtFxGK6fGnSkvL8EtGEtOwyYBCJ?=
 =?us-ascii?Q?NFW/yCOTYlBS9VAafLvhL6ywLdColKzqcDALDmq7FLTZbPeZNIOhPIisWaj5?=
 =?us-ascii?Q?7FLH8DFGu4ZWpwugriMRR3MZ6343qz/x10isBQfbVEiYgkarD/doaHvVnKaU?=
 =?us-ascii?Q?SHPQCID/VdoVJ4NMGcZ6uCvG6mnENN5MDVI63xCEJ7DjXJW86v5OWDqLQ5CH?=
 =?us-ascii?Q?7oTN5hSQWJIEU2fz2fwFhkluKyakvIV1HALVv4Nlp9caJX003jxrhgwCrMaB?=
 =?us-ascii?Q?SdVysR0sOarryxFRSbc4qK9930gD5jBi9onEV3I/3gpXnm8ZGsFjMfdp2Eqi?=
 =?us-ascii?Q?hwo+spRuKNhc71Ik1QDb862M+1fIYlpZ3Bkf5zSKrkFakkJfFrvDh18ZDmfm?=
 =?us-ascii?Q?oZJw+LSZNiZ91xIa+EVXY2hyaXbCbGPBjZVGFabLBPNjtl8OQptSPrGVuNeY?=
 =?us-ascii?Q?CSXM1iuHPfTh+dZSh5YsJP2u+4F1rGNiD0NjhMhaPn2zdq00lM4ioqL4IjcE?=
 =?us-ascii?Q?MfF92LZcdWSeHjRe2oVUfVZUs6ve36koNcwffrp2/yD8xEq0cn2koijdB/qL?=
 =?us-ascii?Q?pbON+CIWEIAj4mQzgqrARdg8OM0tfHPO7onfL2Ik3vQtFhHUMXySL6GZRncs?=
 =?us-ascii?Q?b1IODm7LX9HlyjRZ/dBZED5iFqK6tEAdxvz4YbiQk1ZXOqQLVB5JGCuT7uff?=
 =?us-ascii?Q?qs4STfaVAC4/yLUAeDarrZzb/nj8H8GrfVnyXNQQhXtmGPeWQRFtiXCYZ+8f?=
 =?us-ascii?Q?ycU+OR9ahpHrSXJEZWASPxZKSuCBkM6sxrclx0pS6AWdIlYgCN96tnAuX6HD?=
 =?us-ascii?Q?ZJ5yKOplgRh9zLevyeTKXs8tmGkkr36Yd04eywq9WQufguOKRdp8LPgQrlQp?=
 =?us-ascii?Q?4eRfWIIRIMceEqO3PPH4zHU4lC/aiNKebqIGIehm0udgOW/t8Lx5rjrczZq5?=
 =?us-ascii?Q?2KQuU26vn6Sr/miHTa66HAGPib79QaMz7MypFiNkoKad8+r81nyZJmK2V7Di?=
 =?us-ascii?Q?h69MF+QVdvoWTw8X4tDa4SU4hZgp748fEjDkYYv86k85HH+t5pRzAwZU4Jic?=
 =?us-ascii?Q?JFENsQgVp27qyCscNrbWky/iwpwNl2b4Y5DkUTGofmDLAY1FOp+6oppmFxDA?=
 =?us-ascii?Q?W9c7i1zA4PHfX8k9WFwV85OQDho8Bm8DB/51H4VhU21lwKPn3B2ZqBOP0eB/?=
 =?us-ascii?Q?UK+z5uXzrA=3D=3D?=
X-Exchange-RoutingPolicyChecked: EvqKKdq9wmOmkYLjm/3lEMbGdVFXJ3vEmDiJWOZRZdBfU1tsroq4mOg2KEvLqGpEEZXRl6A3NubR82gL0OPdhJituFwgnntWu3G3AyN2ZntNcYPE5fIK3Yep0jrbtTeYs3wf5CsjoGg57NU8BRPNbaNJsSm2T+vHPp9ol9peCbQnWtxzuv+MNf4ar2rRvLZlV7ZhhW/PRZDHUfxRoBQvjV31O3ZijrDLIqpAGJVIrj5k3KPDxQobSikod7HgLJCsC1FghuqTGFPGZ+MY39vVOl5E1o+sFCe+6t7691YWvDFHIWnLLBMZ9QCm4vJcrxK4ixIJXsb4EZpeMMbuX2eCrA==
X-MS-Exchange-CrossTenant-Network-Message-Id: fdc845ef-692d-45c7-068a-08decbe32bb5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:28.6339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5urU8nXk2gj9rmDVN6GTn9OWkMRGkIjqa1gFyAnVj24f771kaN3EkH25OeGUd7YAB2zkDRDifRNiHmVukx4TSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BE73695153

Use intel_dp_link_caps_get_forced_params() in the link training fallback
code instead of directly accessing the state. This allows the link caps
module to track changes to forced parameters internally.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++-----
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index cbef3d45baf9c..61ada34ab9c8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1850,18 +1850,22 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state,
 					   int *new_link_rate, int *new_lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int link_rate;
 	int lane_count;
 	int i;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
 	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
 		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
 
-		if ((intel_dp->link.force_rate &&
-		     intel_dp->link.force_rate != link_rate) ||
-		    (intel_dp->link.force_lane_count &&
-		     intel_dp->link.force_lane_count != lane_count))
+		if ((forced_params.rate &&
+		     forced_params.rate != link_rate) ||
+		    (forced_params.lane_count &&
+		     forced_params.lane_count != lane_count))
 			continue;
 
 		break;
@@ -1878,10 +1882,13 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 
 static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int rate_index;
 	int new_rate;
 
-	if (intel_dp->link.force_rate)
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+	if (forced_params.rate)
 		return -1;
 
 	rate_index = intel_dp_rate_index(intel_dp->common_rates,
@@ -1902,7 +1909,10 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
 static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 {
-	if (intel_dp->link.force_lane_count)
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+	if (forced_params.lane_count)
 		return -1;
 
 	if (current_lane_count == 1)
-- 
2.49.1

