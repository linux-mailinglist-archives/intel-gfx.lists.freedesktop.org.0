Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vfr6Im4zRWp18goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:34:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9946EF4C1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:34:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Yb2YsCvf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7031D10EFF5;
	Wed,  1 Jul 2026 15:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D00E10EFEF;
 Wed,  1 Jul 2026 15:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920043; x=1814456043;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=56DFJGyPru7+Me1vCj+mPAfef0n6DzTLKoPEbRB/t7k=;
 b=Yb2YsCvfdskhZxvZf0SV3VaKMFvEk1rT73YXAtGDLY1Ha4f0QGUpcPPJ
 bCPS+QZwu5vaZt4CXfUHHNJoWu6oDVDKUHYskGFn6Xe/Fvo0OJQDzt++7
 7D/HC++bvMJ4XwZPzmEsfSGI1BVQwH7NYZXd3VbDxdK2BTDvVuIbcwzc0
 WC0RPZd8OKZBiCpdTiDO1tkZ/VVxczTRT+MTIUYCeXedNeIX2mxuNihwj
 qZ8pcD/BgTEUQXUaF/ldFVqkXSaFwY1YSSitbDtHCUlFFi1IoLWE0z2ey
 QokrxzHphb4HMuH2ekGNQZn5i5gSxn3daKQc89vYX0xIA69BhG06R48Qn w==;
X-CSE-ConnectionGUID: 4kKYldTeT6muu7ejTDxRGQ==
X-CSE-MsgGUID: jNCH1LdTRE+Ru06HdltWEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95040559"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95040559"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:34:03 -0700
X-CSE-ConnectionGUID: O0PMz1IDTryzA7CDboASGA==
X-CSE-MsgGUID: VXLlCPHAR6aVgEi16wCIug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="250881421"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:34:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:02 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:34:02 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FzRwaXWen5nM6toXAhlnVLnI39Lr3okb3iHgkN0JKghDEojG/byNzC6eR1fAPICqOfu18AR94pxomr1symLDdITHpRtR8y1Kty5ekaLgxhaYSIJzsIG+rx3Zq5NdfdYSjo75M1ChaqzLHdAoaAPDz5vX3UZwKQ+P5gAEzUH44ZOnOvmjoVAu5MY702gxm0Siy/+BdssRAd5ZHsx24KdV6sZe9zKGf47Y60u0Kumxfz8fNX8nw6z64f23cwNIM0vmtPJuUhfGvrMQRnfR4f25jG2FxgFFGc+fR/zRsQmP6K22FUNJGJG8jnuIMAZmzs6nOs0gTJcWDFeT5/3xuzNL6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hKrgxX8brfZU4I6INGFBJ0Kk39LrOE38oDaTB6TMFrU=;
 b=nEBV05gbi33RuECiJj2H6pCrYVHd2j+tbRPAEi/YuSn3ioPOF2wsKboTBf6MaE3eI1bvGp0HDGZzDxwydPqI/yX5P7awoNb4NoQjbGhu0MaeFgIFxTwLredsP6NICTpsRo3WwFTLLg9kVstFnmsgcqL0sAOU4BiX9ot241UqzCqJY9lbeEcJDMw+EdT1uS+ghonHf517zGF+HmZkZM0F+ljNfeRzEb37ms7S+syxJ9wIe3hES46i0ZZy3nhE99e+e9S9/10qMlt8fq1cRNe+hHXTVYwzpTVFnzFzPeqmXEoEVYPjMLaMS/imFJbF3gHLVOA45WQNfkEnAVHMSLUNQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM4PR11MB6408.namprd11.prod.outlook.com (2603:10b6:8:b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:56 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:56 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 34/34] drm/i915/kunit: DP link: add fallback tests
