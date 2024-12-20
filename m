Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317789F9A08
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 20:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7959510E4CB;
	Fri, 20 Dec 2024 19:13:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJqmHHhx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC09E10E4CB;
 Fri, 20 Dec 2024 19:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734722014; x=1766258014;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3S6V35pNljaDJ9zjcsYlScjJm1kyI4ApCrcg6JNj4ag=;
 b=VJqmHHhxNJvKcETTDbBjWi6SOvZ+PD87SzeaMbP/YNvzI1GswOtyUZ5w
 5cYYzQUkhxVBKWPKCV9w3oIaumLM3+CD0DAjJx2NcG+W/P2YX+hajYXl7
 ylHgUQHrBCYsHQnL7VjkOqJX6qygslzIyEx9dJiiB3fkKQ699rAm8kyL3
 a9PAQHAKzBlNbiFnOWBhpbZ7YuumGM4SXzyQ6Ro6hEqLN0AG09gpXaUK1
 gGNUYEOunixsep7go4hHLMK6lLl2jH61dYlgSv9J538uJvMwCFnf8gesZ
 2E0qHDMZbZldymjQKzAd2KStOy6QqxWGaYqcQSKLBEVIYsG1Dl+mIeknI w==;
X-CSE-ConnectionGUID: Ci6XiotkQ3S2e4e4tl8ZWg==
X-CSE-MsgGUID: zdxmPLe7RVeIS2vp1uJ0cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="45771797"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="45771797"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 11:13:34 -0800
X-CSE-ConnectionGUID: LaVkNLx4RPKEWpo/g8Lavg==
X-CSE-MsgGUID: JDOvp7boR3C8o5nIcJ8fEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="103562229"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 11:13:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 11:13:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 11:13:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 11:13:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S2CBu/lH/U/eSOZBlsuB9Ub9qM8B5HVZOZYwSVlKr/LHzmrKHONslp23j2hFOkKcXMp+kzMMgGLgHipuVm0yIMbcLrUL0tbYqYNjHEXB7lemvYv/U5YQHUCtwt3v/5kEfmdCLdLeKpFcn7FuqwNUxLqcHt8TLbizaFVyq0eAS2jYaRZaVlfhHIeU5fZDOaGTJD3asjOi5k5qOVJa5JemY9b9SBx3ywaWAI7hd8y2uEa590xvSwlxdAkrzxzF6NVxoCghtimwqeRWBn7WFOGUixGSeBU1jYmp+MkWMWFhqgTP3d4YQmtCF9YU4hu/xK5vMpuJz2wbtLW849SYClAzwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f2EfsWe4AlDDMZzMGCmK3gafucAs6TNGwBKU0MBUVjA=;
 b=A8o7H0mFyQI2LkAS1Jq/JP25vg8fLCFDRVKlX+WbFjsbKVGr+telEfT65pY4UQIP/xTA7ZVcpgGIXPVcE1Kow5XeGVLcCeZsfsQT/7JZDd8NKloH8SexxfkwMcfxJpSSizrSxvTDE33iXapwxHbXl+gDJ5ni8kC8K6hXEYnlfKTyLoXJCyF4UUB/o6nQ0DKaZv1fwfqlaTXwnGzrgCJDJcdOkC93yhTt3oQsKqLl18E9hKDHHO6cNhG1Jl4r5AdTIa37nNYTdCOBkIrAG6Z6N2GL2QmMsKmGl1UxxqFjBY4xiM1jRaPytrcPagfA+kkvdmxnBfC4s/p8l+DP06l7Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Fri, 20 Dec
 2024 19:13:31 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 19:13:30 +0000
Date: Fri, 20 Dec 2024 14:13:26 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>
CC: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Lucas De
 Marchi" <lucas.demarchi@intel.com>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t v2 0/4] tools/gputop: Add PMU stats
Message-ID: <Z2XB1jhvfreb3kME@intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
 <7d77e830-54c1-42c0-9402-16937697d2bb@ursulin.net>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7d77e830-54c1-42c0-9402-16937697d2bb@ursulin.net>
