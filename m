Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C05379867EA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 23:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F8C10EA25;
	Wed, 25 Sep 2024 21:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gd7uyNp5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3064B10EA25;
 Wed, 25 Sep 2024 21:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727298070; x=1758834070;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3Ru23vys+fJIU/Y0pYtUnPM4XWejwcxm/eo3q0vj/LE=;
 b=gd7uyNp5KWTKnxKfWttPWbgiB5NXxc8h1o6Bkaush7/GVbdlhIOVKAZD
 Rxr0mUJTloku5R3RLc6BLpe96zAN07FULUwvTwPq0PwaDj6/hau068BzH
 tWxl0l4/ySHb2KlwgOIHlRaDHr8pSumwWijue0rSZxbxjPcUeUrOzg8mK
 23cipsZekl4B3692dKsZqvX6+wM5uml+f2Hr6x810Ya7hu/dBZTDtjuW1
 2Go7Bu2ZWiABsibdq+EzWZSG5ZfiP8KL1rbkIASvRZQYx5LNmSAm5LPvT
 2mkOaCzRTDIHgYdHBgsn8vNLw7vDWgfkrzuE0Y1ACAkH7+VhkdipUQHqV A==;
X-CSE-ConnectionGUID: IW9NWxEzTf2PQhmsxdhnDQ==
X-CSE-MsgGUID: bchk7A5dTDq1jY3chQSezw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="30256571"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="30256571"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 14:01:04 -0700
X-CSE-ConnectionGUID: VScMnSx4TSuneLefO4ZBOw==
X-CSE-MsgGUID: wo1F/0v/TkCJI6i26zEpHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="71912859"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 14:01:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 14:01:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 14:01:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 14:01:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XTGfuu+eiTQIwz8FbrhxBRhX71fZ51bo6e5xo2XmsM+i//yKYT0F2nrUd1b6mNWbZWE2IVWwGrULZ5MZuw0TXuO1zBcZ5xuN38ONJ6/+ZX2m2UdZnnkq25Fvx13WHdX/V5fHH4xf0T0CTg8kMtKGbvHT4cVt+TCiurA1zKIBkNjEXst3l7qUoQVFnmWHo4k9zzjViJjaNB0qwkWXWADAUWcZ6ibE9a/NXYFZCmzbfHHrHLb0jCe672Xrhfenb8daqPPVKxvFduabU59bZKZj+jXdAqTww9JTIydMVPvdU0PdxD0n06cXVmwG79RsyL7W16CVMYLrTwVNKnymdrIJlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aoTb6xaIRM7vcRcOY3z47OLO/nBUmyzg0r5e/EtmWdE=;
 b=Pess7veQQ60dwWLuQ9IHrd1CVVuTGCiWw0FwGPPj4xz0aIYitmQbSHvaGO1eA8IfdddqwstrTvpDwnjNkYnmgUyys9bWcVCAJp01rHyXSjxWJ5qSNSsiRb1Fa+fkwB8GEP+piJo12T3luzaxkqIU4CFgYAz/FE4QW4JnRmGlEVJ22igC2sIGA9U1P4V8rYzPcTgcG5J3JiaED+YEIB41AIjLa7lK9go7K2QEFQwKiLUoOA7pXJ11S3l6HelRknYMdxmhXXucak6UWiWiHqdAwJ36L8bc4oOvbT4iwpyQOnI4LORJfBu7alSI97FRLyQ6yYVXBrPuDYIPjdDiDW12QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Wed, 25 Sep
 2024 21:00:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Wed, 25 Sep 2024
 21:00:58 +0000
Date: Wed, 25 Sep 2024 17:00:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>
Subject: Re: [PATCH 00/31] Reconcile i915's and xe's display power mgt
 sequences
