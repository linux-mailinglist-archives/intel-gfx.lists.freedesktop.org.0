Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9731E95918F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 02:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1E210E557;
	Wed, 21 Aug 2024 00:04:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDIpDlq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D197D10E556;
 Wed, 21 Aug 2024 00:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724198683; x=1755734683;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=F19GRmkZ0choVkQ1rbVA1DmDLVEj1HPBXXwy38TqeLg=;
 b=lDIpDlq+n1geZj7/T3guUCtEsENpVBqRZSeH8dz+vbMkSTZ94YewqsKy
 e0g+HxshGOCoW/gfdiCa5axhC3ThgdPQ5lRGIc4lsThxWPtECXUGmORKb
 ZSf7Ec7iDK9G0ij3A209KtdpLcuulnLn99fz0z2fi/CMldc97tgQo3vRi
 GJgzKL5a514VlAe2Xem+PsPTKzoVfi5HIE2SgB9jEDr123Ys3J+pJBjWZ
 LxmsAMTVqwtLSblCPZvB+enzJmjCTyZyQLeoNLYQik0iUiHCEM/aCfENO
 /lRydx8vihGCom1xKpYnJDrmBnGwQ4DY8gcC5VMaGbmipObdDXM2Vz5Gr g==;
X-CSE-ConnectionGUID: Efy58XXZTb2WOneW0GZCwQ==
X-CSE-MsgGUID: eJ2AVXVfSz+8AxRYrR3ovA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22151047"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="22151047"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 17:04:43 -0700
X-CSE-ConnectionGUID: OQdbRlD0SgyQcEiORd08mw==
X-CSE-MsgGUID: O/wyCHRvQlCLjD1e+FUYsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="61442848"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 17:04:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:04:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:04:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 17:04:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 17:04:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=odtouV0dbFIJa6BSpzQP6QSRTdbOrapOm4Bop7UDdzLXHXAs83UBi8CG60grfE3C26XfJlUe9rMonk5IQawCt2EaGKKux+hbT0XYu1upD9A3PYVTh1qCcwFzOpOAGy49WSFSISxxjIFXTPCMKyxMTMxCIJWSFDSwqi7apI87mHivhJaqK6dlju4DoGgR5AIx3Zh74FnRufvELOHqdvKETZDkCEpwOL57vXlvTnnw3RnJZ0KXPKghnJr6QRMFCxpoQmIOdpmdwLP2BrfNmLGSo3OdOjJuaPwJqzyTTpILx+pWgkaOCgW+/R+N9Hb8qeHquXo1eVRqTy+NXTI3u0Bfvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ffXV8gnqZf+4G5H36yzLIQdvyWZ3irFRVvvXrGDRIXg=;
 b=oaXsU5Qmuq3GqaUtUEZO7lOY3FGgUFvWsBi6pEDo7TAmre94drNXQAyetJEz08+0vBemIhLwo9jE1amdi/HW1TOLzJBWhB/Z7346se5VNwMwuLFq7zpJxMoMtQecXqYfMgKAa1Qbbk7ouYP/wwIwHJhj1l35NuMFCCX/Mys8o0kJ2VLkMpn9jAcl3cV9fY2Q/rOc4qzRwMAVT7E87y5B4SzbmRUWDlRZTu2GL2mvDf0ZEEQs7PbdTjOmzm/mobZtCGvHJNG3pdCzjm9Gu8lecEa7vAPn8qdYEsc/25TIMYh7EiuXrlWQM0X6keRTpnlRckQwdzjuwDV3bGnXWsr2dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5864.namprd11.prod.outlook.com (2603:10b6:510:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 00:04:38 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 00:04:38 +0000
Date: Tue, 20 Aug 2024 17:04:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 10/10] drm/xe: remove display stepping handling
Message-ID: <20240821000435.GV5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <19bc7a3197f2bc6f3c0d337487ab19f3b7f5612a.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <19bc7a3197f2bc6f3c0d337487ab19f3b7f5612a.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:74::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5864:EE_
X-MS-Office365-Filtering-Correlation-Id: fbe4de12-0b9a-4627-6eed-08dcc174d900
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Y4LPTWfBJWjV/Sh8VopKpbd0oFgs7ULtZR0mAwy3PS4tr+G42ZyfaOG48Q4l?=
 =?us-ascii?Q?nG/bOon4DKRZCWqVHD7UC7cUyzRwUwPjyPLrw1krrxxW/EwNDKFiFGg13OQa?=
 =?us-ascii?Q?+IGUZ2kSy0ZWReCG68hPvVr3HAUQlll6imdchBpvg2B1BVG9geIXU1M2xEe1?=
 =?us-ascii?Q?6bzKx5BvVGM5EaM8MAu83FboaH+64A+e3RvE86Uj1p1JBgZJL5mx2F3LghO+?=
 =?us-ascii?Q?IO+6p7+xKyYtxvmhk0GPu0yiSD4TB9wqc1FryP5ja690MXeuXDXwtf7a8r8W?=
 =?us-ascii?Q?9+zSEr9Dtub4yoH7JTXlLwx7pkoWmiu4xSfCDWIVvKk4ET878bm+uet6qRTf?=
 =?us-ascii?Q?nhtyKe9Ayz4BVLZXvZntkhgr8xzJfF1k5lotvhsU5LWIVJrU9VBK1w08n1uO?=
 =?us-ascii?Q?y0/yWHjd+BlggguQahCp7A3RaKMVKtg4G68Vgv07xPJZXlLQ4lkO76QwhyoA?=
 =?us-ascii?Q?3rKo1jJklALFhVM3Zy/YsLaIVeslJ9EK5mCgqLsryadJljVv4UePbZ7MoSWz?=
 =?us-ascii?Q?DP7o5YphUQdsLh+favY6yfoqHXg8R4RKCNScTerRdQ/O9qxV/gq2Ig1GfXBD?=
 =?us-ascii?Q?FpjDzWBTyShP9rtnJ09YoQs1Q5SkrGPo35wJsgjUTT3oLQuwQdM61MtgNWtj?=
 =?us-ascii?Q?r9wa5OI6m6L+eXmF+SK3E0nHBsSkaOmpRN04iN3Qy3Gp9yycG4d+FBNWvt1i?=
 =?us-ascii?Q?tvCJy+LUD7S+4hjlUNIb6EcFkvJ3N6tXmBk1Ezf+Njxl327zWqqqrFRriibV?=
 =?us-ascii?Q?HSUFtY/ZiZSsj9z4qp+aT/XDohOrF6Dplm1ElE2EfAKZoNEvSlxMpzciHA6k?=
 =?us-ascii?Q?bcyiOf8fBvsY8eoBCqnKgluvm4cHpadnS3aHvwDHSCwanTL56wJeQLF7qTfK?=
 =?us-ascii?Q?3c4SM1ewL0mu/MAwTVY+Z9vQhPWQ16glKlllzhOrkk2wwkPBiR/F1QytvmK+?=
 =?us-ascii?Q?G/69PQhPpSQ0JNsSUqPJO5ohmgfx6bNfXf0KM5h0VRqmPPnNOKGPOGvxlL1X?=
 =?us-ascii?Q?U/Q9uuYrgg1wOdjYIVoLYv8Bi9rgOa64giEIVosqViqLJ5xHGgRT9AL7LKkd?=
 =?us-ascii?Q?uSmUhH2OJKXyta9ovoLiNfiCqCQNA9dTTsni25F6s+snA0RX6vukdKtfKKDL?=
 =?us-ascii?Q?x8RSSKBfuaXPD3diCouw908xlOe5nJk8ILujSiXvNwU7uLwevaK4ar4VdtzY?=
 =?us-ascii?Q?YsvUas8nUTgiCLH5espNNJbTz75cqSDK+jLpKBKAjCgddVrwhM8zK0JelEe4?=
 =?us-ascii?Q?3uvWyDf7Ffv1rAI/wX9+RoyNFRiiZJreWPnICPl1Dz2uRZRm7bsGlP6QWklt?=
 =?us-ascii?Q?bObBhm3ugjvV1GjZgB1uSuDZnFI3Cw2GArXO9XHrWBjYwQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kVhZSvU2xXIo5Bwj0BOuDlFjsPGgqehsr91s7ord+gmpqIkzU4qBI5Nxix9+?=
 =?us-ascii?Q?NAeY2+CkPJjHcqeZfUZj9lw8P3IpJsaFwXmbMqIBU8LuhB7kvmcag7eIZXZG?=
 =?us-ascii?Q?YShnfw70DDGEoheSTvYjYoeDKzMZpxiG90MCf2R4vD3uUKU4fcgT2g1wUInR?=
 =?us-ascii?Q?Y1US5HjPZVHvtB/l09T5Vcb6Qjios16r/ZCYfeYe+hybD7JzLbgf7K3kGIVO?=
 =?us-ascii?Q?iv03ixpo3FMpAwqeKOKzN2Q1wov9laWfvXAC3V5jz5jV1oVXSxjeMXmjmstG?=
 =?us-ascii?Q?Iz9sE3ZU6HOR3Wdls5PIPMZ2p/xDEh+Fk35WgWAWlDK3W3EbvYBpnf7y5I3J?=
 =?us-ascii?Q?bfMOgskvERESqTtQxTuluxTExJC14L5QO92qHar0n3XFhV5T2YNpd9WpZnfp?=
 =?us-ascii?Q?QCtxx9pdwPYaAo9HDj272uTE7+PkfxYvt0VfVIgq2aQXf8R4L6QJw1aXTL42?=
 =?us-ascii?Q?mCETKxCzxLK4jLu7erYDKoBkKgTxO8VW1BlMRzq5aq7H2E+xmSNAyOcaHktZ?=
 =?us-ascii?Q?0qffoNQNGqffPUHAmtPMSo6bzWfgxgVpmZAdLVZpRcGM+WfFZ6aHEDoEpOmr?=
 =?us-ascii?Q?YIHAapWzXCuFQpJShDqATwC0HSnlEVIjL+tArBwGpjVLGjCPZk4AZI89w6i/?=
 =?us-ascii?Q?jGoSCMbAUAbfI+A03INERwzigxmcl+WDGmLpEOiRLRaVIM+J7DCHL6Pr7txi?=
 =?us-ascii?Q?Chm1MIAC2YoYaWYQ/ZBiE1ZGB0zCeU5bgfdxKZLLg8uYhsNgR+67ldN7/MRi?=
 =?us-ascii?Q?lOvsucW7c3LJrgQF2ga4bjgMIEe7zzmcM+qc1p9JjozWfMzX4+4N06HhSHdt?=
 =?us-ascii?Q?Qxm34ieDxIheiyRMkcwKQdfk6XWZcxW2OpCyT6yE4UVFU2/hZNR0C7gFfz61?=
 =?us-ascii?Q?rs8e50+pyimAI9xobOmNmjGj2FVJfcOj3xGC9qmkvYlkzvqXxJQyJhqVJHZQ?=
 =?us-ascii?Q?X6mEnx61juUiPo6j33Y3hjsyANBu7AwM+ZatEmd2rxzChuY7LyuhxrBdpJIK?=
 =?us-ascii?Q?vg7viIsoVcBazKIg669Aw0RRznionVXzV5xAjVtC1Ok0xHcWoWwmZIFZg8Md?=
 =?us-ascii?Q?g3zyOTSAJ8xXwg+6UE5vIdGY1J/bfAdO8WG676dDQKXb4azkvHEspn9zFXbW?=
 =?us-ascii?Q?EPKDya/y8VD1gJmdmnnvIPZmKPZySfvcIoMzo3dw7V8SInKfNnVFndPU+otr?=
 =?us-ascii?Q?HMXg6c7A8hCsgVs2TXPBe5QoH8U26WRc751NTGv+mgOjuMZZEqbr8Dd6fo5p?=
 =?us-ascii?Q?vfaiBx6cq6BR+7lSIseR/STUYw7OG44fhVdAgY8hoR9lfurTe01eNXKl/DRc?=
 =?us-ascii?Q?Wf4602bEvr23h/xy0dtYJ2pyq9khtBDW4Yxb+4uHbK20bvh4X6BT9SlCbTgl?=
 =?us-ascii?Q?cV7EfS8Z5Q6QZMxawdlZ5wTzgQPjxrMILfehSfQ+E6wBgqweV7hTU6gd28rF?=
 =?us-ascii?Q?V29Nuj35XbWo7L8MZz6vFiH/ACzx9d+Q6b+bvGe29PuseWMe2HMDWdZbx0xe?=
 =?us-ascii?Q?Gjhu/ll/imhat5Vs7+Qtvno6qJ5taLs3hGYPm2ZDAmAB3jwTW+QXIsR9OMMy?=
 =?us-ascii?Q?X6UpEbgLNclvmVetUC2fs1+fO6FtduHUNHSN5NI7ubAJg64TMnfFKLtrNGX2?=
 =?us-ascii?Q?Pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbe4de12-0b9a-4627-6eed-08dcc174d900
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 00:04:38.1894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: puwSxCBSrUGIu8OBm0Q+CkIMn91TR3CTjDoaNUga547bAs+0w+UoEkm34QbIbmM6KQI+aNOcUIwAwsjwCi5fZp/OaPV8bVREL2idZhlQwbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5864
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

