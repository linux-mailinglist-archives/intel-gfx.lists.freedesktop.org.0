Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 439977AF415
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 21:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7829510E158;
	Tue, 26 Sep 2023 19:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4E410E158
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 19:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695756246; x=1727292246;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6YUqTlxnlwGPXOOeX2oWtvodmjvK7Gv5gemVD8QsM4w=;
 b=P8h8W53LA5NoAYmgaBT6ZnYPBgVn8ODXLjoFLo2Bwkxuom2LlH76m56X
 8xQ176wjiv1x5Ih4VyRnJqWbXInzqHS/5DMEEttbpZWCaHKssER3z5RLa
 oH+d9wfZ84c0n1avoxXndUrAeOyCAc6qgIsO/cHeJsTG6JcBMCeDbyUzi
 swoXLPH6S06SZ4HjDGpUWw7CtipYfirL3TSb3AoxkW/FHV4ZkertBnVTc
 1TPd/cpBYOPr7yNIWRWd0fj2qxTyaNNrgJ0r2Sh7PN3UZvNFIelW2YqqF
 6Igmki0OPrBkQzJKT+elOUExBEFPrib5/RMTKLes/B66m2K3l0BdKE4Ag g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="378931019"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="378931019"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 12:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="892320054"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="892320054"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 12:23:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 12:24:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 12:24:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 12:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oeuUd4aJBuwDOhFgeWnrh+laaoTAzTn/elECw9WsLhn4E71dLtaa6c2VdJCQQq83v7k8SKDIZ230c+RLy7JQd+ZKAQBRMvkNV+LlYlLVpGc+4+xctymWK1Z/4D7jd94ldd+OknGMfaz+w4PzPY1pkDTjY3PyPuogXoeyDVyuZOVFz4wF2m5um/2HiwoGMekKCLVvXUPlCCIBZIDUZcPCa5nVA9iuhTGpis16UmwXcXyeEEhk4Hphgjf6JUoMe6NSn47htt1LyoZh7MlBhZrQGRjgEMYhKs4rjgNCuogy6RmkbTvwTLzUqgqo2X2GopI96CYPlVCJkVuLadXomgibiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=loxIHa2mYZv8RuZd3DnXQNgxkW3GefMHK9wM98IUqT4=;
 b=eMWBvYzKDaXY42c/AjKsgY1iyzG18fPqJ6qVRZIUJJQhe4qI/LyKznY95SqhJ7Mq6mkow1u+boZLBRSZ5IsOZDG8UDa+AG8BFyEdTUnI20KZ/OaRe8IxUniY102QGkl8tJAds9vkVpJgYr0rlqKvgnTRzgvjkCzUuVwuT2NyZjNK57IAxbZa6jYqcF3H+L8/uDPwpXzHeRQ/FSe2DB9TbDIe6rurL9EA7JwGUzXdvgv5hboqaOZdlxRBJ1N5LKw9/taBVcAIk/FMeTWyYNpVQxVqOF31kjXtO5A/xpDPKOxjgO3RcOfx+76ngwf9WLCBWCX+WS+jK9H2R9Z9r6O8jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Tue, 26 Sep 2023 19:24:01 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 26 Sep 2023
 19:24:01 +0000
Date: Tue, 26 Sep 2023 12:23:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230926192358.GV233750@mdroper-desk1.amr.corp.intel.com>
References: <20230926172829.GS233750@mdroper-desk1.amr.corp.intel.com>
 <20230926175554.25968-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230926175554.25968-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BYAPR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB5690:EE_
