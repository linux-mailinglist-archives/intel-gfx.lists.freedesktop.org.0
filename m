Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lU75Mz4zRWpe8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCD06EF496
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZDp413B5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD9A10EFC3;
	Wed,  1 Jul 2026 15:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2335E10EE55;
 Wed,  1 Jul 2026 15:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919995; x=1814455995;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=umR3RjBBBGA9Vvrf/PLYx+nJxMcUTGgXqQrzr86Gz9U=;
 b=ZDp413B5nPyillG2kJ499SmdpP67I7TnX9vZUXBZowuItDU7YZJV4fwW
 Z8L/+8Shl4VeFiTKyjvZQUcStFpJJFuzqB0m4jqI36Da+yYjrZSC+UaNg
 S+3abQQq8jOkqwFmSATwe5H6AALnXocvQbasHkh6oJW4k8aSkRncXjvHg
 P7hyTcdJVzoayEc0TpC6JfsT9HAtaAIz6ExutnHhVOSJzGSeketVs49i+
 D99izq14ByPB+/1GU0Vmwn7yupI9SPOY9xqHztgzEgXdo7NC4+OgMHSPK
 xO+OqYEtlQVABKGwM5ncYqsD7e4Ya4PQG4ZDUGtoiQIjx+ZvrYEDs7e0n Q==;
X-CSE-ConnectionGUID: Kp5wTr56QKSsTaQCUMg7qg==
X-CSE-MsgGUID: JYiDxGX9Sb2S3Xp7la9V8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95040472"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95040472"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:15 -0700
X-CSE-ConnectionGUID: Ty1lQjwURNu9bPF6TlXBFA==
X-CSE-MsgGUID: P2BYac8oTZqdpOZLYQzNZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="250881157"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:14 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ToQcjktT0bVimxudVsuf7ptQmSdL4yiSxRqKnb1nEMbCVKi1+FmZLywc4fmXrXAP7m8kgelOQvKFo/CXAATWQm+Ojd27Z6tjyYvwBUuSGeTB4HH5ujPPWsBiPam22Cm9i/XEBwx1PuDTceRlJry+IwdshcnKpi70Qw0pI/KXuzTvaMZsx8pOim8k3v1KokthM06W8Sxbktjm1q9O2w2fHjt0GulcQwvdE6b4yMOoR3Jfvn70cUuuz/5G/Xx9BTsI9uQbmsgTJa2YWIizSXEuLix0FECM7mntRPr2IhwrwN82tco9RNxL3YQG+RjlMXpqXzzaJ76OV6Xk0Uj5bm8NZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j85aJ7Ph2D00qIpJB33o8HryNK6N8ytrRyBf7t2+TI0=;
 b=YovKDpEgCX4zj/0GMex7nrVVl4ZjJm6V369WTGaesgu1vk0p12XuDA5ouLZ+hHh0gyPWdlIQcyFYOnj2LmqqdDaO8M/obCtveWwLzSt34aHAY1BukUxZ57+GUShoAXIO8Y5JREkZetVf/kQfyAGCJh767Iv+LIfw7jTqJGBUO+vHBTrkV5vM0ApyW6C/onO/2lHe2aqtvmffIkV/uMSOMsML1wXODdy9m+g7bq4shZg70qnHKCJXYvHQEaXFCepTjmYpoGqbrhtd9SRLF6SRKSTxDqAaSlC8xU9hnErtg4c2xLqEclsRoOZyaRJZrmMkTLnCgYNVpkXUGhXIRecefA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 21/34] drm/i915/dp_mst: Use link caps for MST DSC config
 selection
