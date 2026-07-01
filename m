Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MK6fAEUzRWph8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 620326EF49C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JP2rDoNr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D733F10EFC9;
	Wed,  1 Jul 2026 15:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B5A810EFC4;
 Wed,  1 Jul 2026 15:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920001; x=1814456001;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=UV4boOM0A+Z/lOHw9k9YEd+W7gevDAw+eu8RN7Z5b5g=;
 b=JP2rDoNr853KQHH1QvzJgB5XSCVFp9jUElUfFdX14tHxkIs1RKB5ulXu
 s6G5CALawjsMOUYl6E/2qrRlM6mdwQy9Rxhd9IM91dxyY0yF79fUIOrv/
 V3Ir6taAjb52TuvS9OjnmtfSifDF137tYW1/OVe92/ImB3VdqOP+5nNZn
 l89Y6EExYR4I41B40eCL+SnIxAloQ8dQooqy7GTPNr1k+DHTKUVaAoFYG
 RVQ933qYclW01DtqVbyWdUYDcag8wY8QQfpq9ezzH14EzCA/pzBZV3If7
 0JZPSX4bz5Ws+p8dgGKCFzaaVRBsj0Zu9UX51MaSzU+fq0LOLEfZo38Jn g==;
X-CSE-ConnectionGUID: zzP2Gm4wRsK2jTbTwd5SEw==
X-CSE-MsgGUID: +K4hIL51SnaNt/Cm8fcM3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159255"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159255"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:21 -0700
X-CSE-ConnectionGUID: vTO4qA9OSl+hVtkUL5HOqw==
X-CSE-MsgGUID: trY/JxxlT6imIUUuCSUP1A==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:20 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MWRzyECRjqHeY0AgIlzcTiefetPSFHRVwWc+i7FpgXZJINRaOWZDPiM7lN75kInDT/PAJ8xeTqIOjoPCOH73y+KUq9BKaSC5+T9Uw6M0b4c4vHe9hsPtpO4WVfp/tMFz2ZnXdBVnAdKbei5EUkG687gISnW6Mjxg5lRfjyNGCpVOxbXHe0j+1431OQEHqxWOdiNsHqrUJrDW48XLoCcDrpv3dkVDeL+yuFM270Zde7up3W5LK1CPnb+g4sljL96jvwBCRWQvKFEPxV63DTaEg8F6+fEU2ZAfwUISSL6FlCHapOi3KsWxM3gEngWs2/G7csADF+e7a7w2/ZEJTi5UzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RyfvbFd9ttyCeHUS0Q2J3oqMKscraSgA+4gRV6004HM=;
 b=x873O/cZ+jBb/zrF4KJDqV9qDQcq1f+aHkTbRC/KhM3GoRm8qdA15BbzAEqVvTTqP7fzI0xHM24diWJuo+h22+Ftd8GbR/4y0GsUfq4FJv3TfKK6g9QagXLw29JMtAtwHQ9xtcvipZCxpll5F5q49ZYLStqdcS7Cg+NftSfciFv6Ml/UKHEXmHEAu8ovJryCBu+G1Ir84vIqkwQqz/jwzPe+a8mXiPL4DUZ8DjwqqEdz62N6fCLBIxHLCxtzSbaAX5c2av3nJ7lx1INFD4x0JT3zZ9TwaHDl8bOcFNFk67imrMzhKmaxaOnr3wYnzXXQ84XYv+SV6uoei1NU03zVQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:08 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 24/34] drm/i915/dp_link_training: Use config iterator for
 fallback
