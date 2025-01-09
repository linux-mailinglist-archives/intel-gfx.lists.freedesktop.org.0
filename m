Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D06CA08066
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 20:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD5410E485;
	Thu,  9 Jan 2025 19:01:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AfM/KixX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54CB910E485
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 19:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736449294; x=1767985294;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Evxq3427vsjUQcx2A8S+v8WcDDqXF/VJXdhzBcfMLHM=;
 b=AfM/KixXL6+V7ZGDErVdENbvu1lWgdoUEyyeFquDFfUC10NbEV/YmMKh
 b2kkVwguDolQOlnY5BRhh6571Dg7D/6qm4m7KqDZOYoa5Kvl+80aG6xzy
 DV7S0BaNWkYreO8olKGGTvI2Sa/NFLuGf+8do6zVSyieDMJpNaAlPoPza
 ZguOuz97AxY/6ADR5Y9jzGttcASUGT2SyOxuy1CjpypeiT2wYdOl6L2J3
 L+JQR++fLJPkw1VbckOv9NmoDWmrIJUYRfuYResjpjKBgUCgZYTBUk6Pl
 Y87XgmsMwe/UZUMoXFKt04anpwgNzz2+k28/WdKjhTD++cXo1CmLVgL+G g==;
X-CSE-ConnectionGUID: sF+wbn+jQJS8DYquz8ODCQ==
X-CSE-MsgGUID: kKp5Xzl5S2CotY3z8JgY3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="54143801"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="54143801"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 11:01:23 -0800
X-CSE-ConnectionGUID: x1IGtv/QTYaxMDRfQIU1nQ==
X-CSE-MsgGUID: yHT//B0gRqSRE2ADqh90lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103380243"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 11:01:23 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 11:01:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 11:01:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 11:01:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jpcmPjLpkEyCGrILFw50FYjqgb7T1m1w2e4h7p2ZG57XKnwYriDMZhXwJM3oAAi849cIORvSm72iKy+WvWSY+f0pNt597l+qlPBa1d6EfHCo3BXDi9fMtwyT6or80xy+ejo8YUBmlinupeNW8z3M90Q+zC4znv9gxBad7QaJlPC4q8apBBHoChJrOTufjvqBY9/l5hlwbAkBXpKbtAXLfLjYyO34QK53IHQk6IIwhQwEvBvJoM3YkkoCn9R7weFYwg8btthGYuQGo2NZN2bl8hcI6yGoB3+AuDyMYQMoVV12MI7wyeVOEIyHST1yb0I/R3sUbcFPX+zbEr6r+mZf/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRPZ7CJVakVfUu18PSAf1t8jO019tCYbd7g8aRi5CIw=;
 b=k/mLYWExBQcuUDzggF7ZAxTRSzu2KY40fdF6xfEiDj7ZeBviilA18B7xRFJTeyLAgy9mx+0Pwa3UfusTPETJrQ06lIiRWZtLeAQ7d57r20fTQlYNmCEzBWDqvLy5E/nv1p0k34aQbKNnV26zSmigNLAhlFiRySFXNmgV7vtQfJyF5ddRh1bUaIAigRNekdDkQO/qbmMXRwihkUB4GVMCLvMztO4t7Bch1tLOFL0/ejuYUI4VeIIvj/3roboUJKYFsn4lCfWZfZw8ut3J/WVwoCd+n/mQvPIf8uppnjIroblfKZMs/ZoXW/4Xxi+mB7PVh8oHzsnf+6ikUnl6XR2pUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB8290.namprd11.prod.outlook.com (2603:10b6:303:20f::21)
 by CH3PR11MB7772.namprd11.prod.outlook.com (2603:10b6:610:120::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Thu, 9 Jan
 2025 19:00:39 +0000
Received: from MW4PR11MB8290.namprd11.prod.outlook.com
 ([fe80::4a98:509:3b05:29b4]) by MW4PR11MB8290.namprd11.prod.outlook.com
 ([fe80::4a98:509:3b05:29b4%5]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 19:00:39 +0000
Date: Thu, 9 Jan 2025 14:00:36 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/guc/slpc: Enable GuC SLPC default strategies
Message-ID: <Z4Ac1C570gO7o7Rb@intel.com>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
 <20250108141318.63823-3-rodrigo.vivi@intel.com>
 <9620547a-6512-4d54-bc11-08826da1adaf@intel.com>
 <855xmpayrw.wl-ashutosh.dixit@intel.com>
 <Z37r1CVAKJlHCRdA@intel.com>
 <858qrkva32.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <858qrkva32.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4PR03CA0265.namprd03.prod.outlook.com
 (2603:10b6:303:b4::30) To MW4PR11MB8290.namprd11.prod.outlook.com
 (2603:10b6:303:20f::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB8290:EE_|CH3PR11MB7772:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bc25152-fc96-4f58-2939-08dd30dfe869
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5JLM4xvMWnC5obQzeQH96wLrBYCOj7P68aVcGCbVeOem2YNQseFFR1T9vABq?=
 =?us-ascii?Q?71KerwU0lD398h/gYGssvCTtdIR5/j9fvBAu+zP5ixIt//FdEB5n2GsKTndD?=
 =?us-ascii?Q?k5HP8xmCjG7pbvUeT63ww593I+0uA7TXljmb+k56UvzjwfBWMFcuPbSybZYs?=
 =?us-ascii?Q?PbMdni0sjp9xDQf98J8rKjdQe9WYVIo3b7hYgvsesWKNrZOxc2U1Dh+KkgRL?=
 =?us-ascii?Q?IY/11vR7ezFE5vPQixrc6qMDEWtxxJTY02jQplxnDcn28oq7lYwSndSngS6m?=
 =?us-ascii?Q?smvkPqhqOmqLnK/+ix70ueQZTOtKkN7kUeOmpDYfyIgK2xbjI5Y+lPhrP3U0?=
 =?us-ascii?Q?ZkpgA0m63S9boRsd6KgM6ZTJrlyZ8mbIWoFp33AUl6PEkJR6/0mK9tuZTkY4?=
 =?us-ascii?Q?1ZtlSotauOlVI7Lwfv9SIl3icx5wHdADOk2xG0n2PZ534Ki9zmKRx/19fLFE?=
 =?us-ascii?Q?hqZgmZzB5VXbrcdQ1USuMAqF2i7pEJ+OPVcj4PrlyhPrQF+3KSem4v2Zcnpa?=
 =?us-ascii?Q?iy7bE0qHTM4KkA2INmjr8TIXSAJljnD2B3Z/gTyZzF1rxYU4sFBZed5qYr7N?=
 =?us-ascii?Q?egF96Nyq0mQRH6DTtJiyuG8ZDCL6/ceuNvOEf2oqLVDXIEh1lP2K/MwR+8U5?=
 =?us-ascii?Q?bM2ljNemO7Vg03w3+4dRY1MpYbpXN07GCl2M+7V1hrFmL+skZ2OGpzSc8dn6?=
 =?us-ascii?Q?QLsOeolMVPPSVdNiJ22yPj46Gnt6XoCjFcghvojJ5owtszV7aGAi6eWei/dJ?=
 =?us-ascii?Q?E+AH+M5Pnid18ciAc2vUmaIsOEyqh/5ehLg8edgfHy6tO9NWaPxD0NxDY/wE?=
 =?us-ascii?Q?K3Gu85yTwrhMkPyTTa0zX5i7rIp06fA3k2dvGdQpGHRqr7liSc8TOT30bMSO?=
 =?us-ascii?Q?rrtGfjLbb8LowM5WXJBxHPJuSpey2Z40X0e7vBfdOclCWh1as2EuZGf8ITr3?=
 =?us-ascii?Q?1TWzgFhmfnM1trum9FS28uTa+Wnfv+eKdT5HJqtd9dGJTw8SiVNP+tzQMKST?=
 =?us-ascii?Q?pnH3yDEsCDehhVw4r7GhdaAqNGwJqwVY0OcEKgzFFq1FpwEweaqczsD+S0cW?=
 =?us-ascii?Q?GPTh/kUsUS3BmIwR8ER2Rw9gq4PbG74g6ltNW7IS47ZCMh1h7G+A8b2RNcjK?=
 =?us-ascii?Q?DKpaSVOl255byXggWtJ3XXzV4oJCUuCLtfoB7AUW01GJ7xSRwB280PRIHpYN?=
 =?us-ascii?Q?HhQSD0pa6cD1pl87K0PUHuSN+Aaj6VP99i85qR7jHXhEuMhgdeFRCo4qtuCa?=
 =?us-ascii?Q?2kY/bkQXt2bYi+Yo5B6NSH78uwGf+ZxHxqzkN4xO6KE3epDVi+PQ9MvCMv/E?=
 =?us-ascii?Q?gheFmc2hwKj72SOYYc5T8p80WHP6fUoIs192JRioA4uFQ0qxOQVJqnOPcwTc?=
 =?us-ascii?Q?Nm8+CcAPygJnDgFwNxSgBi3yM6kN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB8290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+Gqpow5R4AWcGiPvsrEiOqbhq79k2Ik7N+mnno429aa4idhiumbTvCL/JdN2?=
 =?us-ascii?Q?/szpEaveEqm1PafvUs6VioMnwCoHLRewR9uPyUzWYfbfy2B35t8zkR03skDP?=
 =?us-ascii?Q?obG9+7o36yb9mSq626JbNPxaUWzbrgejfRnZIKMf8LgBUDP7T12dyY7xXUjy?=
 =?us-ascii?Q?P90U7QGViCJofmdG1E1kNQgzjBRKnrkVxMLgHRUKqBetxGX+XP9hwKcdbUVJ?=
 =?us-ascii?Q?yX9KXEw8aP4wNd0koQMKZwxtO3u9RiS9Swln6Lju90E2iKrmsPncmTz+58xW?=
 =?us-ascii?Q?ChfuwFFw7o6a3Ck4plleUecS9jzB+YQFfwnWPlQeMHNMrDSGFSY5SDMEBkna?=
 =?us-ascii?Q?PnsXhn2LTdeWd8beckBDrxkkC0HUY1o6RAX/gOLUqc3r0F6R2DPNSJwNVmUt?=
 =?us-ascii?Q?wElFFqYs0TfBjT3zMQ1HyQebFz8/gdDCo4heNs0DhP1NYeHrl1Hf0s5s2VnY?=
 =?us-ascii?Q?+9nGfsqz5lK+LW030uMCFGyulF1e6hicflZXoYVvYhmjOsFB2tNDjTsxIPZi?=
 =?us-ascii?Q?88GodtI0IUp0dUBpV7ngOKLWa3WYoTWuphbHQ0llNwGvVnUOMOZ6foRxIk+m?=
 =?us-ascii?Q?H5mywWwRo3mnTBVNx68tdsbGqoodPEjbh0z+KOBac9OM1WF2dUtCz1WlLzaN?=
 =?us-ascii?Q?HRLbvppd6Rgrod8va9N6mHqYjvoyPzjo0qjWEZmL8AT0Kyh4yXgD4O9EVoLF?=
 =?us-ascii?Q?q3vpBkLM5IEJ/kuH4SiGRcrB8Rpb5Re9okOwBAsHx0OGvMpO76TD8Y5tiRjE?=
 =?us-ascii?Q?d6wEMW6SLKwiaR9xT+6nWqwHpdJD6QTbRNfQyr5PzMo9QieWa3zW+FTb7hm+?=
 =?us-ascii?Q?LOgjGdLx0GDYygBIX4u1Yh7v3Js9SJBYL3hGEuFzP9o+SRqgM0e4/fDsV8Vw?=
 =?us-ascii?Q?wBUrR43pD/JAkDpD2HT9C2bLdLL3f+yn66CmQOTnQoo0zaTZYO6LQ0fN/aWg?=
 =?us-ascii?Q?bHltR69Ueza26/hTfE/0DLpCmXvP3ebOvo0C7AaHssv2hKm2XJ7u6BTiUS02?=
 =?us-ascii?Q?U7zGl8yg4rjy85gA6GbVaZrbzFprZlKFqSlxk1MJos1YT+dOpMKoswkQRmif?=
 =?us-ascii?Q?3RFfR+nD4z6awHELeM1QEjOfmghNOY+mGfKpDsIdDPG2PinamAA6TfkZv+7j?=
 =?us-ascii?Q?IIB8/OmCVS635Ze13JWDyZSzUymMtV/sEeM0S3k/tITTteOT/ZAlpynvxq69?=
 =?us-ascii?Q?y6p4PSVPzyot8mHdHzivbw21ytkEgQ5r0iiNVvpIP95hd+kndOCECCuQITm3?=
 =?us-ascii?Q?8ZujfnE2AjPpbbtnpP23DKmrTJIxoWQ8d28Ok1Rwx82w/MkhxmQuGDzjEyd6?=
 =?us-ascii?Q?VBcd3QNMUot3m9QfbPq0AUTgahcH3ljBx61AI/ZA5CW799Dyx4dPXKw6PsoN?=
 =?us-ascii?Q?acp40V0QBsAZNsjOGyPPrFVZAiQsI+v1i08HxQ2YIioxqxYGbsXa77xpItIV?=
 =?us-ascii?Q?aECFbjYGNdG89UPUTCTFf26FXuBodr3NWHnThKSSPoTTq9RX9jKlnIP6hLxa?=
 =?us-ascii?Q?D5zSF4Shpghic11hRLcoFNdoag+yOnQkCKu00uC0teEFo/vmMavDWtiVe/UH?=
 =?us-ascii?Q?Qb73NTW5Qm1Gh0eBucBZFhZGsmiKJH+YAMhHDu0rGKwussvvZAG5mUL5fmMk?=
 =?us-ascii?Q?+A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bc25152-fc96-4f58-2939-08dd30dfe869
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB8290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 19:00:39.3927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yXayCFt6d6bGugHRbA0cvnsqIFDODe0Lku8AP1u5y9VX3OlrIWTUEuqYGoeIorWCsIAWKsafxtJBN0XciLkIng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7772
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

On Wed, Jan 08, 2025 at 09:18:41PM -0800, Dixit, Ashutosh wrote:
> On Wed, 08 Jan 2025 13:19:16 -0800, Rodrigo Vivi wrote:
> >
> 
> Hi Rodrigo,
> 
> > On Wed, Jan 08, 2025 at 11:30:59AM -0800, Dixit, Ashutosh wrote:
> > > On Wed, 08 Jan 2025 11:11:53 -0800, Belgaumkar, Vinay wrote:
> > > >
> > > >
> > > > On 1/8/2025 6:13 AM, Rodrigo Vivi wrote:
> > > > > The Balancer and DCC strategies were left off on a fear that
> > > > > these strategies would conflict with the i915's waitboost.
> > > > > However, these strategies are only active in certain conditions where
> > > > > the system is TDP limited. So, they don't conflict, but help the
> > > > > waitboost by guaranteeing a bit more of GT frequency.
> > > > >
> > > > > Without these strategies we were likely leaving some performance
> > > > > behind on some scenarious.
> > > >
> > > > s/scenarious/scenarios
> >
> > I do need to re-enable my spell checker during git commit :)
> >
> > > >
> > > > We should also mention that the platform defaults for enabling/disabling
> > > > DCC/Balancer will now be chosen by GuC.
> > > >
> > > > Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > >
> > > > >
> > > > > Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >
> > > Does this need a Fixes: and Cc:stable?
> >
> > nope... this is more like enabling a new feature...
> 
> Hmm, if this really improves performance, as the commit message seems to
> suggest, why wouldn't we want this in stable, or at least LTS, kernels? So
> why isn't this a performance bug fix?

hmm... performance is not listed in the stable-rules as a obvious case, and
it is not a regression, is really a new feature, that has the potential to
find some later corner cases. So, safer to just enable as a new feature...

Also a feature that is really a corner case for the end user... needs to
be using both cpu and gpu with high utilization and a limited power budget.
General benchmarks and usages don't hit this scenario very easily.

> 
> Ashutosh
