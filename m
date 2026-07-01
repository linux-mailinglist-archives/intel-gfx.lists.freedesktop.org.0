Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 05u5Mlw5RWpZ8woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:59:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380826EF6EA
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:59:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YRI8giTU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6D510F027;
	Wed,  1 Jul 2026 15:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C1F10EFBE;
 Wed,  1 Jul 2026 15:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782921561; x=1814457561;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=bCDiMSIOvc0BgfD3gGBddkMauqZ4Ml+TXtEuO9Kky5g=;
 b=YRI8giTURaYu7xpQ5oDr//B4Uq7IQZyXc4jBMqYwHgXDXRjvKaxaN6aB
 zgADBdApLcyQptZoUi08WzfnZtaWhLHCmNcTj99zLTgCa5+Kq/jtFivs/
 MrxVJAJ5p5Mo4E3FxqI+gKUWZLp8TUVfkdEygLUxl/olsG/lyCpb4ir2I
 qHEEbLXHNAQVeuQelxmxaRMFB7cwjIvdqA50i1HEZj7LP/W+DSzH1UKhs
 ZhVTbiwCU/KLDrhoFKwKYSc+KeTigF+I9PFnYwaF5sEzCtXU8eI6nIs/z
 17B6h12LURG2sWddkO21acimEWrDW9hnPVcxRAr4OEwsZJGV07+0XU98I A==;
X-CSE-ConnectionGUID: w4AC8zJ2QDyRDkk+gINnQg==
X-CSE-MsgGUID: K506kXyiT2m25Qw7J7a62w==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="101085067"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="101085067"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:59:18 -0700
X-CSE-ConnectionGUID: hGoSK6mWSIyS1+N9yev5Nw==
X-CSE-MsgGUID: 3SS2EHGPTV+fVs+AGMOV5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="275815463"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:59:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:34:04 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7/L1wRfiV+lgFG4bOJbC06//26N2wtj1GjV1eY5leRcPHhDJnl2FKm4PNGybdgSHxtz+ZDUGeVHUzSJV10Tf6dDe6zFuyvK+bY4jiJudW5j46WEGg5pigH9/5FOadgo3FHlicgMjV7p/cN7Ef74yFqKnZ9LGPIKSfhehO5WwvK6a8B4pVxy1qJVNWsaE/0AbiP2h4vFNbOyeHoppAJTn6InjksGrjApcrvrbisy8LR0lWD+Q4V1xG0WGp2kTOXG4wWN6cjTiJNGMdc0/aI0wOoYQNQONDeKxpaEjcfvfVz4OGBqeiJwcM5iLB2SVeil+Wk41PGk9wV2ZqvCT7hfJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q491Zm6hVYHhoD9HFox7ffHxi6yaTbGqiCNaSlRirrs=;
 b=Jx0rpAy2gBr45vpQBy8W+IFhOiS3MsdfFfamRc+eo9K1u66TWuQC79+Br/0BdIAmEpK7ym67iLA8Qqkdp+uYW/VhqmQe1mWz08uTqvJWvevdbcrOYAUgykWBBGe6by853kUHU9+33rDzDh7gKS19UY+lNs8ty0BqyDbJ+mahCdM3GjBjQ1NhiuMx7HjGt0x8bIv1OPKwFJhL8dgIBlb+wfyo4+6A77h35QzrlWjiiX8/WgXn0zFhd+uY9Ix9enaStQ/g7++XFGbZLw0FKkpKrgW6Po3vd7aIYCusGYBn1LzjT1MqZ7QQ7uk95wD3ut0hkm2UjByxTzCqecB3TGnxag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:51 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:51 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 31/34] drm/i915/kunit: Export link training and caps funcs
 for testing
