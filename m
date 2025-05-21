Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C251FABF6D4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 15:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC7910E8A2;
	Wed, 21 May 2025 13:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n5h0AtmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D88A910F063;
 Wed, 21 May 2025 13:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747834319; x=1779370319;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=utl7vFmidvzZ7W3gElmIIGnssWcpHuk3FRu7P98mlMs=;
 b=n5h0AtmXn203tVmTx/+KBWL83WKsViKdPiw8OMaNObUdb3hcfLsSq0J3
 EXZ35PpIFrUIya3/3FgxtPFFRXlYCvMfMC+VC4w5gptk2FU76VnriPdxB
 wqyNJGVfJgQCcmJzH3X4wxz6fjsARR+azTnW5v0ZigP2ocC/w7MEUzuWu
 vq/Dbl00pihEUbTcJAbTNF9xFmuCPVeG2Ca7Tq4KN9XodgfK5/NOpeTaC
 YUeF1UX5qbZXKOFnMw1Owlub62D++69kjqr+PKH67pVAXjSqftSGTKyEo
 EMs1UWBIKwmWNt2XVCdDpEBbdgCPj1VpojqcMLb2iIn00Wnid+3IxT2Ce A==;
X-CSE-ConnectionGUID: 5ULz4QaNT9u9UxVjFZaXbA==
X-CSE-MsgGUID: sfeBIq69T4uUJ6VrOoa0gQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="52439335"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="52439335"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 06:31:41 -0700
X-CSE-ConnectionGUID: +3N+1W3wQseMNra5erO5+g==
X-CSE-MsgGUID: PGKjTWHSTACXUvEyvfpRSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="144955504"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 06:31:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 06:31:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 06:31:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 06:31:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ceOLjCNFK5SUqr9WOFILMZ9jIjYd3Jv6NALwbP2GFjOdTXPG2oFZwgeH+VgzqHvToUjhMud5I8lI6BqpNlYc7NceyPpmJ+5H3joZzKy2Qb3TzlhP3MtdZG6PQ0lgVvIctsT2WctOzCEP4I4xLZGJpy7Po7piieVkqhJymj62FEkRqJOsAdKaYMwtfPOHugSDhzhqsVccgw29bsRmKZfxLX2RCDDtfxyNe0mpWSTnMvEMjJAUSeYQ3Hmj5U/QVJs57RGQwCqBgc1a25VEC4xzaXrbNOxPw2OQhsPz/zMnIEtNLC2E8QRVnVdRPFX+lx7RjflnbqnkW2m0bbQO3SKAvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+403Yg+Epox+PH5E/ryNPwRpIV/nKxJoQNpYBZXGMsk=;
 b=BsXEwHW+QXUXCq2fTFn7WNU0jY0EqBOGykRDDb2a2SdvFRb0WDAZV1pFTdMUqXnxzX6hLyS/bOcUUgjTWNRFLwg6pC59n9fie+SAov04/CnilFkcRL1wf4fSliTXRse9p0canMfSX7MXvESVYH5Qj1csT+zStVoGzRqVP2A7/U3z7XUaMK2Dlb12VRHYI2vQZszqZHphHb0vMNg13KnlQEu7YjVgvAeAxs3wNdAGT/ximyPh/Rnq6KPEaLz251u9ZgzSD2o5RjQwq6Z0ewqHisU4nBXL9C5pzf1Aky6bu2yp3/6vnMswQU/l0yYnq0balXXWjHizOVy2bvRN429IIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM6PR11MB4676.namprd11.prod.outlook.com (2603:10b6:5:2a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 21 May
 2025 13:31:37 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 13:31:37 +0000
Date: Wed, 21 May 2025 09:31:31 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: allocate struct intel_display
 dynamically
Message-ID: <aC3Vs2JyYtr7Crlw@intel.com>
References: <cover.1747822630.git.jani.nikula@intel.com>
 <8828decba861006fdb10171c5e83c6d898ce0a52.1747822630.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8828decba861006fdb10171c5e83c6d898ce0a52.1747822630.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0255.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::20) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM6PR11MB4676:EE_
