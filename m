Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652D45BB07A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 17:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE62010E48E;
	Fri, 16 Sep 2022 15:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F03810E48E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 15:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663343036; x=1694879036;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cOHDLngMrEreN7p8/751GFZRfOcC3UxQ1o5oiknc73U=;
 b=i8QUCLM1I7/h5KG40aEbF8Hf3fd2J7MIqTwAVRcRwEKFn9WN/CvDi4S7
 6+fBaQ1h2DQmsIpDvIHd92X2p/XaK9kBFdFsKHWwS/VAI1CS/bDln7iyR
 E7jvYdYSariF519+xXC/eSU8GkylyEKRXwGZquR4wSd0bTXfxEUt0OGhm
 PWq74c8CAPYwvqNrVkvllsnMBgglwRZmjr/t+MagJ2nkpSe2G3ORxQOhO
 r2HIdM9BybSczFQH+59kgLs5bjT1fMj99FIFb/JUw3dLtHcBQN+e7Pm/I
 2NuKHBwkLXZGD6+/O9Jm8ZTrVXjzR6M+ZOzO7EKbr7egol1LyCLaCiZAU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="360756804"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="360756804"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 08:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="680008230"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 16 Sep 2022 08:43:55 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 08:43:55 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 08:43:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 08:43:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 08:43:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzKizBwwMByPJ4TR7uj2fANJPRhDA/E5j3A7G8ApxiYtmnmXtQClISHGBW36ivrrnYSz2PJ45cz3JCUBmHebvdk8fsCbRneWzEP/DR0jG2QQcBodgNWwPoK4oigIrs3gQRkmEM8ME7+sCxy/TvKMxIL6IbYsz4up3OMpEJCglVBAOj/a8U/BurQrirQD3vl2o1KEmOwv7Z+s0h6BC/b+4ABhLor+vtccbwBsIyTopUS0BRlVxpY7K5Ldoiajtsi7E2gzw1diQZKH1Vj+nqo6CX7d33LvVElqjUPxSdSJ6eKuS9EklD9kROLxQsjeEJdfP0KMHEI3Rc/1FFaKRwgpIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TVQuRRFXS9uZAHY2e5quP1e9LqJlODD04/7IKUlWnKg=;
 b=GkGYMaXmxu5/L4deO08MO6jURDFcJQ5QFi4WnwgbEWPSMR22WAtUiUzPIMLDlRIWh3SV/DOAvWQR6pYFpsB6oYKDuCV2wb7R/FfvTajwxOnpKm7UOTNeRyazgrLTme+B/h4alq3GrbAFSVx+kywBlFCWMa+3wfKvJRrB+y5jQhTFVLkJls/O1dMdzriYfJW7J4T8ABHEYLnrs684WqHi6rGVQejUBNEkIW2Zx7LRol3lnC3O5j5CITTaiASIEgDCRNtpUgSMCgHj0REiYrFzJ2gp82jgp4kSEA+QY/N5wmi2/e2vtyYH/ptlrCMIdkz5h/TawI00kpqGkCZhFU521Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6550.namprd11.prod.outlook.com (2603:10b6:8:b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 15:43:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Fri, 16 Sep 2022
 15:43:46 +0000
Date: Fri, 16 Sep 2022 11:43:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YySZrqfwwkyLEvRF@intel.com>
References: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 320b568b-a696-4adc-ed18-08da97fa3dd2
X-MS-TrafficTypeDiagnostic: DM4PR11MB6550:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: moWRrZJbdw0030dnnYUrzNzTFawzKEr/4eZlQ0uTULlWU5WIiaO/eZ09lb59FB7xvrAIE1DsTYc8P7RZNNKCIq9nfVUjxhZr1cvtrmhqrONG9N+xoahmyqMy6G6jVK479QcPfZGi3LY+EqrJdnmX8P/U1dkLgEn7ocRtR4gsXnGSPry7czzCX9An399HNFIjcyjlLYqx/a5OaPQFrWcKty/3BDNW3rNGeb2M1QKaepk52bkTZpjUH2KhFuY9FNGs0Iq2Hoa6GZzjqkq1JmyKj7CAROjEIcih8+kESxAgq2kcmddbefEfcPV6SH2q5spUc7cDTaCmxAzeVy0N5nt+3zWYZM6JsGnSlaz2ObGPO+heGGydmm6VpspBaHPdmckBssvGxCtBD8qJP6TEbZVmI5L0tksacg3AaaeATxhlc9up7i0Pfiqfi2i+k503vxWVy9D89qVyKlqWXRwh3MZwolierc9bFYDHNWfTjYhlqfWITfPtKTx0kpQ9diuznGfolyQKj7ViXo6Z2UUyo0VI6uiJFRNzqRPXFXZgcFXwPtaJjwgzrgKTQ3mJXeXmASFQyxTlwuiIyet7IGh2PzV9+ZjZUphAs2zqgYXo0I5utAXsV4q5890tkQY11eYC+6qpK/KdxzxKrMTIwJOKMp29fj93gdfC+3Nai5Rv0DFFRFk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(396003)(376002)(136003)(451199015)(2616005)(2906002)(83380400001)(66556008)(316002)(6636002)(8676002)(6486002)(36756003)(8936002)(186003)(26005)(66476007)(38100700002)(4744005)(86362001)(966005)(4326008)(6862004)(44832011)(5660300002)(82960400001)(37006003)(478600001)(6666004)(6506007)(6512007)(66946007)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GZDF/TIQphnY5GDY7WaZQq5NFD7XHA5thdlS52aBjzfWBii3RDyUXyzimPwb?=
 =?us-ascii?Q?aQbqwagGx/hUdqvm3EdYpk0LzFdcdXwD1MlumAW+p41wU/CY9XUslx/fv4kQ?=
 =?us-ascii?Q?jzzFQxQQTU99M9rvyIh06kTnxOSvlR18SnYPtHIOX5Zem1dt3REQ7C77DST1?=
 =?us-ascii?Q?wMCpBhkL0DV8y94dy8g9ecx189hqPOAZoureDG937U9MFxrJBYniwmxZ2joT?=
 =?us-ascii?Q?7i64scd7l2Xgg1lI8TApuY9Ru+wsT6a8EjVlDwCu5oTjoF8Qtr1yMfWDY7tj?=
 =?us-ascii?Q?aikwoR/7uv5UB3bm8aGwfZ4aS5xh8qPA3NAIslanRh7A1cpMIzTUfR/Y6WV/?=
 =?us-ascii?Q?ov2ZX+0J8bCZEKSF9VkA4IZ4sTLnuTQZlJG5xxh/rKoI+sYUl5FwqF6uEXx9?=
 =?us-ascii?Q?oMqdfRXvwkjIh7BkGV6Nb9HN0b/0h933a4+C29iI52NaUVt/MKRdNiTPzOqL?=
 =?us-ascii?Q?++L1QinOXDmsbOo2l4APzDTCbERRQibHuSW3RopOujSpOy46J0loGMsEsNZC?=
 =?us-ascii?Q?EmIf3001kHjUp11R8DG0q117LB5k/bH6AuZs2PNe2Wi8izHSYYCJIbDP8pQE?=
 =?us-ascii?Q?P+GxccPRzZuFBa4ht5CevEbKskblycZ26viPQ14i54tJ4Q5z3WQg0OaZ+k5/?=
 =?us-ascii?Q?rcVBFkvOkZxyYUnhAypv2YCHBRAw+x8baNJqApZ1ZpFok4/XeULNqB+8jmD6?=
 =?us-ascii?Q?pZJT+G2G70KvOjI8HnMru2oJE8ElAam/q9zXvSscXZE1UGFto1kQwkvtoNxR?=
 =?us-ascii?Q?kL+0wZTSB1cTcKh4eE3huCuezsZ+8jajqkRx8dzUfaYNsP8lJhtMsThwDA5E?=
 =?us-ascii?Q?uZyjiPMtH8x2frADzC6KeDJFAynBFeZWfjWbm+jMjoYAfjT960oHDFnoItYp?=
 =?us-ascii?Q?FAywYGtqy35tF4RO29/6/GlM5tTF8YXW0cujqmSVBop++yjpie+RznNxgA/D?=
 =?us-ascii?Q?3TiGDsPTazEsGFsoGwsdRL4P1Gml1cizCRJP+pzN+8Rh8ZTaH0Wf9vrA/fpv?=
 =?us-ascii?Q?aDIu3+OPoBLscvJXEcfLhpnepk/4HRwpMTy0ozTQW3dEMNlJRaV7VuBVY0at?=
 =?us-ascii?Q?MdmVbmcX38GfRjpu0q72SMLx/uRs6Hx08RQJI4eZC6ewQNPsMXKirCeDP1+4?=
 =?us-ascii?Q?/aNAKr0KomRYASVMVaY+uYaWdC54H2CW/z6qxYtZPLfKQM3/t42imD4YqQ8K?=
 =?us-ascii?Q?qxX7AK8eCB07V2KdzgFgLm4HwDUUBNAEy3V/AhqLYQ7fetGeAWsBWiH/JrOc?=
 =?us-ascii?Q?DBr84Ao4Q2skqng3WDNzknDd/OYlbMbSZfnPT7azhaQY9t7TP2m1dJHnWO3k?=
 =?us-ascii?Q?rn2PMS8K/vMj1Olo4TJaCkESdXkELnNMPtbX4kmTc48h4slEdoKt3ZYg/WZh?=
 =?us-ascii?Q?xIGz4s+4dx4nCxqq/+03DOCqYEJE+C4WfiWKmPgLGSq3DRrfH68CwVvU+RLt?=
 =?us-ascii?Q?ZUo0uJdMOfYAV7fpf+UW3n6C8s2PNveKw9zn0j4nyhEtb/zUfncU2hzKxtp7?=
 =?us-ascii?Q?e8/0SKQOmeVAk8W3DrPD/tATR984KV5ECmH/5JPqbyDwxenIaLFgWmX2USh0?=
 =?us-ascii?Q?UE3LfxV8C/Kx5VBCiR1NyLtKG1Sr64mQnMdIXuUVwF8IHb3n5sD/egIYnMWr?=
 =?us-ascii?Q?Hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 320b568b-a696-4adc-ed18-08da97fa3dd2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 15:43:46.4010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lhtizv783hSmyuelq6Ob983NnE2PaiuL9Mv41QAFW7cCy84zs9ds2AWJilr/bzuhefQ/xzcVgCDNvqJJ3jMC2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6550
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/3] i915: freq caps and perf_limit_reasons
 changes for MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Sep 10, 2022 at 07:38:41AM -0700, Ashutosh Dixit wrote:
> Since https://patchwork.freedesktop.org/series/107908/ is now merged,
> rebase this series on latest drm-tip and post a clean series.

pushed to drm-intel-gt-next

thansk for the patches

> 
> Ashutosh Dixit (2):
>   drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
>   drm/i915/rps: Freq caps for MTL
> 
> Tilak Tangudu (1):
>   drm/i915/debugfs: Add perf_limit_reasons in debugfs
> 
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  6 +++
>  drivers/gpu/drm/i915/gt/intel_gt.h            |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  6 +--
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 46 +++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h               | 11 +++++
>  6 files changed, 89 insertions(+), 12 deletions(-)
> 
> -- 
> 2.34.1
> 
