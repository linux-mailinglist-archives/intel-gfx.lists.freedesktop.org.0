Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3026348E0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C4C10E484;
	Tue, 22 Nov 2022 20:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90CE10E47A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 20:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669150783; x=1700686783;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p9QYPucIMfc2uo0nonADpZpky3TXCAteespAB/mFK4w=;
 b=dYwB+RVOU7Fb/ZEzsGQoEAOokdHzEF/EXmZUgKF9B/oDLpaljROUrts0
 I6Ax6p4VROmqTEq9Ip3bKVJnjrqIML80DFsBhiRgTq/fWc8Iqw1A+q7Lj
 sUA909OP5XJGNfzEGdzFuasPSR21seaRhRWLcjPR2DeBr4DpExS2sd6pv
 zYvytYY9JFDPbTWPhB9UeUTidh/h5U4t/hUcZ1F9exyprnuI5hXHQUz4F
 vwsTSIJfIVnQVI/BIV8jjFxRGh+2jP//EPJsN5xulSWRN1aPF3S2kGp9u
 g7oymeZQP+PlQawR26EAHEEjOic+BYQ6gq9KhbL5ITTYfR4VwFG8M+gqx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="315734844"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="315734844"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 12:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="592278415"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="592278415"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Nov 2022 12:59:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 12:59:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 12:59:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 12:59:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZmxOec/xxTmCoutI8a9pRcYk3V/QZe77ChQdEYuqsSai+WLvnsWlWHwxqVH16OHO3GBHwAI1NXd5eaKTjOh+Utl6+wkQ178sELsyJXPrPC7TaLPl0d7Z+GJMzBBXKGo6/2VDk0X5nSgMmakIRLEwOcwVqH9waaaub4le+y+0d/USg/579iYwNQMk7xWOCCLZctyQp2iygE4typ40qSKymyDjcJkWq8qUbJwwlGSy2xpKSZe60p7bOQoUTrvT6z61HLCQclwRUTHO474Kg8cDHhwt+jJPBLaC6RUtz44bmSZWPEgzwf0PDEhq2s8M13mAie/E1FRb8S62V2eTDisydg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0Zjx7Reuve4WR6F/WjK1GpmeENT4+jrf3DqgJlyT+E=;
 b=CzI5BIWQ+OWs9FJPDMq1QFq0hccvOVGME9lrdVbHFKjFL6KoP4fw1d5s1hF1lKNYb0ODA0kUuRdi/4mzEcKLwTQ7UFn4kz2li6sLS4+CbQ705EkJhmud8o18V+Pb2jF3/Rxzlhs7iucqCNax6I+c93//PlG0Pcd75a2ruzSabIPEYyka80agF3JslZaFNxREAgJ/uGbtqilWMN8KJG2mRdy6JEFw3uhLcMvpteXaoWEvJwUQB7vJZb0COQxZ5IqQe69Hde7DMZ6aIudzAmP08bVCaAR3HEskA+bLqyWLQx3aPbeVE6mZ0z7BMSgSWqHs3yYydq6p+V1Ox9BzhCDGlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 20:59:40 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 20:59:40 +0000