Date: Wed, 1 Jul 2026 18:32:00 +0300
Message-ID: <20260701153204.4124150-32-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e6c6d247-63df-42b1-226e-08ded7861233
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: TEZ9FBY8W6VAMohf8O3LCEM2wO6uarPne7v4VKjp5RckGBgrN2BdxKSE6+vkjyqddvbvGJ1O4CSee1CbBzcqee5CA8PKT1BpsWskreKb3ww/DnxIS6d/NNb0CniF5nIrgb17mtlNFZlw8cNH5Ggv+U7S5C2LIpnVNuqvlfM17Yb8smwKN5LbTgamd9evz4WDFTJv3gOJXHVfUsimalJmZTNnohq1ECKEVOfZZBFnYrQZAsAiuJRjUCOo0kXoYSbWtAL9hzSUQaabjk8QOFJFTgGRVIP5yTDrwnIkOnt0sz5Dxx+Pf5mNAs2sdggmpWgC1Xqd6thMtWyofKhsaWXwEIWI6UMLkyDDqG2POEBwlu6OebvfeFxQW+r2s7agoHoxXbTAWx4RTGY2wjrls/0zEhuTnt3mGHMBK1HYu/hVpxJpW/5QCHaJTNugUWjKvqfZZ4MPsS7wUPuIAI145rvc69HSy1r36iZbndSrwWvMNTmOPXz3NcirnMAKj8DQ7ATPx+b5/VW4aO0yjigGeRQN6WiQJzQVdwn3SeBbDwzV15+E+ajcoLJT1LY9Nmj3mrBKfQUGxL87JWcYpMbv9/nwcMqd4BtHORsDNVGxbHqcTDbbVWxh2YBckS9DZgD6cK5azU8Y7iGdQi3jRyQV6mt1rZeuShHCalnlKGOx/FdSACc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VxxqqonZOlYvx3fgbUR8CsnMl2ewbUGaTvT0TJGhCTm+f/1LApxe4gtmxdlu?=
 =?us-ascii?Q?IlBtEreryt3+RpVfOq/w4nB3ArVBuFSPvY00te0Mjn1+EU6agnqlLu/JUrea?=
 =?us-ascii?Q?ZaVSISDqj08ab9RRw8USCx7zMkUHb0Jj9JGygeBCWQdYXP7dQ7lISSihmJZ9?=
 =?us-ascii?Q?pzvWNmdY9MyZQdwLW67O3OJWXEFKaLOJ/SptccdksfjJXtR+dGWM+Qg69DOk?=
 =?us-ascii?Q?Ydi00d8jSooX06/WN1/d/nc1aaEQfytvCkXX7XuT+1JKHC62/UBAOHES5kdM?=
 =?us-ascii?Q?MAyyXUkEe6c464S/G9FSrp+V9DxBPF5vwUdAfeX0Wv/FBIEqC2Ob+vLT2GPr?=
 =?us-ascii?Q?WUTw6gfnAEb8/MybONZ3yrmhj9jVqGDsxnonOqEHMWVn04ThRdJirKufm1zM?=
 =?us-ascii?Q?GBAQ9Ap5hnJVIwTVMizb6SouqsMchRtcekarPVEQvu0A1UlbcJK4bUmNeXVd?=
 =?us-ascii?Q?AI5ndQD7a7FWd/IzMTWi8dIL7U6fBfo5FNh7lGID25Jc7pdcChfltp/hCFYD?=
 =?us-ascii?Q?yWiLjHVfcREcYdiH+n/+wklzYjXfvsnCUOM86wNlN3kUyC55BoavnBCUizD8?=
 =?us-ascii?Q?DHK5Xbw6u/WpGbBKs1WAMAJlZnRQ6IBrfTIEPXP8Mvjc0bUz0K9Xz73gjzV+?=
 =?us-ascii?Q?BR01piarMZgntIBT7lG6LexZ9Pbv7V1MRr3lpZJwCpg9CrMZLsiVfgAaq0r4?=
 =?us-ascii?Q?LT2J0Ym3owKohq0AoRlKeOkr6neBxtmXuSfwTTVDZCYQjaageA+2og02DHvn?=
 =?us-ascii?Q?Fp+Qpb5FiFNtvzF+usApojSamxbX4r2SEu2rm5EDdsUwgR6byQfLVDbklyW2?=
 =?us-ascii?Q?o51vdMhVsaNqh4AMiuwuGg/AV0DLMpn91POmKJjxqS4gJAeFYNtNmiPePT36?=
 =?us-ascii?Q?RDRAwgAgNdb1u6Llf8mLeyJ6SnPKasbA8HNS+pXsFhgPVD05brKviV8UPnyO?=
 =?us-ascii?Q?dpKurVugP0JqFjMV0Gx9cYUfK5eEZ1SLRfdC1K5F17Kcv1+B0xNU4qVUpMI2?=
 =?us-ascii?Q?s7foyp3/Eh6yS6rhewQF6B3vUnEmc/bb2hyenM9tws93wqi7LJECli69b/sF?=
 =?us-ascii?Q?jNv5Qrhaz0+BpkFiOlM86mcVCHiFdTTldoSfLCzc4kqKu7WQGUgsJhlNIEAw?=
 =?us-ascii?Q?p/hByMxYHyc6e4N1MOf0G7CbOxc+ymzV+AZ4OT13Z9W2Wzwxc0jXfHZM8epa?=
 =?us-ascii?Q?p7CvtypjPsv5wWjNHYELShlr1nEgu0dWbM0+Tt3UWE3m9ZmjR6P8nbMtIYgw?=
 =?us-ascii?Q?LBZIEgg6fNasxxIajqv5LKsaUAyRPiioSSDDVSwDKOjyjrwZgZ/Y+An6ATXI?=
 =?us-ascii?Q?cMMDPlSUPruOkjf+zq5miAF1Z/zG66/5jUqmzYm6aPURrjhOPuqBe7fxOSBj?=
 =?us-ascii?Q?K6K+3dwzXrxf0hyhe2164efxGQPMcBarLDeZ4QCoRotGjdVXZiVomMkkm9Q3?=
 =?us-ascii?Q?84mKO87RlIKnMmGppb2fUA9ooR99E7/bwuVWIkH9TGeTr1Hi9qZGiHfo5JZV?=
 =?us-ascii?Q?NH4603hZ4NyNEWuaIPT2CN7k1vT7ACHfybRzms0rvDgs3AxDVOJ+/uwFp/DJ?=
 =?us-ascii?Q?RDM22qaM0i+c5bWNy/4ERCjUgumv+pKdTIBDK0LQx/G9kwYBEg2uq+Oz4zyd?=
 =?us-ascii?Q?sXoU9ShQxxlKltDuODnZwc3w9F1trAgAXG04uiAJB76UACZhKT6+XMD4cH51?=
 =?us-ascii?Q?iietiIXuZ72NHWipNg8sjgT7mZZiBIgAA+6Ayt8A0D65HwXXzprDc71Rqu0E?=
 =?us-ascii?Q?cfMTjOzOrA=3D=3D?=
