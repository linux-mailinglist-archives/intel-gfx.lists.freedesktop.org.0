Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED5E98FD52
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 08:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839B910E253;
	Fri,  4 Oct 2024 06:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZR504rnT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC6F10E253;
 Fri,  4 Oct 2024 06:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728023287; x=1759559287;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8FhKZvqqcorph1JIVa+q76c9wcGGmSDIX1lAhAEVf6M=;
 b=ZR504rnT+8/yGOJqlvb9DYe3raK9FhTNnC8PXEtt+h7cOTAZnFc8TbhS
 94W8FpPQtUfW0bad3lcwrxj36vhDBbQ+EbFWQDEIyNnGUHQ+NZbZ4LSKr
 Q5f0osREx7C6Fe91TQUmDE+yT9D2RbaUyavWiph66hQDjaVAt0fZgbyxW
 +I0DXNtUD1TIhF9S1YyBsVinNifp1B/9179hckapdl161kURr8Ne7r+SC
 8nMGku5oecve7mPoM8dGrawFGY4RwwXCd/3ubZ85PfHhkfCoPLWek8e4k
 9ObOEWVviFzHweRlY+ka++NqYqYuzlUGhDiinxmUEks1njIi0CehpVy7b Q==;
X-CSE-ConnectionGUID: xSZNQrq6QcWuZldxKB2AfA==
X-CSE-MsgGUID: CbIwq7hcQ+GtRyz5sjrFKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="31031423"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="31031423"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:28:06 -0700
X-CSE-ConnectionGUID: DS/k/QfFSBW3zNyqxfyLAg==
X-CSE-MsgGUID: R+e28K9/TSqIzy6dLbFkvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="79036743"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 23:28:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:28:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:28:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 23:28:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 23:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h4mJDdAoxD29qDxGP8xg5MN9jtzwmdfdGR3VeTfc1PQqpE2BK+7B2Gupa6hKvdaArJgmLLTQtqGKr8SI/b9mZ0JutzcC8Nt9eRNyPiifx+bpBrP04mtp7j+FnPIqjY+RCafKIFmjziVRfxfZIG2iakvz4jSzxsxFDhB7uJY8qCtYvF+OIL/DWFq2l+y0S7xWWpiABt4UB5MJDenf1XaVdURbJmYnfaFtLLqZP8khFSy/tF3cw+JyLcEDY1yRzFsyRAi29sTt66ABz2o3M+2rgcltr2qe4FugaGAXzZqKJtDD0mDQod4Ly1ngB5t7hbR8lCXYOYq28MEJdWGYk/65Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/tbf89LpxCL809IhRIaWmqfBz1xCOTx3bEFGuDwV2Qg=;
 b=GZdSfFglfWZMcgppZixONJs9rwzsLJhF+E03KVIv2stMhq0ONnBmUxe/a6NmxtSB58/7d62I0ppCIo+MPFLeMSr12XOLQwjaWBw6aqZRke/j2jfL47ZcHZmkvCF8oTb3G0ZuWF6MJl3Dm7vLpVb419ZznS+b28hzvUFWdnTZNEfMywE8yWFGQByXQxbTGInxANZM8+CFbFmmj6aaXOuQZtPxZ1E7hgB87odncnkZgjy0Hg5NidAm3uyycITt0D9X/rgeMDi401WRVHwLn3YtvwvDM+fm3ba76Vqsz4LI8hje8xiTceNLVxLU5QBE6dloA1pHNNgz/r0h/3p+mmoiOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 06:28:02 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Fri, 4 Oct 2024
 06:28:01 +0000