Message-ID: <ZvR6B2-2f2Dpghoe@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <87ed582fdo.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87ed582fdo.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0066.namprd04.prod.outlook.com
 (2603:10b6:303:6b::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8469:EE_
X-MS-Office365-Filtering-Correlation-Id: be39d2c2-ad8a-4e3d-0ccc-08dcdda5279b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sz4QdJwSjGsNrkNjF07IFpKZ1uiCD/aRwj2xFjDS6JbD5BSzye0FZk5BFW9b?=
 =?us-ascii?Q?zua1634CbV9AXBxbniDW+P/0/plxPJfFCPW7JSE5hLDsFfRi+UuBTk//VXnh?=
 =?us-ascii?Q?ASchs+ovqRlVbXDIEfy7qWz6l0flKyKlECjnn4VDl7y8GcqqJ8QEhENK7qXF?=
 =?us-ascii?Q?lsDmqFv51D5Gb7cf5h1CSa78UeTNkqHcV/fAUsdiLFJgYwu6L3eHNsQ5q0is?=
 =?us-ascii?Q?V/xAOEnp6meumHhu6xK9MnV0ZtIJbzR4HHzP+11fnpxlCqDnQU6HeY/x53FS?=
 =?us-ascii?Q?4kI0E+TwFyiVh+czTQpGYI/44q8XfHGkjrj3iCKXHlKjogETGb+/lwpNTMjy?=
 =?us-ascii?Q?/+2XaEag7VpquYRrFC1u+NIx3cUD/bntxtt6wLGXzOXCArDQKGw/nLLpzoIu?=
 =?us-ascii?Q?2Q9iWv4ZDqBcSYghYq1C6d3RUu4+W8xtJxYwD/fzemVLxvHjV4MIS1Opeuv8?=
 =?us-ascii?Q?E1y8+uMdOS7111FjRCUYmc1HqlXtSuw6QQ9Gci0zqEFiKyCGCU/UfmRzZpAq?=
 =?us-ascii?Q?jK8Rf9gSnyFm/UDnXvV4yEjYhj7YMEtdhhXeC1caPCw8EiilpVjU07FUHODm?=
 =?us-ascii?Q?ph01TlTA2lAgqJl23ymYydtQZzBRlUtQhYudN0faEhXtlen0aeM2Ajc8NQei?=
 =?us-ascii?Q?H1zseWBrfhUnlLgcrGofCnSWDCSX4t0/eCT93M6fu24CTMIQHuFG3xOCJER2?=
 =?us-ascii?Q?hRzEHmNmYPIs7+vvJcGFxfkkyj5ar803KigHvyV2AKqkkr9uo3lq+K3xrIkp?=
 =?us-ascii?Q?ZIu2cjceBcR1BphugYeWo0g29qQt14xl9rL/yltVOsGW4C67xMJlXbR/rcvV?=
 =?us-ascii?Q?vyvSX+7Bo8/viJ72GMXtu2gGh3FDmM6LwE3kAczxxHeINbEqKaXtdoj3kOwa?=
 =?us-ascii?Q?Pej9uf9StjnR36sXm/noR7L4mtyeZDjBkRAH9yYZW5n+vYS3zaT4Jf6VgRyw?=
 =?us-ascii?Q?aj/NlRV5gy3B+0+7QEp7XXctXujeScjEQ5rDDx2j8vfAR0K/KGpcv2i0JTdU?=
 =?us-ascii?Q?yLaMQrN7uySW7W0mmaJxkWETmvSiMULw7pqiFLF+pPTNyWTZV2jbNctF0eF4?=
 =?us-ascii?Q?mx4J+1ocgyj3Ew4UUQj+gZHw8ci+QRnpbzr4t/sgu+MDkN5y1bmTNVK9OqkA?=
 =?us-ascii?Q?VgnmZD1FtDPB4f4pN6wgGUkZ/eeUMsEwD0Ioqv+XK2/5PwDymABJyW0ec7Tc?=
 =?us-ascii?Q?kbkxlLRjRSmRReNVRoW8XqGhbLhFtYLoDmEf4X38uszU7c85tvhTXLWnWcy9?=
 =?us-ascii?Q?NLLTqvj3EaJYqmlW8V9Qq+Nb4Pl4l8fg6ExsOBVtLVH+r3sMYBDf9ye/pDUw?=
 =?us-ascii?Q?ggkLEsHpAgz6MK0ZhHSpf01aKmclN+Iv8gDdDubEBbAJ1w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Akmd89ESzKA/o5e3zuK1GVKnlZW6GH0gIf7Gx+2mZfFkvAQX6YVYtGJg2zbx?=
 =?us-ascii?Q?Xz2xJof9PmCP9J6EQ3C/W6BBytrdYt6OcbpwZ1L3DlS7jZ7XgNzd1cp0t4oW?=
 =?us-ascii?Q?4BCVP+1OhrsUnM98xebKpxLapxarBJ1fIFZLYzz/GJJt1qBMLvLgbVCXMz4z?=
 =?us-ascii?Q?pmMP93yQNUrFQEC2uzEfv/zTRaBIR7fpJ6lR0/bReis47Tkcmo8wcRjSwqFk?=
 =?us-ascii?Q?d+Hi1c7pqkGH5u2xMh0HWuHn1nqY3SupT1emDuOnBTc2SaBM8bR6QYhbEcWJ?=
 =?us-ascii?Q?d9YPyehll80rl7mE53emldho+0ZTWVEAYaF+mOj9lWQTXOllMEROlluWCGFy?=
 =?us-ascii?Q?oGQjAoKpZUoXyRS1r2kAftjFvyHBhI9PQhE2DjB8/TTvG+2U+ipFnP9GM13+?=
 =?us-ascii?Q?gJF82eueXmP8MZZ8F3v1nPQoo3JaZXCGN6RrUbSit1QwKYB6qj9/vxL1nFyh?=
 =?us-ascii?Q?y4FUEWUv7E1iDqNkuYHgCmumful+MrA9FkQCOObl+JIloSGI/Xy05fix81Jr?=
 =?us-ascii?Q?IJMd1v+BEJJ9LqmBcFyV5FiJEgmnkqlZJvJ6zWvETBp17JVwF0iM/mKLBGc+?=
 =?us-ascii?Q?OpAOvl+ANvBXhZgc6mH/yuaR4q2ZX9OcedgpFbKA1kH1XCrxcoY94doWNMMo?=
 =?us-ascii?Q?29KKDRydlR61Roj8HEGSPoQP6GnTnyQTWTySXJ3vP7kS923O6BDOngBsWjE1?=
 =?us-ascii?Q?6+c7c6RGWO2CzCqNH8QVzbhyvhG6FdVjTLOzmOD7QNEesuhUCZzjtzglDB2M?=
 =?us-ascii?Q?uz98tYxWw0qXAbEyukQGR6ODqnPapL5GPN399vSQmRtJBTZq9p8VcPYWZ0Nw?=
 =?us-ascii?Q?O0xytyPSZSedY4b15kMJ3BgRNYtXHxzgCwCHG0PvP7e0svb0oLAijFnX0vM+?=
 =?us-ascii?Q?mUWzjCXNkERhGDnaqRTzYmK+vtS7uJK6aMEqVHhLxoxyKRMHV/mzRAvA2p/B?=
 =?us-ascii?Q?F0qUWyZmGMJiLB5fLqcGlFylIiY1UCOrZ7N647CK/QiXNQ9f7WmugM/HtcHM?=
 =?us-ascii?Q?Km1IM2e1We3u2R+PgF18fYjtV0v2lExxkwVe2/UdCDQDc60SfuJABxFHvreH?=
 =?us-ascii?Q?6KGoB8PMvh1CA/vyCnAIlZ46d7nYuNHu4i5ZB64p+T0dj6fhO4EG76l2D1tZ?=
 =?us-ascii?Q?Tw0rxu8bZZ4NNeWmJimu1JP4/JMuSNYkdkUWc37WuPtXUahu2voxhAFIQ8IP?=
 =?us-ascii?Q?5eOy13f1Ir/E5wQxlRM5pp3vVqMV5oGCheGe7/4CJ+3JR27fV5Ya2rZtnBkI?=
 =?us-ascii?Q?/SCieaE+BqIURZvn0eVZHAsrdqisK6/U4RSYZXsNeySazzlgRfeAjVxeWU2O?=
 =?us-ascii?Q?ACDRsFxrKd1tXvjPAdHLI6tgJpliFbzGXCkilsuj8gkaeYjXPscY1dKWXcJY?=
 =?us-ascii?Q?dsSywELe2f2qMMmDF5dvhXH6+evRHTQUa1gGsYhGUuA6DRZeZlN36CSyghrf?=
 =?us-ascii?Q?MJKXeey1E0cnrXzjw0mA79gOutlpld2JoIKlkebxhnhIJCZgSZ3Dx3J0StSb?=
 =?us-ascii?Q?gYiBJc3P7XELqqxUUAXmgAVvhRQI9aBPfoJEPsx95PgzRQ1qbPdgHWXMXeBi?=
 =?us-ascii?Q?JHO7yekTJXAAirAf3iEeKTj3ZMzD7cm+tEwq+2HfBuMEooq/lFaaGNGHLHqd?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be39d2c2-ad8a-4e3d-0ccc-08dcdda5279b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2024 21:00:58.5974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gO9FHfrx+gwVS7JjaT5dJV5sL5iNnRdMKyJDBCAYPQGZsGuXZQnVn9eKSqtXMqMlP51K1lusd4rs8IYLTrZLlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
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

On Wed, Sep 25, 2024 at 01:32:03PM +0300, Jani Nikula wrote:
> On Tue, 24 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > Reconcile i915's and xe's display power management sequences.
> >
> > The main goal of this series is to ensure that the display
> > power management sequences from both drivers are fully aligned.
> > So, it needs to live under i915/display/ and xe_display_pm
> > can only be a wrapper to check for the xe's module
> > parameter before jumping in the i915/display functions.
> >
> > During this process, it was clear that the Xe's runtime pm
> > sequences for integrated gfx (non d3cold capable) was totally
> > misaligned with i915 and prune to more bugs. So, this series ends
> > up fixing this and bringing a full alignment there as well.
> >
> > The one new thing under i915 is the d3cold sequences. Apparently
> > that can be reduced, but for now this is what is validated and
> > stable on both DG2 and BMG. So, let's move that to the
> > i915/display side as well and continue on the improvements with
> > the code in the right place.
> >
> > When I started this work I was hoping that I could run more
> > conversions to intel_display struct before moving things from
> > i915_driver.c to intel_display_driver, however that was a deeper
> > task and this series is already deep enough.
> 
> Holy crap this is scary and a PITA to review but exactly what we'll
> need! Thanks for doing this. I've been shying away from this too long.

yeap! It was very painful to do this... took me much longer then
I was expecting for a refactor :/

But we need to rip the bandaid off

> 
> I'll try to put in some review effort, but at the same time just more
> eyeballs than mine would be great.

Thank you so much!
Yeap, every help is very much appreciated!

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