Date: Wed, 1 Jul 2026 18:32:03 +0300
Message-ID: <20260701153204.4124150-35-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM4PR11MB6408:EE_
X-MS-Office365-Filtering-Correlation-Id: e26c11cb-6300-4d8d-7698-08ded786148d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|56012099006|11063799006|22082099003|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info: jKEJSk+0P7uxEUVfcRLEARd2MOmYweHyz1ZikFW6OU34ddUVG/AWYeq7Yz4ELH5PhEOLGEMVKRyyIjSTvrkyQNAKfchPQPN7oVvSYlKobZe2wl92Wx7GajCMyB4PwH7pO2AJGApYJn+J5UMEcmo9q2l240GEKDkm12hnzTKU8OQRxweSeV6z+8tqSU3exJCY305b4afFZPNxD8Qg52SH14iLZzcByVw6McpnE79u1MTifoC5zv4oiDFbdd68yMS6niC2TO0iVrS2QxrLNxTHnEJ6pnwP6QA6cbrEmBqcDK/W4fmv4nVkiRXMsLEXTl3F5ktgGkys6BgFM5PYPgGBJnVfJGb3+ZhO9JqHNp4l70cEe+r17u2tFy6vThwIOknj1u/UOC5eHmy7Kv92l7HLTdsrZP7TilncwRg3M62VMh2sk/kLFsfwgZ6yDEeiakJFdSWOkaXFYAezXglAPzxsj5WE+Wq0A2U5k6CzJG1pK4Z99X+vcb/HMcHIPnYV6njZSjRZnd1qAUWwbvzFU10Eff6Dx0UN1mYoFZykZEujdNgJ74z+vQ0zDgI+9FgOeGaJHwkRCjNDNYkrKgpuenI//WqOMOsJsJdvu88oSPr8scc6NWKaLpwn/8j6ZIPExpJVLdCu6rBIBuZ/ZVQ/PGn2Vm31Ex21woMf4tud+5pOS4Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(56012099006)(11063799006)(22082099003)(6133799003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?INWCkr2ZlhPzuFmzalDcmAdy57JzvnddY+gCkdj3vVxv5tEqWW5pxvUy92qc?=
 =?us-ascii?Q?ont5d/F6fEAiNvuxM4t3aeS5XDLfBfdMvrrkl+OBU463CmrcsQcrytvdPHj6?=
 =?us-ascii?Q?99WN7ITTMSAaP6Z6+H2VNRE9dAqBH30f+L8lmb8/7eb4OY0KKRIBSWBtwzHz?=
 =?us-ascii?Q?KJJfUJCB46pRoLpuDjYYVzkmjLvMDnzbn2ZhMtzTStqYCWOe5k4JTA2RtjGW?=
 =?us-ascii?Q?gW4KWaczwWHUGL5b96S6Gz/f/QFgcUElMyrLQtYuDHHFIqxO6GF/Q1AGe1CR?=
 =?us-ascii?Q?QCZHyBaT/Q+otFWxUu7pD3JWBq17GFihm9b+mT9VrynlW8XDJ9D+0kg/h5mo?=
 =?us-ascii?Q?TF1brPfB9y4Hd1kgZ3nSWUZjKFVB4ukUyj+yDabnhD7qopbJ/nfn0xbH7HZ2?=
 =?us-ascii?Q?5yapY41dX5p8PGcHhIxDWEV4SE3nedaqOBC2USPqHsAIK+NTDbxZK539Qw7B?=
 =?us-ascii?Q?XrriN+ExdciOi2SGwlY1fuUlQ8VVII3Q2fRm8+j51WhXS0XyPUvNPemu8kVS?=
 =?us-ascii?Q?UdHpgZLKpMU/IvpZr2t/xMcqmj+5LYScL2IOtPgUOIaR+zf3BLusnBFzhqo2?=
 =?us-ascii?Q?jBZdaB+O7iHamygVv2ZGH4Wd/729Bv7TdA0OPdUoQ8Q38tN2T92pb0fzqhzz?=
 =?us-ascii?Q?3aVZrsZ9e9bdDXPIEVzFY0XOTfNBYu2uIjw9+CDsD7yKw8nR6CeTlDL8ipCZ?=
 =?us-ascii?Q?nN41adHoIZ65lOVTY/OuFQbDTDvhCoRU9alhUicf/zMWOyvfnkDymO45+Q+6?=
 =?us-ascii?Q?3GdXu01h2NA7IWiWdVSES5pRIdEahjhsR04ARqaKGlnUKMou/fASXS/9FEdq?=
 =?us-ascii?Q?jPEOiPDRkDrHXjeopPg5BPEpFBuKXz8GpZPQpjdDkdCr8ijTJVdg3JyZfnrQ?=
 =?us-ascii?Q?pyCL/+KWn4MOSgHpCZMyYhRqY37JNQKaXzxavwAzmylLuGTNN3Q1SgLFqe10?=
 =?us-ascii?Q?yIiSK95EQwMnQuT14hHGyrteTLIR/B3rFC4LMEs7nC5PPTFbv6kkZubHi344?=
 =?us-ascii?Q?21fRnS6vmMjstlnIALroDkdF9FRCS+xxdZt/LFmyW5dg+cTOIdOKUQCahT6j?=
 =?us-ascii?Q?oM6PflOiyg03dKQ216pkcKAoTPc8dTu9YKw61C6gPNMYIWVfUm5t6HJSnqqO?=
 =?us-ascii?Q?9bItBwMLvJMnqTCoD2e6vIMUcAjuJ2qVGUSUTTz95f19WFTlGYvZpazlUWnZ?=
 =?us-ascii?Q?+Ls+1ufVR9ro349R+prK9k14VaqlKtahuJOzLbxUaHLo7+kq7RMGZedzgKP2?=
 =?us-ascii?Q?vfMueNjOWAHMTpuu/MrFj9QwTQ4Ndq+xqPOM2FhYSSMQE/Taoxt3dAC0ZvGw?=
 =?us-ascii?Q?JjuKcsXsOh0I+lju37vlzlTgqgiAjn2su1xv4LjzDxoTntl76BKyp3bsm4zq?=
 =?us-ascii?Q?OpViFCOLxRujckv+J+CJndvsUajifWmewkfApd9Ra6oYk3PzxnDhTdbfFZiF?=
 =?us-ascii?Q?NgRtCZiV0YxJZQEu22HIBbKGndRFeApQJ6kkytMk4mVLsBobEP9yWuurv/7N?=
 =?us-ascii?Q?pT4h/HNWgkJHQ+GxJkqJX2akAAT8yf6+gQ5MsPMcTxv8towCyVCM3I26+7PW?=
 =?us-ascii?Q?auwQvvHchpdWBjyyHRi0jcPLipkb0RzVc5WPYHOsb8257XySHSls6/yH6dF1?=
 =?us-ascii?Q?Yh0glgZGyLJDG+p0hi6Xag3sZZVR65V6lWYIkdxIgO+F3Qx/ZBTGnm2Yha6/?=
 =?us-ascii?Q?RE9MDY+cWihPRowG8b7vg/UKvTokMZd+2avI2058q/X3ZPZRpnxvbm1PQJQ/?=
 =?us-ascii?Q?2niVugHnbA=3D=3D?=
