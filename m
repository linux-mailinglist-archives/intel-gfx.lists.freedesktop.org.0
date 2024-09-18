Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B28E97C1EA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 00:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B963C10E661;
	Wed, 18 Sep 2024 22:37:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ihZpROmW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995A010E661
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 22:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726699062; x=1758235062;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=x1lBE+ylafL8KbyIummKJ+Cf1fLy2X4Ir/G+xCltS4c=;
 b=ihZpROmWs3Jhtinfxtf+sbS8gJz3BHdmdsus6ZuUTffX6js3vDO8VJED
 vLz9NLkQ5xpenNmdfRYQZyeWkHaInl4IDPqK1xjC9GRppYKKRJ9myBTEC
 xV6pT7WGBPMOynLxuq3OUwhWt35YC1T6y+ls3rWMNd/VYhhVkXs3MiFTg
 asWL3Q4my76nsicGH2s5fINe1iuolT32QsuZa7sART1y+Ejxgj+C8RRq0
 eHlQy24EvcA0asaGYyj+3vWL3DzJMtEXXyd9zqqAEkKsD9IksiBysePHe
 zjRXczeSD6TaEnXw8e1e2ZgUTICMrLOofRbYwa0dNvRp4jLW57BgOfoJU g==;
X-CSE-ConnectionGUID: E8nf2Q4+RDmD4Apa6wpVlw==
X-CSE-MsgGUID: i2nDuY3GSly6jWHOaaRgOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25758340"
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="25758340"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 15:37:42 -0700
X-CSE-ConnectionGUID: HFqJzYzqRcGPgdyvpb5OQg==
X-CSE-MsgGUID: ACa3T0TySZOv1Sqpi60mAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="69337510"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 15:37:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:37:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:37:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 15:37:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 15:37:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L0ZKJ8g+/1TWn/yivalswG4GslvqMYSPs3cIKgczGKUA015oMzu2BSCdSh2dmTBRw9VqP6ajfCYV658tPnP1yNHHg/7+J3CqUQ66910HErKSqxNs7t6zrcve4EVYXGvOzPLR1XU8oHG7BO4XeMC4jC19StxHFXudNymt0DMWbq080++Kq+I4D9jZWJ3z9atM4jWxt973EedweDPJNlFSNIdXb7g/Y1oUIOnGWiLhggW3/qUkrwJMncLznotopc7tcPIr0gvLGpfPiucSH1dLuTK5NzU8JrI3mX7HGlsHeZ3oampm3CHlMke9j4jHalvg321yDNhKbgY/F33MkgaD3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZfovDjOA0+jkKgp9BT+Z3yK2SXNJe0/1DjFJjQyOfg4=;
 b=MRMf5MUzsJa/GZUcQBMhEn7BwVAaQeq1BFypGB03yoUgZER8ab5qmLafxoQ+rvWeiTc/6+7w/Tn83aEqJinXPb7sA1u0Dx4aGcBajtfdAui1p2WRTJT4UtDG9dvlwdMjDFMXcUBTpIzkBBxTGaAYcCQNzwVB0VenBK3RtnykpqLGq577N29gmBtvNJiwLqXlGPUbuYBXO9eTJrDK3cKTdLeH3fM6d7cL+4XRxPWf1IIVLmqQNgl/45N08RLzfvEXTom23RkV5kVoRlRF21h2jGLRayFnOYu5aAeiaWU5k+op5S/fDM5e53+aAhbKA+GH32kjd6CJGBDwWoXgoh7Low==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Wed, 18 Sep
 2024 22:37:38 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 22:37:38 +0000
Date: Wed, 18 Sep 2024 15:37:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/display: Store pipe name in trace events
Message-ID: <20240918223735.GS5091@mdroper-desk1.amr.corp.intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
 <20240829220106.80449-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240829220106.80449-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0083.namprd03.prod.outlook.com
 (2603:10b6:a03:331::28) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|SA0PR11MB4718:EE_
