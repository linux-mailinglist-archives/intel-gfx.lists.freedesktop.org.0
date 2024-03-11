Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3478788D9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12969112C28;
	Mon, 11 Mar 2024 19:23:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVT7HLBj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C4C5112C2C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185023; x=1741721023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vv30FoXXjVLOHbZ8hKYLNKiV/gUMxgvqznVoHaPWC2E=;
 b=mVT7HLBjiFqCohVIatOBI9LvNxg4zhvXqnqKd0n9jNa+qSvEhV+le04M
 TMnuhZevvZfGrVpT4BPpwutw/Y4sdmJDNCsp2/9qXDAzTvnGoJe6XCdar
 D3c/A4rPUHQvjfnERMar4mki1SHWXrZgvFXmScBJb4qm9jvU8j69VUAkA
 qkrj+WmPkPtC9VOv5smQDyAt4xu2mWsyBZjmKGszRhWY6s+61i2DuE+iY
 OtHyfn+gETop9Nxop8qwbgr/mN16CqQaEPTqjFA9aG9Cl1zKP+tyhLLLI
 KNbKQabGT1w+ckxmPHp8zzSNR3qKF6EXzooONXfJ0Kkmm6oIH8lvTXba8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627116"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627116"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344386"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jlKHUAq1iGrTsEiIkLRiwxfJB4bAVpGihQgxe9qNxv/v7i2FCH+UlwoLXwMlyfp2KzaRkUlR3Qsi9i3BKU6j7mQpx1Zw9eG8tCfN7e3ZhWMpvTCFwO5Uw9aFquZwcjRtZsA1befAO86SS+iSZC4OqyZHRQ58B824FnjOmRtdBQ9JUElFPV6Ayc4KikNnT+8Z/yXKq+DJZbk9Yc870/q8RLDafVE0jbU5YJ3PfR+JIyjLvKCqfn8mXDHElyyih7TJ7IL5lqIC9eYiEPkRriZQEKyQiFDgNbYVJDF+PgvJM4h40+TJkFplqk+BnLn1lSmYs4TiwFTGQzAXphKfiIyU3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jkzYfd0BbikAreL81H4WV+Fi2c8UMbZFY1NYMAvyzEE=;
 b=NNGq8/KZ5t/ASZA95tEtYrHHex515xmJ7fURHchutbAxd2KPUYhLY9pJMeMhoshGjNNy9yGgkVkNgpLc0nuB3pjhLwzxJytzciYSSod2CbN/gsf8X0yQvTQ6k+Qd70RzJHimrUvpJNNUaQuuXHxV0C4qYJudTTnoyXh2fLEoka6ljre8GsEPMLVhmLIM+PfDJvss9r9PeY/TbzsjQy6DKarL8DX1IWWFW0okB+uJYnn7+JrqcSWpJRVhFyF1XuYiSR88x/KsqBnxs7XoH7rHz0VhzXjL8t9TsKjpDcOSkobAm5V4MA8pz1+7ct8KUR6JOhFaV+2c8tDDs1ZpjgVo5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:23:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:38 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 10/11] drm/xe: Ensure all the inner access are using the
 _noresume variant
