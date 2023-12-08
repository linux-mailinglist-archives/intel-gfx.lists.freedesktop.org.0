Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A0B80AB90
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 19:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EDF10E2C9;
	Fri,  8 Dec 2023 18:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBBD10E2C9
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 18:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702058618; x=1733594618;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vYap7LF+bEhd6QgwNuF68NjdEWLTTWhErGgjKSHgCg4=;
 b=PkgOOQkvitIp7s8+8irPFuoItoDX9H0TqkfbTny7coA9Buwit8c5pU2n
 vGINkqf6341kFoAf1L+NjKyVJNRqbPU1ax74gNjEhT7I2oI0rTRxjjgrz
 dl0XBFiFT2aiknGE7Pji6ARTaRu9ewVHAoBI0HbgtD4YfPK20JH3SUOFB
 uYUZNw2rhrHUN/UuH74YLpii+ePj9bYLSwBloY3PDWgbG4L1+OG5/vt5Q
 +3YwgFctPOH0/M05OqHdR11ufH8zWftKjBlwQb9g8O97cQj2N+TZ0VNnA
 vd/gEy4w7dqkxCwYz61zKc4wz7OkcFvvyiTc5pHPCD+NGgbwTxz8nNK6d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="1558452"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; 
   d="scan'208";a="1558452"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 10:03:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="20179643"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 10:03:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 10:03:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 10:02:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 10:02:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 10:02:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kFZfrNKsb/jQ4Y1PmwgtAL1F3IT2DIHJoSkCdUcmgbHs3JerwNQEfVvvgDZPutn/8h+Iq522dOVt1ljzluNrliMcLfHhF0/+a5HPSq7QDPlFDONp8eKxnQVA1u3N48rmmUA0m8si85XG8oIAAsgGqxiSg6ni8RQEX9oknOJpXfJgUkHyeBbp5dbNxZ9M0EVGjCFziLDBe3GbND5abI2aaTpUB3abfews2mx9t+s1vWGYhuWpbP1HqqDWin+LFHPxMaYULEnufUnI3z4gKlEW3hXRg9Mrz36IF9slK1WdBRfZ6g6nWYyJJeJRJNOLsYlXHYg2AoIyW5DEIppmBxIEdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wtjpUMzF3rFHbMPrnTqvSzwCwvzgQYCjO0sk9nYvu00=;
 b=gIeS4zPqhJz16D8maho5lC0YV76EBoFajAEgpriWKE4U3iZ05dQiIrJjPQFk+QDhKeAYlK6+9bdDakilXOrbqFpDEOlkFRVWkspbMbOjLsvpSr//rUjOB6dHYKMRMLeKRWzoqe9O8/wZuQ5WXooxlIUNBxLRhy0BdyHXrU5fPgRwBbuBMQsgvnlyKTgxc+Lf6jlutU5ZUcZlvNtkI/8oENlhioXG0C65yceuxuuDRkjlbP52f5HWHVBqu4XnURF2yUPkrEtzWL5r9sqpfVSOCABPPliKx+eGEkAOKPF+lWNdujCHG2B0RtpgiiZoSK2OJgKYr9QiawCk5/PIAz17oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB7586.namprd11.prod.outlook.com (2603:10b6:510:26e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 18:02:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 18:02:56 +0000
Date: Fri, 8 Dec 2023 10:02:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Print PICA version
Message-ID: <20231208180250.GY1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231208143137.2402239-1-lucas.demarchi@intel.com>
 <20231208143137.2402239-2-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231208143137.2402239-2-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB7586:EE_
