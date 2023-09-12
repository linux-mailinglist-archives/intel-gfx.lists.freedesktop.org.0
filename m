Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E411B79D124
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE6610E419;
	Tue, 12 Sep 2023 12:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D29F110E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694521965; x=1726057965;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=R3o1e+B1mo7h1LnAsEiZvH/DKqDyUTU/Yt5RMjU9/R4=;
 b=MRsycNeKiv4y6xr3KggwMh6wam3u2PnhXoShbylHd/8MhAUEdjsGASPL
 MiKcU2O3Te7MZCIReO0liugpcZS1AopoeDzdOym6yJntGaeG3ziwh10Bp
 4HHha2hE/29m0hFl1PnPhJXT454kSruOuGLsNM6ucD3D0MRtxWjttEDOU
 PUrqloOM/w4o+09ZWnJ5WBQTqv49OvqNa9syqVUHWNYUyLxp7O3x0mWaq
 OlZSJh94EqBiYa/NMCJLNe7BIAKXkCMy0bvx1t1roqqX2KED+5b28aEs3
 Gm/iA0xU+PFFsEqiLEAS27ikrVloQEL7EXDMnnYt7cUk0ZSi2A9ugY0nI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="358635487"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="358635487"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:32:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="990487011"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="990487011"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 05:32:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:32:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:32:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 05:32:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 05:32:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c5HCNSw0TsL0y+vxUZWG5GiDFxcQmSEpwn6s0ipml/WobHryltj1eaq9x30bX08b/w5Z0oLLuQwUo17NXlzM/rnt4hf3dm/u8kK3tE49/dsUietOU2ukx1pnHuFVDV/2dlqEqIr/YBmX1X7SPa+isK9nai+RQYrQgNdckcSdEVum5zFx10JqXQFX/SDOGidumtFKMSGGpHEbGqXNyEd6plQzNAtLAQrCp01Uh+LGs9PbqNhp6I40SczNeAYZ3+7h1xx+TPMYztGFyP6ozDSXnF1I8464vG63rPCnWvvidg0he2V8yAbr6SZk7IIRHicbvDVyK3RDuCPtdYjgn0I4Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7STK3qbM/WyQgxhfn7u2yCPFtrDWExBSF3axeBTnOBs=;
 b=f7n9xBRQkqUqPD1lxBJUcy5cUMfcN0VfwW9GtIHdCHTzXk9F26phm/fyLXampQBxBZ/mwiRaqne8NiKg3WCn698pC3FOhr739cUSJBzbw2Yy2DTl0K4uZNA1HnNmTKQ/neuj+ob5ZwY3PTmk2gY0RbZCGe4bcvbjmM/MVLBezxAGDcitXRvXtFLrVbsJ8Rc6sACV7WB8IVGs+fotS09mpQrO3PReOZ6Jc/P60fItBEUqpj387S/ycCqPgPvOKePiPHhVVBf7M1Rm3qNkcsvQe9HyyGOzeCygNp5BLUX2M3uPGOIEK8Hlm5Kw74whRw2ldnp78CPdEZEjSwBz+vJk6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB7700.namprd11.prod.outlook.com (2603:10b6:806:330::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Tue, 12 Sep
 2023 12:32:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Tue, 12 Sep 2023
 12:32:42 +0000
Date: Tue, 12 Sep 2023 08:32:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQBaZfxJuUL3pAsn@intel.com>
References: <20230912120537.2158209-1-jani.nikula@intel.com>
 <20230912120537.2158209-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912120537.2158209-3-jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0011.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB7700:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bf22477-b1a2-43e8-dcba-08dbb38c5bb9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X6t/5zUcntPVH3GnHqKivNgWPY2nE7nznGexIJR4FVD4QbNVRjSgWLzRgsH73jxf/Pi8rbrE1DVjC77pAPupxFdVijaufgvsCBD5Yzc+zLEXR6NcA7ABbgwZUaf059FK0WwKSZx8nVzGqOXVZs0rw5fWRgLXsEUgruQ98eeTrrGZv6WMv2OSW42vKq5D6PrvKfLxpchfevaBslh/1sF9ebPeS4nUPvKEdnvy6TiI/RGYJ1bjNTn4e3aPnXOWiYgRTVeKuKH+KNM24tQzznCJv4OWzn/05VJCGqwq10KHl4M35jgzJbkOZQ0CH6OBhntoM9eDZbL+qTOLA7JaAd/vGPkqyU3JQMXnKecordygVyWbHW+ehbykK/7vY2NapHUjtW9BW/0gjzDWxZ+3Ur+TSVVs0Gqefk+SZyOWjK3qs0u+cirfirxO7432NwD3+hCoxUYa80zuyxhzg7ekiKWcPWchvuteDmxMHX14bMy0O8IbzHcE4reKt6OxgMlTAaM7dTK4L90xryR0IIUb/ZrXzqcXsN0rL8ctNoNJxcwW8sE+sTuNYQwRYyAHOjH07Qff
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(1800799009)(451199024)(186009)(66476007)(66556008)(6636002)(82960400001)(6486002)(6506007)(66946007)(6512007)(6666004)(2616005)(478600001)(107886003)(26005)(316002)(37006003)(41300700001)(38100700002)(83380400001)(86362001)(36756003)(44832011)(5660300002)(4326008)(8936002)(8676002)(6862004)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oW+j6MH8stTvVvrs/reJlfonWGgYZaTgT+0z/beRqiDepyHHmk474dMjKjOj?=
 =?us-ascii?Q?TUo0b0u/07BEtALO/+HpXl8Ae+1EGAWDbY7FTvVfpoNiOCFbkKRxqzytLtSk?=
 =?us-ascii?Q?XrcWjZSVnXGdT8++eV7wLTZnUmlFA5136zjuRDxFO7P5IVTxJ+sU09EJw5Gz?=
 =?us-ascii?Q?hhawJfi0wnhbdvN714lBC2hQl8Hd5S8KZRPSiW+TjjEyiaEvvp/B6aVUvdwf?=
 =?us-ascii?Q?XyPHeukTtJKOZrBe55lOH5k+N6KQm3ScHBKmaf2CL7/cZTjHfVGBdE0ae696?=
 =?us-ascii?Q?chsBj5g26PKiIS0+b3lRTBOpgzrXhAVLkGAvklyzHGJzeXn9EOLAk4HCpNqc?=
 =?us-ascii?Q?QKDrflo39wCb4178O71+gZzzolw6HqyEiiiFeYL3sVNtCRt+pq9UolMevpYh?=
 =?us-ascii?Q?YqqR1haRpf5d8eD0yz5JRghpQwvWFE+4228aSjYwYB4tkkhnmuaH1RVsoNju?=
 =?us-ascii?Q?dCXK0OX35gwr4KSK0tfwkV8Vb/oD6uWeM9tBoeyWdRZXixpHWJPnxiPoT3vB?=
 =?us-ascii?Q?hzPK6n0buqthpdCgcrBU03lSS97IprTcCk/JFKSRG/2BjPQ+MHyYB+UPqFF1?=
 =?us-ascii?Q?WdXzGZeTBj7hVOTtqGjTzeGxZbuRaWip5rQykm4RnjGABsfvrgaP9T3nEwG7?=
 =?us-ascii?Q?alZVOFzrYBAgh4B3fRIxR6OV428GH4tEVXRvcWLNY+b5Ib0vkc5ZBERWV2HG?=
 =?us-ascii?Q?6ID4aFSMwnAQ0eCqVYpNurWVg2ejnhXF9aABWP9yPYK11KrfaaNre55PKo+6?=
 =?us-ascii?Q?zyImDVUL77PJcu0DhUc5e9GXsXNRZeDIhuJbbHkOKqlXYqKhLSDf6noAb6Ju?=
 =?us-ascii?Q?dGjf/xO2hfMX8M3VTFi6DOgd6vPg9CeDnPQsj48cgZO7eEL8AnqLBpZZKUle?=
 =?us-ascii?Q?xLeCFCBKTOIXXBzC0hR9HEhmfhsynu0QMLClzkFDOSIl4RR6qEN2iQatstbG?=
 =?us-ascii?Q?zVsJC3eTSZOHSSXpP3pUNMhbLqqLDOA0Nxmjj+vGFcnehYudq/Lp6PZuGHhr?=
 =?us-ascii?Q?+TfK6ncRJUSwtTnotwpLune5gRZ5hyhGTIVDPvaFGTBTMaPVT9aD84/6oTvP?=
 =?us-ascii?Q?fj+XSnnwbc/D1wz1N6vkqjJYrpHzolvklmeMI1HfIhOPL+PB2k7CiR9jl8Q8?=
 =?us-ascii?Q?TfpMoWBoqFJy5CfWxtSy1mbIVkQlRlRoaybFs5vqyW3rMPWdGHlR6CP3A3xn?=
 =?us-ascii?Q?QvdNYN6JTwoPaQkuDCpJNXlkYXVqeZPSZpzFbq4VvakcF0QKA9CUHalTjgBg?=
 =?us-ascii?Q?PpUqNVMFbMxtVlVBqoTIFy97iyhRk+NwtNfuPI9P/J3J3uajjEtA269NMxIF?=
 =?us-ascii?Q?7xafC8I87PYd09rDQSkuQ/7wMzyyZysDnRktbCAR9E14OcirTxqIgsmcfxZk?=
 =?us-ascii?Q?WxX17VG+Jluw31KYtVEm5laEblLi7J27UAqJCXY3URzxVjQJO/PzjGQz7xO3?=
 =?us-ascii?Q?7wk0c4VaaU8D1pMtjsR4oiaTpZt6TVqa4T9N1v3uBTggaFWfBgUHlDm9ol7y?=
 =?us-ascii?Q?74DaLjBRIIcQ/E1EmeWEpAdPPKFwNRRvih2ClV1OGdQFZSOmts0qpbBPJxWI?=
 =?us-ascii?Q?+JqyCL11hE35yklLBWbt1HUmp/7slDL3WLB8mip+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bf22477-b1a2-43e8-dcba-08dbb38c5bb9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 12:32:42.1472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jEp8GxYs7s+lmHUFoipFN98T3fOOSfh8jAebbRH35RyZaWL6fW97WKKjjCjDoiBeTgiskI6oSMADg+FC3SX+pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7700
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move
 intel_display_device_probe() one level higher
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 12, 2023 at 03:05:37PM +0300, Jani Nikula wrote:
> Don't hide display probe in device info code.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c               | 2 ++
>  drivers/gpu/drm/i915/intel_device_info.c         | 2 --
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
>  3 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f8dbee7a5af7..b5e1f72cc3ce 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -735,6 +735,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>  
> +	intel_display_device_probe(i915);
> +

what about moving it even upper to i915_driver_probe?
It would even make more sense with the name of the function...

but up to you, this is already an improvement:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  	return i915;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index b9b8b22540cb..d2ed0f057cb2 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -418,8 +418,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  	runtime = RUNTIME_INFO(i915);
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>  
> -	intel_display_device_probe(i915);
> -
>  	runtime->device_id = device_id;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index da0b269606c5..7de6477803f8 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -181,6 +181,8 @@ struct drm_i915_private *mock_gem_device(void)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>  
> +	intel_display_device_probe(i915);
> +
>  	dev_pm_domain_set(&pdev->dev, &pm_domain);
>  	pm_runtime_enable(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> -- 
> 2.39.2
> 