X-ClientProxiedBy: MW4PR03CA0284.namprd03.prod.outlook.com
 (2603:10b6:303:b5::19) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SA3PR11MB7463:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b1a4271-3d73-4fde-2353-08dd212a63fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?P2pbzIamC690Ff/Igg2hLvE0vfmo0nz+4pL2X3aMPWf/XiUkTeDqhM63yz+t?=
 =?us-ascii?Q?gYEoLsGjsfjvJI6PT9iKjQHhCvXEVVfHcFIYrJP/nCe0W1KwDnCdisxRpe2b?=
 =?us-ascii?Q?XcN8M90cvxoqlkNmliTC51z0GLSB/bjAefE0SmrK7TLJQx3HdPJtpZi0U0G8?=
 =?us-ascii?Q?nc3lCRNXg8NP2SKGeMV161Mes1fZpHSbZ8N04lh4qd7BuWRnFY8mNJPiRIV/?=
 =?us-ascii?Q?LQ/omxB0FnyF7cUvD782/IKUn8ebTu1NUr8cjEjaaof+cdGYdyzBtUL8J8UB?=
 =?us-ascii?Q?qED4QWA4iPP0o/9Mwpgf6QE0hqwK2qDW5gmgyQWSeQiqlCYG+lDyhTYv/hRv?=
 =?us-ascii?Q?lfBvI768+BpXqATcS6I9tXZoDemn1zLWW+HK27ITHVs3v4SkSyuxc/ASj3dr?=
 =?us-ascii?Q?fc3dUpOJI/WPt890nBVnFuK/GqO0+JwAtiAbBuqDkiFoXechzyPEbufizZDx?=
 =?us-ascii?Q?Zg/5xSXCX/srlp3awwLymnhzH9wFggNQgf70XizrJFRzkj1Z3bwxhZRzRvcB?=
 =?us-ascii?Q?kAepINaLFPfh2O5gAGW0QA6q7fkn1RGNXBUFnC7u06w5XcDFWEyxEuWmtBqV?=
 =?us-ascii?Q?qWfSLAprvaExeuGMlCRhMpRV3FkJWJMX5SRsGru+5dwDlPMXmTWIONfV0Vbl?=
 =?us-ascii?Q?0nSemLQNbx1noPo3wYejNS23rqRmVGf8o6QI6GBMII5nCwNb8Pcp1Q5wsv9B?=
 =?us-ascii?Q?CJX6WJrXBmR/3GpmPutRCofsKsTYygeKKNDckN+T9cOxnVRIcR13vIj/LSqt?=
 =?us-ascii?Q?HU2/ZbGwecDHgzzGjD/dhYX5mLpnZl2HfiO0ueNkxs4a8SUlmekt5XHHTRZ2?=
 =?us-ascii?Q?UJrvj75AKKGTsf8NLeseKxsEbm9pqwO5X200tNSa0nwradeWsudel3Ee9InR?=
 =?us-ascii?Q?KxbWiynSTCvtUhbn8LOvGaDu8czTZAoMbP3lkpRb1IZ2YDClD+ffj3uwhAgJ?=
 =?us-ascii?Q?uvdy7NcZBj4vwZFItga9BV89uczhf1xMOzRC69jGwqTtMkXYflszYFX8+hgA?=
 =?us-ascii?Q?TsgJlRPcUEV+eec5bDdovoaKbzdfPavGJeVpW+Vo3+Q4nomhVyufSu2AnZHd?=
 =?us-ascii?Q?N0WkSOtu9jJ0AyZiAG+Qok0geL2RsA5uG8XEpIPtoE7P/sPyiAuWtJeYTu/5?=
 =?us-ascii?Q?1+Y5LwWPwkAthM2TtTeShFOSjikfBAWmqI4oUpYcBwkvf7+UdPhs1eppxx1C?=
 =?us-ascii?Q?oYPVLEGgodpuHBtKhZ+7O4mHSIwzpHulMKs0/wsWjLjGeH3FxP2uvTMgxUpz?=
 =?us-ascii?Q?4aTmNRBQP8YB0uyEcM3uE7KOO+/r28J7XZMxqaFW4pry0xlIEo6AJH2cGNpR?=
 =?us-ascii?Q?l0Z02lHghdPXPwjskCLbumXHgNrO7ILtrkCvkpAGWXTYAQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RMIo2YR76NWqxSkLGqorP6ue838BCXOOLsFktrfDoePh4Cd8HhEo9F/rbKrs?=
 =?us-ascii?Q?ec0Bfz2Xx93/YpQRn4Blh7QLYCiHrd2+cHjViMCx7PLu7VLpAksaAQbozOZ9?=
 =?us-ascii?Q?V2B8bkzkRSwuMlaZJQxDcJZ3ODhHu4/ekc/mXXvRsRaA9YENM0zjC2uBhRvt?=
 =?us-ascii?Q?PEdl5G5mDWVw+QJ5ZhywrCd168xD9V/zquAF0Svo5sxKFpRHs9Nw5jcpbLf3?=
 =?us-ascii?Q?18Olmw35U4vkrfR9Xz0E4xbfeQhU/F26ybBK6qCg+Qjthy//v+DZjXJYdX0m?=
 =?us-ascii?Q?0e4lScB9bHjw5DgORr/rm3fXaeL1e09fENA1oZVqERZb5WOPMmule3nf7bxM?=
 =?us-ascii?Q?O+/56QxShCFlqDc2HB25fBMKudy2FeSQIfoERAZAuHU9HRuBC2Q9eQ5+GnOk?=
 =?us-ascii?Q?rUJyqNKurZgEPZkBzjUutEu7wVzBXI0VSRP27bE+DzioGLVXMKQiPzDpFV/L?=
 =?us-ascii?Q?aB6hfIkzCxnVUloLOJ50ABcELoyzMwVy7IJIi20hKLb6RsZM2OgL+uzi01RA?=
 =?us-ascii?Q?o+KvYJFTdzBbPjiTKHpi0fVFBZ5z6J3YqnDfjn66L611AD51wPursVrM6rsV?=
 =?us-ascii?Q?7qTGeCk9B/fIDGovN7b+8JU8ltv2NeFZs5nquZwHuv4azu4mmrn0yfD9w3ms?=
 =?us-ascii?Q?6wpEiTCX7ovq7nqCt6dV7uNsKnQmFSojGtLB9Zc0t1mgYVb4vG8KAm4F+o23?=
 =?us-ascii?Q?ayuCQNjYjUJ+Z5Or8e6etm2ZEXuvGF5IjpLSg9+vviobFCtfdfRlbGBWZSVZ?=
 =?us-ascii?Q?nItshmeCrvse+jdLDFe7IsbikUQqivdhW7vXI3AOuTPEEAGxYVO3NgBiVdfW?=
 =?us-ascii?Q?Hp0osMub8agw4fwNRbEedezphr0OJb2TR60gCJn3QBEu7zstexPMzujcGY6e?=
 =?us-ascii?Q?is2AdBN3S5fPoH6EO8F9lHbRT3h4WPCnnbp3+BBtyIZCGKVZIqkYuEyGLjbG?=
 =?us-ascii?Q?5/ElPsB+Kb4ioC/TSLMHgsuiIvKhyjcpKhiNVoCfakTHoVcEeBSBc2DTf0SP?=
 =?us-ascii?Q?RD+HkSu2xfeKuDOweJq4f1tv34s6dVyjAmD+/hLBvuPNon21bkoUpM2LRbIT?=
 =?us-ascii?Q?4iObm5OLqAvocRPtutcZJ+9eP+sjQ3mLlUnkK95kjRsxDvA/8DnhsqNpRPWF?=
 =?us-ascii?Q?k09RorRmbDjs0nMOyC0ZBNUrObeLv0rfsYA+zovwY/4D6EFUbQXJMtuzNhR5?=
 =?us-ascii?Q?QQS+geX6gbSYbi8pbatwv9u/Ohu83yr9DM0cWTpVT4Z33a4Kc/d+cLClJG2r?=
 =?us-ascii?Q?3JZxPYbQou9/q3kXxRy2jhI87i2y7cuihGU77V2mdOThM6Q/5WpGBBTRHo4e?=
 =?us-ascii?Q?XTT6hJpNqHTQqJrmn7R/6ZGsZHHoUyub5jZZvyAn53J0ScaMOs9adjRWyXer?=
 =?us-ascii?Q?F6ps5zbUdxQLxrjMCL4WEuetabrGZPm+nJSoEStRhTElT2NCRNaawld+nZGg?=
 =?us-ascii?Q?7IJTXd8K8xE4851NnB+8/RTqmV7DufVzIeZ59Ra2shPcsLMWDRxgG/Mf07sE?=
 =?us-ascii?Q?d5DPBbD1gxyLa9rdUSuAhL9dxmkiLwrf96gAUjDfhV5Xcwn1C6zPOYcpqb1a?=
 =?us-ascii?Q?+Bjasm3q+XYWk2p76zKrB8Ku0/RyVSIa9a01AvjgI2S7VCrBkLIq8ZZbbu2y?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b1a4271-3d73-4fde-2353-08dd212a63fe
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 19:13:30.8509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cTC24pGzBPuh6mR6p1YOnMvLEwXsQgSN6yJyX2tVjVtcUn0meB/TjyAFJWPygaF04+x9pKgJdhW80/CWV8Lx5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
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

