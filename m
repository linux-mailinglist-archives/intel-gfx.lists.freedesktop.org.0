Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH+JLpBQymmb7QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:29:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B75535945C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC02D10E5F2;
	Mon, 30 Mar 2026 10:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="es/0T6pc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB5910E435
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2026 10:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774866574; x=1806402574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Hr96UBlD0Je6ne2PYmYwFPey2h1TlxyX/ofoVBUqW8A=;
 b=es/0T6pcRmdemADu7byF8QqJEJJ/EvNWi6JvI7fVLxPNqY0op32hSvhh
 dAjXHdZr3MlAW+6C02x/E3gVnk6u07eXa8ahl2saqhYJKSHaGvZxg56FW
 gVhgAKD9jIpJLQkO154h9fcX4AjuoKrUOuS8IwPwjULqSt37/Kwew++Wg
 lQq0TsAZ0+IWpzsH5K7CI9o+Wex7y4WGwUJFclximpCBY62KqO4Ce+76C
 1puZJnaaU01BTFKpcSECvipndx8R9ZuNKuJEqFuoZugiVO8QNwexU2OAp
 kN5VwJY+7A1Jk5zn5qpsm1KfF0kpR49QIFOWFhGsDPz8x5H2Pb584lAQD g==;
X-CSE-ConnectionGUID: LPpKAOFZSIiPC8Ha75HthQ==
X-CSE-MsgGUID: 1uazPbDIQm+j/xTRH0ALRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75743562"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="75743562"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:29:34 -0700
X-CSE-ConnectionGUID: rO7LlMuCQL+B9bGUwAjddg==
X-CSE-MsgGUID: Z3aSszLnRuGFk9Z17PciDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="249220118"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:29:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:29:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 03:29:32 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.48)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:29:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X7MkWUxBO9fdfwYupIAFTrtirzMNwjziv3WmoxW+ytHpjGBDQ5YWpDDdPUXufe8Bsc6TYHH5/WFUKvD/sqaJqHOWFUVQ1EwdQyGp3bxCr1dUb/Nt482iebE1XWOaYIvGB7eLK2VVtRNzwSnI3yrXNLxQEbSSGpnMNjvd10f3m7+/GL3RqbFKPFl8dikLgoVWqhx9zDu/gILYEnztIr/VQZo5zXej8NCSXxiHesnyoUvseRX4JnFO1ketMenEtmPfsAECIekEnm81ldOC1UvyVdT2rKNc2r3bo3DTh9zjJyGPH4LeDyQZHhVZu5FM6mzetzu3Jg5CmVFIX+C8EqDkJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IYVeWh6RsjkRjt+9fxDykodiiECnv82seapq6y4p4pc=;
 b=gH8r1i3qHvQ59wSpZnn/4sGu78+2RgIvWNz3dPRs2AJiMXAfucwW0ucPSz5u2w63gjPZrkRn0LQaKRFDaCKTZklCQ5ZiesmGes5wvSaA/b6HkHmdW19HmOSxxXePEEXm05zxUbKlhAIFu7ukkzQk00eXK9DHP5JLbQDiNAgIuBAsAF/eS3jZrllt4/mAfOPbcUhugPGVMtNwHtYzDZ1Cc3RsvVam53vPxPaYGoI2FKLcAOmg076mmZOkMYyUOnPvV+InlFFvN75XbO1jN6WhGUGW8YbDUg+iuDsuu/KPw7piz5ClYaqPQZDXDZ9NW5e3LTsgO1LULlo4qLNmE4vDCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 10:29:26 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 10:29:26 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v2 1/2] drm/i915/selftests: Add userspace PID parameter