Date: Tue, 22 Nov 2022 12:59:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y304OGPuYRHAjQkx@mdroper-desk1.amr.corp.intel.com>
References: <20221121211815.30950-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221121211815.30950-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::8) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SJ2PR11MB7597:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f5448b9-e4e4-418b-8ca0-08dacccc7843
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0PhgFNAScwuMp7B5vHw0gSAgZ7fwGB9tsrqPii8wYAO5FdF4WulNFmDH/dovznrxFtjw1iwoaVRJp78ZIesmigdiqmZp+lp740Dfm0XBtaGrcs6cUDuEA+bouYkYJvCDROGmpWD6B2bGDwSgpMTUAMaa57ympBfwVBaHxxcQYwr/enFZ6RTUPhd1eVmH0t5h+Dm7W46Bd8OWV3iYQSE9S782HNVxdocJrfk9UtGmuLxsjfZF8FDbEmNNuAGHt1+ayQHNv1eGzMO+GKZpil4qy8Zr/8u5R4xrszRJgW/fO/MtqORvb0OpuFRb1o+i7X82AZz86+Z+KuA4V4zXsUXoDBmUb0WUMian2SxRcaW5RQe2LHITXWOS7/r+5Y/ll5CgesUGXsDlLE6qF94cxT6pNLtErRUOuA84cfuK0zjlXUf9MXhLXbBlVeB/7OG5RcfHVWahtqfM3WLNApXV2sF39ky5EQ1dJ+la5RT2RHZ3i0BSmDga75H9XiBbTCJ20DzeqGZ66Tj7s8KbQ5dlUlHhW8eccH0JkehbC4iEHcCLBfxM9nV+DCjMA0XOBPyT+9xOJbGXaVZqrFUjvTwl5/XnYlRhbZigXJnjy92ZguOekH2LD/aYoIog73j0k8+rRxQpItYgH5FIoZiww3+r9W73xw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199015)(6506007)(6512007)(186003)(6666004)(6486002)(478600001)(2906002)(26005)(38100700002)(86362001)(82960400001)(83380400001)(8936002)(6862004)(15650500001)(41300700001)(66556008)(66476007)(8676002)(66946007)(66899015)(4326008)(54906003)(316002)(6636002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4v/bl63UYj1uySIQ949yeNmi/RAfYS3DGkewxm9V2RSjbdkpSFd7hrWRVDb4?=
 =?us-ascii?Q?XNI+laRvqnojE5PQ2zpQ3MffWT0n28K5MET91a+roI8HgXwxtrM2nqbFeUUK?=
 =?us-ascii?Q?ew0HXeZLzJ3wrzuODWFEnrdA/zgvgn/cgtzchlzrX8CBO+HwBnJVya5xqjqH?=
 =?us-ascii?Q?v8FR1pH7pA7VWJE7n300fTvo7hjmbobpqRE5V1unSnizNzGHjiLbWiwFRBO0?=
 =?us-ascii?Q?ihYhfLVlk0fS38ynTYz5/LnbeBVgwOAA3domwynVH7cBiN0rsYKueKGVTQFL?=
 =?us-ascii?Q?fZKCrj+jGuHjdmBmZFqCnT4h1cCUBvHo9sLSDuwY/TJYCXweWttKwLG4OXIs?=
 =?us-ascii?Q?OHxEhLbs/d+3Duprtud2uMzLQRB2rCHgbfpgsb+IONyU+vTxIlP2j9qStIWt?=
 =?us-ascii?Q?eVssthcuE0K9o0zMO+u+/KqXbp2jEeoWzdwQsZkLWDFTAM2A1ZBSRDaNFq+8?=
 =?us-ascii?Q?H4eWx7iRq0ITfYxsFUWRItzLoYwsnS/3SGeDj6FTF3/syjySyUWpVHEShtaN?=
 =?us-ascii?Q?Gl342joS0lsbebhCyWcDqQhhTPJCJJZduXoM02Ys5FiB2VuCtVcwKqG2DLYM?=
 =?us-ascii?Q?B9Q4hOkamyVZ/r9qsNrnmsNWZ9leYu6lmavcKgjaW4GnATezhVUkHS0wni/q?=
 =?us-ascii?Q?+YvXE1hCmuAKTEit1nozQFYC905cUFLFAr6kFJ6s7JpUx+anoj3Ka/3/GhVp?=
 =?us-ascii?Q?xmrbFJolV1rQYe/G8gwfsV7Z45ZSUn3lptxmrkKlWJCitkRRw3Vfm1kJEc/Z?=
 =?us-ascii?Q?KQR/cl6+KNRb5ZW5tcZjyHv9HpvHxTAvZsorjT/nW6doOgx+oM3Az8T/t0lr?=
 =?us-ascii?Q?000Q4BRcotrJtLkoexEo04R+xiSKW/l9AXV6Ji+8U3Vma4o87PYesHbyEQ/y?=
 =?us-ascii?Q?fmXtcC4zyJZi46lBNei0RRQUOALqf37IxNUQW3EIsRrtBlaNn/PVitaG8RuV?=
 =?us-ascii?Q?PXkDeLciEnxwSbHtB9UWSqr9PyqA2llThRKN5CaVo4xXtQPJPwVJK00Ex69Z?=
 =?us-ascii?Q?ET5qqOi3XbCv1ifNZDJVL3+Dy47+GPtXfA3fX6h4z8R23ltFqqUCdQE8A/nq?=
 =?us-ascii?Q?weZIR2XIYNxh5IUTDOe+oGpPNbp6LAxkIAshdfXfzlEiTtL5QxOedY9qCTs4?=
 =?us-ascii?Q?D5+UTTqilSTY2oku2E6+ma9HZUypLtwWlppfji+ZsPJ9EpeZZoAmh6vwoqsa?=
 =?us-ascii?Q?UD50UlNztP6n/KdCVUMwZ30ZQjiucN1M9veGYV5sAba/9+Ff5lxO3Oc/1YBh?=
 =?us-ascii?Q?QBqoitJv3lVpT1h1WF/2W3gxtnpISk6vbRhqb8o2Gzsu08HWj6SVUtkPjJf3?=
 =?us-ascii?Q?mfEPFqRSwxhxzEN/fW9YatBxle3nz0NO0DxwqrFm0P2Ww9mBI3NJWcMA2FJr?=
 =?us-ascii?Q?jDfhu12ZciMu9v/Gs1iOSjrq5+a6gw6522b4iTXGYI3AUC9I2KO2uhbfSjG2?=
 =?us-ascii?Q?ALoA3MVMz4FChl4NJoXbY+c68AUFJK0aeJxg3ztjSaqqDeft6DrPFjU0E67M?=
 =?us-ascii?Q?8VQwgunytWRs3V1SYk79qlCZYtE+0k4fAPkTE3P9cwqs66Z2H/bmHgiRyUaA?=
 =?us-ascii?Q?Nno0vt+7CdmY8mYf3/RMxJbg1Z+OV5z/euf/xaqvSKx2Sgk2pyLTQmvJpI0i?=
 =?us-ascii?Q?ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f5448b9-e4e4-418b-8ca0-08dacccc7843
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 20:59:40.3651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hX4z1YZj4Z4KeK7GBzHNqR/iASi99U8Tx8W+dqYcyB159ACPm3mAVjSBKwcWFJd+qnGMCADd6k3tn6ZEMQnrNMtBaO9Ia+mfBSLoWZLn1Tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 21, 2022 at 06:18:15PM -0300, Gustavo Sousa wrote:
> Release notes:
> 
> 1. Fixes for Register noclaims and few restore.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Now that we've removed force_probe from DG2, in general we're past the
point where we can just directly update firmware versions like this; if
someone has a working system with the current kernel + DMC 2.07 and then
they update to a new kernel containing this patch (but without
installing DMC 2.08), they'd see a regression.

In this case, maybe there's still time to sneak this specific update
into -fixes so that it lands in the same kernel release that removes the
force_probe protection on DG2?  But in general we need to start
providing backwards-compatible support for all firmware updates going
forward.  The GuC/HuC guys just went through an overhaul of their
firmware handling to deal with this; we probably need something similar
on the DMC side now too, although I suspect DMC should be simpler to
deal with since most (all?) DMC firmwares are just drop-in replacements
and there's no constantly changing firmware<->driver interface like
there is with the GuC.

See Documentation/driver-api/firmware/firmware-usage-guidelines.rst for
the official rules about firmware usage.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 081a4d0083b1..697196368fbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,8 +52,8 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
> +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 08)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> -- 
> 2.38.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
