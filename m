Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDJkOpRQymmb7QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:29:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F640359473
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94CE10E5E7;
	Mon, 30 Mar 2026 10:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HH7Y0yhp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67E310E435
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2026 10:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774866577; x=1806402577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Y5lmnGNA31ACUvOvE1BQof0+BxOy67L9ozgPQUQXlig=;
 b=HH7Y0yhp+WopD9lszCEo1MAD3oIaFY7EgUz5kxEGuu5tKtbW1KVJhwE9
 qid0aCoAnbMXZ/C8qgqz8ELFo8ntuSPmSnTVIlKnqpLbD0OOpYJR/UpcL
 2yej7EKZpKPzAWGC1c6x+LVim+7IjRYw7+EmjHpj0f5n8clAdnsFWrMOT
 yFzKcJ4KrwQxxDDiXcCG6OVa8HgiTWXkYfcJFb3S4FnUiqDwVT8G98Ukt
 bVBOEkfQcvlNbakt/ji93GG70zJCwrUHnvxLYyj92Fuzhvs02PxO4j5NP
 mOSgJAqEEYJRzERdpa09Wjz80x/n+dPkPeC1/q4l/JwSRSMJ/bCCM8hAH w==;
X-CSE-ConnectionGUID: xHiGQT1gTiic+BhgZFXmlw==
X-CSE-MsgGUID: nk7qCPi3ScCc/SAuuI9W9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75743564"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="75743564"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:29:37 -0700
X-CSE-ConnectionGUID: TrO+j1fjQOqefheehWvA1g==
X-CSE-MsgGUID: pD4QhRphTQ+VCkqr8yuewQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="249220121"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:29:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:29:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 03:29:35 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.48)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:29:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f7zQXrXA9cdcjHuLJFnbXfewZu+1xMrbTrrpBWLth9VrXdE5NgFMvrx+lwYbDpl/nkr06Ug1AezhcTqL9ErptRwj+2RRrhfvmiZ6orJ8kGQV/RrDPUq7k3JWlD7aBG/zJIBBexJ7EY7nyPtr7lEX22mrNsQwdT0jWvA6v08H3FcBWTnpn+4wQjKsQB4jo4FuQg5PzfQfGL+sHbuS9f3lGGwlPp7fkxzqGJfwByA2i7ASU1gWA69gMMeslh2SRsEI77la3spadD9gNxAYM0f8SIaZ23nPd4jlB/2M5kYLe9oZFVsKIktU8Zbe9r3i7OgOjJEl5g2qckN0LsBYA10YxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NN+XAVrgttn4DiSkXiRgNV/OurbNX44YOyHDftcRfCQ=;
 b=SwsijZ1TVLxm4K0AAk+Q2Tx1OxNpnQ71nHXQdTbvB6pCXGYK3NkopNLMs1pRMAZ/Kit1xf43TGCciUbs9lYwntsEtp0ufQuEPvx6L9C0vYJ7pjnrWBhWYHMUH5jye01z+lYLLiYU08b6MrzO9hS58+xW0AZkCQ73aEhiJm2rI3MzBeRMHcK35hzBO5trC1Pphn+QLCbT+HG6v9YXGmFvsScQ1AQc0JWlSrgIMDqUCpo/sgZ3HgWlg6DyIbHFd8NENpvEGRG7t/vk1z3peY1vQLcd+9lL0aguEWCydZgU1fIUgsE6IvAGjl0cWRdQkHEhggcZv4G6nYH1VpMTmJfDGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 10:29:29 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 10:29:29 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v2 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Mon, 30 Mar 2026 10:29:16 +0000
