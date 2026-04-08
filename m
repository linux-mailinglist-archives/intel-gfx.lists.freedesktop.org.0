Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MP1ANz0S1mngAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:30:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4968B3B911B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9AA110E581;
	Wed,  8 Apr 2026 08:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ieZW0AEK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F4A10E57F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 08:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637050; x=1807173050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=M4vHPPjZV0p06J1ru9WVPziXUvscmoMakny3vZiGtvs=;
 b=ieZW0AEKkTVuGNLmpRgxTUrEcyvkIBwd8kMv9ajcacfe4HkWMJk4n0GR
 JWIyzZAzq8RcNSbieIRMgYgvSEwVTxL+j2KsJbv27/k+O9Fbrotq765j6
 dsQjTabUpZ/5EDXNvjZRW0w2o3fGTkieV3LKOpmCntayyKh/SzM3SxhnR
 zV+GHaMd7c0Atxmwgo1qXH2B8qtp1LeSN8rRnGR9cCSWeBhfeu34n/iXj
 PyK48QMyitimEnP9YWbMMexSJvZnSGvgmhKnJ+jtrhYBhADmlZVeR5TMB
 yMDwO6hId5UGWuhTIUDJOp5g1WQLWJl0hXcIP23ZuVXG6/yzVGnsktCik w==;
X-CSE-ConnectionGUID: NS7WWN3qSEW7RHoJ8Cbldg==
X-CSE-MsgGUID: tQ7xeCiOQlCLjHQZfPFEAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="75651389"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75651389"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:30:50 -0700
X-CSE-ConnectionGUID: QNn8ncEtTZahI2z97pdD/w==
X-CSE-MsgGUID: kBEF5GkvRcuKrIF/pFoTPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251557507"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:30:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 01:30:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 01:30:50 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 01:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ag1rMCZnK17IVcM8jnkXjKPaNTU35zjFvj4EB7Do7sHKDw9jHdkmCmLqwZ9x3e8ma0lvXW2d06XBxuTEOpZeicvwzhXN+woWzpReh93jAPH6HEnDUeSR1naepJYRw+mcgqhQ1ppY72GQJYB3WGaQJdlt4WiVH+bdke9I69vhYbge38ydpbY4Lc/mjozqZ504JLNYY/60i0lWs5PMAzcGfxEN6XkMMl2bdQ58Bzrg0ty9RItVe43mxeSPiXQswjeGkjizdk5xkyjLSC3/xIM+KU96RRcFBoLR6YLDgTzGMKN9ECGrC2kdlY5JEwmDovHnLvy1NTGzIhHIJbzMbPOtbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eIhxaBsFzSsQRnlv3Rbjw0TMkMUovjBh62+PkjeiDHU=;
 b=Uhyjz6lLqVI22DhtqH03pMwsf6Quy/KGreXO3D75xDqGxpkeb6MH+GpGJ6uw440LlT32UIkXmYOO9tyBwq3qeSHPU71EoOqsIA3x6KRTJqaWiw5Fyn8N+J9p0jlPaJSl9PfMUf6u4TJlC8zB2hms/C3tt2nr/NLPRH+8zViOK1+MX/F5jyhQSQGY+zn1hWVB4V/mf7QAvGZ2huqyWE+s26nb0PeYBcJkQyeYQamVRlrHPeI5Ym8ydEuOhPtoY+JWIWIUYiP2PDkta7u7Lzve6h4Ujp+ASsaxh29WbVEBCuBcWe5dhNdrvjjj5oQdKOYOFjvMpO5Bl47nRcSY0GVNKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 08:30:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 08:30:47 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v4 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Wed, 8 Apr 2026 08:30:33 +0000
