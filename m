Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBA09668FD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 20:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56EF410EACA;
	Fri, 30 Aug 2024 18:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcrNBK1F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3473310EACA;
 Fri, 30 Aug 2024 18:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725042919; x=1756578919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=bijXNps0QPv+TfQKvSZB31VvSFDGkqQ/rb8N3cAkCdc=;
 b=hcrNBK1FmbV2bmUhWJ9ZYs4wTeHhRu7nS1ihXxQJe4nul4r/jxGipwwH
 u8uJvhkP9bA4GdXZcJmAY9fMmeCgNbZGttnUQZukJzN+AhLrd0XUqnff+
 DD4i4O1yXm+PrCJSR2+MIMV0YmGBJS/wPLD6S4pmfe1bGuH1dyV3GENCQ
 P59NfG45rop8fRux/kasWiCXn54VG1alj4ABj7iJOpZaVBgI75dq8s/1i
 oEbvDbeTXG9VzQXBRxvK/Oo+lYHn/N5wzUPb8CpdPxq0pbGE4NbLaAe1P
 4rcnP1KRF+5fc3ZYPEeCnQ+lK46m/hK9WPFrABD5b0HzWkkdgbCbUDkVp g==;
X-CSE-ConnectionGUID: sdYjNMhVQOiE5rcRuTmhig==
X-CSE-MsgGUID: EmVSHutqTa+FVR1HGoPZ7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23862461"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="23862461"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 11:35:19 -0700
X-CSE-ConnectionGUID: lflu0tNzTCGBKEvXAXWeYg==
X-CSE-MsgGUID: YmTffnebRTyznENJnuZoyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="64021320"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 11:35:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 11:35:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 11:35:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 11:35:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 11:35:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xwp4w5PhsIIfGHkeFAD5de7cpY3nY7SSbw3KGdIxDV0PHDGDfQYrtzGesTwG7fsz2zA96OUqK4DXbVraomm3l8b/pGA7mLptoQgPuG9mQ9oin+tQmKPC0OvVr2WRxGEKUR/vLe6+UPRfrk7SgvwAFRYMq/8fTVGinGY+ifVDtnEYKMQuAu/2nM1HCZeb/eYYuRyq/R+Wz80SIkvwHgJ5fDTfhDmPF7K5olDKDl8zgU1kC+3beHgfmziOhmn8A1qAfX/OjYMv4DOt1s+HJD7Pkaz0KXpU6sbUw4HkHIMERksBEuboO/KbnbkeQUey4TmQJ4LCxN5iBumR6Y1YR+Zy0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NJ8D/r5I9LCOBbtaN9me5PRJyUKVdGRDBPjESgT/jcs=;
 b=pA3/qOkr9vxQN6KR9T6ENLJa5PVcBSLBZJFb5vreQ17MwQpdWosUS07NuJoHCop1dUiaxyv056EpFbjbjvAQuBVGUvRNtkmS5qauyiN+xxTQeviszx0pAQjaMWlj0CE5thjgUScnePfZzaqUULIqds0VNoGBrnD67+psTN0oBh28qnGhX7nL5ADsG0MjZCIgHbFUTmu6be/NG9lgRlxuzMdwSVvL8lXqupJ4qgQFNyi2RDuZg5VZ3nzhDh9VvQ0hP1z/2y3UlG1qLPjBd03YUnbDx14cjxlVyjVQzHJ0WbGUPgPHZH6Avw+qZrNBcnMJDeiBsCBfHfxU0ccdyRHaJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6465.namprd11.prod.outlook.com (2603:10b6:208:3a7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 18:35:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Fri, 30 Aug 2024
 18:35:15 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: [PATCH 2/2] drm/xe/display: Avoid encoder_suspend at runtime suspend
Date: Fri, 30 Aug 2024 14:35:07 -0400
Message-ID: <20240830183507.298351-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830183507.298351-1-rodrigo.vivi@intel.com>
References: <20240830183507.298351-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0224.namprd03.prod.outlook.com
 (2603:10b6:303:b9::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6465:EE_
X-MS-Office365-Filtering-Correlation-Id: 66f97810-dec7-45ed-5365-08dcc9227d63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ez3PbKtVO9S1JWvYtWWJe5B1agojAmuRcl9wAqwvl0l9xsQXFQlkSeWouLNT?=
 =?us-ascii?Q?/9GtGnzvVniafGAkGro9a55Sb8NqYPQEM0sBTnR42UXI3Cndk+VZ/BxyK0sD?=
 =?us-ascii?Q?Sc/mW6Jy0xdT+OFj5cbP4hzDGDDx8pXkkg/NIzraiswKqDErk0Vjl9eNyboQ?=
 =?us-ascii?Q?a5qFp9QJB8wI8u0TWPlHAaprXtuIyjJbYgePz2sGA6oQ9IpnGEeZe+r0aPkn?=
 =?us-ascii?Q?MemP9gu3TeRosYAmdgWgeEwEBSPXps8fv9oBRjZRZzWhyzSWuxhL/K6BjLOQ?=
 =?us-ascii?Q?mnWqxJSXfSedBK33u0vRWdOGYpn53o98H82SDHLWF2sxf2l4W70+SR0kvVZS?=
 =?us-ascii?Q?k9GfMdKNMlB5P30COrk/3VfehAdTPAYkaP7JhJQCAEoTEmcOYCXQ1j1FqyOU?=
 =?us-ascii?Q?2l7OKQQqye3P1j6hiQSVdwlFEDabetE1oKKpdVfRTyNOEjA6Qj8N1zJ+YT0N?=
 =?us-ascii?Q?GUQ+zcG9gAyxm7RfXILJrKIaCEvgxttwuvzaiTPCXefH71N1HqlwoDjemEKy?=
 =?us-ascii?Q?9htspbKLZtO4lVadEjXniS/niujb3Pr8IrWZ4iTLYyZ4oODq+waDcn9THgpy?=
 =?us-ascii?Q?C8uG9Q4+/zhhLBjCZGsOuVT0Vk9yqu9FHknrzxGynChRPeD31xvPkXeWDS5K?=
 =?us-ascii?Q?MTg8sWpJCV93zovlCrKOspJGRdX9OpKJJwNl7JQHfYXiLBhsWYIyBtx7F/nW?=
 =?us-ascii?Q?ezaLjIe+AFXdB0Vjeq9LWyaens+04Mi1SMLpWkv+WKcaU9JIs7KIjj3D/pPO?=
 =?us-ascii?Q?vHmjqLD1BZQ/6ezYWfMsfVUKQOQw9qPa3MLxx0TOvRwqLzlHjoQJD63wwUya?=
 =?us-ascii?Q?faIvIUimqttLE9ZWCX2Zznbuyyk4ytyasDnZjVF5riDEQAjgUFroKw8lQwzL?=
 =?us-ascii?Q?hjW1HoK2flLRl6PiQljF5EhkczVIfH/5a/Y9WwXuR1wXv9tUNRP3tFEfs/eZ?=
 =?us-ascii?Q?VWJKqgxgZDoTjTNLXgsf7tCgFoHbLPLLbL7qrPoYxN8mJ1vwrM4BT7Kz3WtP?=
 =?us-ascii?Q?7QxH/0QOWv9jVd031iYb93jT7PduFPEntdtmM2jsUyy9hqmOpD9hDJqId6iP?=
 =?us-ascii?Q?63RekFareD+2zP0qF4jheUZLN44Bv5Cs6Ktwh59YBo4hyVPPl/xz/gBjSssj?=
 =?us-ascii?Q?Ju/zhdFrGYYinQFN+ZDplVKbAZbVzjpFcPygfIrqN2dJXMhAhC/P3RgJH5/d?=
 =?us-ascii?Q?I0ozYnf/ovFfVOqFK70cjkMVaDV9wGzNK04zamNKAODjEE0I1P4XtL2IzckT?=
 =?us-ascii?Q?0dKbz2DdfcW81hn/foaHpLBEt23Y8g2Da99G5P85OAv0KHx84bwwlSkfeict?=
 =?us-ascii?Q?V9Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M9jCWUnQpvx1gy6Q5st7gSJ4TpNMTSjL4masaL5hmdhlSgw9Gjvgij171fjn?=
 =?us-ascii?Q?9AP31ZrDpLwddVABxP2LmvVHwmg8DEnyGPk4S5+aDZvTCGUOKpEqgxpJverF?=
 =?us-ascii?Q?qVeit53R1J3c64YiVKYz2E0E9o1BXOmswKggUGLjysUOfn0yWkEWHZ0y7+Ch?=
 =?us-ascii?Q?3U8xIWrfy2lTprejyOv45g3XnYJDVKr9wr6GH4Br6M+gVJdP0X96sRPR8v+g?=
 =?us-ascii?Q?B9M1/8p3BRLYIaftkLAe5mYUrrynpdwBQHoRDT+9PqiwSHwBntFnCxmy5osL?=
 =?us-ascii?Q?vPYORc7VBQPluY9Nd30rqSZG5n/+xzFSoZkDTmUHYb9kfoLuGnKxYhCOAfH2?=
 =?us-ascii?Q?EwglYqKlp1Ggu2JkFbX+07gQMSUugz6OGJbNMTBvLsB/MCSgNQOUfwWpRqwl?=
 =?us-ascii?Q?mCfd/DLbsjOAcqzXZ23GTZAGXZB5FnW86uDxb2C3i+hHmR3zTj2FtFGRPsGH?=
 =?us-ascii?Q?bu45aO+vFtdqase5T8JfhdCDe2auDbW4U706P7TJkZwzVTaDRloTIERe7BGr?=
 =?us-ascii?Q?9HHDh/9PIRjFwqjuQaDxObBzkM2GY2Vi9x5izNO7xfhUURcrvIqxGCKzSYa+?=
 =?us-ascii?Q?Ur6rEfqqtiI+KoP+sSg0JIsWqcrOAZY1wS3+3a1/O8A1Bz9gb0PbGl2wcUwW?=
 =?us-ascii?Q?QfuO7PwkjD3BuDfkMPPovQTs/LWXti0+teE/rRTqim2BaSwk38yyCBbwXlkv?=
 =?us-ascii?Q?V8KK94xAiodQncXp53QMaV/T8zPfeXzigS5WX2RNKLvsL+6JXOBDF24u9j7W?=
 =?us-ascii?Q?2ivfLVhtMJmhNmtUlS1TOKho5uPzxdZu5Ux98TH2pbobVq56GZh98O+LCD+Q?=
 =?us-ascii?Q?4nkDYe05Hz/s7BoDjmr9zeSmthACdtMFceS8dHUcZxViPdjh0cvS5g20r0T6?=
 =?us-ascii?Q?9AWQUJqjuq/ImDrb/6wyzFtbP9QQOwvLWI5Nr2vOaDLfrSNaMyp3jg/YxE3K?=
 =?us-ascii?Q?1835wgbGoqNkj8/I4Hsm+f39U//zqk1GdoFHPRpiVFdubOCBtaWdZzqU0gkW?=
 =?us-ascii?Q?QDJpq+VSzyjds/hFoZPNOyC4d4srAxbOW+denKVvGcCqarUK7fRt5wDHXDnK?=
 =?us-ascii?Q?LuvSz5OinCf0MjU3C6IZyfADXcSX7STxwm4AlNNjoa/bKhs8Xf4ES2k9842X?=
 =?us-ascii?Q?B877wp3L1R2EynSx3/O0BHrG1RzcHn+gGkE68GiEM3+Ser/LvV3xy9h/mXFT?=
 =?us-ascii?Q?9yifQ5tjLie7NFgEr2xM+drFCrWbIpbxpKo5H250v83LKtaePPeOUIrXC2Bv?=
 =?us-ascii?Q?b0g32bOkpGMNDqG5DpWF6TfAIveUHuNXUEtt6M/OyOep60tX7ItGQ+g1Pro7?=
 =?us-ascii?Q?qbncyi/YpHcn1fWsd8k4RkwrJ2pU6UzlcdBNX93oHeAkW4aSJVK0iMkBjTuE?=
 =?us-ascii?Q?wxvOA/kz4XQDgOXdE1hzpB1CuzJAvT6WhKClpe+tsAwKrKVpfqFFBzhNukYI?=
 =?us-ascii?Q?lfkKvUYqi9X+srOW7vCNC6SwFDJTVCYpr5wrpP62EY1J/MWWRntRZ+KPPvkQ?=
 =?us-ascii?Q?sOnB5AHVDI7vGMafN8ExCl5UmxIO30WnzEifBpQEXWv1fvIjHVe9JG9vgCHW?=
 =?us-ascii?Q?rGn+OC1ieTu4rcCCK45IbzgXSieib+dnXqrfZIhW0ztn4JFKUjKPYHctvlDa?=
 =?us-ascii?Q?LA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66f97810-dec7-45ed-5365-08dcc9227d63
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 18:35:15.1639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gb+B5LfrR+NZVwXPKIRCnkjNpo0Rmxthja7Ip/naAdNOprDQ+boRW1CPXHwhnfKqE36ezXiC/pDeHuvtWdbBVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6465
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

Fix circular locking dependency on runtime suspend.

<4> [74.952215] ======================================================
<4> [74.952217] WARNING: possible circular locking dependency detected
<4> [74.952219] 6.10.0-rc7-xe #1 Not tainted
<4> [74.952221] ------------------------------------------------------
<4> [74.952223] kworker/7:1/82 is trying to acquire lock:
<4> [74.952226] ffff888120548488 (&dev->mode_config.mutex){+.+.}-{3:3}, at: drm_modeset_lock_all+0x40/0x1e0 [drm]
<4> [74.952260]
but task is already holding lock:
<4> [74.952262] ffffffffa0ae59c0 (xe_pm_runtime_lockdep_map){+.+.}-{0:0}, at: xe_pm_runtime_suspend+0x2f/0x340 [xe]
<4> [74.952322]
which lock already depends on the new lock.

The commit b1d90a86 ("drm/xe: Use the encoder suspend helper also used
by the i915 driver") didn't do anything wrong. It actually fixed a
critical bug, because the encoder_suspend was never getting actually
called because it was returning if (has_display(xe)) instead of
if (!has_display(xe)). However, this ended up introducing the encoder
suspend calls in the runtime routines as well, causing the circular
locking dependency.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2304
Fixes: b1d90a862c89 ("drm/xe: Use the encoder suspend helper also used by the i915 driver")
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index ae92012253f8..75736faf2a80 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -345,10 +345,10 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
-	if (!runtime && has_display(xe))
+	if (!runtime && has_display(xe)) {
 		intel_display_driver_suspend_access(xe);
-
-	intel_encoder_suspend_all(&xe->display);
+		intel_encoder_suspend_all(&xe->display);
+	}
 
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
 
-- 
2.46.0