On Fri, Dec 20, 2024 at 10:15:04AM +0000, Tvrtko Ursulin wrote:
> 
> On 20/12/2024 00:37, Vinay Belgaumkar wrote:
> > Use the PMU support being added in
> > https://patchwork.freedesktop.org/series/139121/ to add freq/c6 stats.
> 
> Brace yourself for the customary "why". So yes, why?
> 
> Gputop so far was a reference showcase for DRM fdinfo, nothing more. Why add
> a _subset_ of PMU stats to it? Any other drivers could be wired up? How far
> do people intend to grow it, considering alternatives with nicer UI and more
> featureful exist?

Well, currently intel_gpu_top doesn't support Xe and we really don't
have any intention to add xe support there.

We don't believe it is a better UI and more features.

Hopefully someday we can get qmassa [1] part of the distros and make that to
be our default to use the uapis that we add in Xe.

But for now we were in the hope that we could use gputop for that which is
the current tool that supports Xe metrics. But well, I just noticed that
at least in Fedora it is not packaged :/

$ rpm -ql igt-gpu-tools-1.27.1-0.4.20230215git45da871.fc40.x86_64 | grep top
/usr/bin/intel_gpu_top
/usr/share/man/man1/intel_gpu_top.1.gz

[1] - https://github.com/ulissesf/qmassa