X-MS-Office365-Filtering-Correlation-Id: dfd3f190-1cdc-4c9f-f2d4-08dcd8327f6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Uk+EdV7/xk7gmw1vlROhmU2MsApVzAKqTMj88CwZjMLuoOH+SArepAqj3dYL?=
 =?us-ascii?Q?M6hPZuzwWvjI0Jc8Cqnkm1Mau8WYPjENPsjAH5XoJhQcfHYMBaEGWZtOBE+w?=
 =?us-ascii?Q?5h78aNm/0nzyvojRMe0ahXBVZ7RXk+jfVMBnKED4XmtpHi/oIKz8S8yYXMrg?=
 =?us-ascii?Q?BhopO65/GFK87UHFHH+X3u6xhucs5FerkAgs0PjShLg5CwmM4aWcb1Tc/maz?=
 =?us-ascii?Q?B4SEiOl4qk8rAOlNZRRyIvxm+sc2ag9fnmhcpWnp7D+PPg+dntoxmdJKpKoG?=
 =?us-ascii?Q?kqP031QJ0ILPnrom8NC3DEFtpDQ58L2JZ6MgR5LR3KLpegs0McurHyVsQxYo?=
 =?us-ascii?Q?dyt5mFs3JlcOiDBN0kAVTnOap9uowZNjnyZ3FXy5OLLTNgkolrH/7ZVofN8A?=
 =?us-ascii?Q?LVujDb2v6cNbqV6ShENXfIX9Gn1qCLA2yf0rhR7wf4M0eibR6rG2kvMsxeef?=
 =?us-ascii?Q?6FGmHlyxOQiOHg9O2czdNp/plM8Ylk+Uy0X9VJJPSsbDKI4J6nu/RzD0oS2r?=
 =?us-ascii?Q?VqDotPI8ofDtII0BmuKYT/IcozJLjlWZp6StSBG5uZPiT9zbHU0pm3b7tZPT?=
 =?us-ascii?Q?zkLiXay5CxTl0tVlXfzMXG5O/H5wfVu2/Dgs3mOUirpFbpMI0vz/CLu2SbG0?=
 =?us-ascii?Q?Gj1+K0qUTho/C+Lo/1z6GztFDs9S4CnObUcRlAeNkPJqFS7yI74WKnbYjPN3?=
 =?us-ascii?Q?R2bDhAVcJmTUDO99I2hBo4VnAoKb53em1ELsZwSysf80bEStOnZOn2xWPBMk?=
 =?us-ascii?Q?o0aJpAUy+JlRl7e0esvUbYF8BBUotp0zXrcE1UZR2jSOWZ2vkGNKbHRabnP5?=
 =?us-ascii?Q?ynwNq+m7wegX2eVOx35wvxvsOrHiZvtmAcQqsQa1JkiJ8vqrGJ1AFa8oZ4aN?=
 =?us-ascii?Q?mBbZh6US43PstE9pEheEUl7Q0Hrg9wQyumRAxh0Bf1EivZpqxxs6t9WtcQRD?=
 =?us-ascii?Q?IWuoNsarnW3FIRjeCsGJF7W5ubu6n6RJX/D6v1z3xPcIn9s/+btF+5ZErsRg?=
 =?us-ascii?Q?9CFeBQozUNlS7cyLOoJE7yyTRidE7OR2gdIjpx693NB79Xskh/o6P3/POP9R?=
 =?us-ascii?Q?jW4t1+pAx2Xr1MDtd7nQTGHZykMQpRu6m3oHbaQuFcFn/MTQrqZOklaOhpOy?=
 =?us-ascii?Q?I9hvOzScOk7QXVdU0Mu27xpawdhCE9inT1Cxl72AjwbpZMF8+5UHTCJEvr3C?=
 =?us-ascii?Q?PKbHxYZO4ZYLbBh4E4NhV54zX3+ELqK16Xm7w5QupbKGvQYc9GJVV19IUsUB?=
 =?us-ascii?Q?sSo1sYredIpfgwcxC6/DljKJzV9YyUKzW1OXMNJNk7cl6REVAm4y7twZZ2sU?=
 =?us-ascii?Q?lEPceAN302r9wkIRr/Gi/dAe5jIaT7GE7N1MPcfsqPk8XQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ir/ZDH+GJiwLWCEkWWH0xpTj/HqLUtk6ue9j44ZSBV14tWOuARB8VTzmmAu0?=
 =?us-ascii?Q?+0BU7qOLYDqCQFkK5cNy1UhKgPsMqkqaXEmmABhzCjQSF1Xr02rEulX5Ni/z?=
 =?us-ascii?Q?SFR3r9Ygn1AWmBkr56X9hX84PpCTnB5XSyd0vPHoXKSeCeVJ143v4VouO/9W?=
 =?us-ascii?Q?BnRv20pcC0lvD1nCtVHAcY2OfrOlcEkwGKXK6TB7RSjFlY3wu62g0xTGUINZ?=
 =?us-ascii?Q?0OEvRIuUYjifhRaSQTVORZp9g0uS0EkcCJwGXmapVm0mJkFBrd1h6aPmfdrp?=
 =?us-ascii?Q?1wEPcdpCfRzh60+r2kMXyGTv6XVxe45lDN5iuMWKZiR9olvjLh8hxLO08ITg?=
 =?us-ascii?Q?M+iUX4J1ikZIVV59RemfagP6391Wq3IjP0NBe6lqBJf5OyPdGLGqnLPOxdNy?=
 =?us-ascii?Q?GBY0pvHhoktGQyDKE2uquEPu8mOfFLLheZlSYL0Fju4+QDLW+nYiHbW1R5OY?=
 =?us-ascii?Q?Wm/U90h21NYTe18BanwaQYqk1Sw+wbkWmUwuPDevscGhMMT6HfDIgCUXPvVZ?=
 =?us-ascii?Q?JdrbeUoodbkV0mg5mDBXSItaX6UQYrgKzyYDLyOWPLOiH87zEDGSp9mj+mv0?=
 =?us-ascii?Q?6Vxaw+xFqri6xEwyOkWWhAGXQoOiz/J89JpsVreeL1gpH8KHlzBKAEwvb8Ry?=
 =?us-ascii?Q?p0qSjjABnT9mhnZ2Py0P0hufzGNjSp1jdy+Rwanx64b27oAo7bKl69kIYJGN?=
 =?us-ascii?Q?zwrqmDIpgFFfdmJrioI8VBTy/52P5t52pnpgHD/yWG+IpgATgavsgpxYyU6+?=
 =?us-ascii?Q?m1yClVo7V4H9XcKtQNDmPx9j1IXr/dWaFpWNByeMH7O2F5xWviPA9tQN+GFp?=
 =?us-ascii?Q?GLqJccug0Sp5GlBT/6yv3ySYbVY7mrllJpEKlUpJlmCs/A3KdecuoiTLGo+P?=
 =?us-ascii?Q?syHTFRVZnmCeHfzxe+xk5kV5vY9LaRBuKAamzXLGPZQmWUtFDLQrhh83ujXK?=
 =?us-ascii?Q?gfeWOhuXADtEPg2iQTprl076yJu1j6Vlv6EnA+wAl5FnKVL6+P1HiVEauTkx?=
 =?us-ascii?Q?ff7x9VA1yziadRrom/IP8K9OptRBqV+UwZBSrewmfcR+vQlRXZV+98z+3/tL?=
 =?us-ascii?Q?VHw8ysARsXG7cTElpzi76hPPzbOeky8mXdH0XhrPqotdkT8oegW/EPDdlkUJ?=
 =?us-ascii?Q?NhBraIaCuzPNaadc9lfkd1MWdSr1S1VLKJNraAVOevBS4HqQM/3kLEMbGRcQ?=
 =?us-ascii?Q?xCyQJcZ57PG3BzZyB6xRgEbJ8GVqhzlQrImMxEY70nUzrD77eE5eEjT28K5V?=
 =?us-ascii?Q?a+bNryDQ+vqSoWrRVjzsD1THst/LjOV2hORifhxBxihVDMqDf/Y/dF1l5Byx?=
 =?us-ascii?Q?zeNfyXS4SH/uqeRcOaYuSNSMQ5G9hnqa0Dg6KyKm9abhAUKjOO1QtNbdZPGs?=
 =?us-ascii?Q?TDkPFlm7SgLls0dCUpBOOqtm4WXbPQ528JbphX0TMTdcTHyBtJJmd0r3xn7H?=
 =?us-ascii?Q?A56CRIaLnmbHBV/h7fymkYWdm/ARWrpAcBbFlsN5/ZUfFRoWPpiRcVaNerKI?=
 =?us-ascii?Q?GOmyN53MBMcO7eBXcexxD3dfuBt98nwmNxHRRZw2qrN6NkUsKKZXksaNpFFO?=
 =?us-ascii?Q?+FApNIUT+KNZ+At/nbh8ACsGub4nyVoN9OCc0//Q+usMeTC211Xm70fcgwmI?=
 =?us-ascii?Q?Fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd3f190-1cdc-4c9f-f2d4-08dcd8327f6b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 22:37:37.9427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ratK3rmlwreYqtMCMTZPWy8pazDKO0ybHCS5ljufsZUSQYo9K31eGfHfrmImbhBMxtfplt1Bgqsu85Id8mdfM9jp3qI0A1w9zIQ0Bw3RwpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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

