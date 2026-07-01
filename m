Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id THNZKqrvRGpc3goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:44:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 495B76EC527
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:44:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=c42u7KKY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5AE910E363;
	Wed,  1 Jul 2026 10:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376FC10E33D;
 Wed,  1 Jul 2026 10:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782902695; x=1814438695;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=v73j2sl7qeCHmo2+/ljzqACHIXjJVLUxvYGgvk7LETI=;
 b=c42u7KKYLI43i6i1b3vdoDoeoPA+mHt8f1KGSyR2nwrg63UGkbDoRpx3
 cBwbW6o9B/vHTDDVw+YumBknFm6Vwovrv9V1ajun75zCtI3/jCtomCCD0
 /V921ziko1AfidswbEcUykBHYROi36MeZwzeFkdG52Qey28nxIqofZKtW
 Y0qy2ZA6ojzUvKw+EnaJjTBukcqdh4PoPgEkSLpCzINpfNvP5URjTBPv4
 bTb/Io2q1lhYThDrk56Bxf/llwjgAeXHGrbgwp/+/gIjI4+gHH0GWmayC
 3xPyXqEDC1lJFBZguYno9Hclx5EyQ/yDaH7dChwT28rw+vDa02cpzIjeA A==;
X-CSE-ConnectionGUID: b0Jvn/aoQ5WBQUBAV7vqag==
X-CSE-MsgGUID: eSBGx6gxRZWXd3wdhkH0bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="109179360"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="109179360"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:52 -0700
X-CSE-ConnectionGUID: gRHYytdZQfCrpr3n7zIbgQ==
X-CSE-MsgGUID: Ib6nmo6dRXad53V9Rym2sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249169588"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 03:44:52 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jgNlxsDgD7CSDap2ur7YxLBkDBxxdq3Kuwk7VE1VcUS6pZ5CAq1rSZGi4hn8F9m7jMDlyFx1NzE9WwS+5nVdNT0v2ICIlvEnso/89FI0S5smxz80Y4aa7fjemwxcSiShuO1HCnRwqROD/tPXzV1Rx3nkGfynGM6OQboRPpjh0WW0QK+cKTp9FkwlbBcPobbFa2+70tk3OvYrlrSlOAoD/4Md8agi2DFxA/XA+KE8FPVOI0Uyc1gNiWDcSPkFoJcMYMLaxyESieB5sZJJ6TfwMuKiC/TJzItgeXhSfM9Lp+ywg2JjHU13qu+eypeYu+L0MYNZVM/7wpvCnTaJCJx1ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wn6+sbkcWMkevazY0pt88Yt9s4UrSFYfXfD8uOYjcXk=;
 b=yBnMHUP0qvgxeVXZnSZUCRq8CLUtSyvJI2gYvNuK6kMiEK1orzg6YRew+dkhYpHVm8ikEIOM5M3lk3ZEibEj37yA0wub+gfw51bamBSzBgjmxnw7Ki7vMn3+6wzaHT5lwsW2hvomp7W7QsUzfbuFtw/Ils9a1/vhC4i++L2XN7HL2UFHWNBAeGr4LilWAP5mtTrpCuKlJ6TKArXrXl0ajscZ7oAfB6xydYvaYGG4dMDZiVR0kg5JzhGyN+COBMchQUIFaqPdI7TfRyvJ3xspABKevWXLybCfHeBGJtlUubMvALp81UodSJTMyFU5YUZ4CYyYI/yuNU9tOcrpWJt6pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 10:44:46 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 10:44:46 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 0/3] drivers: Improve memory management for large object
 allocations when i915/shmem is used with iommu
Date: Wed, 1 Jul 2026 10:44:34 +0000
Message-ID: <20260701104437.236979-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0087.eurprd04.prod.outlook.com
 (2603:10a6:10:232::32) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH7PR11MB5796:EE_
