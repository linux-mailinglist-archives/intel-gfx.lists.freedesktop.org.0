Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMQPKJuY/WkJgQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:02:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0966C4F371C
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219C310F3C6;
	Fri,  8 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDYPmbtp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC5710F3C6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 08:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778227352; x=1809763352;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=MFP1LFz47TjNe/k10dZbEUAjgArgjUXR1URttWI8UFw=;
 b=KDYPmbtprd0Q/wDhCYfAB0cyHl/7F/DjJMdygGfAYzMD5VuaWnw9x2Tr
 fFZq1GjbBffLmGfXuVQI4BKqyxgAE/zMwSRAl7xU2467+zia/KGHAPdnl
 Y2sLkX6DLuqCflmVWmGmmCgJnTqZCF2vSRu6pTKorpH2zP3mTUW6YPmAh
 LY5XWGwMKhbQzQciYDaPReyQ7Ti5BQtl2kHtfw8ciGLE71FYYhwvahMQu
 MZzt+ORkRs0mfCMoCfB7Xz0+95Kb8RgqYpAsBCjsuDW3EiMEFRs8aoWg8
 SsRtVe5WiGC8PvV+NqvVV3JhF/dFm+3qTmnXYogUgZHdzrwHiiyW9G8uv A==;
X-CSE-ConnectionGUID: lmuR+x96QKmmZdHmm/QGkQ==
X-CSE-MsgGUID: Fwi4fY3vSDSPvMrgfcv2mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="81756038"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81756038"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:02:31 -0700
X-CSE-ConnectionGUID: cQs3UO6+SC2IO6VBmy3Urg==
X-CSE-MsgGUID: vxugS34RRNuhaa4SGndNiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241674957"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:02:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:02:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 01:02:28 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:02:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lxLW3A1NNzgPr1zbUrCTqnnPYF6xD2rlTxenyT6KUkBdXWX9qABubQEdYjzldD6J1kwFetvwpbOlhrJ1/lovnBWgLq3kVyn6O8cvaxX/3Ert5HCrg/uTyv2l3lfJon2IA6vJG/ucjW19SVjfa/cvxZ+BFaN3Ceg5tNkX/pDHqgSK7mx67u7b9Lt92XL5pnYK1tlb56xuGua1ANUgfPH47Lt5FE730znxZARgVA6pLnEbFgA9mlber9aoP2REChPGgPOC40oVGgO27gLQNOBApI2kljHUJDJ2Te9nxhnxMEF8WcOi5goQYlnV1Yh2bYyajiSPQ0ttJhck2CvAPtvnSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UxsOJ2+TQV+YM1L1gkNTlY5Rxd11D3tFfCaN9CIZyZI=;
 b=A8/aTSJr4H0KM5kN0Wd14ettuo3GRfxC4EhUO4HF6ycHFJrygImeDbW9XhM2iriD8ldn3laVoVZN4UdVFWnKJXllihyNTq63KB4zlIjibcWV2tYy8fYnXCf6rpfL/GVA8UF4k/ANSENk8dyJuFpjbSR3XNpSoGa6Zgi1jT9OvNLm8cAIse/KB6RCTwupfslE6oFLqrIpOn4Sa00fwe06V4OmkH8HLfTgIn4vzxiwjTYQXO/+d+olLdMOKvxQUkWAEVXSYKigSIGthWWN9T4Cvpzvf5PUJ+2uz7fEKINQj2qCJZwc+jvnUZeYih83UbJ9ggHk6m/0Rq5ZueqbvrPZqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8149.namprd11.prod.outlook.com (2603:10b6:208:447::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 08:02:26 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 08:02:26 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v10 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Fri, 8 May 2026 08:02:12 +0000
Message-ID: <20260508080214.1979686-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0001.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::10) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: d79e3c31-347f-461f-3c0e-08deacd8240d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: l9xmEEoJbyXAgjnOOUfGZKpSdxm/vwMjCWGf9lRHhss+NwyjwciGTBvS2qp3Uj2jGZbj1V5bYexYlTduL+evMlp5fKcdp2au2BkYyQZai5tCO1FhHTMV1iBlkACwnpDvwV8hvZpA26TvlBpyQU2QRzokzEtBDx3VCIlya+NfN/i64I0i20vf+plxbQeYj+Hkr0PYbr+xidB+hbkSoPp9x89kYo7cTuR++E3O+LBEoT2ROdN55670djuhpR5vCIFgwAHrXEN8L6TvM+zQo/qPuZDGRZx0y02qxl3li8WCSQpsmmthPUa1RxMxW+SF+C73IfZ7HvEX10hq52HXpfvkbsex0PmKD9IQWMTesvqcNTI3aGiK4oTNavHO5aTC++G5kmVY4S7s9hXjpp7MuqR35/WREr7yHV9oQid/8RQX4i0EdmduSeZBsdrvoAnRMY7GfLO+Io2o+9d9d4i4tPXi4lMPX0UDDyE3qFplC30BapawC04fwAYGzwSh8TqMU121SWWoaX5uAw0wbw7UdO3jSVVpgxM4RlfEqm3MCEIsYrH7kYPFvDUoWfq9T6ofNWWVn8Fp3MUPCJ4GLeVTpWvNkxA/w2D6LemSYTpyKMS/TXn5YKvv2MPTTIQt73VIx1CBk+ROAqK7rmwHYSO+2VoyTE3CZyrLPfWB8SSGUTM26AVHvz82TgwPfrvaW0nvX00a
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N2Usw0qJ6+7HJr4y/3ZKsMdEgeViaYUiIXDkiwch5JdvCHfgfZnBtjp0W4ow?=
 =?us-ascii?Q?FbNcWXJNigSizANbWVqIS+oKs1dpJQexnsG7aNg/mi6ww2tWX2AxA9OmS2jw?=
 =?us-ascii?Q?p2XZv8Is3jJhKHWesui9QPTBTcGBWIOUc3gbm7CAqjud05i4EGX2OYK/m7do?=
 =?us-ascii?Q?qWFkUd2Z0IkGqXbdm4dpw8Yh83qz7arQRuiRbr2E0y+eAdpr+kGHsNJoIANt?=
 =?us-ascii?Q?BNYZCb8yjVjJmurA2DZO+2Wh5BRLxPvhd/pqhyswNkdDFBmAxH0qL6qy/jp2?=
 =?us-ascii?Q?YWF9CHAoG9hkP8cYkHD+4wT4SBaaW3Xu8IkDV6vSdgM6DWIw9f3oLtkc8GZr?=
 =?us-ascii?Q?Irb4R7vjyMLjn4GHpfUrwmgtmlfOpbMvaSmd+ZQpSGDf64FKbuhs3oRH2E0R?=
 =?us-ascii?Q?i7bl06zUgNnh30I69vx6nCNIgTuz6JUO8CsJ/3L2FafqSv54NaIm/7TM+CBE?=
 =?us-ascii?Q?ngqN8AJkhnnpTO2SUZmxnd7hKOlvj9CnliSTIdho0tFVYXwYm2stpKzZ8lu+?=
 =?us-ascii?Q?m7KRuA30Qn1XYhZ3yjJrt4C/zPvZFavlFDLzeNzhkoDBRWO3cnwejOV+YZL9?=
 =?us-ascii?Q?stq55nIg0HYv1zfDzTSH9EFu6m1pBFGs0vK/V9sUnbnLZeUVIeaQY5oUVupi?=
 =?us-ascii?Q?Na/WR2h220osEyIpkCA7+my3xg0vvWR+1rejMh5DN4dU4uqMvy4cbUH2M5uV?=
 =?us-ascii?Q?ah8oiyOkRL3ZMtMwkwoPi4V+JQ9rNq5X3ReUfnfe6Wau4FdP+I71Qb/0zDcy?=
 =?us-ascii?Q?XinAMR0Ig7VuIrdfB/e8qhKw1P77Uh7nE8ga56aWTEgNrh9l58OqqsbP7wHe?=
 =?us-ascii?Q?nF6L9ZAwiCRMTVwBh54FQLYHfv+XGvyxzgoqHhfXApRPcZvHlb5sUOz4+yfm?=
 =?us-ascii?Q?zv4I747AsgX2147sbFPnGYcaCP1EibJLQGRnoC08nb4ZBOChA0OTGYnppaD/?=
 =?us-ascii?Q?ZyvRuOtq/9vqu0+HG5oVGCSMYL6/H+n80v7ycVhGK6oKpmHOlpiZuMCdDEp2?=
 =?us-ascii?Q?CnmiLY9H4RE8dWbU6ZuK8kpLw2pW1vGIHT9dkpZlgVzBE0Dj6fLcibwfk/Pr?=
 =?us-ascii?Q?2DiVhx3DRIgPqtEJM8Yr+QVSq6MFS04A9zAXzEyHpd1zKv+PrnbnH2PekPii?=
 =?us-ascii?Q?qBNMK14RiavTJiKc72QC8aWvoBrUSHgu/qgbWfB72aRpub7gHnnEKytuQg4O?=
 =?us-ascii?Q?RVnDL2gLjsQEo7K8UnFFZiFN9YDLykK/m9fs6OxTAQWlm0YvvYgcR1e8Jxjl?=
 =?us-ascii?Q?RySDTH6ZmsbntNfWX0XeTsq7GjieUrc4aTO2UJanwyIyTz2h//gSSzGWXQVp?=
 =?us-ascii?Q?4XcOpPhRcFX1X0LCm9j9PRh88FgYP8c1CqDE3F5ONB/I94BxK1hdQwp1w2mb?=
 =?us-ascii?Q?oMNWa4eInP0fzZzpo4YZtjhdCbqRCodYnFG7MhPZ9yCbaiBZHyKdBzkWngou?=
 =?us-ascii?Q?kcuH2BgW/miKw/yCLauImErcZcmOkQsuiBEplS9InUoHhGJH+74V/8oDW5/r?=
 =?us-ascii?Q?9T0zI3gRDgBMUcjn4z2uwSyi7OHeHMQuIOZ3LyKK3zLeH6wGqRcSckpuZUgh?=
 =?us-ascii?Q?CBPQfjZ4WVboDPHnAj2KsPLO6wtNanmMAnkUVjGXID+1CPuVTpEcmkkNPY6u?=
 =?us-ascii?Q?cf21KefC4+HLFgHu/ZTRYIWjh3RzILbVJs2ImG62uddangH+AWr3e8rqDx7V?=
 =?us-ascii?Q?vg3fM4TdztBNKYAm/HHBlG2ozTxpqXg7cL5g/a+DrC9gwLRYo/OtRwXG7pnp?=
 =?us-ascii?Q?OjKBY/DMxhvY1BcqapYvl0ivYw5z/gA=3D?=
