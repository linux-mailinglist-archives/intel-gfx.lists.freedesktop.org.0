Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4FE6596C0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 10:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B68A10E08A;
	Fri, 30 Dec 2022 09:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A19210E08A
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 09:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672392682; x=1703928682;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mEJCuHoisGO3eYwhtgF54gfQ1aq4D8ASvW7T7uG0fGs=;
 b=MyvUm8py5HdXfZWiBDWkf3fRX3vMJf3PBCcdJEqElI2/IbV8PRV0dZzU
 CpeklXXhVrWtwUsH44YIfJty6PqT0Z7J43+Q+GR5PQox5JZgH82Mg5qeo
 RisoCBb8bU82X77YwqBoayOozJlF9zHdMmrQhGYtH93YEfrM9/F6sNoGU
 EenM4GQWM7pePEHXTo0SfDigp+7Q1hsRk8aN6lOX1FOUVJbY8TK9i2CDm
 m42Tr4Jpw60Gf0QxOPlJ1wjJbIYivQ7GpCtpVuZcLWampD2HApz950Xe1
 Dywfx+zXYy9zQqbLPAoV48W31EXFSwJ9X33g/5sXB4Bfh5EYTCjQB4C46 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="300873656"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="300873656"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 01:31:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="761201180"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="761201180"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2022 01:31:21 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 01:31:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 01:31:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 01:31:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 01:31:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zhnhqs439ZRGqV2e/OEW5T6i91eDlTomk5b6fTVG1eX71C6K2YTx/92kBq+/uObRAoAXhPsPhucille/pbkZUvYzQ95ITtodMIge7KMccWAgkzPRft4txxWW4vXOg21tE/g6eIHYicD1ePT4hpvy72pYDHfmmncMYzhaVowzzgKayfAIYPG0jjT88XvhQ1lR9mP7S0yVviG/Trh2S86Npo/xII9lACnywpoTMmm9cneeuf/uXhBceLhJ6h1jy5o5N9nK6tkrugjGBmzdcuWa++Q3jiJf1n9jhOPOgqetAipjqUhmvUOGoUap0FAQdRg2bnwEE2f9GvkhkUDzQgj5Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6WdD61gB/kvcpVSkc7HjdiwYLfUdv1bGx7R/kd5nwo=;
 b=nVGANa42eyC0nQIsNak0sevmlXJOgWKuO7IYsuI96KpI33xYzFZe+LU5nsuQtxh+55vo2YvA3f61f4kHvA13j2jSTpXU1RG8xMX+PB0qdikc4KAxu2rL+JuGHFh2Ydt3bA6tgaS58XsvrJbCQ4P5/b9BdInj+nf+CZG4y/XitiapjHtat6AnBmUxgKPP3AdxbOhtwvezm7YdKhdup55YqZGJ4BT8L8GgAQ4CZjLVtQeTPSKS33k5z7YwNG/nz03MG+GcRIreX9hVFfPekrc6MWX+Zo+56JFO8ZSrHiUVCzYjGm4y8sZXSCKDqWB2y1XoY9U45t2kEBhKgqeXY/msCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Fri, 30 Dec
 2022 09:31:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 09:31:17 +0000
