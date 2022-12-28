Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF9F658523
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 18:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FD210E3CE;
	Wed, 28 Dec 2022 17:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3213810E3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 17:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672247599; x=1703783599;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FDutGrWcLmyf4I2NtC9B1xtj+7WWl51tPv73w+nXPzc=;
 b=Kf1kDDNr07zHL//L+HOhAoLnhTwHZrHX/M/c9i/8WaO4bEebaFdVgr91
 JlRQhP8/HD7LMNymyqhAMpWwRwf4gOBoq00SYGQQacECnRnPIz8cz2c0k
 5yOZLmIOSEsYURdAcLDA837OtXYSu9WGSKtLXJsTQyLK9e0z1lyyRbsyY
 nyt+uBdJWW4F9S16WKTVco9AZmeaLHV4f03FCgp20BWzG+tRlNs0xwWj/
 1z5Ebzov07vptQLj+bJsQjV5ZFhAtCFLI3NgpDek8VuUMX9gWT7P/K+HP
 73imVKU3Zx8qhDECcJ0+uqoCFM7o5h+D+I798/SnIzVpZmudV5Z7AdnFF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="308663046"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="308663046"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 09:13:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="716678764"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="716678764"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 28 Dec 2022 09:13:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 09:13:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 09:13:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 09:13:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 09:13:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKhmVGzUWjWYDIFykpj9NuvamL1gYpjGEJ/RR6gf37g7ArzVKx3Ztra5fBpQpXQRNmB67OxwZbAnUymBBo0tpmsELutKIlPKe9thK5c50GMrbZw+bWiie1XJSJeJkJZRlglh72pcBX6b0QXuAharCCzORDbnqt1/wCuVpMp0z5O1mb9aSxoDGyXrYI18hAZwaFQLemYSue00zPvOB3VcIv8mjRPuFDR23QrTKjg1HmJ2aTwSGU/hZGB6dhvgRVHSgWbpCvv1ER2gh9nekQ1KoJ2kVp4pTDlVkEKsOXM88MSZpop16/wTFaxEbf1soLswzqh4pp3ZWeeH2pMGxWzYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qO8QiuqOVGVtteq0Y0adYSyUKoK1zqmmujN3C0T7a9A=;
 b=iDs4VPg+7M5kcFrEcxDQjJEtI89ew3O9MXUg1QgzROq1RAI3EqAkYuPV60DAdOYbUG0/40muOWFqmjVxBxNReyN7aTlfgEdSsx8OIrSQNEQwbIxVfCHmJMlWpe1n637GeetDgxESHlFPwyxBenisKie47ynFxsFTkC0eYyIgZs0DHIpgUg+mdcy/vEX0/ryNMFUAPcPrb+y3hDhowR5mDnunnQN63xV+NHrlrcnPWkNTCd9o9rxFcsBaR8MFCkOAmYKtB0nT9Jk/ZcV5mvb+34UbsYbT8xmpw4W+Lj+OfJNqkSYKuxhF00iFGPhDu7RpcCq+ELVwjbKoOSNojDMAFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6999.namprd11.prod.outlook.com (2603:10b6:510:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Wed, 28 Dec
 2022 17:13:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.013; Wed, 28 Dec 2022
 17:13:13 +0000
Date: Wed, 28 Dec 2022 12:13:08 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <Y6x5JCDnh2rvh4lA@intel.com>
References: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
X-ClientProxiedBy: BY3PR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:a03:217::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6999:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e9e00fa-ba7f-4520-915a-08dae8f6cd88
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oaT4FCz/6WtcR1vyCZfiwojJJooiuukuT9Ohj42w1WeaGdb6qGlHiJq+rnSmgaQ1ewNeoKO8FoTl4i4yI8lw/bqsee7Pl71lxdduIdbtdEMMLvqNtClzBtalugpzMVD8ftk5bTsPX3f9OGbDRtT7EqJ5HJOxwlte+K8QB9oEOE1flL/AaawP0LBWV9tMPVjghGkM6zPs7P8sljco4M8PvkmLnwOrtsHkQlIIfpPNfuA04AdPgJdBJqWFqfX6pAqxwiHXo5dY8YSFWp0XmLVAlh/GXgyZBmoMjhH+nPMo4v1DUDAAXc0FCnqw8vBDJtvw7WTg4CiokkzSODn1C/Re7vRrMbqycbH3k74/7oogvTSsEeG3DzQ6V62NDNsL2FO+nGGXqibAjjLl5nRJyJy0Ih3oZUN+i1GkAWNAH5IKIu5SOfrPdjt9qbWsCg2rHZUduZoIELfkaFQavdxtec2R3Co2QpzxgKv7Yj1WBJ6FRviwM2Ze73RvquhkPFzLYO+FJ8/Ftu5gzAzfxjTn2hKrzkMi3p9JEzm9EhIEzdqeyrHrlCTXtvboFu/Q5FA4aw/G4CQNJ2uzXvhFTLiRyHPBsJLK7KVcHNS3rXmOYlFB6VJ3FDEohj1w3LqeN3KWVnuqxKP8T3s7teaXIu1X8iWpCsGYrodxvOe/PUbQRTdxeFE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199015)(6512007)(8676002)(4326008)(66556008)(66946007)(6666004)(186003)(26005)(6506007)(66476007)(2616005)(6486002)(478600001)(966005)(6636002)(83380400001)(37006003)(86362001)(316002)(36756003)(41300700001)(5660300002)(8936002)(6862004)(38100700002)(44832011)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?85qPY07KnSQn3HS9pRCv5hASrLydaNlJgfHYxEzW6KTQ9jQPX1H7xmq8jWgY?=
 =?us-ascii?Q?WCkd3WXNPIZg7QiAFacOCNU0JSHkvIy++2ofV1C4lg9W2vAxcKvYB8ABFoL7?=
 =?us-ascii?Q?DJKugekA988O2G9zSsHiIHctpF+REHXO9vBMduVAOAA5/U4wAuDEvh1CiOJ9?=
 =?us-ascii?Q?0Qs7RR9XgBtziMM1XPpHcMy0yJI+FtbVx7Uma77F1xXH8Erm3xb31MoEPgFQ?=
 =?us-ascii?Q?yxv72K+DqRWpEwOIvz6mAbNFs3LUBILoq+ftrQI1Q0TiMkPCreXilHTdixyz?=
 =?us-ascii?Q?x7VYoa2JLexf51ofviyNvg+j9WVDzH1kD6HstexdjypEdB1O90kPu6FZqi/M?=
 =?us-ascii?Q?SHqMPonqvhl7fV12gddy86KTLD2oHCqOvh70rHl0knaz0DJvV391fPhA/UuR?=
 =?us-ascii?Q?jh0Fe12Ml05TwoXIvD7ZpBZJITou6KM10A0dDu5NtiJ9B9leC0+ByD8o4asd?=
 =?us-ascii?Q?IuFkeE70B/CMoxJcIUwO0ngplBZ8OGggOoOIdRjZKFW2p/OurHDZUzl1P0VM?=
 =?us-ascii?Q?2fgo5bONtOxDtoPO9dKzMJqkh7bTtEZ41kVxXfwFfL11HKqcQQJXxcR/kKDU?=
 =?us-ascii?Q?vNchKkkIoEMDjCmHRWRnt+1xZM2Ko5RsmD9SqYv8vsEV+CZ2YAvMKWqBPk2q?=
 =?us-ascii?Q?lbZ8Zqob6MS++J5rXgRqDwh43cqXejFp0DD34Yu3C7jfpbUIemLdYmQfF/tt?=
 =?us-ascii?Q?mmwMRMKE8JVRkVtIM5E33RGmlsfp7QKx4+wHn/0Y5+cHRZKO/N+v7FtbuyS0?=
 =?us-ascii?Q?7VyINuCjq0TtVQ9QgULtbMAKT5ipB5vDYAhx9VlSHWoREpUttsyiJD7DlaJC?=
 =?us-ascii?Q?U6P3L1iCCr1LfywhONESE3mnDhmprgz+8lwArlw4scOhpUo4mKe4UYEIeOzF?=
 =?us-ascii?Q?3EKNhQMwAT4s18CSoqDx+FR8W7Be13Hyfq/Q6sJ0bqkjXiqwDfOUvRY4zXdE?=
 =?us-ascii?Q?gOUfGN567QhsjX/M4XIwgegIrgK+Jgd5kaSVDWKyXXfVvzTFQW1zazgbND6F?=
 =?us-ascii?Q?YSpqOrew4RZNYa8et+8y0GxsQD6brUPNz1cgw6ystA7kQpvgXU5psoHiN9pf?=
 =?us-ascii?Q?LzvrEbZEGUmGHgB+RJ/7dK7b4PtnBq6GxpoukSNjQ2Pxqp4pK/t86VMgJifQ?=
 =?us-ascii?Q?YH1Pndb4Fp/TAO1ZgWVKJY9MwQLoqAVb26/YOVMFhOdgaFhLOdheggfHdJXo?=
 =?us-ascii?Q?GxW+wyLhvTt81auRMa2q8P67Xq/A1iZdNSVD2F2+pH/s+dB4ByVhBrEdoZx1?=
 =?us-ascii?Q?Y9z/3oDUQAKQQS3rzue2YP68IpZzjTX8Hq1uivw/O3PBnj74EmDFF94ZsdxT?=
 =?us-ascii?Q?g4g/04yngRbS18ba2DlWQQNeIHaMctBT/mxYuOs+J4mmue6Frpl8KcHzCPVW?=
 =?us-ascii?Q?KETm1/eOTRL+UgC1uOmBAQn1IDciDM1bgClsnYOLhuXeNtcZpco72dHCRNZd?=
 =?us-ascii?Q?xhZq0ublOvLYh2R7AvmPjam1TF5Bk1NvvwOUU0GZPRmPB6pStGYUiMg+zCTf?=
 =?us-ascii?Q?Vkkmx5JLtUocA3eeSLt6a7yOCD+VnXz5aLB5Q1737cK7CafpV/iH083mUu2G?=
 =?us-ascii?Q?yDLQyBFWkaHINU/i8bV1kZAA1ygx1ny7ONHNbOD0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e9e00fa-ba7f-4520-915a-08dae8f6cd88
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2022 17:13:13.8130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i97h3wUPRDFgmV/sk2YriDl0MAX0EOTn4sSF+EsWSZoY2VUuFBU5R4TeWbJVR02gNDa6XtdeQkWyd4mPjoqIaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6999
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v15 0/6] Fixes integer overflow or integer
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

On Wed, Dec 28, 2022 at 04:25:27PM +0200, Gwan-gyeong Mun wrote:
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
> Linux 6.2 rc1 merged into drm-tip. I resend the same patch series as the
> previous version, except for one patch[1] included in Linux 6.2 rc1 from
> the previous v15 patch series.

v6.2-rc1 is on drm-tip through drm-intel-fixes and topic/core-for-CI.
But if this series depends on a patch in the v6.2-rc1 we need to wait
drm-next to backmerge it, then we backmerge drm-next into drm-intel-next
and drm-intel-gt-next. Only then we can merge this series.

> 
> There is no difference in the code from the previous version [2] that was
> updated to v15 version. And it has already been confirmed by the CI results
> of v15 that there is no regression caused by this patch series.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4b21d25bf519c9487935a664886956bb18f04f6d
> [2] https://patchwork.freedesktop.org/series/111963/
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