Date: Wed, 1 Jul 2026 18:31:50 +0300
Message-ID: <20260701153204.4124150-22-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: a3d801ec-f4e0-4196-6823-08ded7860a82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: ItVuko+zthYTzrEBCD6lYHkRv+5YZIKKAn9lvykQpmifr25NOzZ4U473DHBiQW/A7o3GoPGOGnOyrGY6Swd30BZnEdRxOOzTjeWYroVrlnHlmWitnDdzV8OnVRrqJ5Tf++o8cMtbFnK2FhHBpgFcL5kwcdt+5lkdmFFSd8DB9PTlRc8WoYIlXKwN5fzIj79NDoMcvN1ASTgcrxQ++sIzv8ql0pRBF5Xg7cmgJK/maOAjwt5wzpXG5NjR7aKY1y2uOepAesGsXTE8EBtjko9ubB+ND+MznO7oU7H+jAhUIsm74jU6pPfyTp5VQoUqAg0J1eTvTDOVm5flQulfyaHz2kgEHmjJBGvb9yKjn6k65qqR2YJelh8WFnrn7lbbIZaaPJoOPa7Mz1QwHIr2mZ4uaqW/xvY5e5WKjqv3bil+gmHCeHSG8ngkvVdwZBxKtpVwqt4C26l1RzAb6gb2ODv569mwatWN9r7AUcFaI9PyD+6XkEd232mmFPEPhKawqIMMMrtUq6nX2ABpVcdgaq4m3vuxDQxuW3sDA4ZYRY7Ogw7lSfBIzP25aTdi9oITul1QTdCgERdXqsg20qG8lzZVo50dM72GdiQ4U6bkGKoNWlTlmSfpSw/CWPEmmstYlA9SDCFwlW5TGxdB7Wa22Ttyd+0X7g+80JcSTXnwL420JII=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DEWyFMansnFTFUSHGEKxpHgVYLV1ZI1/vdfx0LHLEsbpnNv44bo13zl19RfJ?=
 =?us-ascii?Q?Vlnp72uuGJhdnMQmlgx6IX/MnmT/oMsHqf0O7+CA2kKklX+4OmqRAF4cS1xY?=
 =?us-ascii?Q?AcMekFCtbaiLOzq3zVwyHa5rGm6UehuVorYsaJVA+/KMmhNDaqANDYKdBw4A?=
 =?us-ascii?Q?+Shf7Qcxn4haOIaoEIXwfSwRiv/HnrXr4/3JGpEx7fBhxcHipOitLZw8ybEe?=
 =?us-ascii?Q?uH9v0gPNQhH89D46Sg4NY5jtKZjECc10CA3IHIVnA/0jrxQqJzKz54uTBz39?=
 =?us-ascii?Q?q1UIO1czqGSq8wnURVgDgJC5HU2Zc7D2UYkAPJRWWetfXa/E54akPvx2IDeU?=
 =?us-ascii?Q?vbhGTYGJc5k82XiYoRHCKKm2ulmnMsolyp8MDGwPOEUeCArRYnKb8fxUWaeN?=
 =?us-ascii?Q?kTbR4qEB56E1HH+7s3E0J0f76y89mRsZ1/ukcoozPRpfZf3Qd3dhCJVtXLV4?=
 =?us-ascii?Q?t1Jw+q5XHSZkBP1vfJJiniIe3RQNgjVv+ejYNhfyCv3WFrmSLRSUkJleQF1P?=
 =?us-ascii?Q?r57LvBNjUsMaRnzflqdBgyNYTZSRb1yHBiOslWSnVJyYtjWfN5sYX5iM15BD?=
 =?us-ascii?Q?5hHBVaYvK0EJdiA4W7qOndh2vp4sFD50M3Kk462HhdVA9BjjxvYD4pMKsN08?=
 =?us-ascii?Q?GAFOMd5rBQlxqVjl+eWjvQ4BIdSEmn85u7lUSDQ7THHT82Zb70axtvLIVz0j?=
 =?us-ascii?Q?1J3vBTCYLNo8rCoG64YGAtY22GOfd3yQIdfLciTYS7S4KIetFOJB8VAZAmb/?=
 =?us-ascii?Q?GkFxqjVz84okD/Wxynv/Nk9PT3xJ82ZCbQOYY2hZfDGROfuV/FWoUdyiYH8y?=
 =?us-ascii?Q?QoWDJL3L0LXaz7NFU3xmgfgj2W/ahBgIqqDyvxNSkzbAJOi3pzFRdHtjcxHf?=
 =?us-ascii?Q?rhruxe2aErwTAR7IRJ/6iq7GSuGpzrlBWSRWZVznMq3C+N8STu/Civ6vf2go?=
 =?us-ascii?Q?k4Hz1pnM3lLCWkuiTkaJ5ERhvwVlT2YTBwwX1EkAb97REJ6OKUMraygs+paf?=
 =?us-ascii?Q?H4LFB8rPRWcN9861D3Knq2bvCYzLhIXFvJa9qbe/+mEcMuQeMhlXcbs//xjE?=
 =?us-ascii?Q?hmsDkEEHPGEJZaTWoC97p7zKEYk6oUpzv2L6k/dEUdaUHEie9dv3A0YLT1OT?=
 =?us-ascii?Q?oJTF9a313OfI9HcEQsOzzjQIT0mrh0aMlMPkVwKM0rwfYpd9oStIxgry/rzc?=
 =?us-ascii?Q?4cy5mIPUFM5Z742ZRzrNgfdOuT/tSQTm+qznjhh9soLY0xr6JRUzyR4tbZXF?=
 =?us-ascii?Q?x8rd1DsYPuH04liARTjs+BMpprttpEYL2NTN3+ORvMnTlFWCgIvcWxbJO/Hk?=
 =?us-ascii?Q?xDqiRuYYxwx0xGpVzlu7zq/wqFpBG4Si+vNF0W4UoF/+YD915ese4a/SmA40?=
 =?us-ascii?Q?aD+bv2rmNPv55EuRuBCWVIjmIvQu/csRON4lrg/aKXbEQP+dUubBmSjJXExB?=
 =?us-ascii?Q?F2a4NhmFq5kId6MH4I7z5bFKG3iU84lgJOgZASSRcT6rtQRnBGkEdtLZtP/K?=
 =?us-ascii?Q?s5euNWjUbGSKlIU2dKB5pyhIDr1b5GF/pks7MzEmtqcalU2TtDaxYB+F67ix?=
 =?us-ascii?Q?xsRUTifgaAC+tZynCoWN84pNB1bs8wVSahMn/BqVmZQCd4ai7PgPA6ct1Pue?=
 =?us-ascii?Q?qN54RtojojWodT0015lk54vghwCAvj62edFqzcq5W/a7xnud8OD6usDx4ym9?=
 =?us-ascii?Q?1CLy2yK3bN3z3D6CBF91ZaMsooMEKYlN7lpaPAIq0/FQL2A+A3rgGaFUl+2Q?=
 =?us-ascii?Q?j3zAUyPygQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: tJB0dsFxTrL9jcJ02NlxbigJiJQfm9NkojRIW1ppoD552YiagtQykB9z/w47ekevoDk3NeEO4WQdp9VtuBRaPb4QKlIh54u3qtHyFhyi3Sq1gvWMbJtEaDTldsXeyY0qMeKFvLhrkthlAGEzuYsKEx5mqStthczbvLuetORs2Iv5yWcbVmfr27RgrzYtEhCBPjzWBxbaEoHozcYxEQR6BCmpdiNz1auJU3KKpYuL16VOx/zA4ZClr+BwE+IenqBpZ4Qt9OhEQdOPyrWhsqKEsxKIjZvMeEMALCXNInP7O5zFE7VPSraaXH+GWET7/CFQ0I2F9Ws1Ttn6RpYiSO6+bQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d801ec-f4e0-4196-6823-08ded7860a82
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:03.6842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wL/wbrpOgS5MCyTREWXzDDhuP7EDU0PrMrfh1qDU/MWOGdMWfUi9ZpFw3p/8wWWRyNTV2yQcu/91tKLiGwPS1A==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7BCD06EF496