X-Exchange-RoutingPolicyChecked: IKJR/rKA2QF8PApI5u+ZuRwO0K0IL4uduqA/0lMU5syAOUZpjUg3rhLQBPCK9TqOuwHJ6EzV/39fE9onyFER9uYYhPSAaObzEoTRkL6pnT+Li5dgYBV85Ay7kyLraunR0kkbmlhUV2o8Mj8xyCJ9ptmpR4fNzOgb6LBV/ke3xXPwRk0frvBDvnk85cD1AivblB5hITSNN1IzALjDCYTsNE0Pm8R1bU+qAqDXLhujcXwo41ivcVdb+swej96QMEBVK8Jj+6HbJPNxlfbQzEBo99BLEWBQ8WLu3H3wwSSmtfne1q6UH4N9/cQN4r9ztC5Un2o0S744XQN1QSKAaXCBXQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e6c6d247-63df-42b1-226e-08ded7861233
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:16.6038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SepW/2irFip+963baFP+vsaQXukYpji5xsJ87JKT1TakxJ3fRGmdZDVstgU5afF124hwJTZs7lL673mUvn7z/A==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 380826EF6EA

Export the link caps and link training helpers needed by the DP link
KUnit tests.

Use test ops tables instead of exporting the helpers directly, avoiding
symbol name collisions between the i915 and xe builds of the shared
display code.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 29 +++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 37 +++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.c | 36 +++++++++++++++++-
 .../drm/i915/display/intel_dp_link_training.h | 31 ++++++++++++++++
 .../i915/display/tests/intel_dp_link_test.c   | 17 +++++++++
 5 files changed, 148 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 76b7c0fc90115..7b6cc6055da82 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -1281,3 +1281,32 @@ void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps)
 {
 	kfree(link_caps);
 }