Message-ID: <20260330102916.1158786-3-krzysztof.karas@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: c84f616f-daf8-4e06-ffe7-08de8e473927
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: OuEM76L9n0skhkjAyHe1LVRN2ilg6ngczotSwVYV6kkPh+Wrr132B7XrW4PpZ0yq3bfX9y3jYZKPquikPjc25u19rXFVjpzwxV04ioUiah69Ostp3tUd4edCRTh/go4iQE+CdNVmYf30CC5uTSIm6Tz/rBpviBNNPBY4KVSLlbmx7AjGS6gtnTrFp+QQMmkCoBD7UUk5XyOFt433xM4Yz0vX4z7WVhSYZbe7YYvg0GJMRuzIaUip2c7oenl1pflWoTq6pzVBKsibNzf/LSKYSkMIEQbaZZjHPn5BZAinamLTu5nXKFEYUMVkCYJUn1tqrIVUcz/JyYIcfcpmIRVEYz0nUjLX2dcGZgTQgAffaY5iOS6fF1xCYxJZfOpSYHjOhfbBSegnF8El6fH+fcHAfsgWkacIs/fXpq3ZOHiF4HOMJtQ7XohKJ177nwJuTOchuNg18iyS6KrD59+iIFujJCZgmSSCJTSrVnZQaunpbo944twd5LsXmViiu7sfhbUjAp/7OvNOo00JeqB9EfZ23kz13kNz7RfVN06JdFqBXw3wywK+B2dR2JPnapzHXzqKhSli15pI+49DF/pDRrlOB7GxnlRYvpbNMo4dARzLsLU3FG5ifuynRPzPlwxPkbiAN7RUnDWn1QAnWtJHh/NQ2GgITnOt0SxUFUYt8jc187FcJsoUsNjlngcF/WdFuZ6f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WLgCAc6QLVGoTfJTvpZizzQ820LQYD6GkKZFNT+Qbm4HHISWJWZbJZil/z1j?=
 =?us-ascii?Q?GY7BiNBoS8QpVGpiUyRq5ci9nFQGdJB511rrSz/z8eaXJGpWIHrhxQBq2xQW?=
 =?us-ascii?Q?+u8BoWeHyBx1uo+LQ+CEmume5z7si8whKstT6UCEBNR0kP+lxXryh6KWIqum?=
 =?us-ascii?Q?TW3wBTfxuuQa7pbao78ddNFU6EmFyBFzNKyuh6CMGkaKGnve6V7copx3VPUd?=
 =?us-ascii?Q?b/W45DjcSgEjmg6w+iXFzlXbwqs/qc+ta6jjdNwOUOj5sfUaSeEOlz+3DHRj?=
 =?us-ascii?Q?iCM5gB1KjD7diO545XsbrBuq2db4HjRooCZcd7NEG18qrIwADUrBAxKNzBFp?=
 =?us-ascii?Q?/p4EgTppgYVxGupH6wWN7YsUUIOtgRniqoHKWTLhAZzCME9nYIWWRjqCnW94?=
 =?us-ascii?Q?+BSDZ9rUH+Avc66SjHOCWXv8xgmLkILlF03iZkd3hSGkdoirrSjSDM1OKGap?=
 =?us-ascii?Q?YjeR3ymRdHuQPQuGDgVQuwrXjVGFYcZIF+2+yI4Pq9hz0f+4TIXtwFbx7s6x?=
 =?us-ascii?Q?q1vMFPl83rsySKF+mU1UnHoDNa2erLrAW9me46k7UPGhU+pKolB9f8qgUPDN?=
 =?us-ascii?Q?yvCW+PHJws8hGIoXo8uxXrE6ynrN0cjWkt53YAQBgaAJIthv2ebKW1M4ojzR?=
 =?us-ascii?Q?1Gguc53LM15PyrJI7aDjTdFKt9cDv2tOCyCowqV9z+7yCTZ063tAUuXWnqMk?=
 =?us-ascii?Q?P2fYjQTlTCxTGrHvYVyLQd1wZJRTtLR1BSMp0PVYHsWhiazAvuDV0dBC8HGr?=
 =?us-ascii?Q?/ksLhHz9aqAaUgRAeLJsiyY5OhmuDuxZis+VAfdYMhm6m/JO3+7xvklQwS07?=
 =?us-ascii?Q?nvq72WDBbyS0YDewpfuju0x6LaV/M1lL8m8yCDqyGNxLsWHo/dZ5+ToPAiUG?=
 =?us-ascii?Q?t3B3outZwSjH0tCkPjKLIm+3aiCqCDuxvW6lNK8mfT6WAisNdxfo4Ie4jpHC?=
 =?us-ascii?Q?gUsJ29dLs5NlmdAHuJ18jW12QErAsfEXd9+DwP+XSUgOYCBbKq9N5FohDlwW?=
 =?us-ascii?Q?oawulw41xlaEvT8Gungtr3nuOYAYAcsczO4cXr4UxwCyKADGOJDAzRl47UVV?=
 =?us-ascii?Q?nG9pQkn0PPGD6B68YuTNuSLwYfJhMK1f0l6GfqgnbLj/0hrIoeJ41HmL+a78?=
 =?us-ascii?Q?I5ETtNHz/MScaDK9BrksEt+7ybJVROIlg0625nALLZBVsb/I2b54lOm41Zyd?=
 =?us-ascii?Q?p9INiVu8q6GIBsshVNJJ60eJML0woVxbVjkf7Wy/+wGxt1IdzA/C5DdDxrkB?=
 =?us-ascii?Q?EUd24sW8qylSYjcGTv+yYcOyqtcZ8o9AZWNpf0Nxa/9NHJnWqZ7PS2fxvbtl?=
 =?us-ascii?Q?04KqcfX98JWkz78W81m4mOxl3jYSf+HLr2bx66mGYI75PvUUpIo271SByr1x?=
 =?us-ascii?Q?Qfe2exxmnaicIwXuMh26Jd+nwM9w/+kAcZeE9BVA6YheKziCCpAmqolMu+4B?=
 =?us-ascii?Q?hfYxzFwr7tqokh4k5NzLpCUJqkEIhSDcGplx9A/ccVCIPopZ8fnFwANdpl4E?=
 =?us-ascii?Q?00nv0Xzkbg10A0KPyqQLtt7sbHTcds+yrsr6j0i8nbe26wJ3+NrZmCQTwlUx?=
 =?us-ascii?Q?OB4i9501aUC/82FI+nh23NJzOg2eSN1teGxl81BcK2W1pzw526Yi8moLYtXK?=
 =?us-ascii?Q?SZU2jM9/B4n7+SwsrdifO8PsVAThzuyq7eFLEx9N8rEkbVbIou6R/ilvIaLX?=
 =?us-ascii?Q?Z4Va5YxcLVqpcSg5xpmfs+oghZWG6gwvVGCGYiYgie7whhMQKeaWbdyArt/O?=
 =?us-ascii?Q?oiQ/GfZraO2oycMczoD4U40t2xn4L+k=3D?=
