Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EtnMKk182kUygEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:57:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF4E4A11F0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF71310E112;
	Thu, 30 Apr 2026 10:57:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGmbpjqr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF5710E112
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 10:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777546661; x=1809082661;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=hki3sP/gU0agJtEHDqUv10KsvWzFglWeaxKXspYxnRk=;
 b=hGmbpjqrbMA3jLd1O5HkLxjrkXUEed0d2qdxk0uMTVcHGqdmuO5+wJxQ
 nDRxaTdMaaKEU3mYnlKsFw2xqbwkcUInQTLTtgbtTFXLEMX5oOMLbcYUC
 ytt1cxy/oJR3dLaU7n1Lg8arh9P/5nZ5pdtCoQxl/OiW9EWKWhgmkilGC
 sUwiRtWty/3q/t35bOM+9HCxuqahN2BP98hoycYbdUOjVubWBqxV6caBw
 kSgugm3+pot5rHZTq6PI/UW2lYGT0kWs1Wt5rSLnZelrKjfajhy/nTrfx
 8Nc2LAXzHGSFvTgy+Qbyd4o71gr6jLftlk63+auQDTXd9Yh8CCDih9YLW A==;
X-CSE-ConnectionGUID: n+0fTEy9RkqMYrEDEtqXjQ==
X-CSE-MsgGUID: Up9bsq+fQbyWQNgomG4txA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89952842"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="89952842"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:57:41 -0700
X-CSE-ConnectionGUID: 8V10xxAeQKCRxbIrRcTOUQ==
X-CSE-MsgGUID: Ez9LJIkoRZ6IJfRep1PiRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="264921828"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:57:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:57:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 03:57:39 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.19)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:57:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d2/nBTZPzpvIcqGro3GckXzyIOgfNJNqhXbP1ojjcRjURY9K1LbXyRPVNCdMDdOT+ttkbeHanRsBdz1BEIPtgL9wmKRTYDyRElYH9wenkANvesRlcBwhBPicb9riFP+SYnXMmaM9vtNa+QdzZ1CUYvBH6IH4YkAsyjKR+L67uzdOA8T3CP6F3vzfpesQR/onEf0YEI4vqhUk28uLcJnyh4Ach/lUqmzkXIPkI2tuDFT4Ga85gH6J0aTqxAr7Cq8P7ziOw9anxTnVtbkQx5vVra80QkGQ1/Do5EaLk3vSzqub/0Nk8m82zt39+sONkCKYNcSxUUCAGbkEa1jwYnsWPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJOHuKtOtZ1uo3k3eLF9RhoLK7glW1D5u43cR18tHhg=;
 b=ao/RPAgTSU0v7vZdjw1v6/uoO3sP8aBgPnj0QqoJPg3WkhuS9LmIsaFx6cvH/v69lmaWgmuu9NZ4CZdM38w9LSx5M6Usn15U5zgMWpbyuiEgeQV4NS8PUEBHZEz1F+s6LwTsAhmcYJXlB0Ud5PzbijnDkeFjgMs++Cra7kgmxe0VtYUnnTMS/18DlYdrC+lXyGBB0RpaETSX3mhF1wUdYodKUgdD5RhBq9QmuJIUJQZwX238ZRisWKiW4m0bsBuIJbg7PvVEA+CX6eL9cSS1alD1aN0fVty9ykAbB17hZhDRanrm3i44NR1zoN+8oDMyrM7FwmL8ksylyXMvlva6kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.21; Thu, 30 Apr
 2026 10:57:36 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9870.013; Thu, 30 Apr 2026
 10:57:36 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v8 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Thu, 30 Apr 2026 10:57:22 +0000