Message-ID: <20260408083034.2060372-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260408083034.2060372-1-krzysztof.karas@intel.com>
References: <20260408083034.2060372-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: 8129d65d-c91f-49d2-4a4a-08de95492208
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ekxnIO2LClKHnOsud5P3MGk/qj2rye1QYQ6L8u6JrEiMUe0Nzc4gp9y0CJVqa85g/Kmlo7+iEVs5mW4YHBN9bUtcOVs5WISV+KYaKya3Nu/Oj58rdDS8i9GLFsc4YUaIOGIpdVfTSnDerlPBXBs2H9B8NwihBD7KNj9dU7c7PBxjLT4IQbSjQKclLnlezl/vZJ6omh4Lb+kodCQQuijNctGvP7Ms8RxW1yCn7PhfKIACy5fOBlCiEeiQ888W/PJQA/Jgh0O9xpjV7UW+SwFWARF02B4CQEctp+1rG0mveIcerfbjVmiwusTnlSs3BlJWTDC+GgIq5pW8PXQPcvLzUGQsWJE2UtfjV7flZQBkFPenOTzdtgK8oRS4PtyD1+xJ1DsVB2nKkTLEOeOJdVqWBTS+dqHJWIMtWvtuxCJudd+vbIljZcnbS614dp+Sv7OjaBcLWgnTtXBaNjMtPA+HmuJsePteaEgF3Zt28uPy2kNZY8E2DwTwid7VZjAASMn4Vl4Q4pfZI19UHmkqgo2ocu8UX22RDVCcT9YPmyGVriCZg7eOM+6LkfSr+i572JNeS+/jvEw6Yaxs9Nr2RtGIp0Q2cBamrvPblyR71JZFl8szarNUu2FtgvhY9oT/B4ETnt0S3cqihjnr0k87RkKuAZc9iuZqz4ruegrTkVxQB4MBVmw50veGWTeiByAvuJls
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1POLUyRmbqX9A2gbifS0YE6Rn5lQ0hQyLo3AnaIce75qDOuQVvBw7moPNdld?=
 =?us-ascii?Q?tyfjJODBiKcBXsY84jpHxZUMKqRaKE2MEcHr9oSCBLnm7qb1KWdh/EhK9Xdp?=
 =?us-ascii?Q?I8GSDt5dENUFdYK/Bc4JJqmSUS2j82E9NeKYHFn0OVYBPZON5fKzmwKodeTb?=
 =?us-ascii?Q?R3MLAcwZuhgc6ZANruvd4VkYVb2jkK1AF0udNycTEajBcs6v+PUgLaA9xRSd?=
 =?us-ascii?Q?sarlqvS974Y51ZeFSMcHQLAE7NjicfzRoJpNZaAPMviAnzQL9fo2f9VPBTYA?=
 =?us-ascii?Q?UbLXzSkxmaOfulzdHZO1DzbeRt+6Qtv/xW1RUKJsHTCC3i8Bfxr8RQrF51IF?=
 =?us-ascii?Q?nPpnHGR0E5OlObxuoR2Y3gxcP5LvBYaNABqasC2cR0Qepxom1l1hrJ/I5ewU?=
 =?us-ascii?Q?CXUc8KaTn2PV9HWxQRo1vxPj/uL1VepZ36aX5gPCRWhUhe+oRrAipwgEOqVq?=
 =?us-ascii?Q?L4/27vDfbmP7g/kjdvPc6/coSIf9J8/XcTL2z9XKV0jpwGfwikbBrohM//q5?=
 =?us-ascii?Q?v/bvgCkvYLOYft78aZ+UVWPrOmb2txaXzNMaFKxdc0DR8NIhQhtz1KMfIgJR?=
 =?us-ascii?Q?iZLFVNlYimO6Gi5hBfUEEVMyA1jSeKC3BbURMYO1OCxCQxWR1owaLxMViZtJ?=
 =?us-ascii?Q?2iU+R+Y8CmqZr2I/GaUNg6cDQj1ehfXv3AIRaAcz+weYZf6ALJhtPJOy//05?=
 =?us-ascii?Q?W6ei1SaQAovLES0ugxEwYKxaU/csl0Rsg+ZcTzpDmIY/VXJCtmlPK2p1icqQ?=
 =?us-ascii?Q?MyoysCYDbLP2MgVY96u5HTZyj65THBod/ycxfipqJP3oQ2FMm5qYZUWxzNsL?=
 =?us-ascii?Q?pLBtXMtaVl1IsSdnIe976S+hAXSNxR38LcMSLJIM5UOAJhEHyqkpwj7bEkGT?=
 =?us-ascii?Q?oMFHHFusv1pk41eIctsnIE27/CJp7dWRgHb2M55g8PgPEdsf00XywxT9t5bV?=
 =?us-ascii?Q?GWKyGR+pIy3ApsTRjblRjQ8UbISrGysnI41+RY2gMHExcLR8ZcfDRmrEfDHc?=
 =?us-ascii?Q?VrBr4fonkvWe8R7+IbY5SAUf3bA0ZB9V+eSy76Kb3bHcOhfHTWvxiNrD0xxu?=
 =?us-ascii?Q?VSO18aUyQYcGm92Ez/ru91CDSMY4Pgj1MOYaHxOYvSkEKBhVEgsEAIZl77Tw?=
 =?us-ascii?Q?QsDfpzdZPqqRRSGi3NjDHt1D8KtZBwch7ujeTdsZ+3TdCyzVcv6qY//zgVFF?=
 =?us-ascii?Q?amuKspmwASub3mCQYYxGeOvqVoOnMOvC/Z4ZD0XxrIkKtzKxE3eOrmufX++f?=
 =?us-ascii?Q?zvuttc8CuI4jd/adgZ3RsCoxuGg0nP8ZaZiHqCH/q7BmWRWelJrlXYIFvaIL?=
 =?us-ascii?Q?18HFbhcI3au1pJBM6aqyQWPzacWpVGdwV1yv24NCsuUAmBfenZE9zUC+Tzfe?=
 =?us-ascii?Q?wdDF4BSkZIVxduhvYdTiBVJxZR5qjTIDDGAH8YWmw9ksva3u/NiLxQQbc9CT?=
 =?us-ascii?Q?TkJ/nvfoNUs5J219GaR8M1V9vZnbHVkmvCtqVEJIouWfBNpA6T2jZ6bTpoJ8?=
 =?us-ascii?Q?ZrSf0QqhxoTrCZyefgtygcoMhofGzvGY4/xCB4f3zExQnUCNCnZWuvdsdK84?=
 =?us-ascii?Q?MT17DHhaxIE40RVTjEq+tMF/RWtgHJI7Zr/C6jmpZsmsADzB13JdSQsKsbrq?=
 =?us-ascii?Q?K2tVyBlXl3iaqqM864M8TcZywI+19v6GoGWmaumcoKVxw39KBFUsj+vZJ/sP?=
 =?us-ascii?Q?jVuB3slOUPsXhxZXdHNVvmavlp2o2WY4tlYf8A++QNdV1b8SI7HRKDg6Lhj7?=
 =?us-ascii?Q?J9DX4Y1h3QR1lNUjHOUBXpOU1fzL/Ko=3D?=