X-Exchange-RoutingPolicyChecked: n31ZX3i1zRCnyNrnPvxr0kziIHmZSEmM6Do0FZkiFjxbQNgmOFu5xWX4r2M3hVDc/l2xBtRie7mYQglqQWTi/LhQcDC4NvZbhblZh55AGf4z5vwTZtSi1VdBs7Whag0eCpUOgGJEosOUsXuori8pSIb7ruivC5rWpHyO9rV81xd93bWpMgLpfw2oBKd+WXE7UUa11s/N92OaLSS506EBFJV0cXrzYC81FzSi9jMYsHsSxyMnfEMMv8lTqS4EOmz57JOYWu4/izsQYMe/snxQsyn/nadfyzEC598OdfkMKK7S8rUHTMob/vqUdADuZuqD+3RyYKJZi54hpT9IYXhWfw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c84f616f-daf8-4e06-ffe7-08de8e473927
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 10:29:29.3762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DJsskJ3y/1YPXadRMLZAAhbiIEeWZhoisi/Xfb2ipgMaOSjAfFIvTqFJH2huBZ0xSX4HT4CjVDGEpL3ISSUTyNNzWsdeSJJ0tSnfj5j5ghE=
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
X-Rspamd-Queue-Id: 5F640359473
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

Prevent this by making use of trusted task's mm via
user-provided PID if needed.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthread")
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v2 (Janusz):
 * Reword and shorten commit message to be more precise.
 * Reorder variable declarations to follow upside down christmas
 tree style.

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 14 +++----
 .../gpu/drm/i915/selftests/i915_selftest.c    | 41 +++++++++++++++++++
 2 files changed, 47 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..0752e758b01b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1847,11 +1847,12 @@ static int igt_mmap_revoke(void *arg)
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 {
 	int ret;
-	bool unuse_mm = false;
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_partial_tiling),
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
+	};
+	static const struct i915_subtest vma_tests[] = {
 		SUBTEST(igt_mmap),
 		SUBTEST(igt_mmap_migrate),
 		SUBTEST(igt_mmap_access),
@@ -1859,15 +1860,12 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_gpu),
 	};
 
-	if (!current->mm) {
-		kthread_use_mm(current->active_mm);
-		unuse_mm = true;
-	}
-
 	ret = i915_live_subtests(tests, i915);
+	if (ret)
+		return ret;
 
-	if (unuse_mm)
-		kthread_unuse_mm(current->active_mm);
+	if (current->mm)
+		ret = i915_live_subtests(vma_tests, i915);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index a1ccfde7380a..1f02a847d0e0 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -186,6 +186,9 @@ static int __run_selftests(const char *name,
 			   unsigned int count,
 			   void *data)
 {
+	int u_pid_nr = i915_selftest.userspace_pid;
+	struct mm_struct *mm = NULL;
+	bool unuse_mm = false;
 	int err = 0;
 
 	while (!i915_selftest.random_seed)
@@ -201,6 +204,39 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/**
+	 * If the user passed a valid PID of a userspace task, then we may borrow
+	 * its address space to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm && u_pid_nr) {
+		struct pid *u_pid = find_get_pid(u_pid_nr);
+		struct task_struct *task;
+
+		if (!u_pid) {
+			pr_warn("Could not find PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		task = get_pid_task(u_pid, PIDTYPE_PID);
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
+		if (mmget_not_zero(mm)) {
+			kthread_use_mm(mm);
+			unuse_mm = true;
+		}
+	}
+
+run_tests:
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
@@ -226,6 +262,11 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (unuse_mm) {
+		mmput_async(mm);
+		kthread_unuse_mm(mm);
+	}
+
 	return err;
 }
 
-- 
2.43.0

