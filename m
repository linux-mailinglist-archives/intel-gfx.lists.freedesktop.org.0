Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK5rONz6FmqGzwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:08:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D385E59C2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF4710E80E;
	Wed, 27 May 2026 14:08:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gP800bCw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D5B10E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 14:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779890906; x=1811426906;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Xnm2Vc5uxWbOUB4q1PAuw5/t45Eujfw1CjaKmsgFTtg=;
 b=gP800bCwuQUbMSv5+L7uZwrSCaO895Awcrs4cx68xtWQSOy1tmUIuhJo
 j6qHwGN0xfiZ7tuIL/XUMgDLu2V2umiz25yGAV8BrAA4KQUuq2W1rPGFS
 whTu690qDRzXBkRPy917bkCl8JFCyvbuhtuxS0dorKfmTXCfB72qoisHQ
 gERFvvSzo94T95Wv0YPmKHCIiMCpk2ANLkqMr9zGFjSl5y+h/Mp3GK93y
 JMLWOiUnkai8W/8rvGtgtWzh1j4O7Oe5lwn0xPVCMXGPE/An1m8lXA1XM
 QuXDAnzdW4sByjgeSyfP5Atqsj46iHIdToQfQMad2rhm0GhI132TeUjA1 Q==;
X-CSE-ConnectionGUID: nAVgIllzT0eywullKu0WGA==
X-CSE-MsgGUID: Z0NUlsiSRKqFHtE8pB7R8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="92194323"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="92194323"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:08:22 -0700
X-CSE-ConnectionGUID: cZX3G+eSS/GWBI6PX0fhYw==
X-CSE-MsgGUID: 42SQSivfQv6D78pgv9xYjQ==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:08:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:08:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 07:08:21 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:08:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bYqIRvtToh4t5A225w6mzaLbrPOuT/iDJeOUtETbJnkETMKKSfpLS5mz5IdKAx/iYMujbrh6Jzruenj6IHQwO5Rue+vQeTjcpTF13W/86hRNj3YWgQjYbx2OJ9eqS6bNuuFnE1vfPlUbJVr80x/2Coh6/GdW546mX1WLsALD0K6W+NPdXNUcXSA7f3DgjkZGIyrxS67x7Otiyd124WJ92yJLR/Oi/Ti+ksTOPbHoq32k+yau1+lgZ20aSMeQyd+EJ/GE/l2Pim4oEH589GWZXvlaSoZtfnymC70bvfYs1i8hj7nOzcuhnFkeCkSaCVVrQNhOrIXqGhYoK0cO8CdoaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OTPSWfRHBUAv8E4g6bfS4ggygNLyA+dEstjkuh1jt04=;
 b=NBvf9wUV3kdlrVFKESVt6C+lFF43zLvcxQvaFamtk9rYYWQB1YqiSFdrFB3fclZ9z3dcIjG0zA1uDW6XOHbnbWyhx7qGbqOVXtNdB1P1PMi0fC3nTus6HlJa2YfQ8v2gU2/3xuhU2X8YFjeaHgqpkFMGA2hjIN2BEBXUlc6QJ+/ZJieAPm3ewrjXJm1sQbVBmKXI9EJmI7FEWKQcM2mn/m6MrbWykEmdvooYiNzIxPf87WYHh7PCgn8RFrugONpag30ZV1Vux/06bOWiRuyLBMQqbjqvr/0XoP68I8yoZqcs/s97hpqs44R6AYIq6sXkcJi9V0PHCd+tGOpwmph8Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB8795.namprd11.prod.outlook.com (2603:10b6:806:468::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Wed, 27 May
 2026 14:08:15 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%5]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 14:08:13 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC 0/2] Improve memory management for large object allocations when
 i915/shmem is used with iommu
