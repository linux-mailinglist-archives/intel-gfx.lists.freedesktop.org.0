Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C418752EF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 16:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA56610E781;
	Thu,  7 Mar 2024 15:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DWiuAY8j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8246D10E781
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 15:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709824634; x=1741360634;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=QXswj0P83dR0yyyTNvfUkjxaan3mTSknniDJJ7nQyAk=;
 b=DWiuAY8jMQhWoMOFmOA3ocbB7ERpRveWZQguobYD61I0uXWuUl+grUJs
 KChKv5K6jwtdAqwvLe1fm2+uOpmAuj8xvLt5VwHPPr5q7KalJopkDk2Pr
 0vZjgq9oCQdEXKriSgIx231+xWGDj/k0pkGrGv4kzSy6Eur5tsRu6vHVK
 WIVjk5McIJJBbMB63unsH68dsX/tJ7U8A5MaXF1RqdRvAxDTTp3gKoPB3
 cQsq3g7jmuRANw+ldQOoviFC4/vsIcnS6sarHwLtZczih0Ht8uFgDbsBm
 /4LxODXTktbfk2HgyevWjoxWyNmlXCVdaxc18Cpc6g9RhmOk+0RWQ8KtA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4618311"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="4618311"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 07:17:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="41041097"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 07:17:13 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 07:17:12 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 07:17:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 07:17:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 07:17:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HskEf1wVuAUwLqvFyFnCoOidRi+8OJt6dZqDtTmkvxArTdZp3+o8lf+qFiugWHWccdjSeBW1Dq4BTuUMh7QnXTXqqb8ia6rK6sOf0Ii+jbTZzDds/OI2kQH2Ic6ZBnMXh/p1pPltOPKwj/b2hVBNzDdvkpYVS/0NfbOtl2kdoGyW5wPcMJ2G9PvRursi32zPdyYYlInNM5QoMRkZwmTuiBXc1Onthke+ZWV6G33Gzp4mwf57OJvzE3hvP6FW/3bl0AF+uv26K3EDOhWVUtuIU0INjijW0u9k8GHXQX6gd2b6cV0iGLCW+OCdDvkGZ4Oj1VJY3Vj8kkxIIFTiV9a5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hbtyge4EF63kcHNXs2RMTL48HKM/WTW7kZkIUIZkgDc=;
 b=HuHJ6cXn3BHulLFn9j851REPqslI1ROf8c3aZYF/i3xIPKlkBJ2iTNRvX+wR6+ikX53+DWcP8ZdX3+8UZlI859YJ7ySr2ULAn+dO5sl30fM6aMPH6DMwxWkiRBAQNEniF+RL5aleXq6adqWM4z53snnHQNJQoB0em47T7bPOUR7uWXC5AYwUvotQFBqhnuLXd09ha7Z6T9Hv/sbNohxDO8PWpJrqhkaCnu+oFCGpolVfxpzMPF2ZvoICvyXvh42DG21m/tmvrduKuc3njL4m2l/8NchKrRZ30Oy2ovB+tm0Hli+ew6xk2QvSB5t+hCg80kvgsl/ICT8fI+bEBRus+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB4885.namprd11.prod.outlook.com (2603:10b6:510:35::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Thu, 7 Mar
 2024 15:17:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 15:17:09 +0000
Resent-From: Rodrigo Vivi <rodrigo.vivi@intel.com>
Resent-Date: Thu, 7 Mar 2024 10:17:06 -0500
Resent-Message-ID: <ZenacujTUK-3tVE1@intel.com>
Resent-To: <intel-gfx@lists.freedesktop.org>
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-xe@lists.freedesktop.org>
CC: <intel-gfx@lists.freexdesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 01/10] drm/i915/display: convert inner wakeref get towards
 get_if_in_use