Message-ID: <20260430105724.1590552-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7696:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b551904-074f-42d0-88a8-08dea6a74986
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: +Y9S4sd+w6X32A2cA7JsDic5wZ/wuGj/JIED1kIJDyEVrj74bvavyjQSKkPuupCVaokerT0Y9b8uCgqRVmVbF7jsvVq2XT19+6YQuvbCpTbWULfGgEYsau9OLbFHJBM60tVf/CMbi2bvhiQ+KZJ1CMd+xYqLnhw23zXbM+k1dXwl7n8PoNnSlxuqXTIyjaIBZlVoJ69BopcS3vOQmNiPs/JXRVSaVIsCp6VwCjtMLOylbvX+HwURRRRKexZXyHOC5pvaEAAeK2eP9W3e2UODpi7NdCGEZrl7DFCyDtWzJPTXu3I4dvgncChID4OjSXCdYtHCMKgSqHY8v/Moy6EwDV1LR40tWuygV1j9UHmEBzK1XQzr0jCmc5bKflT7TOi/mWzV/PS++UsiHsxG1i/fmEGv3m6tn4ozDkb6HC1Wvr35jC0hoVW1rgrL6tTGgk+kv1wvB9WiCAeL7nzqDiTS+cmjoizxtzBqCLzk+ODdKJH6L9JOWvK5BY/oPAfzqjPFFlkyUNBF6X+uYnbnhEMvlczrOD2nNuFuZ85stOvXwZVI6ZtY69DS3k2QK6h/rYYbUSXzxTvceNyoCcaaIRcC1oQNkoA5RHXYgJO4fU9Rwsmm9dWaWV9RZV6jXr1di7drDWzcvl6l9lyvO8A4l98EVSNOYzFvB4XypluZzjY2v/XqgxjS8w+bZ92qRQcI/i2s5wwleawHRdrt2ZtD7hd4EwPgrUR3FiRwTdb4bQ0x8vo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5cdmg51uXPHDIPE+7QH1gOhurfFOeOUNVPYukThX69LnMVeCydcoH1Y+uCDr?=
 =?us-ascii?Q?DolonJD8w55pv5HrpM2kuA4eCCe8vC33xtJoYNXft7D9fqmOFWWhMZAp7O6g?=
 =?us-ascii?Q?Lz8fhA3TbOaKwkXobqo0tnw7T67zJA8JuZ+Q+irzUahYXGB8RxHW2D00QTwT?=
 =?us-ascii?Q?ijoc7FR5o29W3+fD/ydI2MBFTYlBdkINWs/d7xJ9tAspiQObmHZr/37VhC7b?=
 =?us-ascii?Q?qmw+dZpmBEMMtDlCMVivtEjTUh6AZGFL3EJTlVmG4Cv2KX/tX5r0jNYDeYyC?=
 =?us-ascii?Q?GpmjTB5qr+yA3Nj8lhvrBUghsbBta549tNoFljXn5FmkddD1Fsti77KQddoe?=
 =?us-ascii?Q?7aPXINWXe4p1yIbEvbup/Ja2oE3qz3ErSJxhigjt4ln2TXZQ0yfvB1igSrPs?=
 =?us-ascii?Q?yYb9FUVjoiD7NTA6tNjNpu9PacjgXI/ASViGxEiC4QyGZZrKVHrO8zGqTiTk?=
 =?us-ascii?Q?089sgvAVvh5wsYnYuMgBhrPoshj/ZC01/2GdYXh8i/CZvmz7qt3XdJtUYlie?=
 =?us-ascii?Q?DzprIS275yON8Uya5m9bUy5zfJYTCY14mV3jnRLpYnSNXwqfLDmvS6NAU95o?=
 =?us-ascii?Q?xGxZmpgdXs9+BnnkBkudQOI3yffjVmxxL8m6swuvgyuhU4JL9GMH0RLwiLuk?=
 =?us-ascii?Q?BkkcLXTkF50iDwD44JO4u7R/syQy3wR3jHD/01ok4Gne0jowIRgzbyB7AAyF?=
 =?us-ascii?Q?IxfSwiu5+kFd1eSIrER9orEcB2/pPmEsMJbNjGf3Fc7mcGI3HCUjRFFWl3Ts?=
 =?us-ascii?Q?7sfi5ctO/hQVnAvGyIxwa1MdtUYixJU4WCRCq14IkgoKYgoTwcj+pK4Ri8c2?=
 =?us-ascii?Q?06IkFls/hyhSjIpm8BbyRFbF3UkB5Jlb3Jv1CGv63myUMUeS2q9skUM1Ccsh?=
 =?us-ascii?Q?X3bPs0mF84u5XAd1H2bf1ZqOy9RYk/y6W8V37UQ2NXZsEoWgHoC5w349skKc?=
 =?us-ascii?Q?I1CynZcSHuw3LXuvYHGlFy2zGWWktmBxl+WFg34UdaNJzGY1+vMejkp/oQkU?=
 =?us-ascii?Q?LQEn7iQSfUNkVPJhQL5L/xddrc6vNw95pYKq5xy0F96uxeKV71b6IIXIROS6?=
 =?us-ascii?Q?BWJ4CNRH7Gkbhe30kxLkiNjoqcFmtj0Q6SwjAg7QcFqN0ireew68YypKXoWS?=
 =?us-ascii?Q?OMn/nl/1Mg/9JuaKgR/OD7yHq4YeLBSCj23qg+CBBQJ3GoqozcQhbN+v1SXD?=
 =?us-ascii?Q?9veako+dQEsMcq6iy5hitA3dIQbC3L0QLo3JwtifRlW++D2Ux/lq1/Gx1UoC?=
 =?us-ascii?Q?kJ8oDGvCLfmqWuMu76g0JNgZ7MZV5AfplNw5Rz2KF3RcArcoKQ4KWx91P9QY?=
 =?us-ascii?Q?cLexd17F3QvCK6AalaqtUM/8VaThH5JMywupKuhy8xxBaJ0kFnyJjCG2uSY8?=
 =?us-ascii?Q?jw10CGvSl/Y+K+5tjmdGg3Bv4Y5Pt6vjbknhrJ7s2fA7WrZ16cf7h/mMACS7?=
 =?us-ascii?Q?9g4BmA7k4tOHvcMC3eRx/weM901SGzsGVU0Ze4t46IPcXRxAnLqCAPitTN93?=
 =?us-ascii?Q?lmhTxbA5vuWI6M0IuLO9627MMfI7Jwh29jdhHuUaeM/wXZGfc+KI2TwdloKo?=
 =?us-ascii?Q?iweeU2q7aYhqavbJPXHiXO8AyWKpMrnDG5p8KHlKGBcZ8pYTlAQMMstChnlR?=
 =?us-ascii?Q?30fAdZHjcvTDu+6yhpGtcfxvQcM4bqwy5f+pP7fPj/M3bf0OjfQKzlGRnxts?=
 =?us-ascii?Q?gtwPsJOrc682IUlgxD80Fj43O3bc6sCVQFvNmY8PBTGo0ClIHhsfT8qFNLzv?=
 =?us-ascii?Q?PJaqIh5Wfmd1d12THpTqdY82mWrESmk=3D?=
