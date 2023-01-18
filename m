Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BE0672710
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 19:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B9F10E05E;
	Wed, 18 Jan 2023 18:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A85C10E05E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 18:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674066902; x=1705602902;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8d+m+bthAwxLf9HCTW31aaZCGjnqaC5ckx0hRS3x1Ys=;
 b=TVkTbhYWn/uWN85vjzXa2NOfmEoH8lq79spXaAbtA38W+qL3gDpNBVyq
 CIhQ6n+YdAGkMSGiqv283YeO0LGD9FxORb+b1tL4+Y+sya2sK3w4Hl+YN
 qBhVZEj0SEKk+ToR2r5hEXHTiaFbQIhXBQBIih/4iuYYUqQ0PKCO7eFff
 Yw1QY5IAuPh1hPU+4YxHcnPhFSrG5pkX69NEvYtEttqJJ0Y7q3O6MwE1k
 JkvSpt4mYSkkzwbkYNcyy5oP25Fe91qTRTMeeKf5qR1fFG3EMgRbwrcq7
 T5VVDFgQEVvcuJD+sU5RwTbs80w7uUOiKOG1NnD69y8/TBCWwNAkZWh0W g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="389561820"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389561820"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 10:35:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="661826473"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="661826473"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jan 2023 10:35:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 10:35:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 10:35:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 10:35:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KDU0hnjyfzRQ5t/uRyx/MwPvUhIr2vblnk7llVoVtzmCiRmcFIy1bHXFI34nXk5mTq5sqwzGiZKgHwK4aHwyusJ/LTqBzRjkqJxgvhfcyJqXyNB6eXvAt4eUJGEqrEUWNugnG6mApIF6li7j9nPZrw1Nyr0FjsBr8yLHFCpZxG4pt2l13Qaw+ckXbjBnQAfOCgt/bjT/KyOL9pCaEV923HWD65rqWTMwNtUHn+Dl7esmb6eb3ok8VRA5VeXYDEtVHC1InWlCQIB82/eHGMtEjjyTC8g6ZtT2Ye5OXI/hdtYeCXVm7iE5pJilGepz3L2HlsFx7gCFJFubuP6LA9aE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5qhy4JonUuR5uItWKuybXcMPYrSZhqn88Fb8lB+XPfo=;
 b=PfycmF/aEmk+LDeYWlWMEa4FLCXan/AcCGk9tC3X5ZoVA/IcJAQOyWTNBM/N+wHzTM6LxPg19sCKkEscrCVDL/IeT3LAgua+u2a/sXWnydgcu+SM6FBgxhlk+7iZ9umLEdHEZNaEIXLb+S4Xy8svZlPkaEwyMumRxs2ko2nwH9XhlC/uc5KYWTbQQtmBuvoiI28gTRWs8/slvH1nW2/R08G7NaCe+t1qwyhaf8FEiFI+MzppdAudFXmN+Y1I+LJvsqXM/F2Ip6aPMQVpmVGhW29HT+aN4WM0gpz1WbqIg+S/ubzdXDoC1F11LaMrIR6xja02v1J1EtSGMEHaSR83lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7023.namprd11.prod.outlook.com (2603:10b6:510:221::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Wed, 18 Jan
 2023 18:34:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Wed, 18 Jan 2023
 18:34:58 +0000
Date: Wed, 18 Jan 2023 13:34:54 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y8g7zhs8DXmMZbSA@intel.com>
References: <20230118170624.9326-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118170624.9326-1-nirmoy.das@intel.com>
X-ClientProxiedBy: BY5PR17CA0030.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::43) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7023:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b549292-2795-41cf-405d-08daf982b36a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mjHO9egoGcGFGlcG5+fAHVP7+rDX3FSF69iXkkV2AK/DwyDW3LTzhCWRiUYrSwWTv5CeaAxv0e4EuoIAfwsaK5vDPMdLbRPxo9duhGT/Afu0tdxMEQZS58TnU2QNIUnjm4KhVpbS+4tS2HHQckWiQheYylADojR3gITLdJh8ay+KAPU1p4f1wmBb7OP+jZ5nAQu7VFnKq9g6Ppua+atopnemd8bvH4GCifMVnS7SpuKz7lYIuHLjeLfL33udodSwxHavMmoW6knM+Gguf2GEKbA8ycsiSYWpe9GIulKB112ViwVN+W8Yd+1/x+s46hzxO2V70ewY2TvBHjHJP904KgCcR8JdXaaZd0rvVOapC45OwaWNSbzY5LvlyWTodADnEa0h8XK+/pvYl4XZV3JRsnd0tfJzosb36khwWeU/S9o8RV+v9J33guGauD0EYOiigwyMSvShYvnmEAVon4HuYxOxAYACOJ2OgP0Ne0Hau/6+8ql0IjSznbvpBQFbvhew5UJNdYqa1z6h4g4gKau09bvYMqDs4Pw+XzABoGBkTu3m0qZCaGxiDjGYW+2suaCkwlDemkkEraoRRRq3GmPc2PkcXtST39PGOiUR4y/uu5E+DVvwZxDa3wYOWHaz0SCS6uVn7Hgoxrfv31MyfGBk4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199015)(2616005)(83380400001)(186003)(6666004)(6512007)(26005)(6506007)(86362001)(36756003)(38100700002)(6862004)(8936002)(82960400001)(41300700001)(4744005)(44832011)(2906002)(5660300002)(478600001)(6486002)(8676002)(4326008)(66946007)(66556008)(66476007)(37006003)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+Ic4W0HRNiwI1qYKIJaicXr/RwRqwxxHJdYIzgiR5eU5tHBxMRl1YlYBQpFC?=
 =?us-ascii?Q?fj1BkIihADv1bBw87G61kd0FFwKf5tDbUNFZE1rfTbNbO7Dds5SMEgUAj7uP?=
 =?us-ascii?Q?TLMd8lr2h+EY7ROVCqNhPrLAODEy6DoJEPmwzpNCE9nd1F3RLAHyo24ZcV3O?=
 =?us-ascii?Q?20/62Pa9mYZOR54OSraVtGBLJaRNlokLgC5JUt7pGZrE9glkWhzQ/Z1MmXyY?=
 =?us-ascii?Q?uXXTODlQZUJs5dXUdl1yAj8IH5rorUx/LmNdf5jgL02AUsGjDnadiry0t9y1?=
 =?us-ascii?Q?UP37ATXk/YxR/pbZa/66HbBnI89Uh2nziVApJ00m8rO6+2sxr1pPxp1fyYi+?=
 =?us-ascii?Q?Cv3K4rFXDvr1e9pZVUDfg8LvclEn0n4eqKGlqAT75JmVvFCsRnCx7LsJznzv?=
 =?us-ascii?Q?l2Zm9AfGUZVvCjpxueBldmswW+6G+JvpASQRNuQokLVaNsTWb86GDGKQl9Pp?=
 =?us-ascii?Q?nnv5t6yP7MrjnzZ6Zite+Uaurt9xCbcFw/pvTO+z7xCHFY+N3PNG7kH4rJho?=
 =?us-ascii?Q?zs4LJlZtZ+Jls2wGYYng6/H5qlrpCsn/fd4zRDQGzHUZokf34IfHF4F6pK2l?=
 =?us-ascii?Q?1dNxCfB+WQ9cC3DJUasrz4dh5y5jEkgiL0WNIfU14JnYtJZxko4q5jKRSl0y?=
 =?us-ascii?Q?r4LYYF00jk1ktkoCvjKn1oW6e3VaLelGsyJg18CxmiQbXoBUcuVqbWJkAWPp?=
 =?us-ascii?Q?Io9j37Ob9JKoNzcVQ7/x04g2N9ZQQAzbm/FQ0SeyyAeo19t0NFQyDH2g2iJe?=
 =?us-ascii?Q?Z8D7F7C4ut1jwhBliuMge/mnHTJstQ7eeud2rSDAOywRi6dXE372sqkI12Pu?=
 =?us-ascii?Q?0X1b9SmhPedLXK/bPsP5JknhtZ2xJgpwMcqGijbMJuPONXod6EXQ9bt30S8u?=
 =?us-ascii?Q?GpE7uYfzKL0GI4KzBmh3BOstT5yBu7/S/rd+t397lUFhqgNNnUUpToY1aerK?=
 =?us-ascii?Q?XtqCME1wPGIBGtEnpFqfEeMmShCeOAOKjpQjWrlUs20c8LqBxnXy4hhLHMUc?=
 =?us-ascii?Q?htwMjF6VFG38P1DIg5YSFmJuRlV7z9Q9IiAyhI7uBbcHD0Cw0iOvHTzW5AJF?=
 =?us-ascii?Q?txkDaNPU5cxnO90SU+jryYizK4CWVS8s+VjLraOlWONfr72+6m/CrqEpEh8G?=
 =?us-ascii?Q?IIKMCI+UI7tX6y1em3U0qre/Re8YAkokhMtizotpLHCUKMsBRXfNC0AVyXJY?=
 =?us-ascii?Q?4Ik1dSVBJx1EketvznB+ObuJzihXHixb7YXA5H642Zj477ahSaDpjPaLbbJ7?=
 =?us-ascii?Q?XtIMPRxYau6upxgQ7v399vdzip+2Q1NdXtGfSMRGw1HFXOYnl3eHkrmheaB3?=
 =?us-ascii?Q?qnsFkrMKGLTMDgRJPZuqOTNaIV4WqQ81WX1btroJlL4qsQOJleNh4jVV0A9F?=
 =?us-ascii?Q?eByOiUxKPUgyzcLHy71ERGJqPN8ubmh2jwKP6VXlbxGko01jb327ivCLcQIO?=
 =?us-ascii?Q?l2AqOGQipSwxzzMdwHAtpaYmvIBYq8ErRP5CZtTGEPF/b9OOn6W6V40ciOur?=
 =?us-ascii?Q?FZP6nSen7syXbGRHfRcH2bj3F0eNiMECn7AEepKAbLsCqZOiXcrcyEsmteaY?=
 =?us-ascii?Q?6W2n1wpMRxyIMAbjyluIPLwI+orEJRuMO9NBq/Dn7QqLTPgNNCDIXWBPyFhF?=
 =?us-ascii?Q?zA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b549292-2795-41cf-405d-08daf982b36a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 18:34:58.6557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3aoS3Foc0zEw0O/QiOeQr2mh9XASK8Qor67WU5Wx6Y8daBlcyhLpvrh5f4Avwjb63+GGQCeYXvT2SU2FJZGWYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7023
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unused variable
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

On Wed, Jan 18, 2023 at 06:06:24PM +0100, Nirmoy Das wrote:
> Removed unused i915 var.
> 
> Fixes: a273e95721e9 ("drm/i915: Allow switching away via vga-switcheroo if uninitialized")
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

and pushed to drm-misc-fixes.

Thanks for the patch.

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 33e231b120c1..6469c7c1e154 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1071,8 +1071,6 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>   */
>  static void i915_driver_lastclose(struct drm_device *dev)
>  {
> -	struct drm_i915_private *i915 = to_i915(dev);
> -
>  	intel_fbdev_restore_mode(dev);
>  
>  	vga_switcheroo_process_delayed_switch();
> -- 
> 2.39.0
> 
