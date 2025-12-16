Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E1BCC05BE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 01:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89A610E173;
	Tue, 16 Dec 2025 00:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ae7dpIg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6510010E173
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 00:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765845749; x=1797381749;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6bBJB+ZQdp8TwvyEUDe+9+3OuwgXMOpBP140EHClJVM=;
 b=Ae7dpIg4U4MUFR/vofRBmjd6iRkXXL/XNJ2YDSDPiqaYeVDa38Eaa+hc
 sOSL0Frd0zpgu2nyKbHP06VcYhdzod1VFzsjqa4426jQRig9AzIl7xs+K
 12MmCoh/2wEleZCuEsZ5rwNXGrzfG/xck7J4B9USWqwJUqK1puvnicFJY
 zBnG0y6KYjHW6owLz9S9AgdcUwr6EsI8ARC5tD7Lm7tH2Me/r7+WmXBzV
 p3ob4nrddUUe1Pb2031Lx85aPmr1uJ2EwMTqfI8c+Ss5CTf8eP9mugGr/
 o9DqfN3EW4Di5TYp2L/JDNbiLXywAlUKvdNj3xeETVqi+jcIp3HWDRuhP Q==;
X-CSE-ConnectionGUID: pW1YG0DnR8+ERqg7rO18GQ==
X-CSE-MsgGUID: 2ChZ+fRhQFW5VDL1XUWTug==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85169905"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="85169905"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 16:42:29 -0800
X-CSE-ConnectionGUID: P0fWilj4QYWX/4HipITL+Q==
X-CSE-MsgGUID: WhJiitN4RR6K7pb673soxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198682760"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 16:42:28 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 16:42:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 16:42:27 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 16:42:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k0JeMuvT6JpMx3XC6S9MaF+ct274kGRdfvr8wc1CnywCPfGxgJq78ZpyILMFVAEeNwJ2JYSoPQyzQNw/WNKsVRinbOfkJ6F4otKm6AXNbm3CSUozyYx7+it/Xpg3kvyRCAJf95XleB5uTKVpEvP4b4MEOqbJ8oHPxeWQcHWZKcMGR3TIkC4+9aG73Bmr/9tuyl6Jbh1YPtz28qqrE6xE/KfoTd7sGBuTnaCRNLTyFH0qMkkZgdYK7cvL9cVqKzpjY2x7V3k6JGzKJxjxK8jRLiv6EtMS7X3XJVTy8oEjCKZCiecwx3fYzTmopZZKNRu2IXWIotA1kmVoofIj5kMl5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ItdUIWkb3+mzM7Gq6xNbpyMWsh+bk4U9uz2OEyjCC2E=;
 b=vRamiATlqm75ZmaR7VVU9qR2fyW3xaJlE8rEeSPfy10OtQe2mX6xuYz+lrBcj9xtorwqLT0svATd1g4oN+8h4cVq22zfEI/KVk7b26VxrI90oZwQul6eOZTyvT0PZiw0WWnrSPWqhtFOK8h52Csvz+qAy6dcwnOgIOypLUCGkOXpw4zh7EpUxa1id/5CVah06zf9scvkUwrqGPShUfAl8SLRZykR3ikI5ZJKCzUOAjzpq1jHYos7hCohvRDBWBD/VA6aWFDbJuHpTtzqdU6HI983fBtDQ3BQcVCLp5jKC7MeSPE+slnnu4Z91jAuGaV5iyA2EGM0qrkzHhswJekBeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB7523.namprd11.prod.outlook.com (2603:10b6:510:280::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 00:42:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 00:42:25 +0000
Date: Mon, 15 Dec 2025 16:42:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jia Yao <jia.yao@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Alex Zuo <alex.zuo@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>, Xin Wang <x.wang@intel.com>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dg2: Update workaround 22013059131
Message-ID: <20251216004222.GH4164497@mdroper-desk1.amr.corp.intel.com>
References: <20251216000221.3496541-1-jia.yao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251216000221.3496541-1-jia.yao@intel.com>
X-ClientProxiedBy: SJ0PR03CA0368.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB7523:EE_
X-MS-Office365-Filtering-Correlation-Id: ff58ec71-841f-42ef-816f-08de3c3bfb4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tS/GFO3gIkX7gC3z8+Wy6M1ZNCwh3umhmAC72WEjRJT/rwWufsu6yxmESrnR?=
 =?us-ascii?Q?En4ZjMZZ4wNzyoI9AHa9uvqcXtJ0uOKGo/NfhcUpjDT6UTB3KazxOs8Wxo0d?=
 =?us-ascii?Q?rVvOmN/72dNErFVrzaD7xEyZsSvoMxh0UqDnHp3JimdlHjFdEnCsOsQsIlbD?=
 =?us-ascii?Q?2YvARqUOMLOi2ML3s34LmVimSwayI5VzQ4uZI55GKNMX5ayccZ5slkjaZ0A+?=
 =?us-ascii?Q?ZgNvNZd4z90f3cEb4/Glwjiba/zYaSEVMqHALSBR9wvDfdR7mkO5UTlDXCOA?=
 =?us-ascii?Q?O8qDnf7/QHag52kTCJp5BEhO7+RuTZWSxHVNklgzg3zm3rsBScXsBVOBqM5H?=
 =?us-ascii?Q?jo1Of63zVOobiZXjrKqp+uyPBR1uvZmpb9rWQ8RsjmgQUs9x2yc7fb0WQgfH?=
 =?us-ascii?Q?N7/ANvrMlZCVOOSToX8nlONvXD4+8iq2nrbA4CYZwLIZPMz/VgJtX5etAvF8?=
 =?us-ascii?Q?vW+MnTajJRb52GD4Ri+nuHz2pjlZL7tXiFNZ4c8EtWW+LJ1cwnBgQGEu++5u?=
 =?us-ascii?Q?65OYuS+5ix3QNq9tVORBrGoKi6qk9kOG0ohzSsRWXYpJTEFLbx7beyFLX+56?=
 =?us-ascii?Q?erJeBgCisY0cgn1xEmV1RB4FRRt31uKiUMGnVaQjGmkxJThqNTmaeZvBTmuP?=
 =?us-ascii?Q?+DFOELH1EEuB6J8m1xs3c3UltD2RarHRK8Ek11dlT58lIFFiq2JQIdbSmtWf?=
 =?us-ascii?Q?HUj4r6VW4odzDIL6Br/5CNtnfBRk0SvPvWAT8lxKdjgOBdKp5iVi7ep/PCJi?=
 =?us-ascii?Q?DsCwJxRbNFNKoIUZJBWE9rBy5Rxsaxg9wf/QbFgkp9wYdQwb1h1sYQ3vMzw6?=
 =?us-ascii?Q?vWawPaCM0S7TzrOvY8K6/tZKmzv9Bo1z7CFcXGgCoMy9+GjqA31gx5k+x9z+?=
 =?us-ascii?Q?xVJ/ZUR7DyLWad+wZ5U7QZDQJS87s1CiFDdG+gc/GKQU6z1h8biSmPYdozvG?=
 =?us-ascii?Q?6oFoH1QxxNiQOxGxQJNW83vYjo1TDDBT0YgqKL9YIonGuTUcbEdjzOq9TK6L?=
 =?us-ascii?Q?Yvaxpp60lxwiibL1NP30O4mwxQMr+dW2dmktKqTdsEkd9MBB4bIqgEpIaF8h?=
 =?us-ascii?Q?uGXtHSKRNuCOUETbqpZY4OtWEUC93Jy5B5VkZPNV8PuReIcJMjj0idaV1r9p?=
 =?us-ascii?Q?fvvXtMnKv/mVbps7SxOprC5PgDU6SNXIbo5eFdkTUzSbTk3EdFEMBnu5E/83?=
 =?us-ascii?Q?UMqyVM3yeytR66mGMNv0P0gK/EcQ9993IF5cJf9iO3Ka5c4KinCOjwTldB7p?=
 =?us-ascii?Q?QjilCW7sbO0vQW2ItaFtW8IoreofMK4UQ0t0IrfJPJVcmuGk5EoF6wdDQua9?=
 =?us-ascii?Q?JE+EUdeRJwpHTqxWINZAwqZSvZdM/3HB7U+eioSaqi1kzekYD8f9oUHC6L24?=
 =?us-ascii?Q?SHmESqNLZTtG1EwRkZLnPsFOR6Z1SYn5aU1D+Hj8Xh5zT9dCm8ulAEMGdEpR?=
 =?us-ascii?Q?JFOitEur40Sg0lsv3XEsfRGIlEbJvuKL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bg0NktTpGu6OCsT+5eVAAqgZCXzP4mnpo34GgTchV4eBW7PjMUmXpIPXw5SA?=
 =?us-ascii?Q?ZIGH1JhSGhe6w1GpORCU59yKHnLOhKI3Ml7+8jvsibKM4vCqyuJoYwlgmvDC?=
 =?us-ascii?Q?7ms8wFcWfCQo+iwwQSeCjpWXXkIbYV0BQPjst7/cTLxhtGWInc4JLAPhK5tj?=
 =?us-ascii?Q?UpctK8t+vuVwB4glwyYcRbClhuhq+hRYOX5q4IY3HJ3krHh8Ulv1MakwrOi5?=
 =?us-ascii?Q?ORj949hXXi/45M5Aana6aw29gxE1Djwsn3ow0Zl38Ld0tRKC24OLtIkgihfi?=
 =?us-ascii?Q?t6Db9HVQKv5vOtDfeAYVYA3HCBetCbB/2gA+bjsgBkHWdtJJX1yFWK4AMa6a?=
 =?us-ascii?Q?hurgv2sirFGwbu//roDRS9WREzPs3mrE+M5onbo56rNua+s5vb5tru+sXTRG?=
 =?us-ascii?Q?GTnDyFv3rKppdtf32D/omESiDsl1ZGO90vbRSrkSsLpMtPvMBiDWGpb06W7e?=
 =?us-ascii?Q?GcWb2OJbCUo7fAPOsLtKJjUT8yNByUsd+wooBL1keJXuRkegijO+/5L0SJOq?=
 =?us-ascii?Q?5ZZaUGfoCq73hHoewtC4w3hpx99OJfjg1WvllF2N04ffaGlT5cev/PBoGBcL?=
 =?us-ascii?Q?NPpWIS4jYycl08XrZ6EB5bL5o5NkuLwddHcbVMnA0MD94DKoDC2uLiVO7O/p?=
 =?us-ascii?Q?p3jF+ykOQUiaC2a/IaWM3Pz+mmMNesYa3r3s0hElJa2F7/+tdjMtvPnw3lrb?=
 =?us-ascii?Q?V5N92e4urra67WfvaiugCJ/sN7qWFa6rp+pF1xtpQBSHkl6+gvBvXrbRqiZC?=
 =?us-ascii?Q?3ffgHXFiLOi2wQEywOwnpm7yMECfKPt84SYrrNv6GbTuugaDIt92dQSM118h?=
 =?us-ascii?Q?DL4DfvB/LON14hO3qaclO+chIwmhZotmd/xm20NS9HDmhN70xrKdwg5oTv76?=
 =?us-ascii?Q?cD/cDP9VuXW/9hh8DSOLxZVF4H1u75N3Nct0WT47k6UB1YCYivGR46KAttDy?=
 =?us-ascii?Q?BEWlI/AIHT5lt+tVo3rq55CQS1iCodZNHBhHN/unIXcClm4qjDBxkrs2T6Yd?=
 =?us-ascii?Q?u45U/fn32Xckqg0WDgiFNKB40DKzSWZTIsJtJyj1O8I0EbunX4GkuwR6T9gQ?=
 =?us-ascii?Q?Mid6bDLK7KEVmaVeJ1K+11nYDe0gjF4gY/7Vi8hy71sh6hqnsPP6YdvmaL7T?=
 =?us-ascii?Q?jpUmNXvlL3UF4dp5DBXCD9RKoyeNud6PnWcK+AEuBJzCoum1vmA1pwOe4vtF?=
 =?us-ascii?Q?ZvRIQCLwDMeB7ketcfChB1QlarcVlV6nkQNoTGH8X+/gtkikOK8EDlskUhuu?=
 =?us-ascii?Q?caVlsI2KXhKkt3OdPNWbzvSS/ABnWPFGEF4+O13Hai7ASSgxve+SjT/cq+hX?=
 =?us-ascii?Q?LlR6Ho/I1eK0TnkXxi3W3vAtnYQwxeduSryDsOaQ7PYH8muJfMOL8pElcOJH?=
 =?us-ascii?Q?uVhlJFXSMZaG0QtErFEukW/5/XGw8FAgxr8akVvt+2x11yPD3sv8tWNRzhZU?=
 =?us-ascii?Q?Mip+2BqUTvEUOJRu3GVPfMWT+k9ocEMaUMlpUqn0NUQnzy1rtIvs+IWfpemn?=
 =?us-ascii?Q?eKaZS9dnGmRKllShjCqdHXDHwMFWCuesRWkgeHvlHyHbZJm2aQ6ahjhuEwH7?=
 =?us-ascii?Q?LNvzrVxfOogfvMY439Uzw4yZ74QIVdi68WLs6+9dxIVJH3paXqQmjU6ccKhN?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff58ec71-841f-42ef-816f-08de3c3bfb4f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 00:42:25.1557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SwJTQN4/5cLaf0u5InLv1ar2iEpP7Nn9LODdXw9xJVvSff01qN2vVDkPHKjp3QVlHzcEgXgr8ggXn5Opkc44glr9cf6iWzsBpggXTdbJjWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7523
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

On Tue, Dec 16, 2025 at 12:02:21AM +0000, Jia Yao wrote:
> Previous fix enabled LSC chicken bit FORCE_1_SUB_MESSAGE_PER_FRAGMENT.
> This caused side effects on 128EU SKUs. Updated solution limits SLM
> allocation to 96KB which is done at UMD to avoid these issues and
> ensure stable behavior.

I don't think we can make a change like this, at least not without more
supporting information proving that it's safe and won't cause any
regressions.  The workaround documentation effectively says "Either the
KMD needs to do XXX or the UMD needs to do YYY."  The lines being
removed below are the "XXX" in this case, but we run the risk of causing
a regression if someone is using an old build of the userspace driver,
but upgrades to a new kernel that has removed this code --- they could
be left without coverage of this workaround from either the KMD or the
UMD.

I think there are a couple options here:

 - If all of the UMDs (Mesa and compute) have been limiting SLM
   allocation to 96KB since the very beginning of their DG2-G11 support
   (i.e., it's never been possible to build a UMD driver that runs on
   DG2-G11 and _doesn't_ do that), then it's safe to remove the KMD
   handling below since we're guarnateed to always be covered by the
   UMD, no matter how old the UMD build is.  To take this option, we
   need to prove via git history for those UMD drivers that this is
   always the cause.

 - If there's a real problem with the workaround as documented today
   and it turns out that the programming we're doing in the KMD never
   had any benefit, then we can remove the KMD code.  To take this
   option, we'd need formal clarification on that from the hardware
   teams, including an official update by them to the text of the
   workaround in the WA DB so that we're sure that removing it can only
   improve the situation, never harm it.

 - If this workaround had been updating a per-context register, then 
   if there had been a way for the KMD to detect that the UMD already
   set this 96KB limit (either automatically, or via some kind of
   "opt-in" flag in the uapi), then it could have been okay to
   conditionally skip applying this code when that case is detected, and
   only apply the workaround in cases where it was not detected.
   However in this case it appears we're programming a system-wide
   register (not a per-context register) so the setting here will affect
   every process on the system, including those that haven't started
   running yet.  Even if we detect one UMD that's applying the 96K
   limit, there may be other UMDs or other versions of the same UMD also
   on the system (e.g., in a container) that won't apply the limit.
   That means we don't know the behavior of future processes that
   haven't started yet, and we can't take this option for this
   workaround.

 - The final option is to just leave things as is.  Even if the UMD
   limit performs better than the KMD workaround implementation, the "no
   regressions even with old userspace" rule takes precedence, so we
   can't justify risking a regression for some users just to boost
   performance for other users.


Matt

> 
> Bspec: 54833
> Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine workarounds")
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Xin Wang  <x.wang@intel.com>
> Cc: stable@vger.kernel.org
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ece88c612e27..abb47c65f43a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2866,10 +2866,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  				     MAXREQS_PER_BANK,
>  				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
>  
> -		/* Wa_22013059131:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> -
>  		/*
>  		 * Wa_22012654132
>  		 *
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