X-Exchange-RoutingPolicyChecked: YSgx0pIb7CgiQbIRcL+JroEN3Ret8BESKxhJbqJ7ggpfgC+te3f1EQ+gD/ujWNRwLtYhMfXoWv/Rs9PZaCCT6NT+sm/cWp/cn/pboGzzWLoggmUK/Ie69ELTbZB5utwR5lJyC9upzxZlSCCyATPtoH5/K0pOeOE9J8QM1b4Y7IOvCRRHvVW9CLZRd14PD7achoOfk31HTBSEEyMYr7pVzDuAuKajI6BnxNp3vIR+4yGXJrTkLgbK1n2AVW5Z6iG/32drLuW2bd4Gmw81y3hrLiUOdCZxhqegU6Q9g+B9KUKMbTT2FSd80Fpttdh+Aqz/GW92VGZiz5GkxPkhrjJI/w==
X-MS-Exchange-CrossTenant-Network-Message-Id: e26c11cb-6300-4d8d-7698-08ded786148d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:20.5679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TqfAg7lqHxW6Rv3PDuVpGE7iMES9iTazjVIo5y3b99l0Aj1gBELVFuQvunqQ/zLnWI24Pb7i7rJOqyRQPm2ntg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6408
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF9946EF4C1

Add KUnit tests for DP link fallback selection across eDP, SST, and MST.
Verify that the fallback logic properly selects the maximum allowed
configuration, iterates through allowed configurations, and disables
failed configs as expected.

