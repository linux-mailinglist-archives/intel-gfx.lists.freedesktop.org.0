Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF3B8B610F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 20:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E1D10FD71;
	Mon, 29 Apr 2024 18:24:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KlYHOUP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225E510FD71;
 Mon, 29 Apr 2024 18:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714415076; x=1745951076;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ownhmLDMOAyIPPCOVAeSvZIPa3RlxewdOjaNNDFYhNI=;
 b=KlYHOUP1aZZoicUtWHODsv+SICNWfU5ix5hvAmBJPQ1OuX8nqQm3q+p0
 EFbw/gq9esCuzIGLVzRu9WzZ1FmgUtFCAZ7QQaIcFijrOrwV7bOk1Vvmb
 /0z9UiGEQ8WXE8EHnZC0ikNX2QMBHzu7ksVbCrBiEo8OYiXQdAR2vf67t
 MTrqW/+jZIjcq1Nvs5RXSL+axNjIpSppPaACaqdWifa9emW68tAdcSnzT
 Mt1DzX63ZZp0khT+WoRHTybiUNaG0P0/Z4xwEnVXk8kUMd/fjgaLFVxV/
 a/PUxKjXBXVhp5mDcTp9HgvFUkNvcttUwycZACku4D/IdGO08WV4iJ/kz w==;
X-CSE-ConnectionGUID: eQxXkwVPRN2qgCy8SYUApA==
X-CSE-MsgGUID: EKoguCtmSxWKnpRnF47aEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="13881573"
X-IronPort-AV: E=Sophos;i="6.07,240,1708416000"; d="scan'208";a="13881573"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 11:24:36 -0700
X-CSE-ConnectionGUID: GKnIzC/IQlK5c2Hi4q2BwQ==
X-CSE-MsgGUID: v4K1mGmASOOyypTn0XfAQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,240,1708416000"; d="scan'208";a="26182506"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 11:24:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 11:24:35 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 11:24:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 11:24:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 11:24:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+l64joD8I/NOux+O6iY94ibh35isHDKpQw/cFs2H2lMN940yuLP6jBapbsynnHSQ/3SgOqAbfd/B3VzLw1YDfxhykPurMLgw0QGF/lT1HSM0SQT0lOUbVt6PjAjTonrZBxF1ecOhGMI0Kv4xjznO1I6uchjBNFndNr1MbI7bMGrZwnz/S+9FpC1rL8R7mVmjco3D7/TorWDn6o+M9pFfGqDfLgCwwDsx2Pxs533VrqhaqzAFI4Ctgr52lhC13F7fXQYKr3Lb74esOAXEPf5FlaE3YYh2WGz1rWAHa5eXa99v0JxEfFKAOsEsPSVMXm5f8l+Ho0TngMM0t0CLuZ+Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JOIkhrw6pl/LjJku45DZXa1M3mX/EE/8fnAzu6pnuqA=;
 b=hd7B82C7yg7FdIRUpDdIapFgGXB3abz3J67Lx4D+ds3u1aQJtKT70AUnilUHJCkziAuyqMTxnskms9HDEPy9UzX6jZSVrxFopMyeQVQPSQVhobg7LngTvoapN4LVnP+iipIKWcl5TuVGoDmWWPVHnyIDlfOYQzGdJgahgd/DrznHL7wBenafemjXQr6/5RvkvbhKZ2BePSHKemaMVS9gEDXQyJMQV2LvpXoJgTNNA4tg8UWpENJv14sX39AoN7mAANqKVj/XnYPVSYqwXDO34pDyPpz1h7Ozz+R1P/2zPwZEtS7JBsR79n9zubKiCcxMQ1b9WS4iCs+8hjXaOS05eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 18:24:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 18:24:31 +0000
Date: Mon, 29 Apr 2024 14:24:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
CC: <intel-xe@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Francois Dugast
 <francois.dugast@intel.com>