Date: Fri, 4 Oct 2024 06:27:52 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 06/12] drm/xe: Use xe_ggtt_map_bo_unlocked for resume
Message-ID: <Zv+K6DEdS9tpNZU7@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-7-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-7-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0114.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::29) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB6475:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e53c720-1f3a-4e0e-525f-08dce43db26e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AEFfjSSSt3gBOb1pbOG5fP3zoYLqU+5v0707/vQt3zB/2Yr5JkPfhwMzigFL?=
 =?us-ascii?Q?ZeXlOiKUHeQn/sHj/bwQDZYdxtqZWTdQGIR+gj41bFAboJjX+2dmT2YkyDGe?=
 =?us-ascii?Q?oGuSv2avPlOZgG0HpO3bZ3O4iBPYIXwbaHVCJ/Jig5A60DafInVKsIeKmkGd?=
 =?us-ascii?Q?KMD+/5NlIVGg0kaQJ3iweBA5qS0DMvYFEXt2Ol4Ri8DbYlQQa6wz2hxqYqbw?=
 =?us-ascii?Q?E/glfap0dtnr++Klv1Q0z3yh77ht0DkFYE92Dsgmnr50Hasf9vAi/vNzZ7Ry?=
 =?us-ascii?Q?lGmAolMTvYhK5/chfNRqpzWziWFVLy2lEWIxMv9BHudIM5KmJ9s0cKx8FnPb?=
 =?us-ascii?Q?en4XJYtnI9K5fk+anOhlOY89EhwfD7pkBOfbLG2EthqBQ5NgYBZBYQ/zTyxP?=
 =?us-ascii?Q?Nclx67XALMzZ6ddg1OSGKWv2EF3qOxFY1k4V8Pk1AqHgi+1Rf5ENw83QC5bK?=
 =?us-ascii?Q?Rf/bc1rS/0cuzxz2jnbmn6koNOipJzGGwPri7hkpuzb92uQpt8amzgv3poaE?=
 =?us-ascii?Q?KNhbMZPqgA2c+XzbKp81jGK4LigVUdLLrP+CNFmQiwmsKG1RJbz8Jvv8dvYl?=
 =?us-ascii?Q?5QKjMQE0K1VKtlRwGuxa9QfHkY4/2clAktNAags3irFNaDCUxtEt0SQ7AXNI?=
 =?us-ascii?Q?FgzlPoWWoGDHJd21N48fuVmgPhAsJyv+H4BU0SU3pTptI2hj+VBAAj3Jq8cp?=
 =?us-ascii?Q?i3NHryxWaiA+Z5Z9g/g1LPEgSR5ltXtoGolrTXmV1DzyAP/qkR9nkVRz+VvK?=
 =?us-ascii?Q?0LDA/F38g+yXDUrXSTWK7tCwxzAfYEcQijDlkOLwuRZpT/SfQ0Y693JTXyn1?=
 =?us-ascii?Q?buCb3xXTY3HvQAQetH+2R13Tnj3GBFLKrS0nZ8htf/7772lDqile877WAcvs?=
 =?us-ascii?Q?eCEsaYx+/S/eixvSzWWQ+0ZVubzncKzg//FhY6qo5qJRnsGF8Lm1fL2eNXXr?=
 =?us-ascii?Q?mgefeUmh4mbYIhokOK/AVC3yq+vH5BbtVIRAJsEYB82JU60MXSREBiqb1VzD?=
 =?us-ascii?Q?PkS0AVha6sryVBIC/MQfL92/Xkt3AgclDOEKejgqQpkPWIfL4jtBRwMtI7+X?=
 =?us-ascii?Q?1n4dz+68aj3VXs/3E5MTd/ndB5XqKvECubKJi/IzqPt9WAHZbH2esoR9+oYN?=
 =?us-ascii?Q?W+JC6+WMomnZv6x++4xnWcSsX83FEsHPZyeFU28uW5aVkdA2Ez4CVNMVFG5t?=
 =?us-ascii?Q?SU3WxpyaLEqfqItPo/YVX/5xExa3vIy3usqLjhOCyZmdUKWZrpF21zGJ8doh?=
 =?us-ascii?Q?VUMHsR66adSidYpaOJkIgyeby1oxTAVosUF/VAFPGw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HDww9HsZy9zjSzRs9bz2RODuQxVCSpoZUEbrCtBgKz5k7u7AXA1QmM62YhQd?=
 =?us-ascii?Q?bx7Gguh+cAgZEFfUwVQkygPH5P3zZCDPq+rCKu5YwzwSOGNUATVj4NtXSer5?=
 =?us-ascii?Q?lMGSjdIVO132flH+sH4SMBwlRYK40Kt5Ra5qtINn1EHE8bgJre5te6zeCBys?=
 =?us-ascii?Q?N0tJ2TfBkB00IK6rMvHAzq41QNXo9POR+FZ5k5fMuqkG7aslRlWST+FgsZuW?=
 =?us-ascii?Q?li/0Z06kntmUGb8vJtYo9tPw3DGiUzstGG7cbwP+buL215FJ1DGbNDqXMqpy?=
 =?us-ascii?Q?JqpCmd1jzd7ujnBmqx03lPMtRVhQO2LNK2wUGjgEFolfzhRGt6h4EUiIzoMR?=
 =?us-ascii?Q?l514KHe8x3c4lCN2CxQU0Q+izV3Dh9fXiimtIbQm+Bf54cmDNGwpJvTbyXZY?=
 =?us-ascii?Q?I8UnF/7HA7UocnvqvpX/FzXLOs6e2kGlC1RJkrT6YQQDKp4rhCBNmKTo3Yem?=
 =?us-ascii?Q?Lb/iN6PbVjMZGEr3fsZCc8Rk0PAe3hOCZZtMuSS3Ca7xDpq/VuFZqvrYNd63?=
 =?us-ascii?Q?164x7r+lbIxuvgCZJdWMMJQ3Jjwtcim8dC/0nwJTXBDHXsP0mQ/99Dn4/JVF?=
 =?us-ascii?Q?cqpYK0EFikCr7GHu/n1mhFlMhLAtuggalDdRcPBt+iI+Kg1MTcnxJWSEtKLq?=
 =?us-ascii?Q?EM2i5FnoEkB3yF9eLc96PhyL++l2nTdwTUg33mkd2HigtTdlRW6KMMPVKMDc?=
 =?us-ascii?Q?5yyW+EKd2a27BN87ORbiN7DKbLjl0LP7TikbRCzxsVsOzZAVu49ULcbLObkx?=
 =?us-ascii?Q?5MwyCQl27KNK00DQKDNyiV46kjQhxE0UiMiMffLKznxMXAjzDLERvE3xHqvm?=
 =?us-ascii?Q?sjN047Ud/BhFayApYGsM+x9os1ZF59swQGiDz60VypzRmlw+ehGfdEsmq2PC?=
 =?us-ascii?Q?VMGNSU6nEo+Ky3qSqFjzGG9CQS5Y3qbJTYylD5q9VEcc0QYT08hsQSGZF+rJ?=
 =?us-ascii?Q?M5S14LJq1q7qRqOPp3JUOPo5/Nbg366mQbGzjDBeVvI/GpjWvXjgL3O4sEwy?=
 =?us-ascii?Q?coZ18uBi84Ana5l5ztZZRqjhYFgW/+5xfrfO9Mml8Mr6qUdBUG/BfE5VlrAU?=
 =?us-ascii?Q?KPfKHayhcplrshoAn68/cHiK5TkSs0sfwkp2eta5y2/nHoIBpXYNV7Sa0NQy?=
 =?us-ascii?Q?V86tMGYUFHa1+scnQtXsGO62DjfFHXUyYL0t7iWjIL2ZKIhKkfuBGkoXQrth?=
 =?us-ascii?Q?FChYcXDWtCtwmeR0tTSJC1KfXVmO0Vv01keQeniZ/2gd+L/oujv4K3Wbm3dI?=
 =?us-ascii?Q?oa65H92lkz13iOeBHE67PCAeEhWfIaPhXyRDabHDvTYhxe7SL5iTKAHqsQ/r?=
 =?us-ascii?Q?lLgUBU13gTggdVmE935xZaP6ftg+dHNncLtX0RgieZA7h31QhFGs19TvxXl/?=
 =?us-ascii?Q?+5CX7KnyEkZ00JFEgvFkKjg4J4lb4TQrTeGXpbCt6zsQ74DIPpSPMX53Cx0v?=
 =?us-ascii?Q?at5lzodBsAeng79lUVC9n51sUjUmY4LT2IsaTx2SJH8WwByKoRyFUmgGY1wk?=
 =?us-ascii?Q?D+iWyjbwVYZfZOLuwAaU+j9Cw1o0uXGwWUb3YHigoC1JOaRDNCHQcG60+d+E?=
 =?us-ascii?Q?R6EKTnTPoKXzcJiEtv1iQHg3oJJmm0jh8gd5xJXYTRiDIg9RQCikn6TWqE9h?=
 =?us-ascii?Q?nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e53c720-1f3a-4e0e-525f-08dce43db26e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 06:28:01.8650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m3DlCE1+/Oj+Q6/bFwIuvL+yI7KdOIOuwwxFlj0nOYU84BkkuJDkJIcgRVF3ZmO+UbfADNuQ3zWg0N9BwGVM9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
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