+
+#if IS_ENABLED(CONFIG_KUNIT)
+
+#define __INIT_MEMBER(__name, __fn) \
+	.__name = __fn,
+
+#define INTEL_DP_LINK_CAPS_TEST_OPS_INIT \
+	INTEL_DP_LINK_CAPS_TEST_OPS_MEMBERS(__INIT_MEMBER)
+
+#ifdef I915
+
+const struct intel_dp_link_caps_test_ops i915_display_dp_link_caps_test_ops = {
+	INTEL_DP_LINK_CAPS_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(i915_display_dp_link_caps_test_ops);
+
+#else
+
+const struct intel_dp_link_caps_test_ops intel_display_dp_link_caps_test_ops = {
+	INTEL_DP_LINK_CAPS_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(intel_display_dp_link_caps_test_ops);
+
+#endif	/* I915 */
+
+#undef INTEL_DP_LINK_CAPS_TEST_OPS_INIT
+#undef __INIT_MEMBER
+
+#endif	/* CONFIG_KUNIT */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 56c585eb5a135..a0a88efb95463 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -155,4 +155,41 @@ void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
+#if IS_ENABLED(CONFIG_KUNIT)
+
+#define INTEL_DP_LINK_CAPS_TEST_OPS_MEMBERS(__X) \
+	__X(connector_compute_order,	intel_dp_link_caps_connector_compute_order) \
+	__X(connector_fallback_order,	intel_dp_link_caps_connector_fallback_order) \
+	__X(iter_start,			intel_dp_link_caps_iter_start) \
+	__X(iter_end,			intel_dp_link_caps_iter_end) \
+	__X(set_max_limits,		intel_dp_link_caps_set_max_limits) \
+	__X(get_max_limits,		intel_dp_link_caps_get_max_limits) \
+	__X(get_max_bw_config,		intel_dp_link_caps_get_max_bw_config) \
+	__X(reset_max_limits,		intel_dp_link_caps_reset_max_limits) \
+	__X(disable_config,		intel_dp_link_caps_disable_config) \
+	__X(update,			intel_dp_link_caps_update) \
+	__X(init,			intel_dp_link_caps_init) \
+	__X(cleanup,			intel_dp_link_caps_cleanup)
+
+#define __DECLARE_MEMBER(__name, __fn) \
+	typeof(__fn) *__name;
+
+#define INTEL_DP_LINK_CAPS_TEST_OPS_DECLARE \
+	INTEL_DP_LINK_CAPS_TEST_OPS_MEMBERS(__DECLARE_MEMBER)
+
+struct intel_dp_link_caps_test_ops {
+	INTEL_DP_LINK_CAPS_TEST_OPS_DECLARE
+};
+
+#undef INTEL_DP_LINK_CAPS_TEST_OPS_DECLARE
+#undef __DECLARE_MEMBER
+
+#ifdef I915
+extern const struct intel_dp_link_caps_test_ops i915_display_dp_link_caps_test_ops;
+#else
+extern const struct intel_dp_link_caps_test_ops intel_display_dp_link_caps_test_ops;
+#endif	/* I915 */
+
+#endif	/* CONFIG_KUNIT */
+
 #endif /* __INTEL_DP_LINK_CAPS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a592bfab5ff0e..fa55664c9d98e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -21,6 +21,8 @@
  * IN THE SOFTWARE.
  */
 
+#include <kunit/visibility.h>
+
 #include <linux/debugfs.h>
 #include <linux/iopoll.h>
 
@@ -1888,8 +1890,9 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 	return new_found;
 }
 
-static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-						   const struct intel_crtc_state *crtc_state)
+VISIBLE_IF_KUNIT
+int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
+					    const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -2813,3 +2816,32 @@ void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training
 {
 	kfree(link_training);
 }