Date: Mon, 11 Mar 2024 15:23:02 -0400
Message-ID: <20240311192303.33961-10-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0033.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d47df6f-cb14-4e48-c88e-08dc4200c0ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F801nBmG0uKkmlU8NQkjc24+/4Fpa0RQGQpMyT0ch0u2a47xl2APU3sc8FG7Jevsc13Xp4JaVnSxvOYowip8aSZJmGRDu05V/wIVaxJLAZZISa6D/O9JyBpGpaKsv6GESSE/3ciyc4X782oQ6TMHjCaPg5CGt6bZVv/VaiNtzEda9KBrNYOYft80oQNxbpNfoX5TmuOIlmUsFrFjjxioPXKq1wUJF/Aa+Cu01znAhNYrfK5JO5M+TCBvn+ttPzb4uVkWd21XaHVuIT+4D2QClONWwMfZHHBCtUZLmukiBB++9TQDD8u/+cNkCASIUkV8vQfLqU6US8xaNZvWmcLz7qyoTi8NbtBHOrb0pg8jSPq7LGvQs3rHsHmnA/8FTJXJe8yOFcHMLRWezO10Vq+/gQJTn1i4Y8kaKJKVhLIbm3jj4AgJEjFPIG6kwu2ESd1vUDJzZoSo6FBPfOm3Bs7j9wV/tjOzFIALRgYksj0N8xudL4h2gZnDvB0flVvY7QonsWEidysz9rrqUVBYb76d0GSLx+MwsZoYrdX2//UHOY919w1xpl2/EajC97y4ZngKxzmYJAmhQHzvEFOabzAuLO+6kQrmXy9n67FU9QhaRJAxdIjyvVofOA8BXjDjdvWEf6CjvpkO95oxiwDMG4PP4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?664EMgunQJmLfpZynAcXThWjqwOAgMmXrlGQeKPO75uc7F28WPPAR73+4cRQ?=
 =?us-ascii?Q?sZxhOvcx3/qlP51juVFsWsRewcXJPxOpTUwrBIXRpqRpORJzP9tE5GvrwRj+?=
 =?us-ascii?Q?DhTcST/qEUovRIaLaFeiDqGnYKbtU6nwMC3iwJo4jaRIztt0Jypl6lDucT5c?=
 =?us-ascii?Q?muEA5onGgbZFsuRvXN6fnCnQxqmy+bNkOnCH8xpjhoX3yCvv/v+tP86+87Gh?=
 =?us-ascii?Q?FCTop7nbBSHWpU9LnbiBZjzthzAbtv8z3CWoCiCTTI21bZFYAbUuvlmOipi1?=
 =?us-ascii?Q?45EUP0zHQiWlD84VVLEtf8Jgs+s2g3+ycPioH4/a8szTv/lD2pUhERXRKNEg?=
 =?us-ascii?Q?sBpdXMOxGA/z7bjpXKSSb+PVQKzcvclECg19dKv3Kpww+dLlloXs5Oq+asXt?=
 =?us-ascii?Q?E4Lr6hO5owpAFWgZfONaqXtXHDUYIBBC/R6aX6acPT+bpwJdUVogvp+0f/UO?=
 =?us-ascii?Q?5fxfwP4ircWKW5NRY9o5ZQ4QZyYnmueSqn+5wiUSR4vAczqbdV8XT625bxMG?=
 =?us-ascii?Q?WnV2nxlS0y3ec/0sHOU3/GbWr57F2RJwAq2QIcU248T9O1nslls8iZaX+O/b?=
 =?us-ascii?Q?Y5PhKD3qd+vtheLVY9+Mjb7pEU/9/Q3+Zbtmi/OnAW2ZTaTNeqNEPph/WzuX?=
 =?us-ascii?Q?Oeo2aHAeYD0jon+tlRPeljZQG/J/9zkpBS758cOXN/uDNDSuxhKPrLksO7Cq?=
 =?us-ascii?Q?0Pc1sdgiX/eTxhOjk/rW4EAj6JaDYggy/x/vltCZ/SjJfYQOaD/e0giQJu+w?=
 =?us-ascii?Q?fmxC1PEcqydHoqxwe6/gsIz3itcvXHVhkkmw8VQss/XuXtilKlu36FycAd+7?=
 =?us-ascii?Q?n489058TA2RqJw3xe4jkHfuce9OJ6BJ7Tb1FSuSIDvu4Bap1kBaUu3FzC9iL?=
 =?us-ascii?Q?MP7ej7TZSUMXEgPdkmQ5+w+8ieliyHK18AbA2MmoCh1rJFYLrw0CoNHD8B6B?=
 =?us-ascii?Q?Ccoy2GUOHt1UO/HBqzUWnXyT+A8qYA6JBZj0hmul++ib30w84sXTa1O/Wrva?=
 =?us-ascii?Q?R36+kexSl95Lobo9TnzQpF7Mby5quDKeUTUmKuW+uZam6O39E1cSjMqE500h?=
 =?us-ascii?Q?ipGRbM/7WBL3QWl7YX7UqUxSSC/NIxtI/aPxGvrjfiJKC6K3Rk0zR+0ft4RO?=
 =?us-ascii?Q?ZTle22VnHqTW5eRuspPRBfHXG6gevMp2oQ05++nAMrGwH2xl/g7EdBi8LSz6?=
 =?us-ascii?Q?HrZF+PMDwLkVVJtQ6tXGIJNw9f/Tm+GjJG1CIM3wOFw/ZmOY1qxZmdGw4L5F?=
 =?us-ascii?Q?u6rHmPXlxJZ9QBvYb5Cqk0cSXHVd6S6q9HlXRyRMixutUQpQB2SKlCX2nF3g?=
 =?us-ascii?Q?4OXoBHuV3W68YVxmLJeZCdUAYmCvZ6M2R8lZ0DCLrIZ3l8k7DEG9Cx54y8Vl?=
 =?us-ascii?Q?o722JVBxWDpI0NCJV6G7nwbgoikWa5g+pkPTV1oWEdV14vRGll9/jrlZWleN?=
 =?us-ascii?Q?u4L+HuzgNIQCYWGJUIIHvzLeihnA8lIU8t+96O8MswnkVBI4iMCYMKRdyXHB?=
 =?us-ascii?Q?RJEuSpge7PynZhCHZpbywQ6oPu2CYh1LCknt0hVxZx5mqu8QSNG1lg4QU6zo?=
 =?us-ascii?Q?i8KqG83LbpFvk18VPxMuCBb1USpJXfRrXh6t/6C20FIYjAyqxKDsx9EpeDep?=
 =?us-ascii?Q?tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d47df6f-cb14-4e48-c88e-08dc4200c0ee
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:38.5964 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mydLxSYQ0egya2Epc7D6RGYion9x5uf78T1gbl8/jAAHY/U5pjVrxXX6NPVZYRDxhzAKtckpp380kRn6w08z6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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

At this point mem_access references should be only used as inner
points of the execution and a get with synchronous resume previously
called at an outer point.

So, before killing mem_acces in favor of direct accsess, let's
ensure that we first convert them towards the new _noresume
variant that will WARN us if no inner caller happened.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 6c7850dd70b5..58815e9bf242 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -671,7 +671,7 @@ void xe_device_mem_access_get(struct xe_device *xe)
 	if (xe_pm_read_callback_task(xe) == current)
 		return;
 
-	xe_pm_runtime_get(xe);
+	xe_pm_runtime_get_noresume(xe);
 	ref = atomic_inc_return(&xe->mem_access.ref);
 
 	xe_assert(xe, ref != S32_MAX);
-- 
2.44.0

