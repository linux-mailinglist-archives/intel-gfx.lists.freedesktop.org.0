Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHUAJdat8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 468E24852B1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A357210EBCD;
	Tue, 28 Apr 2026 12:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SjfucYDa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701FC10EBCD;
 Tue, 28 Apr 2026 12:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380820; x=1808916820;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Gom0DTjTKVTx/HLhi+ssDdJkScC1vZCCCwfORDbzyYs=;
 b=SjfucYDab2V1SeX9vMyLDH02BvEs/8h3IOuG5Bnb38zl7aDd39Pb/kY9
 OtBx5B47DYahYfd0FiEnpFOIq1rYznBv1XrSnUHKi80PwhOz1E50Up0v2
 Paa8g6ZjOwaEoY0Z3gMefrKpJxcLxY4ut0/org48JF8oEaNo+qNYW6Tk2
 +dJnpF9LDwfHVRlgzj4ibSfczrRfWBcAdVN0/fYIY0L4hwIFi3wu6f1H5
 3qpkQDmo56ZecxaPdeyWjvkSOJlpDCG+vZ41JU87lAgHeg6HF/dlpvPfn
 OEj2VmSGAxzSMEe4JLYVh5UwyXV0DuNjEN8pnGqTMzPPF2plOb4KJoLwF A==;
X-CSE-ConnectionGUID: bLCSI6S6RfqVWweFUILwcg==
X-CSE-MsgGUID: p+WbnxO5SeGfU+BG9PiKig==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398652"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398652"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:39 -0700
X-CSE-ConnectionGUID: K5e4OjdfSiKM/S/3XTVL+g==
X-CSE-MsgGUID: il0QDRmDT++gH6gDHtmcXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911387"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:38 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D8UYxrRN7mxQ7uKhC4FnY/MnFWgk8jKfYp9oDLG8BHkeogQFTMBIXLjRAEMG35KMbo7cmIeACs+nRQDws/6rUUACEmeMPUqfZr7rw4GCikomz+IDe/4hh0GqltlnzvZLKrncwo+Rkj+XWjJisLUsoRky5XsAreprAyJL8kMXf/eWKQedPk+I9pvgYU1SgAu0Mz3133NIox9qlCXk4tnCs6y5g5zEcWkLDXTbznKHlhvI9EIL8/ollWp/wu+GHolRFN1Juu50JbvbB2uL8+6pq994GP/Us/yjOI2YuK3Oa/R/8gIlhcAm2l/gfMtiLyBJCs/XDHRaO3BOtVBj9V1ruA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oJ4IAtjhkH72dIxSLmK8zGw+URmrAMOK0mFlCtiaTvo=;
 b=XiLZMcK/vMeGXqQJhsOZVBhk0Xace7iUTil7lKQwlvG71oRwcRZLB8vIN7IK1PblHpsYbdzV59tzdsftPY7gBmYiRk26JtQcsq7AdVq1XnDBXat3SQQZPRUsMmGEJ91W2jlAcPo2Dy9IHTsM1YXHovlq0yADgKSSh6ovuCrb5/1bUyjIfy5tOic+st1ij80cKBbYy+q5bmy/i9Y+dDaJ7Vbw3FwfWhLuL6Dx0WKrOLljjZdWroYYB1rFhUP//35tIezTi/hq6xqskfNyuQFmgY6nZSZ+bwPOskofm7laxJPtlSNgcJzBXzxG+dy1bLDv/gtkMzvq6myPnHZz2FlmPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 032/108] drm/i915/dp: Simplify querying of forced link
 parameters