Date: Mon, 30 Mar 2026 10:29:15 +0000
Message-ID: <20260330102916.1158786-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260330102916.1158786-1-krzysztof.karas@intel.com>
References: <20260330102916.1158786-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0078.eurprd04.prod.outlook.com
 (2603:10a6:10:232::23) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: dc3e7b93-4b5d-4640-4860-08de8e4737e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: t+JRNsjppemd2TQ/mUlQmI7sa6AA+QnLSeoQ9W0w4KqIJuGHNfJAA2kGvhj44W7cJnGUqBPulPWW/JO4AOHIYI77MzHTd9/jCqd3lY/Grx/b9rXfKxM9RBUEL6SGquUpYwHmVcARAGTyLGpzckVEMwKgEusx3rt/traN2x8ERzDZANHjmzd0DcD6d76E6A+oZLnGiuL1brPZW/aBUBkVLWBgUvlP1x67SYFqIiq/5ehxTsS+i01dAzjE/cIJRD1JZGbcsngT95dvOLdTpchN98XFM9RQ1tUU4jMikj9urEKYUHPYCcM9ff3UiTQzNn2LYzGwMw733Cwsqe8E1UfBOBS6rHeDm77H3SVCCE2vCjq1/lgBX+WcGyfgDUWXgjCDCD0Dk/d5s1yvkakSxV6HJH+//slG6i/QW0zvJm8dbbmCfEHWmJledfvryx70Lo3Nn4AjIxRrMAv/dQgcCiTBEQE05e/sMfcCzzmmOdbXpI9UfHKFLMD+LbC+tE0KCuTsTzAlnCrhOTMXWaPjHzegnndFOKd+FvA6rKlgrKyGUHYHJwOVVHB3oz9EusCUv4J/VXwhPQuUW2lpZhy2hAUpa1ejQ3opPu+lmZOwlTpBQGXaIEAcRSJbh+Rj1A2tauplXkP/rvhMlPyEEciuqmwbMbxAFvcK56klkYzjA4y508sBX8TE+h29nXCEnKYEOpgswWRjIbtXHsZDYWnGarR8EPh4PVfY6iZMSBEyKk7jnbs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dGAV2/BfteIJlHrkmyigpbTaXULzs0rExacrA3/AFlc3KjGfUQp9ov2aw+wd?=
 =?us-ascii?Q?M+4qytbzGXaBNXOEBUw0BOdN0SLteHllMIOP7l7aAoOLm1oAY4vLAOl8bZ8y?=
 =?us-ascii?Q?n4B6lqQbmXbXcPhU7l/zcOw07QUQjOLiW2lPmauszh7qYGFzLkiVdFesCztg?=
 =?us-ascii?Q?sDdQQXlVZ4QYnzPDXnk9Un2fd7dA8uh5KvarXtqjLc8QpPXKnv1oiJGEjwln?=
 =?us-ascii?Q?tXT5vp+ayucIgaTJGEbzomUPTEg+RHQ8sabjvumkRZLb/V1Xu8mLP1xXuNEU?=
 =?us-ascii?Q?wPSRppXnLuAjwYQHrdNG2yfm2SBx2V8W4N2itijTT/DjRh4NaIzbXH0jB21h?=
 =?us-ascii?Q?aIP7aIIIIzl8TIfTZiO4Z/4aiq+SpmdE4cpdF8SvnUzQKrB9yDDM2Wb8LLjz?=
 =?us-ascii?Q?N40QKxkEMnkVaLn1973+lOW/N8dEq1rma9uc2InT321Y4zWeRwdehkraFmjR?=
 =?us-ascii?Q?A7n+UlQ7798uZ/vIrw2Jf7q8LLKff9CiFef66vVnxgeywyfbBooWpHBeH6Ho?=
 =?us-ascii?Q?GlJLRl3Gd8aszHNyc/hI+ohB6VXw7IlVi8BcqaTdWQPHMrtz4voOJDkUL1fO?=
 =?us-ascii?Q?qVw9UP3WFfOe6m6X43sSZUSq2dqh8Yda1gIdAE3ZdSSBQgIl00yQYeGXlxyF?=
 =?us-ascii?Q?spM6nDXS+Y/EwCWbtCs1wIW5arLhBFj6XuAxjkJobRd/kdzz4S8mEmqRuYRk?=
 =?us-ascii?Q?583revVzVQYf1Fau4vvzIUw61YjfG+9FSt6mlfJVDZ2rYOJxek+cKaJqsKlt?=
 =?us-ascii?Q?S0aVl8erFR+uCzMu6Wj95tLMKJeonLjP45MBSyVOTBvVvEdvO/jT2Oadsx+f?=
 =?us-ascii?Q?BmBNg0GGr4YVZhii1lf7ziHeanX9PNHOYCZAyE4/Tk0LW5HMRMTJucaGApTL?=
 =?us-ascii?Q?JXU5rj0wb/beFQKJoFHJE2PtxB30bRZTHnYj5SBVL7uneQztYJwaQlenemdY?=
 =?us-ascii?Q?7grIlRVMMZOuRvEx9sTO2emmO3oTqIsVdG13TVLkcTqRbXQY5uBZ4YfHsOcM?=
 =?us-ascii?Q?CN1BVRu0cb930gdRd/WV5d4VtwcB9ZMAvmA+AJK/0N4Hbwj/+eBbTs8G7b1g?=
 =?us-ascii?Q?M+EhxIaw32YWmIaIQ1EWSVrCbpPiUwQHqt4HY6r+kAuoU0YfoDQSCn/Un4ck?=
 =?us-ascii?Q?gcNQsGno0VmOs56mWLbl4S+dcgiXinaTEUSs66FOHiT6paDddxdDYLpkUUyD?=
 =?us-ascii?Q?Gcv+Q8ev7BBY5QCwot8WWrwrB6UcmfuqkLYHncKdNDQAXW71pjJ0jNZR1O7w?=
 =?us-ascii?Q?0IHy0M4HjbgmgKrzmXrn78jW6BbAqkkjp1UwbdNYEIgC4zXAquCPlM5K5GRp?=
 =?us-ascii?Q?RBVmk5dfwRnL8Z3Kh8qOmY93Kde5eEdnvKh9WvphJ0rM2VStGbrfF4/YSCVr?=
 =?us-ascii?Q?o3IJfvW0De6P5+4vS2uhboNY5bCgEPFa55Fa8lUQUaX8biwElCJJvCZFcbaq?=
 =?us-ascii?Q?FB0WXXB7EomXwB1ZUScx5VV+ej93v73X7978w9gpB3F62U6tvi2lJ172/ZOt?=
 =?us-ascii?Q?4TEcRrC11FfmGSEdDlxxgE1OolPHWgQNpX+cIusqtENXeI76pD2+pL1e9DUi?=
 =?us-ascii?Q?SZz4sPeH92KpVV6vw7c701RdQYN8IRaORPubXprm7+sG3JXliMEecN7EbAR/?=
 =?us-ascii?Q?pxLopL4aVR57VEqNJ9ieD/s0Rm+3p7nwbKgFq0wSnB5nTkC3rLKV1bq7flSg?=
 =?us-ascii?Q?RozsFZCjyQ/6EfnsKbGpDGy4tL0YC1HG1jt9TApQowhidlJp6A1H87fjGQX2?=
 =?us-ascii?Q?29Q501XxpbaGUUcp68Omi3rPFqhOGu0=3D?=