X-MS-Office365-Filtering-Correlation-Id: 590a963f-8a71-406f-311e-08dd986bcf9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hs/ScXtWgf5DENZGt7S93U/gMJ5Dm1edtLKwLB5gtiRtxOK2Iih0vegmVab3?=
 =?us-ascii?Q?sI19UMYOd9j9MP4djmHpEaWSW1pYL5e/S1BuFSrtiJPKo1F7I911cH2O/t4j?=
 =?us-ascii?Q?LCYvS+EvUWneGAQ/HY3vN9f2qU3jU4inQ9wZhhh7xyDe59czVleaEG2mtlGH?=
 =?us-ascii?Q?SqpuMFRIxNb7o+AQBGq96wqgwonjm90NuyunACcEmjW2G922tpQx2a0QclmI?=
 =?us-ascii?Q?A6gjWsjLYB3mnupMBcBo/LVuOs+Xsp5B5RMrMInWwzkgOnAf64T0dZ0YofxC?=
 =?us-ascii?Q?GlkEqv/p60DD4cHuvD3UVmnKT0VmDkfowtlLGxKCF30d4W5g4RyN86u04vXF?=
 =?us-ascii?Q?9R6OrBN7//nnqBKNxu9g0Dh7cQZDbr5P0MJD6ztSxhd1zEX4m6cwFnH0EwD7?=
 =?us-ascii?Q?oi/JsHYNYTPUuNx3sdk87hiGoBoogfbehAz6290OZwlKd0/h4jnCky1N43Lm?=
 =?us-ascii?Q?EGYt1zksD9bxQpG7fknBORnGYGls8XyYh1LOwqv1dFYAA7nwz19oSwUh/UoO?=
 =?us-ascii?Q?qDTnWB+lDD+qytdTkCs7KdSGrJ7WJ57zJMtV6+IY2WItOClvVf5jLMD089IH?=
 =?us-ascii?Q?L3PpTCfPiu+ojxuCemZbNUhKbH37jBfNmBy1amfww7CzaxGHLl6HqT53EFBf?=
 =?us-ascii?Q?1QbasxbpXxwHbY8yY0jMS3e+iQp1Nki/9DETqXGm4zsEKFtdhm036N80jkOK?=
 =?us-ascii?Q?bREOclVkb7Ix1l/h9HwTUYUSOi1fLApv8W4StBab6f6RxzxOr7T70f19Ttp2?=
 =?us-ascii?Q?9RXrd415skU1jujIelLCeN88ris2mDyo1/lUTFjgyyWjbeslsm0QxweNcU2z?=
 =?us-ascii?Q?tHgPCJpgEE3lqpvtf3x64l151OoyQV/AaTpPjMx2qUH2Z1L9+b6jGpfbKcWd?=
 =?us-ascii?Q?ZV4E3azhf4YQHbqoZPP2yMd8gcdd+4UbyKu61UgPVLke8p4RQgdF9/O0UjiK?=
 =?us-ascii?Q?mikSakZcovXOu19lbRZ711e8weOZ5dnzqoA2lUB5Oi2xHwxxB91C7m83i+wW?=
 =?us-ascii?Q?mDZko3Jus+Gd56E1/kBNn6dOcw5W0nQ+8igX+89BhgeeN8aLzE1XoERus8/l?=
 =?us-ascii?Q?EfbKaqOKhKYTJLfGtB6UBDALpjXHInoVnfewcDKgRpy28Cg79Zhjkt32WSXL?=
 =?us-ascii?Q?1SdOmNkJ0c6X2bzSmVdmQ7YbmpADQWvVpWZ0aM3iAL1vF8GpqITY9d7qrOUx?=
 =?us-ascii?Q?NNGlXHRsUB5J5V5MuV2y1PO8yUxg9LPrVSHExC5ph+jojT0p40jAniibSdmY?=
 =?us-ascii?Q?RpScNS7fzxyxdUwU+LYaaS8BkyaMMajmCSLpemxYHw2qQbO6Y+pUT4a8I1+t?=
 =?us-ascii?Q?4mbdAo0eoVy4UCLmvaUUe7DnTM6E9Q96hSJUXAyZ1z8PL2/cvZr9Sr4Heb6s?=
 =?us-ascii?Q?i70RW84czxND/P2xaIwkBPiwtlJSXE5YeYqmju5EwEO2pagXQeD1bEOs0l5V?=
 =?us-ascii?Q?6A+9OQaZcQM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YUDvcOjjWbObUZhWF5dYYAndmsYfkeHWbo8PPoCAL5bQkcT9XUuv3aT9bElQ?=
 =?us-ascii?Q?p4AG7huXNQ9A4iqICFLctqKMOOWYNm6PGnNHCXG5ebAIz59rSfZQgPPZwUKB?=
 =?us-ascii?Q?hBiDlc1Cfcal1qGErKWCuvOcoOuIFbj2Rx3J9krFR0684KdbodGhD7xeOpA/?=
 =?us-ascii?Q?zLXlaxRfUZPBqqb5ZH/VMLRctyldmsXae64lqr0wU+VTAW2CI9QCMOQjggf9?=
 =?us-ascii?Q?RRX9hnoxxURjovY2omp7bUZXtCE6Iyh0D9Z0XbOBDfpTSt5dmA6DZx/tolQt?=
 =?us-ascii?Q?JHxnfoR2Y+ho+r2QeGiaFyDH+Z4I9avScDOHGvjm2j8onqSqFAoxh56EFHy7?=
 =?us-ascii?Q?OOQfbX9xT7zWRfMQ7KnhzO2CchUd//9vdXuTDNYOXBpmcTsW4I9ED66sdpM7?=
 =?us-ascii?Q?08h1TbmKEi4QVi67A1tGD7+LKsaKacsmrGwSXt285OrOwpbq0slYkQSZFoH9?=
 =?us-ascii?Q?i2yie2KygRYtw7tt2wu5/5Z+7RS2VyvVdk+04UlcpkYgttYLnXFPt8crO/rA?=
 =?us-ascii?Q?xt2ymij34YVXC3qLGdowk1MS0PXD25HRD4Tyybtup5ZzwbO8afe5ok/hv0jT?=
 =?us-ascii?Q?YiIfst0lFnGjTOedXMvpxxJyngLWfKiRNn13BVZN0mRZxJZqlIFmIX9sqylo?=
 =?us-ascii?Q?roWvfnZEvzqRdNHEEkXYMmNlt9aKJ4I61c+pa4oJGV6ce1Ujt4fY6q5Opb94?=
 =?us-ascii?Q?2pUa4Jj+57S0BQg/kswus007PcOKVFfsT5KyRB1ELiAGpbLIKCRrFv6Pg1KH?=
 =?us-ascii?Q?Ry5bDB8ATsF6A3+kJt/LdKY8VjtcZXfweXd7L1xDdaEwqwg91NIdaN59OnVi?=
 =?us-ascii?Q?iFzX+Gext8++IAX/+rt4r0rSYbWltATBnHzM7i44PwEpb07FPUhXWe/8RnJY?=
 =?us-ascii?Q?XlqcS8K8+ymbOFcdFLk8DaVzimuFmF8UDcOqBh/AMtH8KtSJlUV+c7Gd8JyV?=
 =?us-ascii?Q?ovvlrso/i1Kp46J/Q3BxBaF/ycIMwwoLClcDgNEn+Kum96v0Hu7OWG3XVHsp?=
 =?us-ascii?Q?rDKVMVFH4RSYy9dcdbAlByapvP9G3bYvjCK+2aKd/degzA3C3Ae25jMmjrvT?=
 =?us-ascii?Q?EiUg4e/qNNTNwqOGAXVUt59Vo0IbwlqabvCUSxbnvxAN6b8URO9V2D174NBY?=
 =?us-ascii?Q?09fInviQgALm75aPJbTJG8dK2igGaKcHV6BXcnvxIuF63q/FUgZJ2A7V0hwv?=
 =?us-ascii?Q?l414cYTCMSxFFvAw6kp2kDT0rxicYMfIcXjP5neCyos8ef5QYXRx1ZUFE1QQ?=
 =?us-ascii?Q?e8QO5qvRVZ6osc3hReaL79S9p6Lz/4ixuDeYxqkgaJDetbGYeDt3nA9KDk5V?=
 =?us-ascii?Q?c1iBVusFfOE11D9fDNXNFt/2Wp1GPrTB5QHMvsTK9H18sAEep4EUJ0n697k9?=
 =?us-ascii?Q?RRtJuWfut1CIaKz1kkdaUy0rTklxCrSOTdrS2wzT2ewFleODNsF3Wn9d3WJ/?=
 =?us-ascii?Q?urAlw1oDFtnnpzjYAxcw9oTKxe7F3FstnkGR1/lLvRyWzieQ++lL7ahj0Jz0?=
 =?us-ascii?Q?NI45CcBDwCwZfS7sYYkGCatwz43Q3Vq37Ytt4NLOLeslETCFOLgCwygRiWmt?=
 =?us-ascii?Q?e4nlDgpnAUXeEobWi5IoJICS4E20qC1asywH6D2YrUtl79maeQ17B7DlfT3I?=
 =?us-ascii?Q?dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 590a963f-8a71-406f-311e-08dd986bcf9c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 13:31:37.1910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TcNmuyv/Z1N6tYXclxdgrrMMy1uftA/CeAR2GFgT6kqhxsEx3cjlZ1vHci7nx7Rvewe+eBCpmUTYAIzMSHjR7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4676
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