Date: Tue, 28 Apr 2026 15:51:13 +0300
Message-ID: <20260428125233.1664668-33-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 0b881274-0098-4c4c-1dfc-08dea52527b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: bsVZ8/hFIyfi1c0Z/OwlEtcCGrI1ngGSSvuKU2ekimLC2bBVlv2Tbx0wjZxuTSEts0aq/XcUWaNPTMARftYR6s/5MfEopYpp47QrZzzTnRQxTaoO23clBjDV/a4mZnaPB9SF9DtQkbltU8SFlkQ1VL04F5zqTqGYbz7NjdyHbh+oh2pK9Q1otI1PjOX6xz6DnN37ybbGdaLm+U0FEiVGPJIoX0h0R67dQhzuVUxcSx45KN8hmkJx5u+SJI9zK6dqEcS6dOuYkowOCSF4yWU+fdkAURsc7m0uIWdm2xtak9H5yesy9diA3Of1rd7Tvj3QJeDEOx3dzMics72exV/1iheEXwLUVLkAOvUylB2VQiPIeX2sETz0ykw0V6Pk6Y+PLW8hSZ0JzNxLQt+edxWtI9bszchFyqNeg/Rkge1CfoRWeJm1ZfM1DBwFAKZTxtuQ8l8uovsCJgwmjErQpe5YVsvyjYh6P5YByihW9zUeyRL+uAy2nDfj1BSPRvOhyKh1riNB9Te9l7HYInUi8GW5NvltCyrIUQflUQKIfnO+UHj2los9T/KmbccMM9JpPVQmY86/0Cx7cQIQeyLV1XVGY2LIj2lo9qikpCyqqu2bjyR/ijcJZlkn/CEdbPgwajuVhLAPKbC8dsHMOqnr2Bf2rU8Ys+Yj7gwn0ppqKMfDgQFIlXGOEg9HY40PHkMshrgHq9IZfpkP346BY+rI6JLO2SLXY4Zgwhmv9P8fUC6Cag0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zbX5zuRtMpBbxsfK3P/nq4E6WCH7U+SU9vloTp7so5Jl+/QeeXdDQRgmLNNs?=
 =?us-ascii?Q?85KcAxWjQHO4SAvWIsR5db55z8598btHWIM5GVGeLBYFi2FsrR570vdmp6X3?=
 =?us-ascii?Q?LSQwJp1iVw4HgQe8Gf4dUJBUuJC1TL8XBVGQ19bJKaSabiHOjEfEmC0dNZYd?=
 =?us-ascii?Q?MH648wsece5lwmHNnVmHC6jZE/Qk7DCOec4x1v7wbMCs9kHzxm8JOxa4iUB3?=
 =?us-ascii?Q?16iogCa3nwXVc0fLtLoqvvX9xZASW5dZjAlumI8LMHPzNmYoAKbX2clDVFOC?=
 =?us-ascii?Q?4qc9l+tmAXwbBWawXL9aWqPgpI8PWDNpW1CT1rR4uNTrhlOl3FIWPrI6vfJE?=
 =?us-ascii?Q?MWozXETI1v+qhCrzR5d7/MUZfLYMswEnHHCcpoqNhG9EZKMJ3Tnk4JjHxYs4?=
 =?us-ascii?Q?dshVkU3IQj/Mml5w6M3afengRfx3BSrPr9V0goXK7caA+/3hJmvCKnzfYB/w?=
 =?us-ascii?Q?h3GZf8RAji5MCA99qk2jtVFsFm8z/qvN2CxqXjHf8DMzyAFDMsZOZhcrmZzn?=
 =?us-ascii?Q?DDhXLkHNANZa1WawZsbcLB324zrLLvRP5zroZQGbstWnYN3QEisJYOlTiw6Y?=
 =?us-ascii?Q?53EOagbBhWJTiQnYIDpIQhGJvF477vFIx6bkW3J+Ld+o4yK8XU2hj0U0bDeb?=
 =?us-ascii?Q?5nU1aJ1mbmqmiaGbly3sM+D+25YRWopeXOqzPPUwUehnb0xi+xznHB8JvhCh?=
 =?us-ascii?Q?IYMTeUE2xqIjv62obkMFFGA7CZ81hhVSBzT0vmlf1hsYdZBBbN3Ab8SfL/fO?=
 =?us-ascii?Q?poBTNAqr8xdcUmXixydOMjefXfGkl9hrfZ1xnMHBtqHYFSXvxtDmx7uyyqV3?=
 =?us-ascii?Q?nA5kCkZvdHckmdujwmaSrTczB1foMsw1NwoVgK62buL8asaBC4k0v+YhEOqJ?=
 =?us-ascii?Q?gLk8X7XxtFMi9mUylcruygamcQ+Ij9OwOcnvaDIC11zzMfxxgYcC6hnjYHQB?=
 =?us-ascii?Q?BPfdUxJH8cSYAA7mufdMcCFvonSpVcee4+/auSmsAIJFcho9uTEg4+14hB93?=
 =?us-ascii?Q?0B0rfp0UIgF6jU/pGouQcZdkZ6EvtEUS1RMkDlO1hf87uKGLHGpcY31wj4bq?=
 =?us-ascii?Q?SsEEIr1XEHzBPdVjz6y+i2X2uTUp5x3HLu4I60S46yZSkzAC63YgeYQeRLdw?=
 =?us-ascii?Q?jvwQpAfmFtEod0Fa7zZpDXWPuFipDfJ2AGJWjPjOu/sOqTKD9hoQcVCoxHyw?=
 =?us-ascii?Q?KFU9box+65kh/WpPd/lKVV8fEATUwg+QVwFLWbR9zVsgP+y3znlBr+klbXcp?=
 =?us-ascii?Q?nSLiNoQkBRhLfrskMJVjvrsoQGfaAicN0vpWvTZl0de/2r6HJzSwxntBjEpc?=
 =?us-ascii?Q?doB5vIVOIx1/4bANm32lqXMpCRNB0MMkMQhpXJLMF8dXn/kJAFkN323kSiP+?=
 =?us-ascii?Q?SROIgMiZO5kc5+txXNi8Xzmwt8kUTIXroqWQZdp255EgkMiHOhKKuBNWyUcD?=
 =?us-ascii?Q?5K5D7dlnOLP9eZ1/ZEt4ve9e8r3QNWHXUZ6yzlIFv8vK7zbcmQYM4dxJ/hNY?=
 =?us-ascii?Q?cS6YsN1AdXmxp78q6suxRs0NcAb9VvXvrLQ6Lr38d49fTaRWMDcrFJSErU8I?=
 =?us-ascii?Q?7Qg/K4a6LqJ8M2skPVlw+9KU5f1Htm038Au4joymzEhgUK1MerqarjYqWCeF?=
 =?us-ascii?Q?E2Hb53cyAhkyHuKJw4f1w5CalKjtrXp8hfrwMmmMlZaYMQOGH+BPvSDUlD0x?=
 =?us-ascii?Q?2zEIpUG1wV03nD0PaG0P4HDkY0s2pqgerPCpngBkioI5TxRU+NYASyZJn1wt?=
 =?us-ascii?Q?BEgDXRjY0w=3D=3D?=
