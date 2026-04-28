Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +edILReu8GkUXQEAu9opvQ:T2
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0563D485429
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707A410EC26;
	Tue, 28 Apr 2026 12:54:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kKFWVrVU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4685110EC0C;
 Tue, 28 Apr 2026 12:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380877; x=1808916877;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=q4EfNTB01n1JybhnWBMhe0Sp+OUuh6soH4AiJz+rXs8=;
 b=kKFWVrVUe+9A1csxhPIv0bvUw/i3y8qBCf8oZWri/IFW0dyaykrfiEnF
 wG8k/71QYSd7yHo//2wDJIUMzrz1tb/Z2X5Fpazc5+goPlrbQjk0Lf60i
 xQ7WFnseDETyiVD2j1qOv19YK8PhQdFabZa1Kw791/x+OOS00lBvd15N7
 wwM/pOVi0gWDC61xbV+ifvC/hnpNoGPzd65k7/YFZ5OtVbkPbZtdiOMxy
 TZ6ou0Yhnlksf+sCVU23gvxzuP15lrsR64O2wL8VwMpfrY2q6IXKkCKia
 1OdY1qfdawjYQeBKpyBSpvIC0u4PZBrrqO/3dx+11s10qXg+Hkcp7Nzyd w==;
X-CSE-ConnectionGUID: ZeW2EgeTTyGM/IlmAmQvDg==
X-CSE-MsgGUID: dEl9cKDdR4yak2GcBRZH1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893787"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893787"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:36 -0700
X-CSE-ConnectionGUID: xmtsvcfwT2C0Re4nXtFmKg==
X-CSE-MsgGUID: /SeUWG99TNqNDPEf81NePQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083531"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:35 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oIBAIpWp7w8qeRYlsH1TRml9r/tJNBSlfmhhDQR6y3xMD4odK/HFlbd54tL5IIct7vKR7AYeyzXnHDTmvq34w05ifAbKFwOHn+flOx9zwVLiwibrngsLattVuQ0V3S9KY2wIDBG5wgWhQ/pWBUEnvPr0N38FPVXkRIKRabiyk1oS2P3KJyCbIlIPEHQD/4iS1Va7Lrq6DKZiCUK8ivjQ6aKZw8NVWrnzhRSHbZBnLOQhxhsnxK74DGX8BrFZNHRCc7BvAOxFyFnnfr/8+cFBPv5ywJ7rB+v3inl1Nwt6C7f/Pj8XpItNYTWtXNPdWmudR0Kwe39SgOfmNH0K92o0sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBJ8o/c0V6+JsXrM+DVJGYlz/lYkRDl/rQypg+cbAXI=;
 b=gGE/CnoSxFt6cJnTdU5FIz/Za4HO/gHH5L38YNEhcfb+vQiR9GDd312M6kOMzEHxgI76GpdzoZqK0UYs9sB45qbv5dF3zgycbeKdtcePMQeGGvmfIeAjZoDoElfadnaoRxsnPs1fFBtX4CG6HpLo1k/jXwqz2ZWq1opJA7OReAdQFFCM074xYCxKeFv2AKxlmAbHjJXQ8KFUJ+wTLvhHvmDjexwj2U9k3W5+NK8nkv1qPWXv5Var4TrLHjIqMWDIVBN+b328uXZ8PlTbRkK6aN/FvcmtF//kCpklIIROcAOMl0gFAUvl0Tp23929t4OKuOAornUWCRuTbGTTvm/Byw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 049/108] drm/i915/dp_link_caps: Add helpers to get max link
 limits