These tests include UHBR vs. non-UHBR conditions, MST vs. SST mode,
and validate that subsequent fallback selections respect the updated
allowed configuration mask.

v2:
- Rebase on changes using a filter object instead of a mask of
  configuration indices.
- Rebase on changes using an iteration object.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 318 ++++++++++++++++++
 1 file changed, 318 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 43283245ad037..14d749962b0ed 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -1001,6 +1001,319 @@ static void intel_dp_link_caps_test_update_params_expand_disable_random(struct k
 		test_update_params_expand_random(test, true);
 }
 
+/*
+ * TEST: Fallback sequence
+ * -----------------------
+ * Verify the eDP fallback logic to set the maximum supported configuration
+ * as a preference.
+ *
+ * For DP SST and MST verify fallback selection from the connector's
+ * maximum configuration and iteration of the resulting allowed
+ * configurations.
+ */
+static void intel_dp_link_test_fallback_for_edp(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+	struct intel_digital_port *dig_port = &ctx->dev.dig_port;
+	const struct intel_dp_link_training_test_ops *lt_ops =
+		ctx->link_training_ops;
+	const struct intel_dp_link_caps_test_ops *lc_ops =
+		ctx->link_caps_ops;
+	struct intel_dp_link_config min_config = {
+		.rate = expected_table.rates.entries[0],
+		.lane_count = 1,
+	};
+	struct intel_dp_link_config max_config = {
+		.rate = expected_table.rates.entries[expected_table.rates.size - 1],
+		.lane_count = LINK_TEST_MAX_LANE_COUNT,
+	};
+	struct intel_dp_link_caps_order order;
+	struct intel_dp_link_config iter_config;
+	struct intel_dp_link_caps_iter iter;
+	int fallback_err;
+
+	dig_port->base.type = INTEL_OUTPUT_EDP;
+	ctx->dev.dig_port.dp.use_max_params = false;
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	order = lc_ops->connector_compute_order(&ctx->dev.connector);
+
+	lc_ops->iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &iter_config)
+		break;
+	lc_ops->iter_end(&iter);
+
+	KUNIT_EXPECT_FALSE(test, ctx->dev.dig_port.dp.use_max_params);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &min_config));
+
+	ctx->dev.crtc_state.output_types = BIT(dig_port->base.type);
+	ctx->dev.crtc_state.port_clock = min_config.rate;
+	ctx->dev.crtc_state.lane_count = min_config.lane_count;
+
+	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dig_port.dp, &ctx->dev.crtc_state);
+	KUNIT_EXPECT_EQ(test, fallback_err, 0);
+
+	/* The fallback should've changed the order. */
+	order = lc_ops->connector_compute_order(&ctx->dev.connector);
+
+	lc_ops->iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &iter_config)
+		break;
+	lc_ops->iter_end(&iter);
+
+	KUNIT_EXPECT_TRUE(test, ctx->dev.dig_port.dp.use_max_params);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &max_config));
+}
+
+static bool test_fallback_from_target(struct test_config_table *expected_table,
+				      enum intel_output_type output_type, int max_rate,
+				      const struct intel_dp_link_config *expected_target_config,
+				      const struct intel_dp_link_config *expected_fallback_config)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct intel_dp_link_config iter_config;
+	const struct intel_dp_link_training_test_ops *lt_ops =
+		ctx->link_training_ops;
+	const struct intel_dp_link_caps_test_ops *lc_ops =
+		ctx->link_caps_ops;
+	/* Modify default order direction for max config lookup. */
+	struct intel_dp_link_caps_order fallback_order =
+		lc_ops->connector_fallback_order(ctx->dev.connector.mst.dp);
+	struct intel_dp_link_caps_iter iter;
+	int expected_fallback_err = 0;
+	int fallback_err;
+
+	/* Get the max connector config, optionally filtered to the max_rate limit. */
+	lc_ops->iter_start(&iter, link_caps, fallback_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &iter_config)
+		if (max_rate == 0 || iter_config.rate <= max_rate)
+			break;
+	lc_ops->iter_end(&iter);
+
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
+						   expected_target_config));
+	KUNIT_EXPECT_FALSE(test, link_configs_match(&iter_config,
+						    &INTEL_DP_LINK_CONFIG_NULL));
+
+	ctx->dev.crtc_state.output_types = BIT(output_type);
+	ctx->dev.crtc_state.port_clock = expected_target_config->rate;
+	ctx->dev.crtc_state.lane_count = expected_target_config->lane_count;
+
+	if (link_configs_match(expected_fallback_config, &INTEL_DP_LINK_CONFIG_NULL))
+		expected_fallback_err = -1;
+
+	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dig_port.dp, &ctx->dev.crtc_state);
+	KUNIT_EXPECT_EQ(test, fallback_err, expected_fallback_err);
+
+	if (!fallback_err) {
+		/*
+		 * NOTE: This test does not verify any implied fallback
+		 * target selection.
+		 *
+		 * The current driver behavior may still select a fallback
+		 * configuration indirectly via max_limits, but that is an
+		 * implementation artifact rather than part of the intended
+		 * fallback API behavior, and is therefore not verified here.
+		 *
+		 * Instead, the effect of the fallback logic is verified by
+		 * checking that the failed target configuration is disabled.
+		 * Selecting the next target configuration from the remaining
+		 * allowed configurations belongs to the modeset link target
+		 * selection logic.
+		 */
+		add_config(test, &expected_table->disabled_configs,
+			   expected_target_config);
+	}
+
+	verify_link_caps(expected_table, link_caps);
+
+	return !fallback_err;
+}
+
+static const struct link_config_set *
+get_target_configs_for_output_type(struct kunit *test,
+				   enum intel_output_type output_type)
+{
+	switch (output_type) {
+	case INTEL_OUTPUT_DDI:
+	case INTEL_OUTPUT_DP:
+	case INTEL_OUTPUT_EDP:
+		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE];
+	case INTEL_OUTPUT_DP_MST:
+		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_BW];
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
+
+	}
+}
+
+static const struct link_config_set *
+get_fallback_configs_for_output_type(struct kunit *test,
+				     enum intel_output_type output_type)
+{
+	switch (output_type) {
+	case INTEL_OUTPUT_DDI:
+	case INTEL_OUTPUT_DP:
+	case INTEL_OUTPUT_EDP:
+		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE];
+	case INTEL_OUTPUT_DP_MST:
+		return &standard_dp_link_configs[INTEL_DP_LINK_CAPS_ORDER_KEY_BW];
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
+
+	}
+}
+
+static bool output_type_allows_uhbr_fallback(enum intel_output_type output_type)
+{
+	return output_type == INTEL_OUTPUT_DP_MST;
+}
+
+static void assert_config_is_supported(const struct test_config_table *expected_table,
+				       const struct intel_dp_link_config *config)
+{
+	struct kunit *test = expected_table->test;
+
+	KUNIT_ASSERT_TRUE(test, has_rate(&expected_table->rates, config->rate));
+	KUNIT_ASSERT_LE(test, config->lane_count, expected_table->max_lane_count);
+}
+
+static bool get_fallback_config(const struct test_config_table *expected_table,
+				enum intel_output_type output_type,
+				const struct intel_dp_link_config *target_config,
+				struct intel_dp_link_config *fallback_config)
+{
+	struct kunit *test = expected_table->test;
+	const struct link_config_set *config_set =
+		get_fallback_configs_for_output_type(test, output_type);
+	int i;
+
+	i = lookup_config(config_set, target_config);
+	KUNIT_ASSERT_GE(test, i, 0);
+
+	for (i--; i >= 0; i--) {
+		const struct intel_dp_link_config *config =
+			&config_set->entries[i];
+
+		if (output_type_allows_uhbr_fallback(output_type) ||
+		    (drm_dp_is_uhbr_rate(target_config->rate) ==
+		     drm_dp_is_uhbr_rate(config->rate))) {
+			assert_config_is_supported(expected_table, config);
+			*fallback_config = *config;
+
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static bool get_target_config(const struct test_config_table *expected_table,
+			      enum intel_output_type output_type,
+			      int max_rate,
+			      struct intel_dp_link_config *target)
+{
+	struct kunit *test = expected_table->test;
+	const struct link_config_set *config_set =
+		get_target_configs_for_output_type(test, output_type);
+	int i;
+
+	for (i = config_set->size - 1; i >= 0; i--) {
+		const struct intel_dp_link_config *config =
+			&config_set->entries[i];
+
+		if (config->rate <= max_rate) {
+			assert_config_is_supported(expected_table, config);
+			*target = *config;
+
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static void test_fallback_seq(struct kunit *test,
+			      enum intel_output_type output_type,
+			      bool uhbr)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+	struct intel_digital_port *dig_port = &ctx->dev.dig_port;
+	struct intel_dp_link_config fallback_config = {};
+	struct intel_dp_link_config target_config;
+	int fallback_count = 0;
+	bool target_found;
+	int max_rate;
+
+	if (uhbr)
+		max_rate = expected_table.rates.entries[expected_table.rates.size - 1];
+	else
+		max_rate = 810000;
+
+	dig_port->base.type = output_type;
+	ctx->dev.dig_port.dp.use_max_params = false;
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	/* Get the initial target config. */
+	target_found = get_target_config(&expected_table, output_type,
+					 max_rate, &target_config);
+	KUNIT_ASSERT_TRUE(test, target_found);
+
+	for (;;) {
+		/* Also test the case where no fallback is available. */
+		if (!get_fallback_config(&expected_table, output_type,
+					 &target_config, &fallback_config))
+			fallback_config = INTEL_DP_LINK_CONFIG_NULL;
+
+		if (!test_fallback_from_target(&expected_table, output_type, max_rate,
+					       &target_config, &fallback_config))
+			break;
+
+		/*
+		 * The fallback changed the max rate allowed for the next
+		 * target.
+		 */
+		max_rate = fallback_config.rate;
+
+		/* Simply select the fallback config as the next target. */
+		target_config = fallback_config;
+
+		fallback_count++;
+		KUNIT_ASSERT_LT(test, fallback_count, LINK_TEST_MAX_CONFIGS);
+	}
+}
+
+static void intel_dp_link_test_fallback_for_sst_max_non_uhbr(struct kunit *test)
+{
+	test_fallback_seq(test, INTEL_OUTPUT_DP, false);
+}
+
+static void intel_dp_link_test_fallback_for_sst_max_uhbr(struct kunit *test)
+{
+	test_fallback_seq(test, INTEL_OUTPUT_DP, true);
+}
+
+static void intel_dp_link_test_fallback_for_mst(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+
+	ctx->dev.connector.mst.dp = &ctx->dev.dig_port.dp;
+
+	test_fallback_seq(test, INTEL_OUTPUT_DP_MST, true);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
 
@@ -1019,6 +1332,11 @@ static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
 
+	KUNIT_CASE(intel_dp_link_test_fallback_for_edp),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_non_uhbr),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_uhbr),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_mst),
+
 	{}
 };
 
-- 
2.49.1