X-MS-Office365-Filtering-Correlation-Id: 6acbd748-a1db-4fa9-9091-08dbf817e76e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OoEjl2N9ECXIpoYtRyQt2knpEd/j4oYcWVUTZCTPfkZcJ5IU9QhqnqRQ2VKc28eMc1PMTJGeR9nx1yvMSo9mXRV3Azat0GOvJAM+PT0/fGDJfG/xLuU0GhdDyxsTOzBZlwez0DoX6iH75AEU0gr1U5wD6TPy5vcxvhMWTceq/M5d5kbpKa43Ca1GFTba2vIr2jrKTsMm7M2el9PoAiWAAenrfSeUX9HorDcTQPdOmajsCFvpgCJ98yGEgknxf+Y8L6JhyfaziPZoRYVAqIhX9/1Qs6oPX5G5q5snzxlx/VBL1tEVxH+DvzDs2CLEpIJ+UHQtuyBvnbvWJOA+sbpSN1JQ3642y5vd1UJbnYRdk2NMVlzZ88haLdkZpuxNDWniP3p3slW7DPQiFRxIjBryOcNlQJkX1aekodXIha8lAB9G9wxP28A5NCsal7sgbpFK6OLOmMrOKdYQC2ojLtxBrf0pXuV4aa+JcGUNDGXjploVJl6824rrkCwD4BlkrCmVIkZ10a9NJmO0F66enbHD6TfFtI17aA9WtERozrnHP00eQbATcBsNVRUMR1BJlmuP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(39860400002)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(1076003)(6506007)(26005)(6512007)(6666004)(83380400001)(41300700001)(5660300002)(8936002)(8676002)(4326008)(6862004)(478600001)(6486002)(66476007)(316002)(66946007)(6636002)(2906002)(66556008)(86362001)(82960400001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N/wptJIT3/qg4acQr2459QpCtywdoTEU/pRwYLBUV+cWB+oM7sfuTZDR1Mfl?=
 =?us-ascii?Q?6tjJLbT3ELG1jOZWw5HZ91xJ9u/kzU6IvVQT8ju1kiMLKLvlftlzShGIww7s?=
 =?us-ascii?Q?w0NEkqoy8pe4Pr1eMmLi6euHBQ4VEXIRnlriH55kSL3L4qFeu3fJPZ5DZv0W?=
 =?us-ascii?Q?G8roXpcC7epy85mrUQ5GY4hRzIlVN2oUF1XPaAJi93Ky2W6Hz5BZy6KLB8gw?=
 =?us-ascii?Q?TbujY3nZogXyyXreDCVQpGcg7LFSwqkXKM+xuv8mS/oartVWeVho1NWSDq05?=
 =?us-ascii?Q?L7MtVh5/KfQGj7SeYgi9XLpsk3bZpg5PJr/ZWEIqNXdkOiLWwm7N3lGCTBFj?=
 =?us-ascii?Q?Njo6iCDiGzXi6VMloy6Alr//z5U926BwPK05es9vRIJ6NySlYk5348UDiljO?=
 =?us-ascii?Q?Jh6Ufl7uAHrIfqQW4aYd2Rs2mSKstdop0JWzbO4HQbdwdRDpi0fmU4v13QiY?=
 =?us-ascii?Q?8MR71u8jZQ2vuM2Yeg4MPP9ylrVjQsCIlcjt5+AII8CjSl8pKZd6dTBFw6yD?=
 =?us-ascii?Q?tSnWB+BTJL+syOCsnJaDIaAmxQrVuJHlfW99PDu3FVqPmuI7CU5yJMTjUf9x?=
 =?us-ascii?Q?eMpEYwD1YxK5qMrLkDkeoSu5BfIwCRocoskDKe3OmsTA+UzcPdSqU1M60HX1?=
 =?us-ascii?Q?In9Fn7q14oaet8uJgVDNvNtth4/jtikeJkzUn6asFvGslna3vTsYpkbDtzx8?=
 =?us-ascii?Q?nXPjSp3gO1/ImCqsPI/13BsV49KhuDIf4CO4y3uO7WBBntdMyDfuL8gpes1/?=
 =?us-ascii?Q?KC1E4BKahQCv6A2EjYcRDl3h8sOZiXsPqNtkgjMYCydlcojNzwQmrbVYVRzR?=
 =?us-ascii?Q?QlptR2HLBizet0Glt56VlN4CzvTKi2MpkJsaE8M8CQkQ5frhocHAG5CvdIKE?=
 =?us-ascii?Q?eEkuqGqA26uCU0hUKz3e/dMXx6M9a90UwYoCNkDszjBt17WGmJfkaCU66DwQ?=
 =?us-ascii?Q?f13UXi4rVGQUuBWDizxDeg3hAaqpKbRny72iPafogv8z3HkLtGMyNmcZb/RT?=
 =?us-ascii?Q?ucFGiqeykxxUeLMqhG6VwBpv1GikoTcskUbxJw2YpVGfpfXzhlkwOtNQPYtV?=
 =?us-ascii?Q?Iz6a5FbDXwg8VpJ0w7/s2jG8A++DWe8EbCDBuyQnPV9rVbhajBAWmdtDNhLF?=
 =?us-ascii?Q?AMWFSOmDxjkPoEayQTL0RL0JlDTuguIJySgmA241BVe8X9OXFoRio3kOpxvX?=
 =?us-ascii?Q?LfWuuEZ5sO8Sx4dG7HyMNKWmiGocJAXiQyriytV8O76ZTBP/X9n6wOvg8lld?=
 =?us-ascii?Q?NIEpfDtuXvPfLYaFrtbTB7v8jUl0IEn5N3Wh17Dc19hNliLwOyUhXSvpwUba?=
 =?us-ascii?Q?w/dMzEZPbDmfeWX66SBGsVi3h8/qeZiMOzANsLCd71gvAvW/GJgdr/xN1C9B?=
 =?us-ascii?Q?luarSpS5NaHA1GaEOzvu0PGSZ68+hd+V2ypEDg5mtKcDT5wCujIBx3crWtYY?=
 =?us-ascii?Q?9qGvzDSRrj0+0YlPSuH+5Hq0sdRrgn6iZBodrLJkBCGpwcdTwx3E+YKsMLtP?=
 =?us-ascii?Q?oTsxoCyjzpZaK1pap3ueYAutfzfRkGoIHpszC8aNqgqd9ZMnEEDpl80oAc9i?=
 =?us-ascii?Q?F6YLRX8y8dIVQrM4gZTGhK16G+63GhK+4z5nGyB7NQ7jT8R2AHQNApl9ZYBK?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6acbd748-a1db-4fa9-9091-08dbf817e76e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 18:02:55.9583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7GXU+WczlK8nKOyF2vbQGKCTthU9qj/MJgvOSm0ERP2C6E/cHacLJ2uvjUiscVQ8XylR/2Ea2Zcw4FCt9Vg3NuE4IPODwUzERbSehmdFlAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7586
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 08, 2023 at 06:31:37AM -0800, Lucas De Marchi wrote:
> The PICA_DEVICE_ID follows the same format as other GMD_ID registers
> (graphics, display and media). Currently the only use for it is
> informational for developers while checking the differences between
> machines with the same platform. Print the raw number as there's no need
> for the driver to check any of the fields.
> 
> In future this may change, but then the IP version in
> struct intel_display_runtime_info will need some refactor to allow
> keeping both the display engine and PICA versions.
> 
> Lastly, keeping the PICA version around in the display runtime info
> matches its current use. If that changes in future, then it may need
> to be moved to the device info.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
>  drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
>  3 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 5d1084a98b93..d9d1be008e4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -956,6 +956,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
>  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
>  
> +	if (HAS_GMD_ID(i915))
> +		display_runtime->pica_id = intel_de_read(i915, PICA_DEVICE_ID);
> +
>  	/* This covers both ULT and ULX */
>  	if (IS_HASWELL_ULT(i915) || IS_BROADWELL_ULT(i915))
>  		display_runtime->port_mask &= ~BIT(PORT_D);
> @@ -1124,6 +1127,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
>  {
>  	drm_printf(p, "display version: %u.%02u.%02u\n",
>  		   runtime->ip.ver, runtime->ip.rel, runtime->ip.step);
> +	if (runtime->pica_id)
> +		drm_printf(p, "PICA version: %#08x\n", runtime->pica_id);

The actual, expected PICA version number on most (all?) MTL devices will
be 0.0.  Should we make the condition here HAS_GMD_ID(i915) instead so
that we print the value whenever we read it?  That will also help us
notice if the PICA register is incorrectly 0 on LNL or later platforms
where it should have been non-zero.


Matt

>  
>  #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
>  	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 79e9f1c3e241..f8a2ada1a4ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -123,6 +123,8 @@ struct intel_display_runtime_info {
>  
>  	u8 fbc_mask;
>  
> +	u32 pica_id;
> +
>  	bool has_hdcp;
>  	bool has_dmc;
>  	bool has_dsc;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 27dc903f0553..9d70635508ae 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6362,6 +6362,8 @@ enum skl_power_gate {
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
>  
> +#define PICA_DEVICE_ID				_MMIO(0x16fe00)
> +
>  #define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
>  #define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
>  #define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