Date: Tue, 28 Apr 2026 15:51:30 +0300
Message-ID: <20260428125233.1664668-50-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 83165226-ae2d-4b52-fa5a-08dea5253834
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: TmPZL+QBTZ3pNY6ShUOH1zf7x4LyCy73IJjZFEMZQlrRgbuBSo8SALY5MZ1NCUdgzJQG40yXxY1sC/e+sjn5u0qTpajmBwUgeO8IQVBJQaQtUH6lllYkFX/5gJN7owF9xQgM0EEjGbuEhwpnL/Wer5xxaarCz/nf0CapAZJxO19o/dph7+2gkiLRrYhtNsqi2Jql0KCerYlZZFklJmTTil5pPcVoKx6I1xYsHJWFogj8tquamqdUrXpdHmyTEq3PqhzT77nL3lbfaZmVheVGcJ1uoFLWgiuIWVlFbXMHxBO2mRJr6Oo+solhZv9Kv5H9GVVxqZ8t/9O30HEgiawR+LI06kwJp9SkwT56R0V61RejieUinkdOGEt1xHeuO7FEAIwIoyTvpX2L0CE83W9TummFyCOhH5w/4fUbpclAaKzuPyyfJOJ0QeacBNMrLrn3yFmCmWKkjMWhpHSfrvAYrps8OwkiQfnK84xJ4CB8iX6Fp4pM0LrZq+/VuR+sjmcUVvxE1c41x4RF9UDvgw218BCuj0KTZ2G66nvvvz/naE4k3SYQ8ltTy0LLobXgOQrNJEh9rMEwLjLvts0tGvbOYfcWpiKZtioNkckSy+bKVYTJDjOBQrThl8DiO+r08J/B+QoCxv83wTvg1VM1e348JQQq3eAvEx2mDxCTH9IGnTFeaxNj0cf5dO9XGupEtQnb3uF0HzoX3UPs2Zz393xvc9EkbGxh0XCVa0x1Mxnr8jI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I5kT5cGU2LqMT8XdIjh3SsmuNQSp9Yr76qBDTiear+bbcwd4KvtVDHaXPS3K?=
 =?us-ascii?Q?LpNlC77gbg2zXCSOOjj5RfjWxWsCWD6cwbIuBadB+sVCuR5GmCtKH8RBpU2B?=
 =?us-ascii?Q?/45tweGELMKDjhjnExjOm8jASXI+edF9rSMCq3+dUfyQa2KfO7F6t02qPEFH?=
 =?us-ascii?Q?vQqNTJ6FX903YvX35Fc1nbOFVL1KNGajZBRmgU1ZG8aJP4Fg0wMnhS2jzDmp?=
 =?us-ascii?Q?NFB+DjoLXlSf7xATqNZiaq9dnXWKz2FgnRx7h9+Qe8DRXPy01JHckb8XDY35?=
 =?us-ascii?Q?D3utXe0yAjmgbjXYkTBZttDo0IQdmd7LhcuasHrr6k1NHS5ifg3JhlSYNFTl?=
 =?us-ascii?Q?iEtTg546tXy2/cPp8Rd+ZDRYmwXFj6JG9WPV/sHWAsjWD47bzYh651RwJM2H?=
 =?us-ascii?Q?xKTJ7CRoZjZbkLHtAKoLfdN0fBXdC69G1vY3mWs5l1TR7u7FQH34Y0UFCrUX?=
 =?us-ascii?Q?9/gZ6HnrBWRWpplQMPYJ56rTao0WwvLSAAvXtgSj6+CwZuecF2s9/mEeECHW?=
 =?us-ascii?Q?D+aVtVfj0SVuRQmWTAy414sZYXZGHRn19IWKOSjXw4K6/pGxXzEEqdURV+kE?=
 =?us-ascii?Q?wrR3aPX3PpsXNRWMT+ZmNYj8FYXlG+22OxCD/tpajDfgOmJVKw47IiRha8Yw?=
 =?us-ascii?Q?YCJrC0HUoXbRl6Wu7eTq+rgdbzyzEI6VqSg82zOWgYKaAu7w0qiPFkcZbb35?=
 =?us-ascii?Q?04yika5wwntr9VhZY69e0DizOxjNHFkBrNF9HN1s0s5kzFlowIRpgyJ79M7z?=
 =?us-ascii?Q?R0XbE5YOySQh/tuz005wr9OMClKPefuC7DPPwxZvZeJJwktCjH6clXVmAsCD?=
 =?us-ascii?Q?KhV6sz003wRUNu7Vv9Kvvx1nx/uYXt44mrqzUF6ZRekJEpkqzplrRw4Cnnbc?=
 =?us-ascii?Q?qGwgTvCHXuA4J+x6vS5hQyWW8qvdb848qzIkmz2LeYCuURgZ5Fqld3ueGqhz?=
 =?us-ascii?Q?DNHE6XAIB3n9G2uUT9pd18XyW1kvDRP8HmVK5reMJ2/cpxJZmQxNRD8TxN+o?=
 =?us-ascii?Q?7eqh0+4syuOJKrxFIAbRO9bVXyYxHpW+3KKRfVE8BHgs+tdAt0XojJiJRLTf?=
 =?us-ascii?Q?uE8VHUIsvJtHnv1KD2zKyqzel305vKdjT92yz43Ev/vzCjpWog4oMWKr9//A?=
 =?us-ascii?Q?rF5VvbHR957rCJUniFPWb8+U80NYMm0v1KRxtmUrDotM++/7wyueXyRShOjz?=
 =?us-ascii?Q?qVJ88eEekJJs4nTrO/k6XMB5BcB6BJyzayVsPw/mvbVHH3RL3pIaN3LYevk8?=
 =?us-ascii?Q?QooBN/ySVGLkep1CtNunK99yhLNuEnXrO/roYa4UueBfoUYDDXuMQ2Uch/hB?=
 =?us-ascii?Q?kGEF+FBk0/24kFdPs7zWCU/B0+jr2bcwvmcaRy5zscphKQdtZkUVL/M8DMip?=
 =?us-ascii?Q?XIXchH6fGsiyaNXQw+eqf0B2jl8xVcvV8w1GWsXjvBSkRroZ8QVu4ToSPoNu?=
 =?us-ascii?Q?MOi5E4F63N17MvMLnpnoRaqprG/a0wOg5ryJIKghe4/MEL3957NtLUb1Choe?=
 =?us-ascii?Q?lZu8KpLebyyeQ41Yd8kmwA3UJXcPik1LK1pW/lDnkE1H5U7mHWaPIMfixOcG?=
 =?us-ascii?Q?nQkXsW70CyMaLPq+IbbfljrdMyoZKuYqj0Y+KumZDCmv7kGEj8m5EF2NYmMf?=
 =?us-ascii?Q?cwMCO+GSltCyM/gdK7RU4Tsdka2+DQ19r903zDmZzo06AKg1kl/rSn1ecJur?=
 =?us-ascii?Q?FKAqB1Hu7ZEVb2rcDFQfYhyVFXcsOL7dyKgFB/z7WvSDGOog5BsqdnNHYJnG?=
 =?us-ascii?Q?sj3l1CvdMA=3D=3D?=