X-MS-Office365-Filtering-Correlation-Id: b6cbc656-8b27-4506-b78e-08ded75dc492
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|18002099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: RsA+wPv0FxquY9EV2wf27/m38avHCj1/oc3YGtb5izrulcV3YT/GeIbA5bXdguWtkPc5QhXZYRQKuaZhDoo1Q7rmgpdexNA0XpSde/ZScTVBuYqau27ewg2QnkuMvZj6XmTHUUuGGZ0pvzzs/HXmOx6/yP5tY7PdlF7FKiD6ntVga0OeLTwaCG4vzZoUvLSk8bb6xDdmTy7JOWXp+k2JJpNJcuBvVn0Zr8/pj6cDeiSt6YQWBqhFU1TvjNnYYjn2XzvTWkcsY5on0yFnhPj/scNNCUv6PKg4NEohXVJ67tnYSacG0pmdmtMXMsFJmwdTCai7AWp9Lx9d+hJYflnqOeopizvXA2FaSRxyWdk0ibhigErKpwlCcIkl2yzJKDP5WV6Fg4BusQttz3V1S3j6eTYxhpnakD2YtTtLWLx7SL8XkcPnKi+L9L1k0phcx4IlpLnGBeTTgKrr/MosgO8JJwgEXZiZMbGygmEuhESoq7IrUxney+LeJadMZcFYxa6LLgk93gckJOYlQ/IcE0Bda9hKRyH2Sx1q/5hR5mf0d8PVTwj+LQcWjP1QbtVhEhjjk8l9vPVMfyHUxyus/uf45UOHQLa+Q8Y04JXraqnWOWlsmZ1XHKkTD5KMF4MkQ3zvaYFxvgDpRN5S11Eq43/h/yIDHwKRMZGev7fOXTtsfdY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(18002099003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fd2UmOCNf+WmP13MCYOm8AG3UfeVTxjyLcyXzOyA9LyYQvg98Q/EpQU6rvEL?=
 =?us-ascii?Q?dpPV/AOeHQBHfj6C4UUdvKfzrrGSO/TUc/V9UIk308a5OelSkfwL84AMMMoF?=
 =?us-ascii?Q?/wgq3EE0/a/rlysdoDZeuOkOSaBRTBjdD4i/xtIDmIJTOYDSuBYb7ik+9MfF?=
 =?us-ascii?Q?W+eNwuxXUChj61BoFewEP6JPeEnBBCXWHZihmsHCC+Vz+3A7Al5a09A+sdvL?=
 =?us-ascii?Q?jgE7SlDJLhSHuMcE3+NdrEym7ySAS2X/p8ClVM1PaMtEGozSbL+JMDIOIVUw?=
 =?us-ascii?Q?gLRj4BAUBxd0cIpJ8tH8qU81Np1c0uL2ABOsH0EfftzWVjpiV/5AMdUCI9Ws?=
 =?us-ascii?Q?nXANTa91kj1Hq+nBFjIcWsv0b674Tupo8nNKfA+z7vI5ZQky+OyZRa2HEkZ+?=
 =?us-ascii?Q?yjmn3CZWoDSW8wHP3tgr/BRZV3RQMCVAJxhQFX9m9mjzNKXDupElGYyZoV5x?=
 =?us-ascii?Q?8i6RyXZuBLEyejbTEoLWoq/ZX+bYKoGbufKmnKO/ujR/r+zW0AsCt531V3Jf?=
 =?us-ascii?Q?a4ALtGEJrEVMloYIMd2peSU9Ba4FpDYpigMKoN9g/GkIx9jYyGJY1rK1SF6e?=
 =?us-ascii?Q?2zaKkNifPfYmGBX/18yc4XwSn37uML4dUx20CIfMf1quz8h93xEg7XfqXK96?=
 =?us-ascii?Q?vYpT15wyfI1Evn9sGMwQ2LlGGUKwZuoGt1D5Wvp81uFRrb/hhJ4Ylacmqb6u?=
 =?us-ascii?Q?nqm8zHeetzjOqOlEbC//NomazLG2+ewQQUciJN9lnc47ZdSBAru5tSylIW4a?=
 =?us-ascii?Q?sqmUb8uCwvu9NSGjdkZz6jvEQ/lLm+HkAus9QCWXhNabttIDZ8UJHFwJDoUk?=
 =?us-ascii?Q?xsr1oumfR/65XZs7aBmK3PEaZGWWEU0+FaDbjdsOwtD0tliGW65d7Fteh/XI?=
 =?us-ascii?Q?CCPi5AAfvRPg171bI2Z+vL6wYbZICdpthYwAdudlxJKgGBiRlphLT0h7Ltsk?=
 =?us-ascii?Q?chKpnVcHaaLP3NzpR3lfHWJa8kJN79/ucTDNBknhb2v61n4D2lnuDB6k/FRW?=
 =?us-ascii?Q?wJk+cUlwz+1GLGoX/5p27emoaSMc5VjlF0OUFoIYskYhwGcH8i7dgH8GHF+P?=
 =?us-ascii?Q?x+QmvwsCO+AaNCjznJWSd+kvqM3g+TTVD/6gHrcfiZpFz3QDQTdyx7hIfqBq?=
 =?us-ascii?Q?Kc2TIRPv1nzqAxaogCa1iWd2tJfmsUzsPpWxwKpWGafkP7ZSPjuRd56DENzC?=
 =?us-ascii?Q?j6gfHs3oZT08HxTTYcsN2tHkUK7H60lk17r8wWijf/sGcGx9E4YnzhCHbmb7?=
 =?us-ascii?Q?nRpmWdN96CDCtvJWT/JZZ3KCHqlQyhSbf86mtE0LDhxRvxosZAlOHtznhFJp?=
 =?us-ascii?Q?A3ANJ4MdwDWndcyAa6XNe44+V7iIIcAzdNP0k7kVFpuLaGm/b+9FTbSGtIL/?=
 =?us-ascii?Q?X4mmBUKhBHX78jA9zx0MC8+0tKS3yhDZacc0m7I3yosnzWsFKAYIdo5EWK36?=
 =?us-ascii?Q?tQzmmRRntUjRTV9S9YZyLDM2ngN7S4aGEp87JXBBKWz4QN/WvU9hhrCsazLx?=
 =?us-ascii?Q?J43T5uSFCo85cOeYeamuucSlYxJuKEvKSYrXSzXpsMJgsvv/iIHql+PVxiKo?=
 =?us-ascii?Q?3jYgVXjKSsZ1mI/W0P3Si8dk/TaaD2FU1G1djoOsgX6e1yDc9XTzThCJ2os6?=
 =?us-ascii?Q?Hkk0047KeaGuu2alBk8lNE+Z5F/wwJaC6F+t4bAFqjJxCGB119AxDgL1VTii?=
 =?us-ascii?Q?H4JrYMWpaNrUGu+cvyribPt38mYnK1MYhJE3LPoGmiHPlFXke9fu5s/6SDLS?=
 =?us-ascii?Q?nd/ChT3NrwXMpCIPqSq8NlqvH7YtZpM=3D?=
X-Exchange-RoutingPolicyChecked: kRPZ5icPc4RfDnPXGEnhkyF7NAJtetqr4D6GKnbnDEU+3FLtl4VULol5byDGZSUptPqGfl/RK6pPix8Yeeyq1d8OcOwTIlnVwQiJgWSqvRBz24MqJ5zjt45lFOkSERvkAQdr+iKq2w34WGRbVwyR2m3010KD0XJqzryIVScRjHsAF6H85coiFpmrTY5U8tB+WsbjuVOcMW5OimkXEzSUCRkC+5QqgwJ+6uGUZqT45MgLoH4FjfbIwR78/R71LvSciQgrTYS+cCcEEXk33uOOvqbA1wsjf3Krae+jD7yYt3vl/hdD5Ca96m2zH4SShp8Qols1DE5gJ2CYjATOQCjsrw==
X-MS-Exchange-CrossTenant-Network-Message-Id: b6cbc656-8b27-4506-b78e-08ded75dc492
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 10:44:46.7272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c5+6XLmBGcJHAKF8veDZ2jFW1OzCdhpL4ePH7SVlrKiRKGujOeII9fdLSASuKbEWa+DKGUJMP+ge43zew4RHYd2mVpZCpVnkJODuTdQKx5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,intel.com:from_mime];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 495B76EC527

It was observed that allocating large objects via i915 driver
(igt-gpu-tools/tests/gem_exec_big/single) the folios and their
pages were not handled properly leading to buffer corruptions
during relocations.
Furthermore, using iommu driver in this context would leave
residual mappings in memory that could not be released, hogging
available RAM even after the process ended.

Krzysztof Karas (3):
  drm/i915/gem: split shared memory allocation table logic
  drm/i915/shmem: Count mapped pages in a folio
  drivers/iommu: Catch scatterlist length overflows

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 191 +++++++++++++---------
 drivers/iommu/dma-iommu.c                 |  14 +-
 2 files changed, 129 insertions(+), 76 deletions(-)

-- 
2.34.1