Date: Wed, 1 Jul 2026 18:31:53 +0300
Message-ID: <20260701153204.4124150-25-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 0a403543-6960-42d7-0291-08ded7860cd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|3023799007|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: T82nO1v3HPp4N38lZ+Sg21TUI2exhQftqhx15i3XeSow34oi+bREiSB+ym39PkN6leHtBZPReMjgynYZoCir/yRZF62NIZHmsxFETVK0HFS2iWdgtFkx85kU1bWk4HQ1EGKbX1RS69JhNH8dc+mi7TxztnnuScaXa6H3aeZJtrj8129LhWdDxekXGqCtmQfxSzc6zrfHXm9c3Wj360i4L5rUlTQ9Vtau2nvRXkSNGvRjadpz6cc+ZuSCixR+Y9e4f9d1R26pX5bFRnUVtLwR4YssXyhul6eoA2kDoY8EMPqSYjgcNJco53zKoK3Gh1cTFMN59RgJ63yjG/Se+eatrdeW9K3r0w+sJsg0CX2J+l+bioPaWa0ASolT0ShQ6WxgA5V/SuhmtYA0ybw52jGbbcpj3bOzjVCqssXW/5mFw/NizG8qWSmxOItR7jeVDnVjS7EZD8Ad7kyffxTGhLLbFG1GoVSDUI0qgY5CHeLVykiH8h/3FEOwqt7PyFSUBfxzWZqDnihn659bYUfZJnv/hzRcfoHFEjabPukcsmhqegZflqyDhVqAgX3XmVOvaFbSp9gtWTCfKM5p8MjHj4NCA4Uk0AvN6fadaxaWLqs+jiWTo3mAtKDVoivv3naKkUcsyEUHJ72efolhJd0UJ6iyreF27cJYtrW9tYRzCfv7Tik=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(3023799007)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a9MWHnZ6VFcqmVGLg/bsSm8h0UVzu/Eo2AWqP3q4X4mD4qYwzwkMfl9JYpsJ?=
 =?us-ascii?Q?8XDoSN0Mf+4UqVDPKvodVGljx7K8Sne8r32FSWhlZyXCEnHGlFFvtoj9eEs0?=
 =?us-ascii?Q?3VoFjBfIjxlBYLNOJ8V308A/QtT3A/MA3pB5WVSWDadOp0j5JSAq0TEaeFOZ?=
 =?us-ascii?Q?sIvWgFjFx7lx/eji7PR0YTWZLMMByTaU8ALqxq1Nry5+ggfspPps8TLaPrni?=
 =?us-ascii?Q?8XzIIbM1wThaeigPY9K9K8ZYH53p6IY9YV6/MwPWS4Hur7hYBVDN8zM4R2vL?=
 =?us-ascii?Q?zjSloSlCz8OXjNF3h+h+HGLdMYYXgi9k0LQB1bqGv+AldIJa6X/BoH6XtG9L?=
 =?us-ascii?Q?JsysMJqpd2d6MH0MM1HtqTlpIDf9anDg4TjFkXWjqNTQ8g9HiA2iC66V9uBI?=
 =?us-ascii?Q?iEQoD+R9FEbWPC34lxDUgIbM5X4VfkSoZZP4BnwPApjLTpVlVhvtPmv5p43Z?=
 =?us-ascii?Q?F+m/udPdBze+3uIJeeo0rkfjNi1THI6PPo0kVkVw88meeevUmb4mySzpM8pM?=
 =?us-ascii?Q?92OhT6lNqm8XrShbThvPGEqLAoCNYFBcdoyGsxeqDC9xYKE0WSz/EwZuFpkM?=
 =?us-ascii?Q?iVLmAcMpUO/BbGnvgla0+TK6wDSqnjAPkugfZ5fCMCn5ht7oAPph37hoL1iI?=
 =?us-ascii?Q?/qYvVqfARFhHHTmFMSkYFxIevlkRTq+xcCU9ipofXtYwdRr+w+2H8sa0f0PO?=
 =?us-ascii?Q?uCHrN6jFIF/ABeI5QugMZYNjVquhRR2PHzrQeNqwwnsxzdXeU7C+xZ9FzZ9v?=
 =?us-ascii?Q?3basR4gk6YMi6fAFJI83Ns3NaDnOQVrU6WpFP70wi/myFijrarm3+SxPnDMl?=
 =?us-ascii?Q?DYzQLfsxxUoEUkyFd/hqWl866Ux7n/6nFgF3ES9FzhYDuN6W4/iJNdbsmkY8?=
 =?us-ascii?Q?jHQspYshlZn1YcLX/tCunO1opNGibX0vFAvABRnivG5UmQkX/+bHs92XN1oy?=
 =?us-ascii?Q?DTMR7sFbXSDQ8U3Yz3JSy40Vee57b43xvYNxPzdb6xKgi87evULvs82RRIgD?=
 =?us-ascii?Q?WMo9MFTYVWq86GKoWJ+lToNd9d1Mz4rP9H8Zzyfs85kvJPIfQbSTQLDjc8GR?=
 =?us-ascii?Q?4H2G9LaTKUfjCOiv+VvUdS21JjK0nlDNnzbvEmPEMpOGr5VzbjKtb1+FScJ9?=
 =?us-ascii?Q?C/rIyFpzDS+chNePkCXLhYFVN+PLA5dkaCE2s9Kr4xCtg28FOP0jmZJNcyGf?=
 =?us-ascii?Q?wjKvCiR6sABH6pDnxsuaGPE8yjFrxHwFMUJdEc5G+aQFY6D1rbancb45bLPR?=
 =?us-ascii?Q?gzzr27k2Q+zFhJIbkmeGC0U0dyyMP32aavDi+E/CO50nkUWOxsFSipX0nRwQ?=
 =?us-ascii?Q?kRjtW1YZoSO/Q6A1908N9LY7eisJRnqs5CEigd8gpkB234Gx+9o5NohqVVjl?=
 =?us-ascii?Q?UrT0ZwIxZdRRxKMXKGRfmsJ8iKSm/UppkwjFuxCMyF7WbMz7CXQ7LqNGzMgR?=
 =?us-ascii?Q?AByyFCJ6PgNLXm47RGHhAag18go6oj21XRRlf0yf32D63VA0Sa5XC6KA7s6I?=
 =?us-ascii?Q?6SGutFJzC54m8vhoUbVM2RJNtdhkvFskvvefzaByb/6MBy8CkTle8TJ8Eft4?=
 =?us-ascii?Q?GoAmFXFQNTMkqDovh/3ueOm9MSIHSqN8T4zmjixomDiJ2AzO5Zsl+WplEw+L?=
 =?us-ascii?Q?OUDOeT1bIZy19PCqsD0vwnB4nUxr6FTfPGW6BB+Dm4i3qSKmIxbD2QgCFqxT?=
 =?us-ascii?Q?r/Trsmm0hiZ7Tj496XCoEjFmkX7NFuW4cGRqxNGsCJkulO7JCvsBxC2JQQ9c?=
 =?us-ascii?Q?fITiEPABJw=3D=3D?=