X-Exchange-RoutingPolicyChecked: TCMDN8HbWQKnwt7aF13fUluJ0XnJYFQrlNjK4z+Q7V8//Fi84Dcsmmty7yhEyfz6z9kB7zEZbBTXqHMjQQX+Xfzv+wEpiLmHzny6XzkRjKuWVloPegVv8X3s8AjpjO5O9wXmEuE/1HnVNX+YYZbwgM5ijAydnIC2ZRdHckdB8QuHSKROF9AydYyvh0UrKkaNpITDnxWxVFG/vHFi2b/lV4D+lb16ofnnAYK1sPSVo6MCtAh1n/f4cuX5rN7P2UFQhubZrARXQC8FmvEVzrZpDU7lvhAz+Nu385pPWpc8ZmUn4ZFsRxWJWWZFln92o0IZafkZcD+MV2FSAARJNA90Cw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 83165226-ae2d-4b52-fa5a-08dea5253834
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:01.0719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ir3yPD1xshu9o8q46AGZZuaGKVwld48v/uzPvppgaN0+x1hmPFsneXTY6loOCERxDC6kr2mar/2Uj8DtInn4Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 0563D485429
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

Add intel_dp_link_caps_get_max_limits() to query the current maximum
link limits (max bound over all allowed configurations) through the
link caps API instead of direct accesses.

This allows tracking the state internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 38 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 ++
 .../drm/i915/display/intel_dp_link_training.c |  8 +++-
 4 files changed, 52 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7326f6d09f186..1e26f6000b711 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -355,15 +355,17 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	struct intel_dp_link_config forced_params;
 	int lane_count;
 
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
 	if (forced_params.lane_count)
 		lane_count = forced_params.lane_count;
 	else
-		lane_count = intel_dp->link.max_lane_count;
+		lane_count = max_link_limits.lane_count;
 
 	switch (lane_count) {
 	case 1:
@@ -1547,6 +1549,7 @@ int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	struct intel_dp_link_config forced_params;
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
@@ -1554,7 +1557,9 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	return intel_dp->link.max_rate;
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
+
+	return max_link_limits.rate;
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e514103654fde..f645c0a9dba69 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -175,6 +175,36 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+/**
+ * intel_dp_link_caps_get_max_limits - get the current maximum link limits
+ * @link_caps: link capabilities state
+ * @max_link_limits: returned maximum link limits
+ *
+ * Return the current maximum rate and lane count limits in
+ * @max_link_limits.
+ *
+ * These limits constrain the set of allowed configurations.
+ *
+ * The limits are set to the maximum common supported values after
+ * intel_dp_link_caps_reset() is called, and can later be modified by
+ * intel_dp_link_caps_set_max_limits(). The max rate and lane count
+ * parameters are independent limits, so the pair does not necessarily
+ * define a valid configuration.
+ *
+ * This function may be called without serializing against updates to
+ * @link_caps. However, without such serialization the returned value may be
+ * an out-of-sync (link rate, lane count) tuple, i.e. the parameters may
+ * belong to different update snapshots in time.
+ */
+void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
+				       struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	max_link_limits->rate = intel_dp->link.max_rate;
+	max_link_limits->lane_count = intel_dp->link.max_lane_count;
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
@@ -545,6 +575,7 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_config max_link_limits;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -553,7 +584,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.max_rate;
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	*val = max_link_limits.rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -566,6 +598,7 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_config max_link_limits;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -574,7 +607,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.max_lane_count;
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	*val = max_link_limits.lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 9f5bc9b7715fb..35bbe340955a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -25,6 +25,9 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
+void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
+				       struct intel_dp_link_config *max_link_limits);
+
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 456540925db55..ff146027baa3c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2303,6 +2303,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count)
 {
+	struct intel_dp_link_config max_link_limits;
+
 	/*
 	 * FIXME: we need to synchronize the current link parameters with
 	 * hardware readout. Currently fast link training doesn't work on
@@ -2325,12 +2327,14 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * configuration. Although that happens to be true for now, it will
 	 * stop being guaranteed once fallback depends only on disabled configs.
 	 */
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+
 	if (link_rate == 0 ||
-	    link_rate > intel_dp->link.max_rate)
+	    link_rate > max_link_limits.rate)
 		return false;
 
 	if (lane_count == 0 ||
-	    lane_count > intel_dp_max_lane_count(intel_dp))
+	    lane_count > max_link_limits.lane_count)
 		return false;
 
 	return true;
-- 
2.49.1

