Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303E17C56B1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C07A10E8A8;
	Wed, 11 Oct 2023 14:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD7810E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034131; x=1728570131;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NQ4wgohiITPFMHgoFuMZQKFBXA5GcMjCr6+FEXqVok4=;
 b=npNmSSd/r1sOKp+rUvB5Ib0arZSPo+SEGjtGvO4rdwaYQJ+V3pvcqe2o
 tkkAtZQ6ZQ67iX1aXKeQH4RxHglnS1rFKIdljg1jXujhlB0i3qazEs/9J
 SKLkqkXxLFh2vg5xrpKuZI4gUQvKSUhjRNvHIJhd1B9u3kPIK15XZ+iOw
 seG7trYIT815HQRRut8lGIT/yX6Gqow5qmSdcmyuYSE2xUIJ1MlpM7xud
 Vy+iO+8ybySx64KJ4pWO579X2W+8K7s0mIwo8B7sqMmr5HLb/k4pr40Zf
 sCDef0/uYJFhzcGR28sblQDR6mNxBsirheArKFynpfdy2+Sj+HU8kwQJx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3264483"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="3264483"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783247794"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="783247794"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 07:22:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 07:22:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 07:22:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 07:22:09 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 07:22:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aTaQHHCD3UPB3PMZD+sPgdR1A5osQRq3UhNMyOqm0NxH5kgvGpkQXKHmHJ+7+hBH8GUKgM04lhAmWGfAPaVQFgLf0rDCPoOTzZpAiWcZOoqQYuXcc6mRPsbWHtxOu/9pZFESgAEDXTiOEfCUCLZALVZS27DuD1uHROwsmyX8/ZDvhjJqt4uh9Jp/nsxvt0XvQhDkOI08qy4k/b0KhtPh5UW5m2lfQlQEiz4SYjZVXlhTfBJQ/24UdW3Kuj7n1+vcs7h3WlY8CZnm2HdjZK+t/iShA4lrnlBsitFGnao+C/QnTr/XgDpTLOITOgLWAnVdDqnwF5v9OUtDNXuLdWN/NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CsvzT5sJlPt7x46XZ4Qes7tkhtJM5xYI8c7oFWkDEDo=;
 b=hwHFTwHt7xu/6Q+p4vsGSp3Xm1+Nr67AsNJrieaF85F8hYc6EFaRYLBaVyzu4rzPmfGEVkNF95H6K+PSEf8hY3ZB0XMJVXIFkxqq8zpFKRUUxDodn/9bn4nnPn1vBSvvlwKaWrPwhRw1mBu8aH7wR4cWGPhNLUS1HZA7bllBfnv+7QGvaom4V8s97CfhdKPqI2LoagjCE3rU4CK4Ed33LzDJoNHzgQgrD4fSuKlYXK8sS3J7Jn8+ddIZzZb/HK3Uh7tz8DBU/mp4g/HaozFqqO41oqhHJRfiAIaLkdc4a8a16HPOGQzKCgnYrrPW/l8hzIsPZEcr4Qkrh0VvTh/Ljw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB8552.namprd11.prod.outlook.com (2603:10b6:510:2fe::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 14:22:06 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 14:22:06 +0000
Date: Wed, 11 Oct 2023 07:22:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20231011142203.GI5757@mdroper-desk1.amr.corp.intel.com>
References: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: BYAPR08CA0037.namprd08.prod.outlook.com
 (2603:10b6:a03:117::14) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB8552:EE_
X-MS-Office365-Filtering-Correlation-Id: a3f46999-eaba-47d1-bf66-08dbca657274
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B1UMD4iy+6PJu1gIw4leotQHZ4IGTeDO7gZbhlfZxAusuYKiW05sST91siX+1zOIUPYHrnA4RHFC9/oBFwO4v6RDNHpwXxbMUbosaxTVimVYak4Ou0t+iKdZjOC3bSeBXXuhkA8B++MPg4sG0qkl0pxL0wGrNbGiKlq9wEcZZxeZu1ekHJvXozkDSToxF4k27704ax/7rSFhqbLrMRoVi9fA6Y3VhAkKASzKHtm+h4IpLUM37PgqTo+3zamszgiZ1zdHxPE8CnkzpFAQSti1ueuzUXJ5SEkyz51Ms4D9tG+7E6ikcmNbWnzqjDXZT1jaTyvoGAFn8wU+JEwCQihD8RR52vuMK9erIFaeTp5Y34uluwTxVqvmaWQqREhQ01BhbDkWilOJpLpDs8YXi84EswEm4pIrWPkpzeimHCdvA6jMIyyIhNed6tAN0IIyrAVeMHpdvFyfpcYr4dGzVC2FNgZ9ZWUQROdkXlq/GQ49+3luQUT1vw3T19rFctTKuoQw+nitMGZ8JzGxJCSolVrRC2Ls+KEhJ02Tea6ds5inSsZjxqdfbM5BC7hyAikJRYSE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(86362001)(33656002)(2906002)(6862004)(8936002)(5660300002)(4326008)(8676002)(41300700001)(38100700002)(82960400001)(6506007)(66946007)(66556008)(83380400001)(316002)(66476007)(6636002)(6666004)(6512007)(478600001)(6486002)(26005)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0xLii+9EyYJx5/ZhxnlXyAiZ2N5AfLASPwL6O4carhNrQHNgHurHlocsAGDU?=
 =?us-ascii?Q?NI0g7U+b4r4AYt1Zv8VbpX/zhJdbw6DedLLGY8Uhg8MJVSEOaFEKG9qoh01R?=
 =?us-ascii?Q?QUVOxh7O6Hb589aE3cn9989Ui79U1VF/i2oMpm4cKhk8JQghY7n49V8CaRPP?=
 =?us-ascii?Q?3Qf23bWnFzqjnZ0tuHPdm3aYtIhW3Ny1LubEjgluqLxj4XWWMHcKcRIAy8R+?=
 =?us-ascii?Q?7krWUZs8labwfF9j5r/rzznnm6dBLjhprrWsX00OqRPWmhxxrBSf+1tbIIdo?=
 =?us-ascii?Q?y52VrNaSwYHnJxJY93d4mV7ixlRQgmRt19M1gvTwGGwixBbI/bDjZ6NWrMsv?=
 =?us-ascii?Q?vThXPLV9ow6BH1Q5v9RTQxuFJFnVIXMrHEd0AmrAtAdFNRWoTVsMfQ69kk1z?=
 =?us-ascii?Q?tkvSUc3dBEs38TuPLIoL73Usv8DSDUZGGL52TmN5cOJuH7HU3JB7o7M2S/YW?=
 =?us-ascii?Q?bmRfDUISM4/CjCeiZhdTcieqZRk60akWPENv9clcU/t0OIk4jnBQFUWRsoZ5?=
 =?us-ascii?Q?DRq6rlE/07vTuZOzLh16xpvG+BS/L2578c+S2UuuovqbPY1Bx2Xwjx8qRPd7?=
 =?us-ascii?Q?4slkBMuAYJpvBDR0Xm+Tp6KKhdrXYiIyuG+N8ElN/MB+7I0JVSQJjoBVfl3n?=
 =?us-ascii?Q?qNdhN5bvtDTtoW2aUENGNI93+gg4cCO12wEqQ9el6YnHw9JTgn5ix6l0Gn0d?=
 =?us-ascii?Q?93Q699fiYeVMtAFBRn/Rz4+eXfqRcMNUAbgZgRjXUzPvJIhiD8shUl78UtUP?=
 =?us-ascii?Q?gVY6BCZm19S6GRGaNQBvvRrx4Q5Vx3GXgQXF9yr7b0ZR1bXbNtpa2JnjhtPv?=
 =?us-ascii?Q?f3ozvhA77sudzM+53dNjM4dBhtil/4OK3Z1ipl30BFws99RxOe5uXopa7ANs?=
 =?us-ascii?Q?79EWso/yQvgpYMnV15SzEurB850W02IXTnYxcalB9bXE43PvzoYRvVZl2SF1?=
 =?us-ascii?Q?I3R2BekHsOTk2aw7K+xn0U0ntwCgVNrrgw5dQzbjTwqn/tWeiLl2D6+3kj4Q?=
 =?us-ascii?Q?Y7EzRDKBq8LZQ5b/nVSmItl3PMpFZ47Oave6aAVhq9lIfu9y5DlB+7RIumWy?=
 =?us-ascii?Q?0OKjnaFkqNqMva6FlvGzA5TWjlJ5f6HgKuyGKxfpUkvhrbwdgBa1jgL/r21S?=
 =?us-ascii?Q?0OQ7qnlKdD6qb25WSbyxF8k8/Xh5aqHRLDt9RcuPql6Aoe+dfuTAUx6nwjWE?=
 =?us-ascii?Q?TNPSpSY/CwDshrEiaGbyPnw76OXW16YB1jZP8ncEo6dOKN8oRK7ntWecLGeQ?=
 =?us-ascii?Q?MNtvH5usydXAOEHMfNK1jCRgfJF8EfoETiPKOFlHHXwp1XXYpxra+vIYl3iQ?=
 =?us-ascii?Q?YAx44Y8YR4Tp4tgv30jG4aJr15eey4XgNgQkzPE3PsbRdr6mnz0fYdOXtvES?=
 =?us-ascii?Q?hc2VpIJc0jOlZQb2A2OZl1dv+Q25p09yBuQfsjp52PfijhVjE3zRzSdmCwLF?=
 =?us-ascii?Q?Xqxd2WkN2/cIBM4nogMDXMCCSY3X57qBXYee0vto8O/Iul/7qTLAWrhTXnH+?=
 =?us-ascii?Q?i5RvRQRyezEd6/h8wjDkxcsXbCf6puKoAAF57jykpusdTB7d6TltqtDQZmyL?=
 =?us-ascii?Q?CUCZrAIkeE5ehqo+Jb13dEpTTDEpHH4w60idyOOdTGYByuth9LtjnECYKaGt?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f46999-eaba-47d1-bf66-08dbca657274
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 14:22:06.5326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mn6WE0gKX4ae4Iyo+HxksVngF/fu36W8xV3soBiiOJxl/dGMEC2eBIG4PwPO48ocDOzSmVRo5ieLNi32f2I7mwWboi3SIVjvH52x6G/cMV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add new DG2 PCI IDs
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

On Wed, Oct 11, 2023 at 10:26:00AM +0530, Shekhar Chauhan wrote:
> Add new PCI IDs which are recently added.
> 
> BSpec: 44477
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  include/drm/i915_pciids.h | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1256770d3827..deb2eb0b4979 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -692,7 +692,7 @@
>  	INTEL_VGA_DEVICE(0xA7A9, info), \
>  	INTEL_VGA_DEVICE(0xA7AC, info), \
>  	INTEL_VGA_DEVICE(0xA7AD, info)
> -
> +h

Looks like some stray garbage accidentally ended up on this line.

Aside from that, the actual changes below look good, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

with that cleaned up.


Matt

>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_RPLU_IDS(info), \
> @@ -718,7 +718,11 @@
>  	INTEL_VGA_DEVICE(0x56A5, info), \
>  	INTEL_VGA_DEVICE(0x56A6, info), \
>  	INTEL_VGA_DEVICE(0x56B0, info), \
> -	INTEL_VGA_DEVICE(0x56B1, info)
> +	INTEL_VGA_DEVICE(0x56B1, info), \
> +	INTEL_VGA_DEVICE(0x56BA, info), \
> +	INTEL_VGA_DEVICE(0x56BB, info), \
> +	INTEL_VGA_DEVICE(0x56BC, info), \
> +	INTEL_VGA_DEVICE(0x56BD, info)
>  
>  #define INTEL_DG2_G12_IDS(info) \
>  	INTEL_VGA_DEVICE(0x5696, info), \
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
