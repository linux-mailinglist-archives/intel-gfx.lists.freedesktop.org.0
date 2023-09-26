Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533C27AF1B9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84EF10E40E;
	Tue, 26 Sep 2023 17:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28C510E40E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695749342; x=1727285342;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YowHRI6pGbAN2eGLbC1oq2ijnvp9sAYekSXELfwhqZ8=;
 b=ENP7CGl1LFb0YUNZ7Nv+wEO1HZXBwcLHMZ7WZnKqjZyZphKXG0Zeiodm
 jAtOD7gROvadNt68/qp/y6R1QnWeS45i0DsRY/vgUuCUc14ge7UW+Jrj/
 mt7GO0tTXk1WpQaf5TR5czi2QjKznkTv4wN70Cl5Lh429d0z0D19Z6Z1+
 XuFJ7y4qsd3MRrSMpd6FSUOMuh1DfTgvOHCkUluXvWAnYXWuMhlAuKXRX
 nDNzw2QN0T2p8m7cSnrdDKWSbA6NkmB9HkO38IUSwMYB8wWTWf3d2cti/
 1t+RJWu0gt6gkyisPO+9Pf22ovUf/AzOwr+Pi6/545dHFfSmEBrFHGr+S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="361875991"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="361875991"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:29:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="839099555"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="839099555"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 10:29:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 10:29:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 10:29:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 10:29:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBl7jXkVTuMEuNNYz1BnRSVDd3q+Ax/IqVQx9drr0ZWeZyi8wfYH53s0YFTj/tg+r4C67WfwOa4DLenGUBTIbbTY1eEOwFysdSCn03cbrS+CsW+s1/NcCxvtyys7qfB/IXNQ7WvbwItJlrIAowe9suNkze4MsHCFC4UY+hT7CTbVmmzTzIgAlOcBzuo0H+ORyLIZHFk87pox2o3Av+e/LZgjhRDUrDcAWiH6oGn9NEWZOCTDdc5LAzckhjCLuAtEA6brM/m1Sh+4fcKIG54VnUyARDOW5rLpD++usHnkqxuRv9bneOBGKcXm5Co3RbzNEFyugGWp4ps92BsGYzwckg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MN1zK4CUtE48cAkqcJXYBKFBRE5JowM5NKtWnzAzDTg=;
 b=NBrAey1uFw9FEM2ec1y1mpdECe6WusbWH5J2FW7l3y/M7oHm7kxQg46lA+DtbKvgUgzcjt0YTsIKMYJnsy2FdG8eQnUS1AI+C+SalvR/OKyI8UhZcn5gSfm+e3MutAwaiCvnQvZtMs3YdsAiDO02F5lxrwIiXrWdG0vT0wQDD1m5SPY/Kxfe8bXdt/IamaOrdpCWCGNMQT52jdeHEw7FdcP734qtNjfKw38+9cqKBfeNcx6nRkYVyY4qvlcxfKCEZp5xldUJ9Sf9WSVzubeLw4ZABFLlT5LoP7kTn2SOPhp1V7/wkpDQCguSKpROPobouMA95QDPo3NEIgFhEvF6Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB6663.namprd11.prod.outlook.com (2603:10b6:806:257::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.21; Tue, 26 Sep
 2023 17:28:58 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 26 Sep 2023
 17:28:58 +0000
Date: Tue, 26 Sep 2023 10:28:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230926172829.GS233750@mdroper-desk1.amr.corp.intel.com>
References: <20230926165107.23440-1-rodrigo.vivi@intel.com>
 <20230926165107.23440-2-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230926165107.23440-2-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BYAPR11CA0040.namprd11.prod.outlook.com
 (2603:10b6:a03:80::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB6663:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c9ba3a3-d220-42a7-3fae-08dbbeb6110c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3650NH+1ZUnKwtBK/GeBF3eddCecvGvLtHRYR/OwpPgXhKLgHmLBIWOiudesp4+XqtrSSRejPVXgVQGkRskkyKVrNmSibmlNVlj07r53dyKAZ4N8IXRCj8EY1kEIRboV1+GnoI5VG8Ka/F85S78Mf5ePlSFK9xSrD9I4+NHNis+KOG4I1ETZ3cOYGPvzWApSPCrbhejkaY5lCjaHiYc1FO5mOl7JrlwB46qDVzldkHt+NM5/zrJFMp0sJ0kqCeYGtMM92DdZMO7SyyhkX9IxyvTAS5v2E+dM3DgoQPMD4WrySz3KJ0ukaIDnfX5896sZ9vyrYxAhs0al/iayb7ywSZp+HjUHTOdefhpHcpjQX08dJWJvr4nh3sSyNiMQF9VVjc8c8NBesdPt/+6J5AF2vFdexoakjNnvnpsKuCGdXZCmX8vfSjLBSQe9hs8Tl3Vs2ZoxvHEU0oEU2W/7x+2w+So2dt9jkU+KoGWSoDeGW6IAsqfXsIlWaH8T5AL5fKCD/nXMFyYduyXDTf8HGmpO2M6kpIBv6kuEI3bSLCF0IIgIjPLkYwM1m1Bkbr9Ob5ag
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(346002)(396003)(366004)(230922051799003)(451199024)(186009)(1800799009)(6666004)(6486002)(83380400001)(2906002)(6506007)(478600001)(1076003)(8676002)(5660300002)(4326008)(6862004)(26005)(66946007)(107886003)(8936002)(6636002)(54906003)(66556008)(66476007)(316002)(41300700001)(38100700002)(6512007)(82960400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TMUmbeyIQ7pgumtKfKH4IyBUMhPDqAgI/bydIFDM15MjYvPfpW8z2JS5d2C6?=
 =?us-ascii?Q?DQ3azzOHV1fUk1JAm8wqRz9tBce0WcZjlFqx/jnYmvJrFSM8/wsS4sc+lWyK?=
 =?us-ascii?Q?wWSpLsQv9kptl8+2WxhglB1t07rKXT5eno1zY0wXUw/lXiDg+M26PGjSdb9V?=
 =?us-ascii?Q?peDsscurGDn7eT1Vg+Ssz8qo5RIoKbGDplgIqiWaiYH9XGNJPItVoDWx2bWQ?=
 =?us-ascii?Q?Xnq6IrKk8m+zUGXxe6pVVkWQPMyMGZgL9MJ9udUcXEYMqriB83a8YUGi/tsR?=
 =?us-ascii?Q?iqh8ilL3tRGQGZRUAkT/ZfgCIs4z1SqHo8xBVaHIxWyKCrJNWSVLQo6OEyWX?=
 =?us-ascii?Q?KMu7oHfYJiRvKXEwrFGnBBKn8GZpsk8EFTc4F0NSS1qCituwkKzUWTqQE9Z2?=
 =?us-ascii?Q?4avQ4loZ98/GVgAtyQYY1+NixajPzXlkUtUqWMY/8/kd5OdziCcOqb6AGsJM?=
 =?us-ascii?Q?YGqLt/YjPs0FzsGAahSMOFQsRo36KNc/s4TlSWHkuK1l7bE9L6bOYN0wzMmk?=
 =?us-ascii?Q?UbynnS3EnQHG7fEnFFviodmrx6wWosDNRkMF1iB1AGR1/gsG6sNvPgFKX9QU?=
 =?us-ascii?Q?2LQdg/cTkzleFNGO1hKa9DXvf8zFN3/LJZHLW+mnk70FfpM69znhpJFfrfze?=
 =?us-ascii?Q?usjWIZyUNKX/ccfczGmOHJmJ3jocuKJSpTokOytc/JXn2NPvgOKhiTPB0kIy?=
 =?us-ascii?Q?KDxmZB86Vwcr0LkcPOvYYlJIOqDjAEAzkhcnx4EmUKwLCr4UEiB0OF/Q2GWS?=
 =?us-ascii?Q?Q23Z5boEucMazKqk9OzzmKi3xtxGGlSpscYXvh8fnqfg5qlVBu0n35NnRvyc?=
 =?us-ascii?Q?fg083JSHSpZYZB2rEC2zdlEajX8UAI/iALfHePpTE7/cRPI5fUrOE6bWIZIm?=
 =?us-ascii?Q?DKVmslfLRE5r0JlgbhA6tcxbxPBCRF+ZRFEalJ4wiNL8Bb5vsKm4jY5RV3i/?=
 =?us-ascii?Q?/vkjzeFMU0YEvWMotOntzItEoVEqAPVgbXMoY6/G4vj+bbW8INYIrFQVs78C?=
 =?us-ascii?Q?Gt4MDYP4a4fh3TdK+ngVs23BTwHonk+tRdlvybthCThIdfpLgUWX+8aPwS7b?=
 =?us-ascii?Q?cUT/OWOpHaBWbMp6giYVB5+aBEtHrg9jx9lFR1/RWbR6qSTt/fOgu8E32KP+?=
 =?us-ascii?Q?lRuvTRTY8jIsdCoRtrcqpagKfnnlEfYaU/7py0VPQetz/vXjsE395gMwHiVW?=
 =?us-ascii?Q?rjjegBCb6oiVBNuioRiFtru2pXs1H8j2YOJJBi/GERkqkMJ4xJrSgzh/Qn07?=
 =?us-ascii?Q?MsLyMSVM6iljC/qhKHw1bneuEq0Rcf/vGMk9+oY8yn+/7Xn38q7U4sT+bmQQ?=
 =?us-ascii?Q?xWsyOHMG6O0O3XHELZsP/U4BqT3Gmol1Q/wSfPCmafaSmfHlISQKM7ar6PLQ?=
 =?us-ascii?Q?aRnWDwB4uvAGQCinEy1cD50tWb7soeP5IEIhjbwcoc+2i6ezNG+V9wzEQjuD?=
 =?us-ascii?Q?crfjwlKufiNwLap1EDXYSI76tkewL6GP20lnxS2YVdgsExmU+h+qqAPjETl/?=
 =?us-ascii?Q?aSNhDLkIiw5ci6z3Q1v86nv7Zi0tUGEVT8h42MQyUA4DmOBz3dHNMn3+RBdy?=
 =?us-ascii?Q?mukxH/etFTw3dkhjqNBSGgm0owxZe4DGU7tA6zne4EMcVuQMcZpDNjilEnuR?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c9ba3a3-d220-42a7-3fae-08dbbeb6110c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 17:28:58.4034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nXzwT0imSW5AKGwwE5bnlF6+ulm13shXhAEGguXXlYgaj32B1ql/dUoFXYLEivENkt0E2Xdr4L1EHoO3FSivdzRHMraB9dx7QSrZIfggOGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6663
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add missing GSCCS
 documentation
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

On Tue, Sep 26, 2023 at 12:51:07PM -0400, Rodrigo Vivi wrote:
> Introduce the basic documentation about GSC CS.
> 
> This "GPU Basics" section is focused on explaining the hardware
> rather than the driver/uapi, so let's make sure GSC is also]

Stray "]"

> properly documented here.
> 
> Fixes: 5fd974d164b4 ("drm/i915/mtl: add initial definitions for GSC CS")
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  Documentation/gpu/i915.rst | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 13de8bcaaa29..893ced66646a 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -279,6 +279,10 @@ An Intel GPU has multiple engines. There are several engine types:
>    Also sometimes called 'VEBOX' in hardware documentation.
>  - Compute Command Streamer (CCS). An engine that has access to the media and
>    GPGPU pipelines, but not the 3D pipeline.
> +- Graphics System Controller (GSCCS). A dedicated engine for internal

Isn't the "S" for "Security" rather than "System?"  E.g., bspec 62358.

> +  communication with GSC controller on security related tasks like
> +  High-bandwidth Digital Content Protection (HDCP), Protected Xe Path (PXP),
> +  and HuC firmware authentitcation.

Typo: s/authentitcation/authentication/


Matt

>  
>  The Intel GPU family is a family of integrated GPU's using Unified
>  Memory Access. For having the GPU "do work", user space will feed the
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
