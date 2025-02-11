Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363C5A30286
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 05:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FE310E180;
	Tue, 11 Feb 2025 04:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="icBFGlqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C2910E180
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 04:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739248033; x=1770784033;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SQybnVV2pc7mizECfn+OxHKAk4xFZcQDaeIOE/0pF7Q=;
 b=icBFGlquod8FnnWIlBnTAPd3RBuv+9HeazLWuw6r0v4/6KAWX25Exwtf
 TDmZRv2+m11esdjsodFl0AgqPSnadDuT5Jwbc4dyOtGraemByvrZv9FDt
 eBh9fwqksjRoQ/4Ci3cmZcecF/5MGmlOC1j0HGofxIqPXn6XBQFgE11BL
 OUrpToCzWy+souUIJoaw4rteOayDyL4kQI5EXWj7uJ6qZ2r/mj5DMa+n8
 EDvzOlVsjDZ8upKXyRgvRxShvXMqcZudmNGSnLfjH2Vb84CDk4VjYBdSI
 o7B2nAtLKTggz8/ofc0Vl1ePp4KvBVelO5Ee5DjF32a3hWk0hszPECvQG g==;
X-CSE-ConnectionGUID: g8BeReBhTkmSk29wKXz15w==
X-CSE-MsgGUID: EAC8FLXBT8WgGpEpKz+/CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="51246203"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="51246203"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 20:27:13 -0800
X-CSE-ConnectionGUID: z05zkR84Q9K0Q4Z9eJVMyA==
X-CSE-MsgGUID: EVa27b0jRRmYd8FC7uDdiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117007519"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 20:27:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 20:27:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 20:27:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 20:27:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kaG0iqtSmUsuO+QTyTff3uxhd9/hyuWtQJVvYZmfrGKgg8zzxcLle4MJJdJEuWJV/y080QeoPI1pb5mkykiv8WAgKBXEvgZNRlk1DHBh4Qq2TJDfVjg8Ewq2Er5a8m7WAOrjIKKK3xJyvQbKnUMp7zXrVSZzuNlEs53su52v5W8tORiDJwemq9ULLdeeqg2UMZUKf9mwUO83+/YefgsQtF16felJ4o7vqr76GVEr0JNcXozBz9rO2IQdVlFlXStYC2CqwtcZKnnzt9Nehvm3FnjpY4DPPSx7RWOIxa3/sZhcNi13F9f91nAAuuTQTxrf1Yx8Ppxc9qhmsJ3PX0SzGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N+IYueSsenDuuREKoBE0p2QH+fefGUKZ32RN0qvqZL4=;
 b=S+wOH3BFX2932SoxUDClu/ofFfpbsFGPH/7v7EJ/96nzccfESjPvxN6lp6XlvCNZC9OuToMdG8HT1TD+Z4qhM7n7r8Wg1r6QBUW9BT3+gSm+P4AnYszcCuYoD6pHjAkB7txgYuiMCU4wxOyN39mUbDZl1/l6ia5L1/xRNuaPjzcAtTxvqoubNPLIIQxKI/Z4lxLQ248uFGFijCX2+rC441c5D/4os2V0xJJQeDdI3GPSyzDFRIuMC+ZaHne1js06kUJGnfesvRpMxvgaY0n/opMNPpKpLX6ihdqyPqEb4mNV4C0T43KPe7J+Kp4lQ7KnMYv98MGo4JbRAuCGWGbm+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by MW4PR11MB8266.namprd11.prod.outlook.com (2603:10b6:303:1e3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 04:27:09 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 04:27:08 +0000
Date: Mon, 10 Feb 2025 20:28:08 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Vishwanathapura, Niranjana"
 <niranjana.vishwanathapura@intel.com>, "Siddiqui, Ayaz A"
 <ayaz.siddiqui@intel.com>, "Mistat, Tomasz" <tomasz.mistat@intel.com>
Subject: Re: [PATCH] drm/xe: Add per-engine pagefault and reset counts
Message-ID: <Z6rR2Hhj+fG8RCMQ@lstrano-desk.jf.intel.com>
References: <20250210193545.96003-1-jonathan.cavitt@intel.com>
 <CH0PR11MB544474FDFE951F58BE4F7DEEE5F22@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CH0PR11MB544474FDFE951F58BE4F7DEEE5F22@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0208.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::33) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|MW4PR11MB8266:EE_