On Thu, Oct 03, 2024 at 05:44:15PM +0200, Maarten Lankhorst wrote:
> This is the first step to hide the details of struct xe_ggtt.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_bo_evict.c |  9 ++-------
>  drivers/gpu/drm/xe/xe_ggtt.c     | 16 +++++++++++++++-
>  drivers/gpu/drm/xe/xe_ggtt.h     |  2 +-
>  3 files changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_bo_evict.c b/drivers/gpu/drm/xe/xe_bo_evict.c
> index 541b49007d738..788c071af92e0 100644
> --- a/drivers/gpu/drm/xe/xe_bo_evict.c
> +++ b/drivers/gpu/drm/xe/xe_bo_evict.c
> @@ -146,13 +146,8 @@ int xe_bo_restore_kernel(struct xe_device *xe)
>  			return ret;
>  		}
>  
> -		if (bo->flags & XE_BO_FLAG_GGTT) {
> -			struct xe_tile *tile = bo->tile;
> -
> -			mutex_lock(&tile->mem.ggtt->lock);
> -			xe_ggtt_map_bo(tile->mem.ggtt, bo);
> -			mutex_unlock(&tile->mem.ggtt->lock);
> -		}
> +		if (bo->flags & XE_BO_FLAG_GGTT)
> +			xe_ggtt_map_bo_unlocked(bo->tile->mem.ggtt, bo);
>  
>  		/*
>  		 * We expect validate to trigger a move VRAM and our move code
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index f68af56c3f865..1ffc0917e28fe 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -579,7 +579,7 @@ bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node)
>   * @ggtt: the &xe_ggtt where node will be mapped
>   * @bo: the &xe_bo to be mapped
>   */
> -void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
> +static void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
>  {
>  	u16 cache_mode = bo->flags & XE_BO_FLAG_NEEDS_UC ? XE_CACHE_NONE : XE_CACHE_WB;
>  	u16 pat_index = tile_to_xe(ggtt->tile)->pat.idx[cache_mode];
> @@ -597,6 +597,20 @@ void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
>  	}
>  }
>  
> +/**
> + * xe_ggtt_map_bo_unlocked - Restore a mapping of a BO into GGTT
> + * @ggtt: the &xe_ggtt where node will be mapped
> + * @bo: the &xe_bo to be mapped
> + *
> + * This is used to restore a GGTT mapping after suspend.
> + */
> +void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo)
> +{
> +	mutex_lock(&ggtt->lock);
> +	xe_ggtt_map_bo(ggtt, bo);
> +	mutex_unlock(&ggtt->lock);
> +}
> +
>  static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
>  				  u64 start, u64 end)
>  {
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index 27e7d67de0047..bdf6d0733e2ca 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -24,7 +24,7 @@ int xe_ggtt_node_insert_locked(struct xe_ggtt_node *node,
>  			       u32 size, u32 align, u32 mm_flags);
>  void xe_ggtt_node_remove(struct xe_ggtt_node *node, bool invalidate);
>  bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node);
> -void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
> +void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo);
>  int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
>  int xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
>  			 u64 start, u64 end);
> -- 
> 2.45.2
> 