Date: Fri, 30 Dec 2022 04:31:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <Y66v4NUztJE8l98f@intel.com>
References: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
X-ClientProxiedBy: BY5PR17CA0021.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bf19950-a986-4616-26a1-08daea489a2f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QinZOwOeABAmlVwXaAWQM4AXssJNBsxoJduFQma6uzmrjogRDiwXFzDJVOMvl6VznBAN0hS8KKinLWzi+TdzrcT1eZSzqEZa0pp7NULc68W28SRBXOu7D3oo4EEy88aofgh72y/VCXpYHcX7kWiZ4mah6iCS4PNmJva98Vo69sIuYIbLqJ0iIOPxlt+sjiWN4ajzoBSP47tcsZzYuRyKvZygnYVDMpgXc1CEBP6Wuqj/cfrsTnOqoDa6jmp/JhEE0ZKNhM+6GqJYvhu+nIizjKSPI0xuBSQT2nxmhUhL4CYJ9Blc5EODi95irf7QZWfc6K2d9GQcYrkXW9Rl0P708TehEocvBG1NDdw70xSJUUBpdmjhwiuQIz6y5McF4VOKJBy7kgx67lFYt209RS6WQKodMMIk2yfY8e5nQtjqbqLw+ymclhfk//8bwn8bAqkXRP+cOK/8f4xCvM+2t6njE4mUYLMFw6W/t+U3j28SB8Od5l/gtoumiDyIYby12k+mZccT76+Fsy3/wPA/Ami6kj6rpKIAgOOhkibCeMwKJxMREYgl1Itjiy+y0UM81E0p/M1JqNvt2hHeVilH0J1xbx1bI4tCyyanH2PRDUudEns=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(136003)(39860400002)(396003)(376002)(451199015)(36756003)(41300700001)(4326008)(66946007)(37006003)(83380400001)(6636002)(66476007)(66556008)(8676002)(38100700002)(82960400001)(44832011)(6506007)(966005)(86362001)(6486002)(478600001)(6666004)(8936002)(2906002)(6862004)(5660300002)(186003)(316002)(26005)(2616005)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5CdDdALfRKawNXs1iTGH8pdwEDF/9d+gvOzlM2YRfFh8zBuFANuVnSwqDjy5?=
 =?us-ascii?Q?VDleOuKUoKbRc1XpO6DsqWohNzftb9f0LJxrSW3Z90v9EbkF8aXzX91/fP2b?=
 =?us-ascii?Q?8mnreZybB6c9HzFLioMtypnmz6Yzhs303kCLDRNmejVyvA2DHjNygXLbzfSu?=
 =?us-ascii?Q?zGYnkQ9D0a+DEntKA28cLuoDsnG7Rsg1jsZ0gDLfdcRmc5+i8kGFP91ZPbkt?=
 =?us-ascii?Q?cKeJ9gTPoF+qRPt8Gvy4tPhrU/4HumIIKMCtow8C0YBI1JIRCm4NnVen8EMH?=
 =?us-ascii?Q?bTOPXdxDN4q/1ON8BKVtAic71yQsrGFbCB9cHE8mRLbOw4+gU3WbrTDFl1tU?=
 =?us-ascii?Q?EKpnLm7YALkiTDZvK5nEXw7L15NQi38Tw4wV7x3HIJ5OOTYhX1pTtgJt6E8b?=
 =?us-ascii?Q?hV7Pxy57kNUU6utHF31Q1uhPkTjvk8RddDKOTJ5nUOeUbB1ori72I0moUPVR?=
 =?us-ascii?Q?J5vaTrzVvQBdG85ES3DH7MpgQVi56V+KYiow2F1DD39chwnwpspUq3AAkDAm?=
 =?us-ascii?Q?gg4Qz1C8mBc0LSw2aTw2PfyaKCy8D+C+tNn3shAisNqhJFh5jHleZOzSNCmb?=
 =?us-ascii?Q?rTNhVzDCuYbvGsFXxJZyMK3zkOW+LfVN3VC5OWFjswBKi/C8KsNB+FGVHs8i?=
 =?us-ascii?Q?Qol7sv1c1Sr5jNphxRvS1qqSXxgGtVsTVvV/ZWMD7dhgt8J7ZEWA/lK7vcZb?=
 =?us-ascii?Q?Ibx3paNZvlEglsDfGJdBKhXdVXUW96PGrTCC6EwRjzLyML34Li9rYsNqGZ5S?=
 =?us-ascii?Q?giGPqFh6JrMcjZYJZZDZsJvjzUVrK2DEzGQoqnzR9e6rW8jwWTxpfV7X4K78?=
 =?us-ascii?Q?vwziU3WgaCMrYNR13LyW3dRMDmBHFA7tQVBM3mF12lZd5mM5f2y3WDNvKzUv?=
 =?us-ascii?Q?daUtB/fDr5LfrVcsd2eHtk7we9OJNMinY3PDj5iTziWhry0Wp+dVrNmrAO7a?=
 =?us-ascii?Q?S97V6vpUniqwbjUR4RmS9OeP0akT8VC/QjRhMx7yRlmfaCO7CwWkybcEOg2x?=
 =?us-ascii?Q?JmiN/BBXgLebGmrrKgbrBPkiwBaNDeilpzYq3hZYn61R9aqw3W3mtCUcY2dM?=
 =?us-ascii?Q?3QRE2yHtK3ppnAL3w+BSkPAWfzR/F5tabXe4cbgybV1G58xPIus9EsZAvYNQ?=
 =?us-ascii?Q?6F28K4loiHySXEkMwxedTpEE+nvFMmDsFDZmaYqELin9wy1R8hF6MTfFHHHe?=
 =?us-ascii?Q?sdWsiCWC51nCyYJRYOSLhFHAjHtekC63O0BlltjYvx+HrFjr5eze9SeLpWeG?=
 =?us-ascii?Q?ACpFdXGjJIvVFdXVBFJ1U4jfNvy/OHxM7C927e+XsGQx2L+/OQjOCmJgrxoW?=
 =?us-ascii?Q?cnbc0Kbfv097pmS/mvHXO47FOk6YYFeUNleqkmLpnTuR+rgdMnOX/KzzsZ3b?=
 =?us-ascii?Q?/3JWqDsQmiFKfa2AQKfgH9RvQ0eFaQuLvpwxyaynoVtW2fH2rEqJ7xG9VsKI?=
 =?us-ascii?Q?gfD5KV+BMQPakGw11wkhjFtoayqXBAOqvVW4qzCzM8BXh9TQFPFHQly8MuMx?=
 =?us-ascii?Q?9XIRNn3faHTRLQLKsFo4J/hZwavDTb6X52a78LvR3NPXCWKPCcmPIyFMszfW?=
 =?us-ascii?Q?PPlQD4cRGTpFcC5yioXN2xIU0vocUtDnfd8wxIW1dyppGTtZsZa9PprMM3S6?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf19950-a986-4616-26a1-08daea489a2f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 09:31:17.6828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VkXkcDBrmrftVcGxB+FxGcaJbJYev0n11zPLkqhB6rmFfj3nlzMVTTq55CBxY3LOtB03x7VaJdoCBdFyz1fwqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v16 0/6] Fixes integer overflow or integer
 truncation issues in page lookups,
 ttm place configuration and scatterlist creation
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 matthew.auld@intel.com, andrzej.hajda@intel.com, mchehab@kernel.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 28, 2022 at 09:22:46PM +0200, Gwan-gyeong Mun wrote:
> This patch series fixes integer overflow or integer truncation issues in
> page lookups, ttm place configuration and scatterlist creation, etc.
> We need to check that we avoid integer overflows when looking up a page,
> and so fix all the instances where we have mistakenly used a plain integer
> instead of a more suitable long.
> And there is an impedance mismatch between the scatterlist API using
> unsigned int and our memory/page accounting in unsigned long. That is we
> may try to create a scatterlist for a large object that overflows returning
> a small table into which we try to fit very many pages. As the object size
> is under the control of userspace, we have to be prudent and catch the
> conversion errors. To catch the implicit truncation as we switch from
> unsigned long into the scatterlist's unsigned int, we use improved
> overflows_type check and report E2BIG prior to the operation. This is
> already used in our create ioctls to indicate if the uABI request is simply
> too large for the backing store. 
> And ttm place also has the same problem with scatterlist creation,
> and we fix the integer truncation problem with the way approached by
> scatterlist creation.
> And It corrects the error code to return -E2BIG when creating gem objects
> using ttm or shmem, if the size is too large in each case.
> 
> Compared to the v15 version patch series[1], there is no code modification in
> this version patch series. Among the warnings reported by CI.CHECKPATCH,
> this patch fixes the parts that need fixing.
> Fix "ERROR:SPACING" Checkpatch report
> Fix "WARNING:COMMIT_LOG_LONG_LINE" Checkpatch report
> 
> [1] https://patchwork.freedesktop.org/series/112270/