On Tue, Aug 20, 2024 at 10:00:43PM +0300, Jani Nikula wrote:
> The code is now unused. Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_debugfs.c    |  3 +-
>  drivers/gpu/drm/xe/xe_pci.c        |  3 +-
>  drivers/gpu/drm/xe/xe_step.c       | 57 +++++++++++++-----------------
>  drivers/gpu/drm/xe/xe_step_types.h |  1 -
>  4 files changed, 27 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_debugfs.c b/drivers/gpu/drm/xe/xe_debugfs.c
> index 1011e5d281fa..a64bae36e0e3 100644
> --- a/drivers/gpu/drm/xe/xe_debugfs.c
> +++ b/drivers/gpu/drm/xe/xe_debugfs.c
> @@ -47,10 +47,9 @@ static int info(struct seq_file *m, void *data)
>  
>  	drm_printf(&p, "graphics_verx100 %d\n", xe->info.graphics_verx100);
>  	drm_printf(&p, "media_verx100 %d\n", xe->info.media_verx100);
> -	drm_printf(&p, "stepping G:%s M:%s D:%s B:%s\n",
> +	drm_printf(&p, "stepping G:%s M:%s B:%s\n",
>  		   xe_step_name(xe->info.step.graphics),
>  		   xe_step_name(xe->info.step.media),
> -		   xe_step_name(xe->info.step.display),
>  		   xe_step_name(xe->info.step.basedie));
>  	drm_printf(&p, "is_dgfx %s\n", str_yes_no(xe->info.is_dgfx));
>  	drm_printf(&p, "platform %d\n", xe->info.platform);
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 3c34b032ebf4..0c2342988650 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -838,10 +838,9 @@ static int xe_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		xe->info.dma_mask_size, xe->info.tile_count,
>  		xe->info.has_heci_gscfi, xe->info.has_heci_cscfi);
>  
> -	drm_dbg(&xe->drm, "Stepping = (G:%s, M:%s, D:%s, B:%s)\n",
> +	drm_dbg(&xe->drm, "Stepping = (G:%s, M:%s, B:%s)\n",
>  		xe_step_name(xe->info.step.graphics),
>  		xe_step_name(xe->info.step.media),
> -		xe_step_name(xe->info.step.display),
>  		xe_step_name(xe->info.step.basedie));
>  
>  	drm_dbg(&xe->drm, "SR-IOV support: %s (mode: %s)\n",
> diff --git a/drivers/gpu/drm/xe/xe_step.c b/drivers/gpu/drm/xe/xe_step.c
> index eaf1b718f26c..c77b5c317fa0 100644
> --- a/drivers/gpu/drm/xe/xe_step.c
> +++ b/drivers/gpu/drm/xe/xe_step.c
> @@ -28,23 +28,17 @@
>   * use a macro to define these to make it easier to identify the platforms
>   * where the two steppings can deviate.
>   */
> -#define COMMON_GT_MEDIA_STEP(x_)	\
> -	.graphics = STEP_##x_,		\
> -	.media = STEP_##x_
> -
>  #define COMMON_STEP(x_)			\
> -	COMMON_GT_MEDIA_STEP(x_),	\
>  	.graphics = STEP_##x_,		\
> -	.media = STEP_##x_,		\
> -	.display = STEP_##x_
> +	.media = STEP_##x_
>  
>  __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field overrides in table");
>  
>  /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
>  static const struct xe_step_info tgl_revids[] = {
> -	[0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_B0 },
> -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_D0 },
> +	[0] = { COMMON_STEP(A0) },
> +	[1] = { COMMON_STEP(B0) },
>  };
>  
>  static const struct xe_step_info dg1_revids[] = {
> @@ -53,49 +47,49 @@ static const struct xe_step_info dg1_revids[] = {
>  };
>  
>  static const struct xe_step_info adls_revids[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A0 },
> -	[0x1] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A2 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_B0 },
> -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_B0 },
> -	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x1] = { COMMON_STEP(A0) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x8] = { COMMON_STEP(C0) },
> +	[0xC] = { COMMON_STEP(D0) },
>  };
>  
>  static const struct xe_step_info adls_rpls_revids[] = {
> -	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display = STEP_D0 },
> -	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display = STEP_C0 },
> +	[0x4] = { COMMON_STEP(D0) },
> +	[0xC] = { COMMON_STEP(D0) },
>  };
>  
>  static const struct xe_step_info adlp_revids[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A0 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_B0 },
> -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_C0 },
> -	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_D0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x8] = { COMMON_STEP(C0) },
> +	[0xC] = { COMMON_STEP(C0) },
>  };
>  
>  static const struct xe_step_info adlp_rpl_revids[] = {
> -	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_E0 },
> +	[0x4] = { COMMON_STEP(C0) },
>  };
>  
>  static const struct xe_step_info adln_revids[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_D0 },
> +	[0x0] = { COMMON_STEP(A0) },
>  };
>  
>  static const struct xe_step_info dg2_g10_revid_step_tbl[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A0 },
> -	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display = STEP_A0 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_B0 },
> -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x1] = { COMMON_STEP(A1) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x8] = { COMMON_STEP(C0) },
>  };
>  
>  static const struct xe_step_info dg2_g11_revid_step_tbl[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_B0 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_C0 },
> -	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x5] = { COMMON_STEP(B1) },
>  };
>  
>  static const struct xe_step_info dg2_g12_revid_step_tbl[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_C0 },
> -	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x1] = { COMMON_STEP(A1) },
>  };
>  
>  static const struct xe_step_info pvc_revid_step_tbl[] = {
> @@ -195,7 +189,6 @@ struct xe_step_info xe_step_pre_gmdid_get(struct xe_device *xe)
>  		} else {
>  			drm_dbg(&xe->drm, "Using future steppings\n");
>  			step.graphics = STEP_FUTURE;
> -			step.display = STEP_FUTURE;
>  		}
>  	}
>  
> diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_step_types.h
> index 95b38d2d6c50..d978cc2512f2 100644
> --- a/drivers/gpu/drm/xe/xe_step_types.h
> +++ b/drivers/gpu/drm/xe/xe_step_types.h
> @@ -11,7 +11,6 @@
>  struct xe_step_info {
>  	u8 graphics;
>  	u8 media;
> -	u8 display;
>  	u8 basedie;
>  };
>  
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