On Thu, Aug 29, 2024 at 07:00:45PM -0300, Gustavo Sousa wrote:
> The first part[1] of the LWN series on using TRACE_EVENT() mentions
> about TP_printk():
> 
>     "Do not create new tracepoint-specific helpers, because that will
>     confuse user-space tools that know about the TRACE_EVENT() helper
>     macros but will not know how to handle ones created for individual
>     tracepoints."
> 
> It seems this is what we ended up doing when using pipe_name() in
> TP_printk().
> 
> For example, the format for the intel_pipe_update_start event is as
> follows:
> 
>     # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_update_start/format
>     name: intel_pipe_update_start
>     ID: 1136
>     format:
>             field:unsigned short common_type;       offset:0;       size:2; signed:0;
>             field:unsigned char common_flags;       offset:2;       size:1; signed:0;
>             field:unsigned char common_preempt_count;       offset:3;       size:1; signed:0;
>             field:int common_pid;   offset:4;       size:4; signed:1;
> 
>             field:__data_loc char[] dev;    offset:8;       size:4; signed:0;
>             field:enum pipe pipe;   offset:12;      size:4; signed:1;
>             field:u32 frame;        offset:16;      size:4; signed:0;
>             field:u32 scanline;     offset:20;      size:4; signed:0;
>             field:u32 min;  offset:24;      size:4; signed:0;
>             field:u32 max;  offset:28;      size:4; signed:0;
> 
>     print fmt: "dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u", __get_str(dev), ((REC->pipe) + 'A'), REC->frame, REC->scanline, REC->min, REC->max
> 
> The call to pipe_name(__entry->pipe) is expanted to ((REC->pipe) + 'A')
> and that's how the format is saved.
> 
> Even though the output from /sys/kernel/debug/tracing/trace will look
> correct (because it is generated in the kernel), we will see corrupted
> lines when using a tool like trace-cmd to view the data.
> 
> While the output looks correct when looking at
> /sys/kernel/debug/tracing/trace, we see corrupted lines when viewing the
> trace data with "trace-cmd report":
> 
>     $ trace-cmd report \
>     > | sed -n 's/.*dev 0000:00:02\.0, \(pipe .\).*/\1/p' \
>     > | cat -v | uniq -c
>          34 pipe ^A
> 
> , where ^A is a non-printable character.
> 
> As a fix, let's store the pipe name directly in the event. The fix was
> done by applying the following sed script:
> 
>     s/__field\s*(\s*enum\s\+pipe\s*,\s*pipe\s*)/__field(char, pipe_name)/
>     s/__entry\s*->\s*pipe\s*=\s*\([^;]\+\);/__entry->pipe_name = pipe_name(\1);/
>     s/pipe_name\s*(\s*__entry\s*->\s*pipe\s*)/__entry->pipe_name/
> 
> After these changes, using the same example, we have the following:
> 
>     $ trace-cmd report \
>     > | sed -n 's/.*dev 0000:00:02\.0, \(pipe .\).*/\1/p' \
>     > | cat -v | sort | uniq -c
>         396 pipe A
>          34 pipe B
> 
> [1] https://lwn.net/Articles/379903/
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Interesting; I hadn't ever realized how the parsing in trace-cmd worked.
Are some of the other macros/function helpers like DRM_RECT_ARG that  we
use in our TP_printks similarly problematic?

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> ---
>  .../drm/i915/display/intel_display_trace.h    | 126 +++++++++---------
>  1 file changed, 63 insertions(+), 63 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index 8a3185862089..ec2ab6fb743d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -30,7 +30,7 @@ TRACE_EVENT(intel_pipe_enable,
>  			     __string(dev, __dev_name_kms(crtc))
>  			     __array(u32, frame, I915_MAX_PIPES)
>  			     __array(u32, scanline, I915_MAX_PIPES)
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     ),
>  	    TP_fast_assign(
>  			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -40,11 +40,11 @@ TRACE_EVENT(intel_pipe_enable,
>  				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
>  				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
>  			   }
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>  		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>  		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
> @@ -58,7 +58,7 @@ TRACE_EVENT(intel_pipe_disable,
>  			     __string(dev, __dev_name_kms(crtc))
>  			     __array(u32, frame, I915_MAX_PIPES)
>  			     __array(u32, scanline, I915_MAX_PIPES)
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     ),
>  
>  	    TP_fast_assign(
> @@ -69,11 +69,11 @@ TRACE_EVENT(intel_pipe_disable,
>  				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
>  				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
>  			   }
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>  		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>  		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
> @@ -85,20 +85,20 @@ TRACE_EVENT(intel_crtc_flip_done,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -108,7 +108,7 @@ TRACE_EVENT(intel_pipe_crc,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __array(u32, crcs, 5)
> @@ -116,14 +116,14 @@ TRACE_EVENT(intel_pipe_crc,
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u crc=%08x %08x %08x %08x %08x",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline,
>  		      __entry->crcs[0], __entry->crcs[1],
>  		      __entry->crcs[2], __entry->crcs[3],
> @@ -136,7 +136,7 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_i915(dev_priv))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
> @@ -144,13 +144,13 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
>  	    TP_fast_assign(
>  			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
>  			   __assign_str(dev);
> -			   __entry->pipe = pipe;
> +			   __entry->pipe_name = pipe_name(pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -160,7 +160,7 @@ TRACE_EVENT(intel_pch_fifo_underrun,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_i915(dev_priv))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
> @@ -169,13 +169,13 @@ TRACE_EVENT(intel_pch_fifo_underrun,
>  			   enum pipe pipe = pch_transcoder;
>  			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
>  			   __assign_str(dev);
> -			   __entry->pipe = pipe;
> +			   __entry->pipe_name = pipe_name(pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pch transcoder %c, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -215,7 +215,7 @@ TRACE_EVENT(g4x_wm,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __field(u16, primary)
> @@ -234,7 +234,7 @@ TRACE_EVENT(g4x_wm,
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
> @@ -252,7 +252,7 @@ TRACE_EVENT(g4x_wm,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline,
>  		      __entry->primary, __entry->sprite, __entry->cursor,
>  		      str_yes_no(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
> @@ -266,7 +266,7 @@ TRACE_EVENT(vlv_wm,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __field(u32, level)
> @@ -281,7 +281,7 @@ TRACE_EVENT(vlv_wm,
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   __entry->level = wm->level;
> @@ -295,7 +295,7 @@ TRACE_EVENT(vlv_wm,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, level=%d, cxsr=%d, wm %d/%d/%d/%d, sr %d/%d",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline,
>  		      __entry->level, __entry->cxsr,
>  		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->cursor,
> @@ -308,7 +308,7 @@ TRACE_EVENT(vlv_fifo_size,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __field(u32, sprite0_start)
> @@ -318,7 +318,7 @@ TRACE_EVENT(vlv_fifo_size,
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   __entry->sprite0_start = sprite0_start;
> @@ -327,7 +327,7 @@ TRACE_EVENT(vlv_fifo_size,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, %d/%d/%d",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline,
>  		      __entry->sprite0_start, __entry->sprite1_start, __entry->fifo_size)
>  );
> @@ -338,7 +338,7 @@ TRACE_EVENT(intel_plane_async_flip,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __field(bool, async_flip)
> @@ -348,14 +348,14 @@ TRACE_EVENT(intel_plane_async_flip,
>  	    TP_fast_assign(
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   __entry->async_flip = async_flip;
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, async_flip=%s",
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline, str_yes_no(__entry->async_flip))
>  );
>  
> @@ -365,7 +365,7 @@ TRACE_EVENT(intel_plane_update_noarm,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __array(int, src, 4)
> @@ -376,7 +376,7 @@ TRACE_EVENT(intel_plane_update_noarm,
>  	    TP_fast_assign(
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
> @@ -384,7 +384,7 @@ TRACE_EVENT(intel_plane_update_noarm,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline,
>  		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
>  		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
> @@ -396,7 +396,7 @@ TRACE_EVENT(intel_plane_update_arm,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __array(int, src, 4)
> @@ -407,7 +407,7 @@ TRACE_EVENT(intel_plane_update_arm,
>  	    TP_fast_assign(
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
> @@ -415,7 +415,7 @@ TRACE_EVENT(intel_plane_update_arm,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline,
>  		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
>  		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
> @@ -427,7 +427,7 @@ TRACE_EVENT(intel_plane_disable_arm,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __string(name, plane->base.name)
> @@ -436,13 +436,13 @@ TRACE_EVENT(intel_plane_disable_arm,
>  	    TP_fast_assign(
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -453,7 +453,7 @@ TRACE_EVENT(intel_fbc_activate,
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
>  			     __string(name, plane->base.name)
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
> @@ -463,13 +463,13 @@ TRACE_EVENT(intel_fbc_activate,
>  									 plane->pipe);
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -480,7 +480,7 @@ TRACE_EVENT(intel_fbc_deactivate,
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
>  			     __string(name, plane->base.name)
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
> @@ -490,13 +490,13 @@ TRACE_EVENT(intel_fbc_deactivate,
>  									 plane->pipe);
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -507,7 +507,7 @@ TRACE_EVENT(intel_fbc_nuke,
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(plane))
>  			     __string(name, plane->base.name)
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
> @@ -517,13 +517,13 @@ TRACE_EVENT(intel_fbc_nuke,
>  									 plane->pipe);
>  			   __assign_str(dev);
>  			   __assign_str(name);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
> +		      __get_str(dev), __entry->pipe_name, __get_str(name),
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -533,20 +533,20 @@ TRACE_EVENT(intel_crtc_vblank_work_start,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -556,20 +556,20 @@ TRACE_EVENT(intel_crtc_vblank_work_end,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline)
>  );
>  
> @@ -579,7 +579,7 @@ TRACE_EVENT(intel_pipe_update_start,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __field(u32, min)
> @@ -588,7 +588,7 @@ TRACE_EVENT(intel_pipe_update_start,
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
>  			   __entry->scanline = intel_get_crtc_scanline(crtc);
>  			   __entry->min = crtc->debug.min_vbl;
> @@ -596,7 +596,7 @@ TRACE_EVENT(intel_pipe_update_start,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline,
>  		      __entry->min, __entry->max)
>  );
> @@ -607,7 +607,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     __field(u32, min)
> @@ -616,7 +616,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = crtc->debug.start_vbl_count;
>  			   __entry->scanline = crtc->debug.scanline_start;
>  			   __entry->min = crtc->debug.min_vbl;
> @@ -624,7 +624,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline,
>  		      __entry->min, __entry->max)
>  );
> @@ -635,20 +635,20 @@ TRACE_EVENT(intel_pipe_update_end,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __field(enum pipe, pipe)
> +			     __field(char, pipe_name)
>  			     __field(u32, frame)
>  			     __field(u32, scanline)
>  			     ),
>  
>  	    TP_fast_assign(
>  			   __assign_str(dev);
> -			   __entry->pipe = crtc->pipe;
> +			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   __entry->frame = frame;
>  			   __entry->scanline = scanline_end;
>  			   ),
>  
>  	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
> -		      __get_str(dev), pipe_name(__entry->pipe),
> +		      __get_str(dev), __entry->pipe_name,
>  		      __entry->frame, __entry->scanline)
>  );
>  
> -- 
> 2.46.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