I have backmerged the drm-next to drm-intel-gt-next and pushed this series.
Thanks for the patches and reviews.

> 
> Chris Wilson (3):
>   drm/i915/gem: Typecheck page lookups
>   drm/i915: Check for integer truncation on scatterlist creation
>   drm/i915: Remove truncation warning for large objects
> 
> Gwan-gyeong Mun (3):
>   drm/i915: Check for integer truncation on the configuration of ttm
>     place
>   drm/i915: Check if the size is too big while creating shmem file
>   drm/i915: Use error code as -E2BIG when the size of gem ttm object is
>     too large
> 
>  drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   7 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |   7 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    | 303 +++++++++++++++---
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  27 +-
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   4 +
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  23 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  20 +-
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   6 +-
>  .../drm/i915/gem/selftests/huge_gem_object.c  |   6 +-
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   |   8 +
>  .../drm/i915/gem/selftests/i915_gem_context.c |  12 +-
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |   8 +-
>  .../drm/i915/gem/selftests/i915_gem_object.c  |   8 +-
>  drivers/gpu/drm/i915/gvt/dmabuf.c             |  10 +-
>  drivers/gpu/drm/i915/i915_gem.c               |  18 +-
>  drivers/gpu/drm/i915/i915_scatterlist.c       |   9 +
>  drivers/gpu/drm/i915/i915_vma.c               |   8 +-
>  drivers/gpu/drm/i915/intel_region_ttm.c       |  14 +
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +
>  drivers/gpu/drm/i915/selftests/scatterlist.c  |   4 +
>  20 files changed, 420 insertions(+), 86 deletions(-)
> 
> -- 
> 2.37.1
> 