On Wed, May 21, 2025 at 01:21:46PM +0300, Jani Nikula wrote:
> Allocate struct intel_display dynamically in
> intel_display_device_probe() and free in intel_display_device_remove().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

\o/

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 10 +++++++++-
>  drivers/gpu/drm/i915/i915_driver.c                  | 13 +++++++------
>  drivers/gpu/drm/i915/i915_drv.h                     |  1 -
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c    | 11 ++++++++---
>  drivers/gpu/drm/xe/display/xe_display.c             | 11 +++++++----
>  drivers/gpu/drm/xe/xe_device_types.h                |  1 -
>  6 files changed, 31 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 90d714598664..1d8c2036d967 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1621,13 +1621,17 @@ static void display_platforms_or(struct intel_display_platforms *dst,
>  
>  struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
>  {
> -	struct intel_display *display = to_intel_display(pdev);
> +	struct intel_display *display;
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
>  	const struct platform_desc *desc;
>  	const struct subplatform_desc *subdesc;
>  	enum intel_step step;
>  
> +	display = kzalloc(sizeof(*display), GFP_KERNEL);
> +	if (!display)
> +		return ERR_PTR(-ENOMEM);
> +
>  	/* Add drm device backpointer as early as possible. */
>  	display->drm = pci_get_drvdata(pdev);
>  
> @@ -1708,7 +1712,11 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
>  
>  void intel_display_device_remove(struct intel_display *display)
>  {
> +	if (!display)
> +		return;
> +
>  	intel_display_params_free(&display->params);
> +	kfree(display);
>  }
>  
>  static void __intel_display_device_info_runtime_init(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 950b7ad8d675..d33b0eb83a4f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -293,6 +293,8 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
>  	intel_sbi_fini(dev_priv);
>  
>  	i915_params_free(&dev_priv->params);
> +
> +	intel_display_device_remove(display);
>  }
>  
>  /**
> @@ -735,6 +737,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	const struct intel_device_info *match_info =
>  		(struct intel_device_info *)ent->driver_data;
>  	struct drm_i915_private *i915;
> +	struct intel_display *display;
>  
>  	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
>  				  struct drm_i915_private, drm);
> @@ -749,10 +752,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>  
> -	/* TODO: Allocate display dynamically. */
> -	i915->display = &i915->__display;
> +	display = intel_display_device_probe(pdev);
> +	if (IS_ERR(display))
> +		return ERR_CAST(display);
>  
> -	intel_display_device_probe(pdev);
> +	i915->display = display;
>  
>  	return i915;
>  }
> @@ -911,7 +915,6 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  static void i915_driver_release(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct intel_display *display = dev_priv->display;
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
>  	intel_wakeref_t wakeref;
>  
> @@ -934,8 +937,6 @@ static void i915_driver_release(struct drm_device *dev)
>  	intel_runtime_pm_driver_release(rpm);
>  
>  	i915_driver_late_release(dev_priv);
> -
> -	intel_display_device_remove(display);
>  }
>  
>  static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 0841988c4a67..fd0274ec9c2c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -178,7 +178,6 @@ struct drm_i915_private {
>  	struct drm_device drm;
>  
>  	struct intel_display *display;
> -	struct intel_display __display; /* Transitional. Do not use directly. */
>  
>  	/* FIXME: Device release actions should all be moved to drmm_ */
>  	bool do_release;
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 0ea12c68cedb..dab2b71a2a8f 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -141,6 +141,7 @@ struct drm_i915_private *mock_gem_device(void)
>  	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
>  #endif
>  	struct drm_i915_private *i915;
> +	struct intel_display *display;
>  	struct pci_dev *pdev;
>  	int ret;
>  
> @@ -180,10 +181,11 @@ struct drm_i915_private *mock_gem_device(void)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>  
> -	/* TODO: Allocate display dynamically. */
> -	i915->display = &i915->__display;
> +	display = intel_display_device_probe(pdev);
> +	if (IS_ERR(display))
> +		goto err_device;
>  
> -	intel_display_device_probe(pdev);
> +	i915->display = display;
>  
>  	dev_pm_domain_set(&pdev->dev, &pm_domain);
>  	pm_runtime_enable(&pdev->dev);
> @@ -260,6 +262,7 @@ struct drm_i915_private *mock_gem_device(void)
>  	intel_gt_driver_late_release_all(i915);
>  	intel_memory_regions_driver_release(i915);
>  	drm_mode_config_cleanup(&i915->drm);
> +err_device:
>  	mock_destroy_device(i915);
>  
>  	return NULL;
> @@ -269,6 +272,8 @@ void mock_destroy_device(struct drm_i915_private *i915)
>  {
>  	struct device *dev = i915->drm.dev;
>  
> +	intel_display_device_remove(i915->display);
> +
>  	devres_release_group(dev, NULL);
>  	put_device(dev);
>  }
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 1e59b6dd2c3b..e3e5d41db29d 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -529,14 +529,17 @@ int xe_display_probe(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		goto no_display;
>  
> -	/* TODO: Allocate display dynamically. */
> -	xe->display = &xe->__display;
> -
>  	display = intel_display_device_probe(pdev);
> +	if (IS_ERR(display))
> +		return PTR_ERR(display);
>  
>  	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
> -	if (err)
> +	if (err) {
> +		intel_display_device_remove(display);
>  		return err;
> +	}
> +
> +	xe->display = display;
>  
>  	if (has_display(xe))
>  		return 0;
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 902b2e30b3b9..7659222703d2 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -593,7 +593,6 @@ struct xe_device {
>  	 * migrating to the right sub-structs
>  	 */
>  	struct intel_display *display;
> -	struct intel_display __display; /* Transitional. Do not use directly. */
>  
>  	struct dram_info {
>  		bool wm_lv_0_adjust_needed;
> -- 
> 2.39.5
> 
