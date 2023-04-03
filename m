Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7646D457A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 15:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3600110E178;
	Mon,  3 Apr 2023 13:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF36E10E178
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 13:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680527916; x=1712063916;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nNfcIx5hcqlIHKalNjSNd5tGxQkZq/JtpLTyq1+ZzZQ=;
 b=MWPtj+PdC6eg49HbfJj2p6SlN5G+XeRxHC1ZZ2QBXuDcAwgsSJyNr8cy
 n/0ALYnTKm+M/L1uKOvMKKEh81hROR6Jux1Dd0AeYUxNjsjwFEfRF6370
 WdB4JWP1XA0np12Eqz+HIpxlAj6yUNnCKWvfsG0Ik0hF2RA+nInECAIIU
 yfjT2P8IqmJx96l/slXFQuE/M/EfPx5vvrXTQ1JbdTNxmqYSj6TvMbkI4
 S3UIYoqWgFSkW5ndYxmw0ynLybuArHa7FVl2i1tGv/pQh++yLXZ4qui7I
 n0NgJsKDjSmxZ75iwe1z6QQtkMkpKhIN6urrL1G0n0FbqAe4dWnFD1pE0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369701699"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="369701699"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 06:18:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="809835951"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="809835951"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 03 Apr 2023 06:18:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 06:18:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 06:18:12 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 06:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nF2VTHN0ewr6OSgjH+e5RssGbOvevang96Tx2ADgP8DOFIRgQD6FqwTP7R40CFL9n8LEOTNo+sCq46b645rCgbPe5wtIY4iBIpe4vNZ2LWlLFiWeIxGoBmeNnBIjzikPbzF/RXpP2zDK/ETUZMZcvF0cSXPCJalwGY/3F078xljjWucWFAZP0gINhWjTK48UhxcsUprBgkB0MnRC7+afXLYEpL7agch4Bu2o6Rbn8ENiWQsuf31EtwZZQXpu/l0JfYgiCw1HQ/KdybhJUpxbgF1wiBnlGKHE1jMIUXU4gHXOvHr822VkU2v+SlTZ1erxOWnTPOLDNLBgK5nQuIdQJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGLjou0h0FteUjP3x7YBmRZhEOJfN4tCq/fRPsuP31E=;
 b=gybBzApgD/lcsinbEPJz0mlc8bWqnBkuvH6dGUmpSCwhx7QbRXutbEE4hYSF6t9l3c7sqOEqU+TlAP982UFLonPzLh0rL+no2y/jOcWeuX3S4UqWiOhMdzbrQicpEvRIrq2Y1vx5BCnot/c7sDNeXsSuyUJHXllLgwefTFltrH3vjb+rit0C3t4UNaj52VexYAVLWKOj0HZ7aBeu29E/lgYn6pffn5ezP5fYLMa3EpVW3/s1Wt5eBvR8W/kWPgnPqkn25L2LKzV1afh4UZB5btMbp8iOGwS6+fiuceeZHtIMhnEEci928b2aazMucLDu8s6iowu+sKoRCtMXqFV91w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7765.namprd11.prod.outlook.com (2603:10b6:8:130::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Mon, 3 Apr
 2023 13:18:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%9]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 13:18:10 +0000
