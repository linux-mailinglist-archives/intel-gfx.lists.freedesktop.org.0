Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A33B1AF68
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70CB10E613;
	Tue,  5 Aug 2025 07:37:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCjEPfwq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3FA10E610;
 Tue,  5 Aug 2025 07:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379454; x=1785915454;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=atanwCJrI3ENhupOE1hb0PHonvvcouQpfddX4D9hwWI=;
 b=dCjEPfwqaDOKVAbTCU4vrsTrppIF2DRZZGqE2JWPGx7fzDSvLcnHSxgC
 ZtiPKJ68qb012+4K0JHmayH1bcQNe8WrLrssQl5oKhDEkDxk+jDqEB6IK
 MVncx+kk9MgdhAyei6FPblWNpRl4QmuMC4OSCi5Vt7Fcg6J+a3ZGqlvED
 oZf+YbirSgowtWXosTa6rQZZrjulPqhDnhM9vo5i7tVZStFzPeEscjK+g
 OQ2YLhJpEYJTW/+dS3yqboJlRQapIhuF/jiIaXkawa8Hl/42fIigtZMXj
 4cmIvHDHs9UfYGy5ko3TNA+g+blpedAW/1onXqcL3fjQLlyUn0NwxvCLW g==;
X-CSE-ConnectionGUID: aJkOdyCcTguhMDJ1LqlPMQ==
X-CSE-MsgGUID: A/dR7eMOS5C4zbxsnt9fTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469699"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469699"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:34 -0700
X-CSE-ConnectionGUID: l69fxiM+SBy1vQK5mlILvw==
X-CSE-MsgGUID: GXniglcXS2alyfEK6qSgUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080166"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vnMJSkX+CeclvKE4x+qdoSdyKkuYLE8HNu0xDlj4ayTvd9g5XRwJJd0uaJwmTkH737eoXPRns5jHLLF4925TlnbCoFg4ZMyL/capNtW86f8CoDR+pgAY/r74RSKIq6l+aUtV4EUWSC1YeNrdSTiHzZfiO8XgL4s/CA9nhje1bhRB4Sw4VIqEjkEYQfprZxKqbgpI0hA9Uj6c/M5rYKfRkYJeQ+I+AYU2IlSMzj7EM99tQcvNio4Hbpsf4thRMIvtXyHRvrAYXf5VX4WyjS9IucNUEDdBJ54Wl/24JXo0FjPR3KekUOnU8+ZLIuqxpZThKDyQM4w1nrWC1UPkqBCHRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlU8466G6xC0uBIIz1OyMqD0tMpYmKSqLZWKMaAuefc=;
 b=ITtAqztCNbiZHjbgtEbX4EF5k1GorpxkP9JNeZ5jqLuZRPXQ1d3CDdXSe2IxJDWxZUqoEAnvG4kaSPdHISHF1AdXaYCvlQhRzKKqJk5oSHGGjazNvYBsFFBGBPCeSl9MzVgQH4/1Djx1PZSE3dvf7PH7a5I2f8KLAZOfPWoWrZEcy17NK73e0tDJ1voUvZZ7W8OCnbdi9BGwvqbiQd4IEH6ooFyBWuBjwVXA1h05K0egaD5PMDG6VxbiJ2W6hT6mXxXPe4R4DLcRNhvKQPk98UjWs86t6QhC8ARUAkMYrr32nhGr7Iy34rg/kxzg04yEnFUKu4k21suZi/jb4F8FTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:28 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 11/19] drm/i915/tc: Handle pin assignment NONE on all platforms