Subject: Re: [PATCH] drm/xe/xe_ggtt: No need to use xe_pm_runtime_get_noresume
Message-ID: <Zi_l25fsIrvUO12U@intel.com>
References: <20240429162915.1831945-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240429162915.1831945-1-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0226.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: 61ef3bd3-137e-422a-ba37-08dc68799ce8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OXVH47sch8IabKi0sYL+WZRCu+V+IpZZ6D51fJ17U/dKMZLBNU+hL/KuyEH5?=
 =?us-ascii?Q?POOlWlfekF7Rh0vKQPrWbjVmltJQNKiUUE11ioWMIlyWo2Q2/uCdb5Nw8XYF?=
 =?us-ascii?Q?r0aOw3QSr1nmoLpfkC+61KKgUumPgUOZKg6ZO+CtFWN0hA0M2cBTkS/X2R01?=
 =?us-ascii?Q?IFN/2lM0Z2rlhLtCTSQQASva8fmDwPpA0+R5ef9vnqQtw/QYnzOCne5AI9xk?=
 =?us-ascii?Q?QDpVN1b/IRCO8kpv7HlBSQ9QtpIzD23Uw/VCiWKBcWRIxS75UYsc2txwRi6E?=
 =?us-ascii?Q?ypYZh2fl0gmBYTd+WJ0nObcx9luY/KnWRcKEZn1xULdoi1/1R8s+fxyanxrf?=
 =?us-ascii?Q?SIFX1MDk0ybFBkhhd4KuujMnqWGFXN/uPl6xdGSjeDpQYt4SFMSIta0TikuF?=
 =?us-ascii?Q?T8/mcAq4OzgPwVhbdZEMkctZm6MMWMl6iaTgxaCXN67mpPDWTLuYjmgwidcq?=
 =?us-ascii?Q?S+ljXhSPRQf/0mjYUfP8ZpwQJ4IF7h3wnqESOsB8PcIFefmmS520oOJyy0ku?=
 =?us-ascii?Q?qE7yN4PYrgC6Uyk8SdsWKx4FX9gQJkOSd9hAylCIjO9JhR1egJpeAVpn91Fj?=
 =?us-ascii?Q?XWFmG/C/gYOcLdpzSi5jYpxYPAjTXANdhS0HKa1c1tt0ag7JhacUcl4P96Gw?=
 =?us-ascii?Q?i1yFPysSrkNy4BKQrQK3uJpsww/5WL6x1rA0se2ZNfShZOIPT3f8v3ch6DeE?=
 =?us-ascii?Q?ItTqZGQKyyM4NJQ026xImb3tBPepOm8tS+9ZL7zuO88Evx6fybz30s7/0PxC?=
 =?us-ascii?Q?5eRNazl/z/0jsmRSpMeZxMSGhKzhFkdZyXvio2o+kpQJ37XrctmK6IM2mJrz?=
 =?us-ascii?Q?WAuSED5fq2wr3SCF4Vq6SkPYe0rQMDcYT52i9y/PLQ3XM5pZKIOzSpABjYxg?=
 =?us-ascii?Q?L0E0CRdiYjhus2ggHyeikTn9W9Jqm6gVNzEsvSBnOSx3sHrBCf4lS0NlJyf5?=
 =?us-ascii?Q?pBLNrvO/DlHbvr0fr97fYPVTZK51+xC9SrCxWZbknBRP7S98kpt8JdLTKfY4?=
 =?us-ascii?Q?RlmiOHkrJgRfbHfnxZaplthbY1mIhMj6cZJmgXBiezGO/ZbpuJcf7oLYxtP5?=
 =?us-ascii?Q?lvPbnTHvSuUH/r+mM5gYzlbQ0OMU6UDptdS+K1Drs7BBlJXbhFH7sPlaWTP2?=
 =?us-ascii?Q?Kjoo/uao5MU71EtcjG4ytMGs4fLyWxe5iI6QcbRdvduRGBFBB41Tijsj7Zec?=
 =?us-ascii?Q?sIw2+LrjUKo44mAzwho/6ekEHsiwYQklRkuG31jZkF/cUIdopveW3KiCR+U?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tTuL6WjSHpUZMDlhuymq5txTsYMUvc0iFlmqnG7F1JF2fkb0s3p4Ch09sTSr?=
 =?us-ascii?Q?W7xInr3Gz6Xex/H04rPnx07MIcNI2ZAQjcusuvl/0bzeAEAnwDUfw+8q7khn?=
 =?us-ascii?Q?uljYA0hReHWNNfRZCy0BiHbooTEU99WlBO4uoLNkLttrI3n3RcRpmXNo9asX?=
 =?us-ascii?Q?Vdvr76XrCEaRUvHZXW+/n1rGO6uQNOq3c8zAIZXDmP7BkljZoH4fsHlmxvyy?=
 =?us-ascii?Q?/K8x9AcMfPn3zsox8xEVTLEDp4Zd5pwXBsifjld0r0EBNWjuQYRHAqOFCOEc?=
 =?us-ascii?Q?sN6bjSUhAnlHJszjF63fymkpRdr5VIVw2/v7GN/7PM9mNCwgtm2kcR/dkExE?=
 =?us-ascii?Q?58DQW+jPe5vzfrGvI50bdgikQYm/cmX/7J8OLjniV6G37WPl61iIZIr3yUWC?=
 =?us-ascii?Q?BoI2F/We/ZHB/6xNWI9S2FZ9ltcpH0+B4yFOoKOlOwZ+4Smom0jWyEdXSXSV?=
 =?us-ascii?Q?LtVkSoPWQwKaqGWX+wkUxfQDQ+pmV2SexnnIe9uMrHxU9Fzl7Z7xUIcJniK7?=
 =?us-ascii?Q?17ODkQ4PsarW+x1p9qftvQfc/eNpA4OcHZqiFGHQsjXI4ngzbxKxRAxN3Hie?=
 =?us-ascii?Q?JSblauDX4HzjI8pDQ9JQ8dBY/GYQYpgVYvN+VtmGZ+79DOhijFm5mXeUXOcW?=
 =?us-ascii?Q?/fv3S4HHOtNPHXcweo10XWr3DjtSTNREQYyrorOMTaAkcyJuo0G4dfctGuOj?=
 =?us-ascii?Q?rhzaBHsRQx4Mp0nVXS+wTaDTwLcdPtt73JBr4tGRiBDTYg7wQefoh9MDbiUR?=
 =?us-ascii?Q?zmQ6OwBYqeYYih5f2ANEwDYGRkeLwS3W/+9Fm5HgdR96YFCZCbS0UNFmHUBE?=
 =?us-ascii?Q?JvoTyUW4DT1DHUwosGyefsQe0+LUstUX4pLZW0Ol1W/o/buXQHoSdNNkN1wt?=
 =?us-ascii?Q?wWk5/U17Z3G3q4/76+p/PUEVNT+vxUba6URyp1iTDRUcDAf74GAKh8m+RSMV?=
 =?us-ascii?Q?IPi1LXpJ11ZTbXYWsJbxbaOfwElO3O1jhMtGv6CaC2wFJFnHjF8Bpjgr49J9?=
 =?us-ascii?Q?6BYARXtWsIwRi3rvY+FYNfSHP21/ZyzE7o1wTExT3+FmM7yikSRHbLtaKcSh?=
 =?us-ascii?Q?zItA/WIbHOrohhXw2HycrvAcgdY/xdl35UrBOMTH01wRLzx5jowB74zWGBuv?=
 =?us-ascii?Q?Dutx8quVMfHAqEMxGbXW6VGCSmdYa51qybv6iy/E718Cljck4asUuc0Z3tcZ?=
 =?us-ascii?Q?lrYsHTEWFu4ntw5S8LFeRepo+AtIc+MkTvyN3CCBRobdaok41xYHzbrMejZW?=
 =?us-ascii?Q?oqeDpccnecDoCg6hgEOWSF8LQ3mDFgMZDNTnJugqBnRQ2BCb47X35T353o+l?=
 =?us-ascii?Q?uWVKA7xmPWvMOXcYeW20BEZ1s6gGFYPZ0nml7im7UPDxpcSTbMSXnKv5bcVT?=
 =?us-ascii?Q?v4zD6ETHDhoD3e90EvbOqKzHUJHve4BmnWthr3fB9lOTbSj+tubIP0AZQwmK?=
 =?us-ascii?Q?MV5Rm/tH+WSkkoD+oo/nZZhgpvtQ2voUw4h4WpUhP1Ku3ai9NM/rSLgnu5qX?=
 =?us-ascii?Q?gesKvx4OTdqZd6sXjZ6ti6bFyIFGoSbQsKVErAZHPOo+Nn8OmnbzLlB2rmn6?=
 =?us-ascii?Q?kzmfMNExBy/aIx3yOGSfGXxdf9cg32DjlQjobBCW1tGJyY0i/8eRrcVgi9JG?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ef3bd3-137e-422a-ba37-08dc68799ce8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 18:24:31.5037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IgRLpgCJGyWFAEPP31svAFyOJnBYWoOShNCqTamV7C7qfesNwVrnP8eK0Joezf+M+8qts2d1KF7yadLS1BVMtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6911
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