Use the link caps helper to select the maximum DP MST link configuration
for DSC computation, instead of using the separate max rate and lane
count limits, which may not form a valid configuration after individual
configs are disabled by fallback.

Also look up the maximum rate for state computation via the configuration
mask when checking the DSC hblank expansion quirk.

This is a step towards unifying configuration selection and iteration
across connector types and between compute and fallback paths.

The state computation should likely consider all allowed configurations,
as noted in the code comment; for now keep the existing DP MST DSC
behavior of selecting the maximum BW configuration determined by the MST
connector BW config iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 40 +++++++++++++++++----
 1 file changed, 33 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 47b8563f85e4d..df6e54508e5d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -477,6 +477,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp_link_config max_link_config;
 
 	crtc_state->pipe_bpp = limits->pipe.max_bpp;
 
@@ -484,8 +485,17 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
 		    FXP_Q4_ARGS(limits->link.min_bpp_x16), FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
-	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_rate;
+	/*
+	 * FIXME: Use a proper iteration over the link configurations, instead
+	 * of using only the max BW config. For instance UHBR rate configs may
+	 * have additional limitations over non-UHBR ones, due to the DSC DPT
+	 * bpp maximum limit.
+	 */
+	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+		return -EINVAL;
+
+	crtc_state->port_clock = max_link_config.rate;
+	crtc_state->lane_count = max_link_config.lane_count;
 
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
 					      limits->link.min_bpp_x16,
@@ -501,6 +511,20 @@ static int mode_hblank_period_ns(const struct drm_display_mode *mode)
 				     mode->crtc_clock);
 }
 
+static int get_connector_max_rate(const struct intel_connector *connector,
+				  const struct link_config_limits *limits)
+{
+	struct intel_dp *intel_dp = intel_attached_dp((struct intel_connector *)connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_config;
+
+	intel_dp_link_caps_get_max_config(link_caps,
+					  INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
+					  limits->link_config_filter, &max_link_config);
+
+	return max_link_config.rate;
+}
+
 static bool
 hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 				 const struct intel_crtc_state *crtc_state,
@@ -511,11 +535,13 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 	bool is_uhbr_sink = connector->mst.dp &&
 			    drm_dp_128b132b_supported(connector->mst.dp->dpcd);
 	int hblank_limit = is_uhbr_sink ? 500 : 300;
+	int max_rate;
 
 	if (!connector->dp.dsc_hblank_expansion_quirk)
 		return false;
 
-	if (is_uhbr_sink && !drm_dp_is_uhbr_rate(limits->max_rate))
+	max_rate = get_connector_max_rate(connector, limits);
+	if (is_uhbr_sink && !drm_dp_is_uhbr_rate(max_rate))
 		return false;
 
 	if (mode_hblank_period_ns(adjusted_mode) > hblank_limit)
@@ -537,6 +563,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(connector);
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int min_bpp_x16 = limits->link.min_bpp_x16;
+	int max_rate;
 
 	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state, limits))
 		return true;
@@ -563,11 +590,10 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 		return true;
 	}
 
-	drm_WARN_ON(display->drm, limits->min_rate != limits->max_rate);
-
-	if (limits->max_rate < 540000)
+	max_rate = get_connector_max_rate(connector, limits);
+	if (max_rate < 540000)
 		min_bpp_x16 = fxp_q4_from_int(13);
-	else if (limits->max_rate < 810000)
+	else if (max_rate < 810000)
 		min_bpp_x16 = fxp_q4_from_int(10);
 
 	if (limits->link.min_bpp_x16 >= min_bpp_x16)
-- 
2.49.1