+
+#if IS_ENABLED(CONFIG_KUNIT)
+
+#define __INIT_MEMBER(__name, __fn) \
+	.__name = __fn,
+
+#define INTEL_DP_LINK_TRAINING_TEST_OPS_INIT \
+	INTEL_DP_LINK_TRAINING_TEST_OPS_MEMBERS(__INIT_MEMBER)
+
+#ifdef I915
+
+const struct intel_dp_link_training_test_ops i915_display_dp_link_training_test_ops = {
+	INTEL_DP_LINK_TRAINING_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(i915_display_dp_link_training_test_ops);
+
+#else
+
+const struct intel_dp_link_training_test_ops intel_display_dp_link_training_test_ops = {
+	INTEL_DP_LINK_TRAINING_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(intel_display_dp_link_training_test_ops);
+
+#endif	/* I915 */
+
+#undef INTEL_DP_LINK_TRAINING_TEST_OPS_INIT
+#undef __INIT_MEMBER
+
+#endif	/* CONFIG_KUNIT */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index ef16fcabd6da9..581f2361fdfd5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -8,6 +8,8 @@
 
 #include <drm/display/drm_dp_helper.h>
 
+#include "intel_dp_link_caps.h"
+
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
@@ -71,4 +73,33 @@ void intel_dp_link_training_reset(struct intel_dp_link_training *link_training);
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp);
 void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training);
 
+#if IS_ENABLED(CONFIG_KUNIT)
+
+int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
+					    const struct intel_crtc_state *crtc_state);
+
+#define INTEL_DP_LINK_TRAINING_TEST_OPS_MEMBERS(__X) \
+	__X(get_fallback_values,	intel_dp_get_link_train_fallback_values)
+
+#define __DECLARE_MEMBER(__name, __fn) \
+	typeof(__fn) *__name;
+
+#define INTEL_DP_LINK_TRAINING_TEST_OPS_DECLARE \
+	INTEL_DP_LINK_TRAINING_TEST_OPS_MEMBERS(__DECLARE_MEMBER)
+
+struct intel_dp_link_training_test_ops {
+	INTEL_DP_LINK_TRAINING_TEST_OPS_DECLARE
+};
+
+#undef INTEL_DP_LINK_TRAINING_TEST_OPS_DECLARE
+#undef __DECLARE_MEMBER
+
+#ifdef I915
+extern const struct intel_dp_link_training_test_ops i915_display_dp_link_training_test_ops;
+#else
+extern const struct intel_dp_link_training_test_ops intel_display_dp_link_training_test_ops;
+#endif	/* I915 */
+
+#endif	/* CONFIG_KUNIT */
+
 #endif /* __INTEL_DP_LINK_TRAINING_H__ */
diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index aa5358c94839f..b77472e9bbe12 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -17,6 +17,8 @@
 #include "intel_connector.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_dp_link_caps.h"
+#include "intel_dp_link_training.h"
 
 struct test_ctx {
 	struct {
@@ -30,6 +32,9 @@ struct test_ctx {
 		struct intel_crtc_state crtc_state;
 	} dev;
 
+	const struct intel_dp_link_caps_test_ops *link_caps_ops;
+	const struct intel_dp_link_training_test_ops *link_training_ops;
+
 	struct rnd_state rnd;
 };
 
@@ -64,6 +69,8 @@ static int intel_dp_link_test_init(struct kunit *test)
 	intel_dp = &dig_port->dp;
 	intel_dp->attached_connector = &test_ctx.dev.connector;
 
+	intel_dp->link.caps = test_ctx.link_caps_ops->init(intel_dp);
+
 	test->priv = &test_ctx;
 
 	return 0;
@@ -71,10 +78,20 @@ static int intel_dp_link_test_init(struct kunit *test)
 
 static void intel_dp_link_test_exit(struct kunit *test)
 {
+	struct test_ctx *ctx = test->priv;
+
+	ctx->link_caps_ops->cleanup(ctx->dev.dig_port.dp.link.caps);
 }
 
 static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
 {
+#ifdef I915
+	test_ctx.link_caps_ops = &i915_display_dp_link_caps_test_ops;
+	test_ctx.link_training_ops = &i915_display_dp_link_training_test_ops;
+#else
+	test_ctx.link_caps_ops = &intel_display_dp_link_caps_test_ops;
+	test_ctx.link_training_ops = &intel_display_dp_link_training_test_ops;
+#endif
 	prandom_seed_state(&test_ctx.rnd, 0);
 
 	return 0;
-- 
2.49.1