Date: Mon, 3 Apr 2023 09:18:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZCrSDn+JSlMxOu6L@intel.com>
References: <20230403125710.3617230-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230403125710.3617230-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7765:EE_
X-MS-Office365-Filtering-Correlation-Id: 16862367-fea6-434e-2136-08db3445df00
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R/tIQmmC4DigisWn+bdnVw8geSlW6jfcr8aSmuxZZ96X8xBLB41lLyjq6If2577N+GzxPeJRN5o7rfP7mSP3NMMCSvbXnwh2UkQax5w6yf+cgbyzqAM/WpN4OkZr53U+UBrkAqV9bbpVU1ds7jX30eK+AALTqblQfg3o/BPxY5BgmWpOOZPfoOEXiIu8gDxW3InIblDC5jFyFrhHTdIzp18BHJmsljVD3ddh7u6XBzMsnWnVz3T0ZW0MO+b9mB//LLslGiJB9ibh19Azhob9R1ML0I2NeHBQze9iN6i4151i2BfiFXbHTfnNYMj+uKDvIV3/Ru5rjhNCoDjvAteq07XTnGW8w+rXK0OTCud3J/9UGXBkHe2GYXfryt0m1NQvFz3g5cTiPL/MTkjEAHlVl/AZ2xrtKcRkeZ6nGNa6GBR4O6hZwInruSN7XVgTKRdXPByGAMv9QbI9Q2kD9k4dQxXDP4yviUf610J+aOvn8UlTn1mcCH0I65/nRWqdZrrCTg+1YSgABqv3PN9JccvgjUqmKiHncjCLNt6T0xXDic9VNavR40cZbMc+DmXJTOwTUm0Haw0N1Y3TgwO38YwFn7hdDGVfM7JmeP9E4raMK9s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199021)(38100700002)(5660300002)(44832011)(2616005)(83380400001)(37006003)(316002)(6636002)(6486002)(478600001)(186003)(86362001)(6666004)(26005)(6512007)(6506007)(82960400001)(41300700001)(36756003)(8676002)(4326008)(66556008)(6862004)(66946007)(66476007)(8936002)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DsJmAOtAhVKeJKkUa8GQW4m4pJK0kswueLE9+QumJiJ/haEK0mXZhnvdPXrC?=
 =?us-ascii?Q?JfhSki4c5d39JyI6osx/ePukXOD257AketN4YZpoPSX6b5BMPR3CgTV6zh0z?=
 =?us-ascii?Q?4hhJjwBy+HY2fELbQ07vYqwaDgcB/r92xvTpld39pQXDyYCOK2lksCbEdihM?=
 =?us-ascii?Q?qnYwjQdgkEb+5XsSevsNN1+KA+IG3rgiFn+CeDe7V0MTECfABCP++FaZMjWW?=
 =?us-ascii?Q?T/BCOKtSX9i0pHO+x2N/k+IJ3PggDYxR8RhOMxJKvbQSlo+J9oO2qSwbpZP2?=
 =?us-ascii?Q?O1mQvDyrEIwfv2BpPJ5XXnYN+PWTkc3Rq9HxuctlWlTLaC7DSUFdJZ+2qTdl?=
 =?us-ascii?Q?m9jG72NCBVfNGb+AcGiKoiI4E2LCMeqHxW8xosFH99znP8lYd5ccs0UE1Rym?=
 =?us-ascii?Q?hv1YaXXuVLnxr5IEEF7bFl077wa7lmLSKcmukCbjDZ/YcllmPURJi3rqYvRW?=
 =?us-ascii?Q?t3YkK17sLln+xRYElzHujZzTOoACWm92gxnfK2rQ/69HtMhVGkHKL+yV+kFI?=
 =?us-ascii?Q?iGYwKELectM0WspJYYaZ2fYzBeyPrMUUVkvvdwyXcmizVTKgGT2pXVkxeFsz?=
 =?us-ascii?Q?LKm8eWAhy1KiCumg5MTMt8AdAljoS4YXB5dwBjyRyBF9A3t9zUf0asb3Edc0?=
 =?us-ascii?Q?ueyq1JLTz+kjss7FCpyV+O2BR4Fu+gGsBrbX3v35wrTBTYP+GVOB8ygks4ct?=
 =?us-ascii?Q?7R//ujBfYSW483+OQdeF10ryCf1DoskjzwBa+nw/EV1sKyaSFh7lfgtXSfoO?=
 =?us-ascii?Q?IBddDReHe5w0Zmdys1TUQtAdowBLmKhdvei/5+UKZhWcvhLyFA+ESNXHYYjf?=
 =?us-ascii?Q?Ggv/q4q9V7npFbsAOS90evldeXCvCVVLEMkchyRHV68PLukxF6skOAf4IdIS?=
 =?us-ascii?Q?FivWSPnMbtfsjF3CoYlTrrERWaC9yud4hLLewB6xLAAcxRupvdHEsUOPabUz?=
 =?us-ascii?Q?3/v72eRxQ2iGRXaWeOXIf70n8qGrg492PbodDatofJeJNhRo+j+Ts8VxhLa8?=
 =?us-ascii?Q?iNNvO2GqVJog70u8T4G0W20dhD0duos7WyahZ6yxQgErSEXNUTehMlZgefaL?=
 =?us-ascii?Q?e+IJivBl0mDRqLenX6mqpDQgd/NwuHsmu+6mnGe1TPN/TiwtOee1aK1GSWVK?=
 =?us-ascii?Q?cuNgv3jGScXBPTNkn1bwebxvG1rBaIrw2K+Dofn5cO2YBXDBCZoP4RhMZGUT?=
 =?us-ascii?Q?VxZsuZ3QNeSLLwWOjLDSm07TkfPbFt3ET+djl4M+dQneH25K0mzEwUo1lIUP?=
 =?us-ascii?Q?ksJLmvrFg7y2lToeX+tOcoYeCfgwgaroXXT8sw4krhzDvmB8nJMHbF7J4sz3?=
 =?us-ascii?Q?u2TXASneLG3vm5DwHxf0hf1lk3UbR5XCTtXE0gCda7QWZmJds/Hx4RM3HqsU?=
 =?us-ascii?Q?x/vr5A8IZ9wIWt6ZMCdKr+moQom14+0F+HB1qc4JSyMiP1JDJCYdeSN4Cmmx?=
 =?us-ascii?Q?kCPLTArdly14G8GdbBeQlCeScfmg63qkitTsug2GG61gdtw7175l/vrVVZNS?=
 =?us-ascii?Q?D5JDx7w1WS7/Do8Sd7aGCbe3jcwDLwGa+sqW0BiLO3fHP+wmrKWFgs2zlsfK?=
 =?us-ascii?Q?MIO4VSmy1Aiss4ER7jJr/THWQmVw6/cb1gTUukSw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16862367-fea6-434e-2136-08db3445df00
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 13:18:10.5337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PvF0jyf0lKcMg2p7N4FwMCPdIQBd2MmeXVP1S81O2Pv+V6FBiD5ukrFB7rcMKrI9Mvd8xhVUKRkI0nHQfeKZrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7765
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: enable kernel-doc warnings for
 CONFIG_DRM_I915_WERROR=y
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
Cc: intel-gfx@lists.freedesktop.org, Masahiro Yamada <masahiroy@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 03, 2023 at 03:57:10PM +0300, Jani Nikula wrote:
> Increase awareness of kernel-doc issues by enabling doc check locally
> when CONFIG_DRM_I915_WERROR=y is enabled.
> 
> Once the warnings have been fixed, we can pass -Werror to kernel-doc
> locally, and fail the build when there are kernel-doc warnings in i915.
> 
> v2: Don't check for KBUILD_EXTRA_WARN (Masahiro)
> 
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 057ef22fa9c6..831e42175165 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -369,6 +369,13 @@ include $(src)/gvt/Makefile
>  obj-$(CONFIG_DRM_I915) += i915.o
>  obj-$(CONFIG_DRM_I915_GVT_KVMGT) += kvmgt.o
>  
> +# kernel-doc test
> +#
> +# Enable locally for CONFIG_DRM_I915_WERROR=y. See also scripts/Makefile.build
> +ifdef CONFIG_DRM_I915_WERROR
> +    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
> +endif
> +
>  # header test
>  
>  # exclude some broken headers from the test coverage
> -- 
> 2.39.2
> 