Date: Wed, 27 May 2026 14:08:02 +0000
Message-ID: <20260527140804.2866189-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7PR01CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::8) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB8795:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a05a142-b3bc-453e-a91e-08debbf96403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: lqErJ6eAXUyOZt0smuQiBhQGaLQRJvMi+BM8siJlBCGUinCo7MqCNnYmPUX4mlq+irdO5V4bYOksnxdJ1gmvqP+tIgiSYb+HmqGAdW3Sdu6qmzZEl5lKpDSMIfeymHxifnxWkIMewCiKSXfncwaqYU1YwscU3b3jdLbvHgac2lJf6dMeGVPKwKIoVbbrfvAhn97hn5Sn+Ph9DwB0ka6ex0DtA51uPYVp1pixj8r6EpF+qHm+FeBnLsl85gC5QXOc3vKWTpnm+/ragAZN6+aJT2Zgkyv3XzBUb4Y96saxqk4J7XK+jJbvVRox9uB9PpxBV9w3DahJDnAB1nDw+9uzvUCfFKCiJO8Z4rZM6dloIsnMScOlTL02x/6qvI6ISL/3vx383gsU2OsWrLKxpuhe89mXEqXrf0ClleziNDMpyd0FFH/9aUE01HM5EPaLVLTKlmQhdrta75Xc7Cp8Y6BqQuF9Nquc/79uPhS3lcx+yunpM2Pgb/xO2IHDjHZCGYoFsZjou+KXClYHNDk84srqEHBTAE70lJH0cZ6ZVYz2N/MRFx073ODYiFPaBaMmDt+xIS8AafP2YZomMsGkHcecK3WPuePbl6lFzzs8kUgruqMDBd4GRgbOh8LnyEAbi3J7Xc9TjXnKaIAXOZdPsKcFmzNVjmRJT4AWb6kjLS1NScCEfuSA0BGNCho1XCo96i4z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h1eTggpaUA03mjNx/T8d2cVApxUDAdHPCKj9gVAAm/3ZGlWo9xD6ZY/0vo11?=
 =?us-ascii?Q?T284arS6bBNA9A6RtwaoEd3JPPN0l5XyDTyUuoDGBGhVQQsCmWbpXFi4GGPo?=
 =?us-ascii?Q?IU0/dwAtgWwS3CcNw98eS74BkkjM38ycrFVPbSVbqT3LKDiy1/qVzfChpP/y?=
 =?us-ascii?Q?ExU4dpvoB2T4ZT2KFwjdEAEN3mlxIPEWi8uHbsPBvBKQxlNlnvoa9bzNfOJX?=
 =?us-ascii?Q?5rp6L9Z2ky4oHovX4xhXBp8UBwSm/OzqKgITWg0SKPfMD+GK1kRwImuxZtZy?=
 =?us-ascii?Q?iy01bClcKpoV4ADM8HGdErWTGMT0yRU/TDucPx+2zHntC8rP4u4QENBrFZtk?=
 =?us-ascii?Q?fCRIBk1WYVjaF2BPrW2DaPcgQydU5Fq5pFQ1wfFsatowrK4p00dVoGtc/S7K?=
 =?us-ascii?Q?oBbF7x2cPbCLjWMUQ59bLhtSyizsMRo/wOXXTL2jgpBwlSiel1WPnwGLLVJY?=
 =?us-ascii?Q?RlqiS1rj9yGCyXVMmqQfnGd59oFZAVX81LaWX1th4ennupTfAUK76CArowwq?=
 =?us-ascii?Q?BJPQhCYdkZ3ZKoVFNYBGVRBAkhqH9ERSaVCazugOX/MW1gnjOzcg0D7XIZFl?=
 =?us-ascii?Q?EOtZ3QQErWYucEJ07Z4DKlI+CIkarnLqHeEf+Y6dgEeAn1ROy/pWGjMp+S5r?=
 =?us-ascii?Q?ltUQ0BQrgqVY/Pfl1wbvhXmIZvCMGF0VO5JuTwNalWbvASPVDFE+u8MRfVNI?=
 =?us-ascii?Q?Yy2kDojEQ5f2wETbkxGTwpgbUMWHKV55gouc4s9Cfsn/hmhC4wmSUYZsLLWu?=
 =?us-ascii?Q?VT9NQpeckOELSNFaXen9OGZs9/t2PG0khHgnVOJB9EQNnvXGxyWyWKyigrVZ?=
 =?us-ascii?Q?kJrUJCF4fQGtezxG+5iqMwBogYRO6wWNig4aRkfBIx/lhAAOXwXwnrNMdI3I?=
 =?us-ascii?Q?zGtKCNm2hbojlWqDaiSuR6MFqNVODsrF7RWyJNOrFTuPvwXJyp5ShubiS7OJ?=
 =?us-ascii?Q?QcW9Qgp5NditSlRk3SiU9bzGq5Gi7y8j5uWoHkyKcI/6bz+ahT7FpF28J7hI?=
 =?us-ascii?Q?aA9wxxHH9fkfvb5jiyxLdzkODZtxf/CiVS16QKw5CtF1utVkj/Ag0rIkWaY+?=
 =?us-ascii?Q?q1UAekcdVzcTFeALdimGShguIRRUbfuCOLAFiKeUUZtuPasZGjBqBu3t88vr?=
 =?us-ascii?Q?jRMB8Wdjo+ABty4tyaIjLB3Ematl0N+vqX1gS0ZraVX3EwlkggnNbgxhm6cX?=
 =?us-ascii?Q?E9TVEImvnud7rkUEyMVItgjcrB85Vy5FebRHOqbxDHSZ8MEtVLOeJT88ARiU?=
 =?us-ascii?Q?m3KkHdzbtFOJkNoCrAiDBqWv84pBJLC5a6obBQqu2w+uzLnT+mY21LRS/pDy?=
 =?us-ascii?Q?cXU5tveJLGbKq1cL4oBqwqofEhGX/gUghIKvL9cImldrXwSSiorruWExRWDW?=
 =?us-ascii?Q?6Ypfu/poMn1uJwSDXSUZZXgfyqRdQkREhaHChsczKelfKjpAIhSwOhBSwfiK?=
 =?us-ascii?Q?mUnsVg8INqWIma5QMSK434OPGTPUxVcG+Szkc6pJihtWTtN7fAZE44tB1raj?=
 =?us-ascii?Q?FCLEN2DkXWQYbfyETETdzlE2caa5WyysrgLASlySp8b/50dayBHlW1s/DGN8?=
 =?us-ascii?Q?pI0BoplYZfthjsu5RrkFfoTyw+Q2GFK215TzDKSM13SUUciiRkWKSeefu6G5?=
 =?us-ascii?Q?k/aQ1vidmnfZZhmt7og5MFckIOGAJS113whMxqvWpdLwiddwGka44QzZ2olM?=
 =?us-ascii?Q?2yrcwJTSpwjrkz4GFsL1MEmYQkL0XdEiPiEmy0PtuP0EXqPpGMKMiU6Xaqfn?=
 =?us-ascii?Q?5tSZfEpDYNj+xjU72hcli0kl8gzG0o0=3D?=