X-Exchange-RoutingPolicyChecked: buV2xRzR6iInsx4Gjxh9Be+F3W+B59POUPxC0LEFGnBsD2KVBFlevnChGJ4EvAvTTMkQKBPPG4/nw4LE4rzsx3mLByy2sQils/KZkGCT0yiBscaKj3HXR6VJ88aNjkA0HZ8+4VEldIHGXj5VxC+tVVMvm4VxGVj6jqJP1vub/Z3c+bqaMOA779Wq4DHcmQwpIJ4pZzMh7dS2yqIGOvGx6B6oZvx5aouH5Ercc5PNODjYavtN6U6V7uzPuqW5m6cWuwEyomyouoIZvBad9TfTGazUTVWyULCGePdXPK0aV3Ac3Dt3xUnFFbtg5u2ZBA7sfhfRP6U59DT/YWgyv7Ldtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b881274-0098-4c4c-1dfc-08dea52527b7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:33.3676 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mxL24IlfW3mSXmBhtCLt+vLsHk748ExRmJCwHZpST7Tdqn4FAM8yyBigcrtHrrvG4eyGAG7pDEIqmMlFQf8sWg==
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
X-Rspamd-Queue-Id: 468E24852B1
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

Simplify querying the forced link rate and lane count by
performing the zero checks inside the helpers, allowing callers
to use the returned values directly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 9 ++++++++-
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0aab37dcce97a..52d843b05c38c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -361,7 +361,7 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	if (intel_dp->link.force_lane_count)
+	if (forced_params.lane_count)
 		lane_count = forced_params.lane_count;
 	else
 		lane_count = intel_dp->link.max_lane_count;
@@ -383,7 +383,7 @@ static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
 
-	if (intel_dp->link.force_lane_count)
+	if (forced_params.lane_count)
 		return forced_params.lane_count;
 
 	return 1;
@@ -1668,7 +1668,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	if (intel_dp->link.force_rate)
+	if (forced_params.rate)
 		return forced_params.rate;
 
 	return intel_dp->link.max_rate;
@@ -1681,7 +1681,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
 
-	if (intel_dp->link.force_rate)
+	if (forced_params.rate)
 		return forced_params.rate;
 
 	return intel_dp_common_rate(intel_dp, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 0a2db7d65e20d..1892fc0ff46ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -43,13 +43,20 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
+	if (!intel_dp->link.force_lane_count)
+		return 0;
+
 	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
 {
-	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+	int len;
 
+	if (!intel_dp->link.force_rate)
+		return 0;
+
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
 	if (len == 0)
 		return intel_dp_common_rate(intel_dp, 0);
 
-- 
2.49.1