X-Exchange-RoutingPolicyChecked: EZ8a8vuIUHCy6cB/MwN5WjW3YjOVyeRWByWUw+mlrzUbnWpFS2V65r2LYryV1/fj6sGBAqPeES51kpFbvYq6HJS5ZlPYYj7M7pl0QSR+xM9tTYcqQ5XrzM8X9zXVJBxpvqqjNPTiUGMn1Ed1y/W1bre/BRTtQq7RADDES0HIzAZHsO/wa+n8ZDsgnd9mlTWYxDa5O4bQaB41UMu1+sjJZw/eSCYeoEOzNIg355v91t9YVUgKvNZVnYsNkjpY2+fF975+BvIl6R06jmTTt6y93XPlxTxa2oLtHgiAfl7sY0x3L5C/KI2mZ/udZ4bXHE1PveMSXG9mDtyDR9jaNg3qAA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d79e3c31-347f-461f-3c0e-08deacd8240d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 08:02:26.0466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GhOaFKMVFOrzVkb/NVd7lcq7q8WsPrvy2gzcYeIOGc7E2AZS56oWmLVOdqTdXwT9MmmuoCbPC8Sx40dBEHrKbgNKCvUvYL40JC7wNTzm9wk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8149
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
X-Rspamd-Queue-Id: 0966C4F371C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

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

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 16 ++--
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 75 ++++++++++++++++++-
 3 files changed, 83 insertions(+), 9 deletions(-)

-- 
2.34.1