X-Exchange-RoutingPolicyChecked: LyEEP7vtpU+vXeS0MnuGZONjtlwEgALf6bTzdwZMkJl5G8O40cbMokrnEX2SGSHJgFk4bHMrV6GD8prA09C1/A65QvsmgPmXOY/K/RTg/MTAVzLoZU3gr1bZXVYnmiY0kQrnIwmtt67XcsHLomtx4ZopbGYBHyhEWgJ1tA1AyQJGznYvHqsuKg0Z+2Zv2cUrlA4xHIdCpqH0OHf4n+Z/NW1nc3K2ygL7AwfwQgbfK6xwtiCDwrCZ9uAZJsyUDM+og5w8jHm1ZQE6xIz1sgZsBAJhlGyzgtzPwI1G7ORiGA89W36Ka02zzLezORwUlermiJOJYuVKWiP6d/iywhePzA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b551904-074f-42d0-88a8-08dea6a74986
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 10:57:35.9734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g6KU7L8I35BRNdOLsq7FD+SMPO1aKR5nK5cDEPyFLDUBG+viLX90Vn3CpPTt8SDIkM1RhydWCc1HIP+tzWzCG2dgB2eszIQPyjVwGgXZggk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
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
X-Rspamd-Queue-Id: 1BF4E4A11F0
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Test-with: 20260330102400.1157658-1-krzysztof.karas@intel.com

Currently, i915 selftests use unknown process's address space to
perform mappings to userspace memory. This is problematic,
because there is no control over lifetime of the memory of such
task, so the test would occasionally borrow memory scheduled for
or in the middle of a cleanup causing SIGBUS errors.

Utilize user-provided PID of running userspace process to
perfofm mapping in a safe environment.

Krzysztof Karas (2):
  drm/i915/selftests: Prevent userspace mapping invalidation
  drm/i915/selftests: Run vma tests only if current->mm is present

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 16 +++---
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 53 ++++++++++++++++++-
 3 files changed, 61 insertions(+), 9 deletions(-)

-- 
2.34.1