X-Exchange-RoutingPolicyChecked: a2Ovuq4Y6TsLQtAJfxrlmBCRcBzJ3niOimIEvBncQckgfN1bSDaTQAEZq1BB4HS/6v+m5GYPkRAqVZ/ASIj2wefIz4o1E57jTSpJMU4mUzakiLYhGhq4USH/HzF0HUp5har0YlsLdwfUvHg47DXtdyhwx5oDFWGO4dZRbJwepFz0TOFC4ADxFabAYN8Mm2KlXjulU/h1O3U9SVLZecwahW0ItIrUq+OWG7XBaBVKnqixYOU/1RzjOET47XFNegoq8MS8MFFY78T1gL1UVBi/LcUG9owICsWu78wMZz88Adcptn76ZXJzwPKHJS96fX4en63IJ16k5rK+a4ATvpHqOQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a403543-6960-42d7-0291-08ded7860cd5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:07.6187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Idqo+XyLqBaVRjy5/6ac8+kbWGiwMgFVblOM6knfmKHio6IVWKVDcxlpzZ/bpifB2O+77yO2mVqf3BEh75TRkg==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 620326EF49C

Switch the fallback loop to use the link configuration iterator to
select a fallback configuration.

This also allows unexporting and removing from the link caps interface
all the common link rate query helpers and the helpers that accept or
return a link configuration index.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c |  45 +-----
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   9 --
 .../drm/i915/display/intel_dp_link_training.c | 143 +++++-------------
 3 files changed, 39 insertions(+), 158 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 766dc9a98e05a..c947e6511fbc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -249,7 +249,7 @@ static int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				       link_caps->num_rates, max_rate);
 }
 
-int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
+static int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
 
@@ -260,15 +260,8 @@ int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
 	return link_caps->rates[index];
 }
 