Date: Tue, 5 Aug 2025 10:36:52 +0300
Message-ID: <20250805073700.642107-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: cbfc373b-9b6f-490f-9357-08ddd3f2edd8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?p+f9fmYuFsizmq4kCuXR4xLmCSzMkY9oN0aQsAdGdiVTJPiwTDt89lIJ85dv?=
 =?us-ascii?Q?sRHL879Eh2DZPZOfgJlYG5b6KJRN1kI6kfJov0nfERW0mBGI3l4//vLwci5B?=
 =?us-ascii?Q?v2pYUcyxUrfLun2z60+olKeSeAwixPihXwqWAoUpK8kgqBHd2aePqlrn5s86?=
 =?us-ascii?Q?8VuMQ3B5+lOEoeHC/Ar63DQyKQ6dd54qNWCAbj8kP5V/H2XrqjzxLkFi9Ihd?=
 =?us-ascii?Q?6DJwxen431PvD4wQMMAyB2XvbXBYkeo1kd4YjXIXJUeCdh62P+VhxdYVtK3y?=
 =?us-ascii?Q?7IKGMUQE0J0R3nY8dR/cbTN3kgbofVA01CJfZjar6tziMYnd+ZfyTJoHULxp?=
 =?us-ascii?Q?bK6aXevMFGKIL37MmHdXrVbQ9YH+L/PdkvQp4OTmtdoKRndTbIIOiXX5r0Rh?=
 =?us-ascii?Q?o4UE/hu8QA2XC923hgXn+JtRdepJdA197p14wVVSvFnkK6NcyTIhmF4/yNnI?=
 =?us-ascii?Q?r//amQMXT8ot5DlOFbTt7a+ilr/FBJPvSkV5fvfFWDfjhRAHeXBZROfNemPA?=
 =?us-ascii?Q?KHb0WWJNwcUez0TpEHm82fbqPPoAoAqFYwZLCA5estQejJASB2lXA2VIy9XR?=
 =?us-ascii?Q?3DXs/BRyDQHQiGe4yhwbpsbhEEWkiHr7aJOkojNbc3RiPm+JB/4reBieUp0l?=
 =?us-ascii?Q?7xGufcqFuwr0a/EK6XHhYlVLu8PwprZRf9aVjhDNyb6gO67ef5dPK0NSHo2Y?=
 =?us-ascii?Q?2KR98yhVt5XVX0NEKj+Nv5tz4qA8611VrvoRVOve1V0HESQxE75KO2GkYB5+?=
 =?us-ascii?Q?9dmBSRag8CXxqhowJbYs7PKa82Y3qOVX+fzMig/sCsqG3N72/wYvGQ7H0Xpj?=
 =?us-ascii?Q?ocEVC3J4SsI8p3aBn9nsF+d3nk/U7MBIwXd1N+l82HbHpR8EFAd4XRpHklpc?=
 =?us-ascii?Q?u6os2/2FcrA2FEh8rMjxwDTBVYIt9WJC/I/N7x5fdaiOAxa5W1p+MxNIF6Ed?=
 =?us-ascii?Q?wUvLHQohsmKOGORPTLUaLeCBv78S4Ita6FntmbrAToDoLJYKuN9plMNYPjnm?=
 =?us-ascii?Q?jcaC0r+0PQ06aypJlR6QDaQJ4DQIRKaQCl909PipYJ50intoSay9IhAnvQN9?=
 =?us-ascii?Q?odUkkE+BXaj4rhgWF4ePtcaHK2fHRM15LiIgHfmZUMAuC+3HqEdTCnTtAU4J?=
 =?us-ascii?Q?+M1fBV0vQ0DaL1s0hey0nipF/YAV5075vPLnxwrfjJp5cmmiBpi7WZw2ayBn?=
 =?us-ascii?Q?NEuV/SRk5eJO+FEwWkXe7Zk0pBi5cvtmjLPzeLZhBsj2IHUy5A6ov2fH5sZh?=
 =?us-ascii?Q?bWw/d8V5EqkulPQKlky+J9RZ34ARjBax5dXPn0V6j1KOq2+JC4j2yokmOMnP?=
 =?us-ascii?Q?mRMArtxV90WNcQpF26sePvFB7PtLr/4LlboFY2ukMgFjb7FCqOHVJOhPba9H?=
 =?us-ascii?Q?rKfJRhHQyV3pEwdpfL/4ahiWdOBxYG1jM6BaR66FLOaWZiMKHBo25S0oNPfj?=
 =?us-ascii?Q?zTFtoccim6w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?khKwxCJ8Jv/IPvrSaGHKuPybu69z03KmiNfWIv7lM49+QwoUHPV6nPhrCU8Y?=
 =?us-ascii?Q?tlgamuehqgOIQguOVQ++UOWT8JlVLLJc/0WqIcZXSOkpMTU0b6EHjWJNObGi?=
 =?us-ascii?Q?Lye9xbaepG76UANzTQVyZw08p70GIYlPVElgRVTHvNkj/SU87zWMvjTAGhPG?=
 =?us-ascii?Q?K2LqwA6Oq9RWi9ZrFiqT7sno6406LjhQNQoVL7ebJIcinwx4AZfn7ZOxi1p5?=
 =?us-ascii?Q?gm2LBnmIPvqOw4Tc10zPRXwtqnD8S5Tu28YT0IduWJjKbPQm3yhkQGz3JEA2?=
 =?us-ascii?Q?MNTNJgtn7I8qpQvcVqTItUY1mStBnb5G5cjaPB6MR3gjJs4MECzSLUa/ZL6O?=
 =?us-ascii?Q?4AWROthiVmNTPCSlyff+KTu2cs1eeMXfPIKIv/5U0ZhNHepY+GRCBsuN18k7?=
 =?us-ascii?Q?sBeQvR992yVX2Y+uVcKsjStZ+xVkhTbpC3LMUDPHbSEzArURGEzQopCiY1x4?=
 =?us-ascii?Q?rFJ1JdcfQzTM3pKSyE52zz5JinEhccfG8Jw4k0dJphanic0umEfhmvvbknR9?=
 =?us-ascii?Q?CsIO5mM0VgnknwWXcSUmkFr+uYFDqbnbCvVLDWYI2GoBROYVYxq68Y6PLgz1?=
 =?us-ascii?Q?P6yWTd+Cwpo8oShz7oyIRELIjsvzWNeuzHqXr6sy1DWHk2Epg/hU3oPlExM9?=
 =?us-ascii?Q?ab3mtx4GbL/WUpY5ydT8zg6uPUfUAGSbJiIlZ+7JJ6E33wOuNICarzUhPDS3?=
 =?us-ascii?Q?yEI8nS3agZqxziOcn4TSMMzw0wIrbyqBptgd5taIPDXM9Az/fe3f8U+ykayy?=
 =?us-ascii?Q?sq5qmZ3xO8gb7TP9I3tSzJchkvaufi3qBw/2rxnCRh/xZ2+mqHJra4hVTQJV?=
 =?us-ascii?Q?718+RJvvIlAhgcw+G2JwZA7OUdmcjoLfUauW2DWmH9WAUiixKHgI2DbkdYVR?=
 =?us-ascii?Q?lL5ivc9YrJ9BZhvz3TW9UXW2igxQoVKunJE4tvy7S3NOXjwuRXCWKfFzA4kl?=
 =?us-ascii?Q?cvG4RhXlj/yctdMhG94R/zIXVKJiT/zDofD9QzsF4dBF1V9mtDj0iAA67b/8?=
 =?us-ascii?Q?U4kbqbkyFZpZKyyUE2f+dS2H71vaYlgX6bx11JzlBjI183AMyeE7v11r0t1a?=
 =?us-ascii?Q?9rEFaijnSZ897eQpM6JtZaHISIKA+Z4IS/FHKaeUFDpXSG9yJVdV+GeMZofn?=
 =?us-ascii?Q?z+HDA78jGcSE81O+w7E8MH4SEf3okoyd+Y2EzmEJJUqCN4tf5qOVK5nVLgkk?=
 =?us-ascii?Q?De3qwyzDYZRFq66mWbIwqi7Zmb7QvyvXzkDFNVM37/6MBY6FPVRL59d0LNxr?=
 =?us-ascii?Q?cQ6k1pf34GRyiKwonSJKVJYlShDbB95IbCHMHfSnQswr5E6tpblG2GhMe7ff?=
 =?us-ascii?Q?xKvmNdWJXfdVJXn4SbrGFFC7nuRTZfWmR/qOYZT8kQmtbsW+xQlgyDfGG2Lx?=
 =?us-ascii?Q?f9sCAFfiNRjE8p1X99ofiJneqHTZ8F2zYFNxOy0UBvQTPGlFW8TlqNw5Ve5V?=
 =?us-ascii?Q?YR8ztEhVYdM2zoVxaJhP/ZI2rMyMqbMeWvjK1+8i2CDreP2/sCv2168asE5y?=
 =?us-ascii?Q?SM7Oc/oJ44EQim92KdeOnuT/Mx26qbyY/UII6k3XFTVWIX8Al8Y/wSMD2f0o?=
 =?us-ascii?Q?HY9paJdFRCZsBgmV59CPt1AZTiWgzO/G4x61ggc7dDke589Sc/Sa9Y65iu+O?=
 =?us-ascii?Q?iaFxapaNv9qXw2IF/nKAjSXBQN1K9HpNAKsTzk0tohcu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbfc373b-9b6f-490f-9357-08ddd3f2edd8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:28.8431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bmn9DeDzCxfQCazjGpyUJansmKC9YX25HqiX4+K1S616RgrRKCAy9SwfKHq2dbUEFiEAJSUDFUFyk5Jwjt73/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

For consistency, handle pin assignment NONE on all platforms similarly
to LNL+. On earlier platforms the driver doesn't actually see this pin
assignment - as it's not valid on a connected DP-alt PHY - however it's
a valid HW setting even on those platforms, for instance in legacy mode.
Handle this pin assignment on earlier platforms as well, so that the way
to query the pin assignment can be unified by a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 05df252640f46..dcadbf7b3d40d 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -334,6 +334,8 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	pin_assignment = intel_tc_port_get_pin_assignment(dig_port);
 
 	switch (pin_assignment) {
+	case INTEL_TC_PIN_ASSIGNMENT_NONE:
+		return 0;
 	default:
 		MISSING_CASE(pin_assignment);
 		fallthrough;
-- 
2.49.1