X-MS-Office365-Filtering-Correlation-Id: bec01814-dc02-4bd2-0437-08dbbec62375
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qV2Dgb48BM0az8IZhmv7B9advm92+1cx1i+XgI40Yw478jYLgRVyWvrcRpl7qEQZ6dUF/A3j1snwNcCv+sDbLBtu3xm5fDz5h753r/UwWffyvXTeNHcSzkD6K0nV9RFXQ+8yjSK3yhs3Mfx7Bxj2msPvP/zIR5QxhiCrMz47cmgNpX3K77KFQ8iE240d9wWgL0n8F8M3R9GkPGCP+PdrJXc1z/aTa5fxjGOg9Fx6BOsLSK5dODMVjp5DdxwBw6gsOady7sHzV8uzYB8Z0e2K7SEN0AK2Dt+dm4hFak26ZbCih+jM68HTATxnXHIHHoc9lA0RVEdGOwBpnN48xKY9cC8KnjhYOhujzgtAZ1/N4UMiaLZjCJOkHsRI0IPvwJ4dyA/N4f4Hqc1wQ6jCap68+RU2k/0ayiN1WGXvhD/OHpE+k7Ir7LbKHhLHz16f2Io8GhZUIedcSQRZTTh1wzXeWI/3U9p/hEny94MI3HyKEjv+8z0vLzgyzsXr5NPMIn89QwQPJkcO1RtnWEundfKnyHzl+fN3FtDJk7dEZhjMRhuloVh1EucXGDpW3VnVyuNs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(136003)(346002)(376002)(230922051799003)(451199024)(186009)(1800799009)(5660300002)(316002)(54906003)(83380400001)(6636002)(41300700001)(8676002)(8936002)(6862004)(4326008)(66476007)(66946007)(33656002)(1076003)(6486002)(6512007)(6666004)(6506007)(86362001)(66556008)(107886003)(82960400001)(26005)(38100700002)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+mBUBk8HOtZ4ZjEM9RWwy9Xk4IdFIPKeGlnRBO0lgf5Kvac3tslWneJUZB/9?=
 =?us-ascii?Q?LH+NOYu3qcGzvheIFnTK5QW29ilLZPsvId6KvzV0jiM223JQ8ghhKIUUdWFS?=
 =?us-ascii?Q?eiGDz5BzdEdcZzTbireFC9d6RF4XRmCaftyMRiwh5QzK97wEGhkudATuIrTK?=
 =?us-ascii?Q?8LeyLuYJoOuF5A2Bgxx3UcECm1M+SIBHMvIhhVwIFj+qmOScNkUjdP9EvXX3?=
 =?us-ascii?Q?q0NhadOKmFKUb1hMxlKHTkweenJ4zqYTWzP1eqRb3esu1Kbgl+RkEqzoZEfZ?=
 =?us-ascii?Q?BWmONCr/7o9pM757KC8wOVL+IO8qLOUMrLiZZc99KjkCPdS9afY6n0L4FjyS?=
 =?us-ascii?Q?xxfxj9Blc2z+Nt/As89/R7X4F3uok086OTQh5awdrQtXeK6h/v5/2ByOrkXR?=
 =?us-ascii?Q?f3MrwUOkbtQtUowBR8hkZQDdl+3UiX14RjFL21rxGQGfTiiw0zlKHycsDiXP?=
 =?us-ascii?Q?HW46Qz0J15C1xsugSGBY8K756yekCguHZmoOqwXutNL34AC/tF59Slj/jxne?=
 =?us-ascii?Q?jEJvF9s6YI3Ko4shZYzrlqYmn8YMYlkIEAaVjQQmkq0TwNbk3p/u9YtUIjHb?=
 =?us-ascii?Q?WhMtk/LnV9BYB/D5BtqL198sjGeF+qaOhewVpZ/CnMkHkEtgOV4G+T8PUG+U?=
 =?us-ascii?Q?PW+32aRn6pKFWk53ochOEXC8sXrlx+6XtON3hF18mBVU4G+wNfgBCwckX9HX?=
 =?us-ascii?Q?8pkR+g5iIq7G/V2ZJsLBq/cuNLqDNFLuQ90TAvcgSIBgGW6KkjjkcIionHiS?=
 =?us-ascii?Q?D7y4U7ECrxOCgnd28FgHHz/A+sR140lI29Dxx7XccymVJCs7S+BWd/r5IdYj?=
 =?us-ascii?Q?WKQJRqmll9tivEX2ZaLFkRph2cXIcWUuUnTBMppigirfiT9Wy2qtVVy8hTrR?=
 =?us-ascii?Q?/zV7FEm9eKQ++lh09OS7G9RdZRH9W/l675RzDUVuyXN3qY3XAdlIpqudBnS9?=
 =?us-ascii?Q?xkspP66lphNsLN+nDjgQYAdM3RDqgaqVBM4iOPAYHdAPiPFivLpBVi9dKXTi?=
 =?us-ascii?Q?0f/KnYRlg20N1B7aTv6tXaT4fF9I5EqDu4jJvd17Xm8R40oaTd6NX9MSteCM?=
 =?us-ascii?Q?72wAzqLvj0mEWJAMDnD6/Dud/uzjIR65eeMT/lgIeIUblySdZxcNixvyaBRC?=
 =?us-ascii?Q?QbBOILfhNm/G74G4s0a1hmyq2tAN7xnMqHwhqBw7WMZJlA6WfZF80/8wHpCI?=
 =?us-ascii?Q?aVzVB3fHGhfEmiaY89q3smuyC6k3edawPRl7VhvWemPJwdRUeh/vUJSqrM6H?=
 =?us-ascii?Q?8A8AtmyFIpCCrisx43FPuXYm6VwoDSLK/sWc3rcVc8jet7SIeKmJIYbkjbpy?=
 =?us-ascii?Q?/x2muVR9WbYxWYGys0D6U8+RYLtnsc4N+Q9uYToPYkknPxlHXCIJvSfuQhjE?=
 =?us-ascii?Q?fJ4GSy6FHJj5agyGWwm89oRYI3bGrxciXZFJiXwAzy5V0+GPbtSgy0zo6I1N?=
 =?us-ascii?Q?TkumIvW8wYWuoumzan05jBQJw8wFVobPheJ/Xay/PJOJsSpqWzaphNt/PjGD?=
 =?us-ascii?Q?gslrQw1pP+c6ZHyACfTsZWyxIF1YFkmkwYQdpDv/YiVk9YmIVByYA/toJVgm?=
 =?us-ascii?Q?ZOdSsRnKqqh8ntCDgu1KfO07nhamv6vbSwgWEmCpzKUOr+3agVNybfrEiS5G?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bec01814-dc02-4bd2-0437-08dbbec62375
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 19:24:01.2202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MyRm6ACN1giZtm/Qekpx0/cUs/SMNo0gJGNEFqnPovPILsLFLPOBBTS7LCyZzhWgNP2eWbdWNi/ZNaEuL7Zl0W0DQwROCQVHC1Z06Q5iKkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5690
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing GSCCS documentation
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

On Tue, Sep 26, 2023 at 01:55:54PM -0400, Rodrigo Vivi wrote:
> Introduce the basic documentation about GSC CS.
> 
> This "GPU Basics" section is focused on explaining the hardware
> rather than the driver/uapi, so let's make sure GSC is also
> properly documented here.
> 
> v2: Fixes from Matt: typos and acronym.
> 
> Fixes: 5fd974d164b4 ("drm/i915/mtl: add initial definitions for GSC CS")
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  Documentation/gpu/i915.rst | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 13de8bcaaa29..0ca1550fd9dc 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -279,6 +279,10 @@ An Intel GPU has multiple engines. There are several engine types:
>    Also sometimes called 'VEBOX' in hardware documentation.
>  - Compute Command Streamer (CCS). An engine that has access to the media and
>    GPGPU pipelines, but not the 3D pipeline.
> +- Graphics Security Controller (GSCCS). A dedicated engine for internal
> +  communication with GSC controller on security related tasks like
> +  High-bandwidth Digital Content Protection (HDCP), Protected Xe Path (PXP),
> +  and HuC firmware authentication.
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