On Mon, Apr 29, 2024 at 09:29:15AM -0700, Ashutosh Dixit wrote:
> Switching from xe_device_mem_access_get/put to xe_pm_runtime_get/put
> results in the following WARNING in xe_oa:
> 
> [11614.356168] xe 0000:00:02.0: Missing outer runtime PM protection
> [11614.356187] WARNING: CPU: 1 PID: 13075 at drivers/gpu/drm/xe/xe_pm.c:549 xe_pm_runtime_get_noresume+0x60/0x80 [xe]
> ...
> [11614.356377] Call Trace:
> [11614.356379]  <TASK>
> [11614.356381]  ? __warn+0x7e/0x180
> [11614.356387]  ? xe_pm_runtime_get_noresume+0x60/0x80 [xe]
> [11614.356507]  xe_ggtt_remove_node+0x22/0x80 [xe]
> [11614.356546]  xe_ttm_bo_destroy+0xea/0xf0 [xe]
> [11614.356579]  xe_oa_stream_destroy+0xf7/0x120 [xe]
> [11614.356627]  xe_oa_release+0x35/0xc0 [xe]
> [11614.356673]  __fput+0xa1/0x2d0
> [11614.356679]  __x64_sys_close+0x37/0x80
> [11614.356697]  do_syscall_64+0x6d/0x140
> [11614.356700]  entry_SYSCALL_64_after_hwframe+0x71/0x79
> [11614.356702] RIP: 0033:0x7f2b37314f67
> 
> There seems to be no reason to use xe_pm_runtime_get_noresume in xe_ggtt
> functions. Just use xe_pm_runtime_get.
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_ggtt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 0d541f55b4fc..8548a2eb3b32 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -404,7 +404,7 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
>  	if (err)
>  		return err;
>  
> -	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
> +	xe_pm_runtime_get(tile_to_xe(ggtt->tile));
>  	mutex_lock(&ggtt->lock);
>  	err = drm_mm_insert_node_in_range(&ggtt->mm, &bo->ggtt_node, bo->size,
>  					  alignment, 0, start, end, 0);
> @@ -433,7 +433,7 @@ int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
>  void xe_ggtt_remove_node(struct xe_ggtt *ggtt, struct drm_mm_node *node,
>  			 bool invalidate)
>  {
> -	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
> +	xe_pm_runtime_get(tile_to_xe(ggtt->tile));

we cannot do this as this place gets called from locked places.
This is a deadlock risk.
We need to ensure to have an outer caller of the xe_pm_runtime_get that will
ensure to get the device waked first, then then we continue with the _noresume
variant here that only ensures that we have an extra reference.

These warnings are indeed poping up in multiple places, and this is a good
thing since we killed the mem_access... at least now we know and have a
backtrace of the places that are putting our device at risk of deadlock
and can use this information to now find the right outer place protections.

https://gitlab.freedesktop.org/drm/xe/kernel/issues/1705

>  
>  	mutex_lock(&ggtt->lock);
>  	xe_ggtt_clear(ggtt, node->start, node->size);
> -- 
> 2.41.0
> 