Date: Wed, 6 Mar 2024 19:15:45 -0500
Message-ID: <20240307001554.162153-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0038.namprd08.prod.outlook.com
 (2603:10b6:a03:117::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7851:EE_|MN0PR11MB6059:EE_|PH0PR11MB4885:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d64e8ee-4b13-4179-aab7-08dc3eb9a862
X-Microsoft-Antispam: BCL:0;
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d46d0f-4436-4107-35a2-08dc3e3bc2ea
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 00:15:57.5918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fioxN0PL2b3287dkZA+LW26jHYNCm7xeiTaJdfi6ovco+7+19OvmdkHpqoDsCaGWx0HchmsftW17c2LM8a0zjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7851
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.5895761
X-MS-Exchange-Processed-By-BccFoldering: 15.20.7362.018
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; auth:0; dest:I;
 ENG:(910001)(944506478)(944626604)(920097)(425001)(930097)(140003); 
X-Microsoft-Antispam-Message-Info: ijGS6Kd0mQIP4vs2THJixNvl1zijPL6z+ba/DDyeGH9wmiMlcKQKmG7/TAdinvoa3qNiw8M2QyBMWwrpfbTjtk/RHBx3eOyEZ/lvh+MqyFOXJrnT9WHOLG/mxZGjcUDG9nWT8Rb3cFzV3hJ8XXySlhLx/shb19RQYuz/hGxwo5P1VdsJLv7Ee/vj/nBLHaZSrDoI0dk3zHMHvvYzTRmBjW/VA8wrydKEaJwYvpvQOcPyHtY0OIYQMpnTr/EYKeYitX8XJUdEwOFjmIrMIcI4R7HX9Pvr9JCnMr+va/q27fjiGzGFtfHlIL0gTEpFB7H2oBjwL6xr9+Yfib/BpSxSJou4W7e3UpCQlAvvXIGwQE/ZC+AYUnqNv9rGniKnD6OMkk4EUscDD2sTbia860DiCw9vOiFe8FzGUQt8l0RJAYcCm9Jf4PlqJ9y5KvJxTAXAKmYqwwpDCmJnWcU+Ysf05LSTSHpYc8Tw/TVvBRLCy2udxo9pYY8nDDx4yTPsVnf2qko95/Ydf9T5kFKc6KaIu7lFs+4qfyLu7hAIl+crBSRfGGRDVrTGyGnvG9KJuDEEw22eUoSuwoZ/Il/yisxChz0624SXSBZew7SFH2Dw3hRyqaVrUFceOnMyuq7J/wgQX+Ew131dL9nAaowsx4MuZABcmPXp2xM4tqqdPFIRACs=
X-TUID: lC8LDnULCUIZ
X-ClientProxiedBy: SJ0PR13CA0166.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 60d46d0f-4436-4107-35a2-08dc3e3bc2ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?biOwPBEfZot3HZ3oirKAhW2bhl8y8TCWbGSJv9bcLr7ad0RtUXa6jCllFSz7?=
 =?us-ascii?Q?8lRw/KxsaWNDA/smFjwfKLI7VUOkj0LqP3GvNQgOkr/07GEeidizCFx6RTNx?=
 =?us-ascii?Q?IkGt0bjOi8ALBOM+W+V5ONc5TKpvlNBmk+hVCttUrTgfuDTNSkSOKIoQkgpe?=
 =?us-ascii?Q?082PisIpiRWCfBn2XdzbPzETbKMSdLtDM7jl7hb25aaJDjNR/YGy7XW8hAF7?=
 =?us-ascii?Q?beSDv2ZafVbx+lH3BJsAfAXjKaPSSCBG9Vxow1D5m4u4bpeAzfMUfHlNkscI?=
 =?us-ascii?Q?WtGXXyq3KLbB4YbsTs9nqU0LgICjUSsGkTQXvRRiy+moBj6D/K6iEWXw+Yms?=
 =?us-ascii?Q?7L1xGjC+5Hb3HwDCM0eIRXfPTdjoVKnHp5aRVezvIeid7IASsvQP/9JlL8Kv?=
 =?us-ascii?Q?qGM1PirxCeJUZLyyuHhg9OxA93U1xxjQex1WZZnQ0CaWhGzsJWAGJMLGD6d3?=
 =?us-ascii?Q?Y044wOWMxrNP1akp3BQN5b5n/cEzGXKQRw9IDU3z/mHPVz8nUNQ08zzRQhih?=
 =?us-ascii?Q?YRAkS+WkS0FSdRnVQ4tF8Xxo9df/zUtPNBdrySw6iYG0DinYmCNcxwzkQuGz?=
 =?us-ascii?Q?Z4L+xF5Bed3b7kq/Uw3QSyKBICcd6qBbX7boYtIzBsfhHke2EFksUxpZPKGN?=
 =?us-ascii?Q?0HZtJHk3piBQNtLD4FGGTrRbXB+LAsc56WMtiauInEd0Kpy/lkLHcx/PuNHz?=
 =?us-ascii?Q?nojtUjqwtVoGFtwZ2Bl6vPwHeFSVuP8eDZJUWK5pAafp04HXINAaEqQR3ijI?=
 =?us-ascii?Q?x2GSv+8//IS3qnNFUgszmuyazBmBJt6/CIRzoH1gBBrR5QO+NTmR/Xd31F24?=
 =?us-ascii?Q?uubssUrF14vBxb+VvwDdurI6KQN1OTwpr5oqMyuthyvEBlFhRHhsua7U6bhR?=
 =?us-ascii?Q?5VAgTc6BCLcxRH3Xh+FMwpSUvSZzIYZFlmJEesxa2xKhHoOO7yJja/UvkB5w?=
 =?us-ascii?Q?kvs5eDwDNSREB2hsh6IlWQZz24byFQcU+CMG5f5p0vte1N0HIa+XsXdQpvN8?=
 =?us-ascii?Q?xP44j4t+QZrAQmIj/Oxzr2zqiKbYHY13wNIOFx1yDFyvDpmqzZNIq12bJ+/d?=
 =?us-ascii?Q?k7wtLp2hz1s/+VpdunbrNFpm6hVEnV3netsxfSJ8hvkeBtgLGEur8XEXk3Td?=
 =?us-ascii?Q?Er2H0gPlYgtRVU8/blBuE6lQZCnk4vk/TtOl+ELWS7uEPYVXbS5bFQhAP5CW?=
 =?us-ascii?Q?aOEN8n+XVD3d4p//tQGB6ByW9eXP6PXVOVEbr/gOcmsy43SWLzGcz1O2pG8o?=
 =?us-ascii?Q?+mSw+tV5bQlKAlaATm6PE98yO4FXyjNZEm231UORFJ2Ty43NWjB7T8ERweQ6?=
 =?us-ascii?Q?YWmHpLiVSUcEycZJ96ZOJB+BoLkedcAFAq8E97a4nJDDob39waEYqCNAOM2q?=
 =?us-ascii?Q?NaRToz6NPtNdrf3nayY2NR+pNwfCwybZtm/u6DRSNARNAmFVeuAJNt8DFwmN?=
 =?us-ascii?Q?oGRVZ4iva6eD52YmcLJCcVKZ2O3eybEfgvevl35lm4a1PG47j9o0B8NocmPJ?=
 =?us-ascii?Q?cNIHa9v8/wJUu+NKBRNsIMYHYl5X7N5rFkGpdu7LAYX1OvqRQzfx8nisHQ7r?=
 =?us-ascii?Q?tbTHxs+nnDDtj8kPbOTIcLL8HTK+m8b7KiBGQkpknxE9ygvCxHQ6JkMaFalO?=
 =?us-ascii?Q?JQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d64e8ee-4b13-4179-aab7-08dc3eb9a862
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 15:17:09.6378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wwRgUf4j5ipPpYi+0etm1YEvqJLwd5aZB+g06wWhVFveXwi5Nbv0x5we5vjc/lkftoOOqlMq2KPSixNSlNPqgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4885
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

This patch brings no functional change. Since at this point of
the code we are already asserting a wakeref was held, it means
that we are with runtime_pm 'in_use' and in practical terms we
are only bumping the pm_runtime usage counter and moving on.

However, xe driver has a lockdep annotation that warned us that
if a sync resume was actually called at this point, we could have
a deadlock because we are inside the power_domains->lock locked
area and the resume would call the irq_reset, which would also
try to get the power_domains->lock.

For this reason, let's convert this call to a safer option and
calm lockdep on.

Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6fd4fa52253a..4c5168a5bbf4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 	 * power well disabling.
 	 */
 	assert_rpm_raw_wakeref_held(rpm);
-	wakeref = intel_runtime_pm_get(rpm);
+	wakeref = intel_runtime_pm_get_if_in_use(rpm);
 
 	for_each_power_domain(domain, mask) {
 		/* Clear before put, so put's sanity check is happy. */
-- 
2.43.2