So, our options are:

1. Add all the Xe support in intel_gpu_top
2. Convince distros to build and package gputop along with intel_gpu_top in igt
3. Convince distros to adopt qmaasa

Meanwhile our PMU are blocked...

Lucas, Thomas, thoughts?

> 
> Or in case the conclusion ends up being "yes", then lets at least share some
> more code between intel_gpu_top and this work. Ie. make it in a way gputop
> completely subsumes and replaces intel_gpu_top might be an idea.

with this I agree as well.

> 
> Regards,
> 
> Tvrtko
> 
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > 
> > Vinay Belgaumkar (4):
> >    tools/gputop: Define data structs for PMU stats
> >    lib/igt_drm_clients: Add pdev and driver info
> >    lib/igt_perf: Add utils to extract PMU event info
> >    tools/gputop: Add GT freq and c6 stats
> > 
> >   lib/igt_drm_clients.c |   6 ++
> >   lib/igt_drm_clients.h |   4 +
> >   lib/igt_perf.c        |  68 +++++++++++++
> >   lib/igt_perf.h        |   2 +
> >   tools/gputop.c        | 225 ++++++++++++++++++++++++++++++++++++++++++
> >   tools/meson.build     |   2 +-
> >   6 files changed, 306 insertions(+), 1 deletion(-)
> > 