X-MS-Office365-Filtering-Correlation-Id: 27665053-2680-4359-82aa-08dd4a5458eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yg1bOrV24kGrtKKXhgqbKZcyEDuxF5jQDBmTXaoIf0z0JROo7YBWd4P5t5Ut?=
 =?us-ascii?Q?RTiPtvWTOy+ZooqRxUSOwdBvDSGmTJ38nw9ZJvmVdPP2HePN39VhfgZQ50xW?=
 =?us-ascii?Q?JR4V5JGwapdBgd5i4jFaaKq/+SAi6HSJEzcgoHvWmB7G2Y7+vFQVUSK2HRZZ?=
 =?us-ascii?Q?jVklfr0olrbOkhjIEm+Xe5k7EK9KTGqF/XbHXxusx1A0I+Rnl3YkqDVSF5I3?=
 =?us-ascii?Q?E93ZkLE37AdNn+5rxgDRtxxvE8qcvj2fWDuqJHhu/MNbV7MzOk/Y/Rv3rUre?=
 =?us-ascii?Q?sZcu7SZyYW2RJNF8JCmlUOEphXExu1S05tiAl17IbcyBeGG+mf5/wg5iQfYP?=
 =?us-ascii?Q?X/vGKkBa7VVx8N+O5k58VGjOVaeGfXIgw3tnquAfGAQdYGc+gE+hxzejkMM4?=
 =?us-ascii?Q?cnt5tNvgV2UAQ+2E+c7Eqq40xK0SS7XXD+y4F8AbmDaKYYIj+FeXnoBhKRnS?=
 =?us-ascii?Q?ZqAgBo+SWDLEXXCPjm4RG7AB7QzFLXFMhcr0iKjuRXuzB90MtL+peTvllUGe?=
 =?us-ascii?Q?sb5c2eSgAiekYSrfHHG2592bJZxkpBfvbJDgSlnB7dCiKB+91LswPmk83hBy?=
 =?us-ascii?Q?fN+xJ54yE44mAmxOdrDNRLAZzWLaCaTXX6iJW19EOMkqy5nDjYPLy/tn5Mt6?=
 =?us-ascii?Q?GNuEQ9m0Er8Svow+bvMCGomlaHvBTefXOR+F1HU7bvxx3k5dwsYtk858ENn0?=
 =?us-ascii?Q?QV2zzGbYxNpoVyavM2LpzneNU8dgrqGRW3sFHQekf97YDmQg4wUu9ScdFO7U?=
 =?us-ascii?Q?qFmzkkA76atDeY2MFlpXGZiXzPkuIZv9IUTmCsIszxSVkqPEhGpRVQ6ouDwb?=
 =?us-ascii?Q?/c2HCGqrPyr8x5WxQTshqz7l9rzARfD7A+uRXBsLRrVzp6Bh4hEk9N9ptyFd?=
 =?us-ascii?Q?G7BG/Ttx7f4Y3W0Frk3unP1Rtq9B1q6Aiczybz7tqWsgutAZ5rnlvq3/31sf?=
 =?us-ascii?Q?ju+PDoQEMaez7a1PFfaEX7isumgq2OXv/zggWuOpm6wmfAxdVkltOAxnXKOI?=
 =?us-ascii?Q?wxhuzboD+2sJzYQms08aeckPey0hC8PWzKu5CCBeQSLfk5qbUO59ayrKUcrC?=
 =?us-ascii?Q?aQFmQ2ol/o+v8tZpgatDd5G0LgTCdyGahr5UiFEkrjKzs2EsPS+lUw+x7Y72?=
 =?us-ascii?Q?QzkOcZwVoyhwKGV8ux17pZR+2R89BvMTQyt49RXIeHpPVbx1OOAYer1Qies9?=
 =?us-ascii?Q?p14ODP5zWoSu555I3aLridHu/k9eiXkIg7wVFbcj6qv0p5sqCic3cKPgXB9O?=
 =?us-ascii?Q?8oEoUHi5waJSh1EAN++dYteps5qdFpmFOWFgTk+5+M2kfSIoil00SXqFneMG?=
 =?us-ascii?Q?3LnuDH+KpSLg5AqGVM78rBIZ71vj5KkSiNuKhPSdWNi21u8zP3Lsj3+0+RQM?=
 =?us-ascii?Q?svqHs97PVLIv/8QIj2gU767WCuBh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?55lRQ1YQTKF9KlFFQxmf7LU1ZiISP0o0UQRhSPw9oMtqepKwRH4SsfHJ2Zd3?=
 =?us-ascii?Q?V651y1HnXUaBFaCWVJGMSZvIGlqUJwlT8LTAiNpmdkoo9oeqMDfz8qz+XdLb?=
 =?us-ascii?Q?lKXIFLaiAlhjm687aTsDJfNVf+MK4hJ7VP1LBZQ+gkqP/N2cHtn+bwUEmg7L?=
 =?us-ascii?Q?DStABsCktTsFdirJdgTqI/dPFOZKuTlamcfgParKy2nUsi63ZMulR+7eyz7b?=
 =?us-ascii?Q?UJKn56cf0jEiDolYRbwf2lnKn+NRgdITlYfPlcWMOmefMM38RMJ5s+T1PLQ6?=
 =?us-ascii?Q?/DX19hjBNuDDpWhaVyyqcpsHazfVXWHYNHD8xawqO/FVpVXUQ46uQ7GGOZv/?=
 =?us-ascii?Q?z2YS5fc6ZKXILAGfIKt979Dn++znR8IaSReEiuhi7k9kM7h8kzS1i4qXIoI7?=
 =?us-ascii?Q?mqduILktwwVXJpZ1k1x4yAe3OVQ7k+zs8cO5Ssoq3YwMGgcsJPXRtDmlj9MT?=
 =?us-ascii?Q?UGoSce7RIK3jUcUQUmInosN+o7kvhJlQr+nN1Tci3nL3HZ7HdyzYgYXiOxMX?=
 =?us-ascii?Q?e2k71lMIMIQR7wm2dMa56QxDDBTG4BnbRgRSzp37zR7TMfd+qxl5iEB0h5UJ?=
 =?us-ascii?Q?Tvq/u9t152ribNKfpwJ38hfjVpUBOPcx63igqW8Iq6YhvYETwcPn+si3hz/L?=
 =?us-ascii?Q?fP878qxY3dxBP6iGKnugqxwAKYpBnUpnHXU2UICeo4EE8Npfm6jgYHcMXaND?=
 =?us-ascii?Q?EQeHg3cu3xDdJRN8lNxV0oi07d1rqe2y3H2YSxJZM+PdlCWU9zeQMXgw3XyE?=
 =?us-ascii?Q?4XsNQTTLDtz1fsR1VH3WH/eQOWnCim8XS9xm/6HXGZGavFzLyCD3Sr5anQJR?=
 =?us-ascii?Q?vMU3hn3+1NTyAsAW7xgLdMk6P0FFlvb4WQ76jdD654aIGZH1bGAMgRSv4RAT?=
 =?us-ascii?Q?9bVSuVpcDMFKMMgvhUggRSQuhbuCJizyj6aDk+5Pkf+o4pveiQ9KPMICW4j6?=
 =?us-ascii?Q?WyOAByDEewShZlbL6kr8CdZK+Qqq15s+dyZ0S+wSQtL/7wGuLM9sxYZr5viG?=
 =?us-ascii?Q?UYU6P2Rl9SSYrT8FfiQ6fjVKVd6neeaCgb50yGGu3IBUMM2lhQFFMyFIWHPU?=
 =?us-ascii?Q?BtP7td4p2SknuaTJZQCsX1HWU6MEYdPEwLHJpYiAyagjrKNTzQFc1TqxEcPA?=
 =?us-ascii?Q?7U84nNzQ72//PWLfKIGImkIqA1uN1+tMy1ISyCbISAldUwOt3V8ERIU6auuW?=
 =?us-ascii?Q?8RJiWvYE1W/FNB7I8A3cdHOcxNFReHKoxw9ZZQ6p4DWQ+yzq/kEr1QOco1Gr?=
 =?us-ascii?Q?gkZ1CnAVSwcMRRVMWjgaT/qcsSrcgJBCQZR8mGU9TgH2ACFH3AZ1dFutf3r/?=
 =?us-ascii?Q?Srm8mWbJGHKbymuKDlK0OxtF8IFtjf/Frx9GT7XjT+km4AOTAYQiJ7vvu63A?=
 =?us-ascii?Q?+qHIRz9vK+DlRIQx80HI7Y3Zbj9cfmbuLbCHgSCS2Hydq4nX+viTn+dM581q?=
 =?us-ascii?Q?SbIcH2gC8LXEJ2Bw3TsEZnmoWQVkcexdEHM8s1GTBluvuvTloi5SLpqh+5b2?=
 =?us-ascii?Q?NxbBQJ8hvCi+WRipm281eMztvFFbh4MU/VEkc6sH9We8IRQHVqApcMAhto0t?=
 =?us-ascii?Q?+kt/wz8lkJf2QJb6/WyH5t7bIgx+Gk8dqueK1s4D/Un5KY9tOe2V2QfJJRpX?=
 =?us-ascii?Q?rA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27665053-2680-4359-82aa-08dd4a5458eb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 04:27:08.8329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GB4vW+rkp2yqE/naOUZ/OZgiYSbz+DEiYoRE1iWaibJgHRSonEQhTnq23hAHJRB+wj+mbnPDD8f3DS8nsHw+cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8266
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