X-Exchange-RoutingPolicyChecked: YTds67p2nBfcSth2Vey+Dqz2O0j1EqCXB52RPnJIz3urQUezJ2ytAHtw6cjT+Br+Vy3xOnjspk0cZdjET1a8Nh9P9ghXJarGygkm21WqTixCriGCwTPaim+ItwlxMs9Qe4BjzGpnbZ1kbOM4FVJtDMEVZRGeIWO5scYzxqSg+v276KAE/VFAFY+vecCFwBrgP+LYeKXdSR/k/jWbSwHW4c1CKYmW9XVBykTBemLmkfxJhJ8W7t58wErke2IXWA5G38vhiV1Ff8YnJi3zgKGKghVVWjAgZ0td839H6+ZQElR4OlOn5gTCdq+Wf+mSrcsE8WuedDxStHo5KkYz+SC07Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: dc3e7b93-4b5d-4640-4860-08de8e4737e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 10:29:26.7644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aPLT6IndU0oheeaz0hSNm1n1Y9bs0TuNaMQ7FdUqh+Fih2W8/8lxJK6Jau4yZ1ruOCkUYPibNKbc08QV55S/Tc+S8CpTNTIAQC3rgUatA+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6B75535945C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, memory management tests using VMAs for object mapping
are not guaranteed to execute in completely safe environment of
user process in kernel context.

Since these tests may execute in kworker, for example on
multi-cell NUMA systems, their process would not get its own
userspace memory, so it'd borrow mm_struct from a process
previously handled by the scheduler (current->active_mm).
The test does not control the lifetime of that process and its
address space, so on occasion it could borrow memory that is
being cleaned up or that would be cleaned up during test
execution.

Add a new parameter to i915 to let users running these tests
pass a PID of trusted userspace process to ensure the mappings
will always be utilized in a stable and predictable environment.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v2:
 * Slightly reword the commit message to be more precise.
 (Janusz)

 drivers/gpu/drm/i915/i915_selftest.h           | 1 +
 drivers/gpu/drm/i915/selftests/i915_selftest.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index 72922028f4ba..e29ca298e7eb 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -35,6 +35,7 @@ struct i915_selftest {
 	unsigned long timeout_jiffies;
 	unsigned int timeout_ms;
 	unsigned int random_seed;
+	unsigned int userspace_pid;
 	char *filter;
 	int mock;
 	int live;
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 8460f0a70d04..a1ccfde7380a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -507,6 +507,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.43.0