X-Exchange-RoutingPolicyChecked: jIfsrI9Lhp61RdxnJtIEdCg5fG5p1o4cdr8dKe2N2PpS8X7Kpta1aYGg5ND4lxxwav/+sJqEGb1JQjP9AnvzY5gS2e3T4yh8m16kNuk4SWDbzjz8RP8QPD/RNhCQMtPiWalAWxlOCoj25mPwXQWZo7LRY2JS8hb9IJthOfrhPxnVotVj1X/2iM1PIwq6NYUjJSk+VEG23znJzNn6aoKMJ6sxwVDigvk8JN21rzjO670epbbjlhXFcLcCPdDCGPD4EBe0gliQ62oaBmgm+IPMAKf3GSYMXgGjoP0u9F9g+PxdhVwLeuMTX0lN7Q7mCpfg9tJzyx1w6ROJWPpbRtmr1A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8129d65d-c91f-49d2-4a4a-08de95492208
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 08:30:47.1043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D3lKmNZCqxRf+f4cbKl1cfjbyetVnzOOQwFGNzJFOzCTZZGpDVYzVTbXrTVupdY3ypzfsxlEcXghzCKxPXe+jsudX/T9ex+AvWGrpyUhWf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4968B3B911B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Migration testing in i915 assumes current task's address space
to allocate new userspace mapping and uses it without
registering real user for that address space in mm_struct.
On single NUMA node setups PCI probe executes in the same
context as userspace process calling the test (i915_selftest
from IGT), but when multiple nodes are available, the PCI code
puts probe into a kernel workqueue. This switches execution in
a kworker, which does not have its own address space in
userspace and must borrow such memory from another process, so
"current->active_mm" is unknown at the start of the test.

It was observed that mm->mm_users would occasionally be 0
or drop to 0 during the test due to short delay between
scheduling and executing work in forked process, which reaped
userspace mappings, further leading to failures upon reading
from userland memory.

Prevent this by adding a PID parameter to a trusted task, so its
mm struct may be used if needed.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthread")
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v2 (Janusz):
 * Reword and shorten commit message to be more precise.
 * Reorder variable declarations to follow upside down christmas
 tree style.

v3 (Andi):
 * Prevent PID and mm leaks.
 * Remove a flag and use mm pointer to determine whether to
 release references to the memory.

v4:
 * Revert !current->mm check. (Janusz, Sebastian)
 * Drop refernce to mm sooner. (Janusz)
 * Ensure kthread_use_mm did its job. (Janusz)

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 51 +++++++++++++++++++
 2 files changed, 52 insertions(+)

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
index 8460f0a70d04..45fe750b799d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -186,6 +186,8 @@ static int __run_selftests(const char *name,
 			   unsigned int count,
 			   void *data)
 {
+	int u_pid_nr = i915_selftest.userspace_pid;
+	struct mm_struct *mm = NULL;
 	int err = 0;
 
 	while (!i915_selftest.random_seed)
@@ -201,6 +203,50 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/**
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm) {
+		struct pid *u_pid;
+		struct task_struct *task;
+
+		if (!u_pid_nr) {
+			pr_warn("No current->mm and no PID provided to safely borrow userspace memory from.\n"
+				"This may lead to switching off tests requiring that for mappings");
+			goto run_tests;
+		}
+
+		u_pid = find_get_pid(u_pid_nr);
+
+		if (!u_pid) {
+			pr_warn("Could not find PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		task = get_pid_task(u_pid, PIDTYPE_PID);
+		put_pid(u_pid);
+		if (!task) {
+			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		mm = get_task_mm(task);
+		put_task_struct(task);
+		if (!mm) {
+			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		kthread_use_mm(mm);
+		mmput_async(mm);
+		if (unlikely(!current->mm)) {
+			pr_warn("Could not set mm as current->mm\n");
+		}
+	}
+
+run_tests:
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
@@ -226,6 +272,9 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm)
+		kthread_unuse_mm(mm);
+
 	return err;
 }
 
@@ -507,6 +556,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.34.1