On Mon, Feb 10, 2025 at 07:37:36PM +0000, Cavitt, Jonathan wrote:
> Wrong mailing list.  Sorry.  Please ignore this email.
> -Jonathan Cavitt
> 

I replied here... I guess continue this conversation here? Almost
everyone in on both lists...

Matt

> -----Original Message-----
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com> 
> Sent: Monday, February 10, 2025 11:36 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Vishwanathapura, Niranjana <niranjana.vishwanathapura@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>; Mistat, Tomasz <tomasz.mistat@intel.com>
> Subject: [PATCH] drm/xe: Add per-engine pagefault and reset counts
> > 
> > Add counters to all engines that count the number of pagefaults and
> > engine resets that have been triggered on them.  Report these values
> > during an engine reset.
> > 
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > CC: Tomasz Mistat <tomasz.mistat@intel.com>
> > CC: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > CC: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_gt_pagefault.c    | 6 ++++++
> >  drivers/gpu/drm/xe/xe_guc_submit.c      | 9 +++++++--
> >  drivers/gpu/drm/xe/xe_hw_engine.c       | 3 +++
> >  drivers/gpu/drm/xe/xe_hw_engine_types.h | 4 ++++
> >  4 files changed, 20 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_gt_pagefault.c b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> > index 46701ca11ce0..04e973b20019 100644
> > --- a/drivers/gpu/drm/xe/xe_gt_pagefault.c
> > +++ b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> > @@ -130,6 +130,7 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
> >  {
> >  	struct xe_vm *vm = xe_vma_vm(vma);
> >  	struct xe_tile *tile = gt_to_tile(gt);
> > +	struct xe_hw_engine *hwe = NULL;
> >  	struct drm_exec exec;
> >  	struct dma_fence *fence;
> >  	ktime_t end = 0;
> > @@ -140,6 +141,11 @@ static int handle_vma_pagefault(struct xe_gt *gt, struct pagefault *pf,
> >  	xe_gt_stats_incr(gt, XE_GT_STATS_ID_VMA_PAGEFAULT_BYTES, xe_vma_size(vma));
> >  
> >  	trace_xe_vma_pagefault(vma);
> > +
> > +	hwe = xe_gt_hw_engine(gt, pf->engine_class, pf->engine_instance, false);
> > +	if (hwe)
> > +		atomic_inc(&hwe->pagefault_count);
> > +
> >  	atomic = access_is_atomic(pf->access_type);
> >  
> >  	/* Check if VMA is valid */
> > diff --git a/drivers/gpu/drm/xe/xe_guc_submit.c b/drivers/gpu/drm/xe/xe_guc_submit.c
> > index 913c74d6e2ae..6f5d74340319 100644
> > --- a/drivers/gpu/drm/xe/xe_guc_submit.c
> > +++ b/drivers/gpu/drm/xe/xe_guc_submit.c
> > @@ -1972,6 +1972,7 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
> >  {
> >  	struct xe_gt *gt = guc_to_gt(guc);
> >  	struct xe_exec_queue *q;
> > +	struct xe_hw_engine *hwe;
> >  	u32 guc_id;
> >  
> >  	if (unlikely(len < 1))
> > @@ -1983,8 +1984,12 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *guc, u32 *msg, u32 len)
> >  	if (unlikely(!q))
> >  		return -EPROTO;
> >  
> > -	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d",
> > -		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id);
> > +	hwe = q->hwe;
> > +	atomic_inc(&hwe->reset_count);
> > +
> > +	xe_gt_info(gt, "Engine reset: engine_class=%s, logical_mask: 0x%x, guc_id=%d, pagefault_count=%u, reset_count=%u",
> > +		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id,
> > +		   atomic_read(&hwe->pagefault_count), atomic_read(&hwe->reset_count));
> >  
> >  	trace_xe_exec_queue_reset(q);
> >  
> > diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
> > index fc447751fe78..0be6c38fe2a4 100644
> > --- a/drivers/gpu/drm/xe/xe_hw_engine.c
> > +++ b/drivers/gpu/drm/xe/xe_hw_engine.c
> > @@ -516,6 +516,9 @@ static void hw_engine_init_early(struct xe_gt *gt, struct xe_hw_engine *hwe,
> >  	hwe->fence_irq = &gt->fence_irq[info->class];
> >  	hwe->engine_id = id;
> >  
> > +	atomic_set(&hwe->pagefault_count, 0);
> > +	atomic_set(&hwe->reset_count, 0);
> > +
> >  	hwe->eclass = &gt->eclass[hwe->class];
> >  	if (!hwe->eclass->sched_props.job_timeout_ms) {
> >  		hwe->eclass->sched_props.job_timeout_ms = 5 * 1000;
> > diff --git a/drivers/gpu/drm/xe/xe_hw_engine_types.h b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> > index e4191a7a2c31..635dc3da6523 100644
> > --- a/drivers/gpu/drm/xe/xe_hw_engine_types.h
> > +++ b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> > @@ -150,6 +150,10 @@ struct xe_hw_engine {
> >  	struct xe_oa_unit *oa_unit;
> >  	/** @hw_engine_group: the group of hw engines this one belongs to */
> >  	struct xe_hw_engine_group *hw_engine_group;
> > +	/** @pagefault_count: number of pagefaults associated with this engine */
> > +	atomic_t pagefault_count;
> > +	/** @reset_count: number of engine resets associated with this engine */
> > +	atomic_t reset_count;
> >  };
> >  
> >  enum xe_hw_engine_snapshot_source_id {
> > -- 
> > 2.43.0
> > 
> > 