-int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
-{
-	return intel_dp_rate_index(link_caps->rates,
-				   link_caps->num_rates,
-				   rate);
-}
-
 /* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
+static int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
 	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
 }
@@ -870,40 +863,6 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	return link_params_changed;
 }
 
-void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
-			      int idx, int *link_rate, int *lane_count)
-{
-	struct intel_display *display = to_intel_display(link_caps->dp);
-	struct intel_dp_link_config config;
-
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
-		idx = 0;
-
-	to_intel_dp_link_config(link_caps, idx, &config);
-
-	*link_rate = config.rate;
-	*lane_count = config.lane_count;
-}
-
-int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
-			       int link_rate, int lane_count)
-{
-	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
-						link_rate);
-	int lane_count_exp = ilog2(lane_count);
-	int i;
-
-	for (i = 0; i < link_caps->num_configs; i++) {
-		const struct intel_dp_link_config_entry *lce = &link_caps->configs[i];
-
-		if (lce->lane_count_exp == lane_count_exp &&
-		    lce->link_rate_idx == link_rate_idx)
-			return i;
-	}
-
-	return -1;
-}
-
 /**
  * intel_dp_link_caps_reset - reset link capability restrictions
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index bb785c15c91f6..5c0d660062149 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -119,20 +119,11 @@ intel_dp_link_caps_connector_compute_order(struct intel_connector *connector);
 struct intel_dp_link_caps_order
 intel_dp_link_caps_connector_fallback_order(bool is_mst);
 
-int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
-int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
-int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
-
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
-int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
-			       int link_rate, int lane_count);
-void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
-			      int idx, int *link_rate, int *lane_count);
-
 bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
 				   struct intel_dp_link_caps_filter *filter,
 				   const struct intel_dp_link_config *config);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 7fdcc299daea5..1c12503908d80 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1846,115 +1846,46 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
-					   const struct intel_crtc_state *crtc_state,
-					   int *new_link_rate, int *new_lane_count)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config forced_params;
-	int link_rate;
-	int lane_count;
-	int i;
-
-	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-
-	i = intel_dp_link_config_index(intel_dp->link.caps,
-				       crtc_state->port_clock, crtc_state->lane_count);
-	for (i--; i >= 0; i--) {
-		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate, &lane_count);
-
-		if ((forced_params.rate &&
-		     forced_params.rate != link_rate) ||
-		    (forced_params.lane_count &&
-		     forced_params.lane_count != lane_count))
-			continue;
-
-		break;
-	}
-
-	if (i < 0)
-		return false;
-
-	*new_link_rate = link_rate;
-	*new_lane_count = lane_count;
-
-	return true;
-}
-
-static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config forced_params;
-	int rate_index;
-	int new_rate;
-
-	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-	if (forced_params.rate)
-		return -1;
-
-	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
-							current_rate);
-
-	if (rate_index <= 0)
-		return -1;
-
-	new_rate = intel_dp_common_rate(link_caps, rate_index - 1);
-
-	/* TODO: Make switching from UHBR to non-UHBR rates work. */
-	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
-		return -1;
-
-	return new_rate;
-}
-
-static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
-{
-	struct intel_dp_link_config forced_params;
-
-	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
-	if (forced_params.lane_count)
-		return -1;
-
-	if (current_lane_count == 1)
-		return -1;
-
-	return current_lane_count >> 1;
-}
-
-static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
-						  const struct intel_crtc_state *crtc_state,
-						  int *new_link_rate, int *new_lane_count)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int link_rate;
-	int lane_count;
-
-	lane_count = crtc_state->lane_count;
-	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
-	if (link_rate < 0) {
-		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		link_rate = intel_dp_max_common_rate(link_caps);
-	}
-
-	if (lane_count < 0)
-		return false;
-
-	*new_link_rate = link_rate;
-	*new_lane_count = lane_count;
-
-	return true;
-}
-
 static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state,
 			       int *new_link_rate, int *new_lane_count)
 {
-	/* TODO: Use the same fallback logic on SST as on MST. */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
-		return reduce_link_params_in_bw_order(intel_dp, crtc_state,
-						      new_link_rate, new_lane_count);
-	else
-		return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
-							     new_link_rate, new_lane_count);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	struct intel_dp_link_caps_order order =
+		intel_dp_link_caps_connector_fallback_order(is_mst);
+	struct intel_dp_link_config old_config = {
+		.rate = crtc_state->port_clock,
+		.lane_count = crtc_state->lane_count,
+	};
+	struct intel_dp_link_caps_iter iter;
+	struct intel_dp_link_config config;
+	bool old_found = false;
+	bool new_found = false;
+
+	intel_dp_link_caps_iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &config) {
+		if (!old_found) {
+			if (config.rate == old_config.rate &&
+			    config.lane_count == old_config.lane_count)
+				old_found = true;
+
+			continue;
+		}
+
+		if (!is_mst &&
+		    drm_dp_is_uhbr_rate(config.rate) !=
+		    drm_dp_is_uhbr_rate(old_config.rate))
+			continue;
+
+		*new_link_rate = config.rate;
+		*new_lane_count = config.lane_count;
+		new_found = true;
+
+		break;
+	}
+	intel_dp_link_caps_iter_end(&iter);
+
+	return new_found;
 }
 
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-- 
2.49.1