X-Exchange-RoutingPolicyChecked: EGf/QNS8+ex1IO8GMhyACFVWReQ76jOl6tLhi526nzrhjbEy4lD8xF5FI3lNR0cFTsVeDkjCkGekpUiDp7Iy7wQAU6JAu+4+NJ4tKPdQvDsTo5xTAenYkQUK07jrWbiWNzicJqdeNJM5QqbJWGqPGyGjNJHkbyFj0vJwfP0TJ+0uGxV6cImRSsHBBakeEDJf03I43KywSDeY3sSeGaZRwqK0OzXynIcqEMFoSE+zCm/pcXUxmUo8utV7flJC2iM1swgWn78v+lXuvkDx/qobUy8b8PAHjODaykyXu1LZyLQhNThZpfe/VmNqBQUaXcOAAK70sVbzl6NmJbjqd1QjyA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a05a142-b3bc-453e-a91e-08debbf96403
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 14:08:13.5757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yafNzlfHkURA0lRjNc1H5PoSirptITk/56MJdzgVO9YCMxiL3LNeWCqqJdXSe8Ml62dplJQReMrfPK6xxAmcBEVuMvaz+6fnl7x2cF6GmUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8795
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 97D385E59C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

It was observed that allocating large objects via i915 driver
(igt-gpu-tools/tests/gem_exec_big/single) the folios and their
pages were not handled properly leading to buffer corruptions
during relocations.
Furthermore, using iommu driver in this context would leave
residual mappings in memory that could not be released, hogging
available RAM even after the process ended.

Krzysztof Karas (2):
  drm/i915/shmem: Prevent overflows on small segments
  drivers/iommu: Unroll unsuccessful mapping

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c |  2 +-
 drivers/iommu/dma-iommu.c                 | 10 ++++++++--
 2 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.34.1

