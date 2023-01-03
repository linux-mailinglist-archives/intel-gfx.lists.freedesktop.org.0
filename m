Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E904E65C3F9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 17:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45C6F10E26E;
	Tue,  3 Jan 2023 16:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6BF10E26E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 16:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672763671; x=1704299671;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/gfCEJ29WclFuYw6gmqlbURC9TM2BXRtYvtbck2E/W8=;
 b=g6RLAUKHOl8hdplQvnAU4+jTx8m1S6WLWf8qdcF3YoMxUlyb5zaxHTAh
 i2PAIcLHoCcbJ8GcEnWlKj22lONT6iDOUXTSOAceSCV73U1KwKA/cSuSP
 o8y6tJ07D/sSYHvDVotmJxNq8G7J2kYTD7ZhudrP+n7VT0gaONC5jiJH3
 nbBcQYLeQ763rfKGDWZi8sLpLI5zl1EmzzDZhUSRA8r5A9rb0x8XSzN/4
 pXnFuXNniZQVRm/f0bej7zoYyWofPgEHIxBd0m7zI8GyY4E6iSTBBIcx6
 iiIeaT99IBMCb3PreF+zTPN/0O4vNB3ZTm/z5nfMR4nO4YMIDfiGpkVU5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301378393"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="301378393"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:34:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="900231051"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="900231051"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jan 2023 08:34:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:34:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 08:34:30 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 08:34:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHwrOz6Nk6V6pG+xgkjVkoY86p045NXn+j+mP5gWC1HslEPkeJU0Yc9fR4n+JJ/6zzVZ/SkdiWT+3Hl1DW8luZL0VSkZXx28em9bZeK0uAZW//OUvTUrizatGtgOMM6LPWGYm/TYB8jPcMhtNdc3T8gpN5BZy2BWlpzxWLhl2ZuSijgZioZXCYMQcWbHca/76ZBpxBbRy5VHRMi8wxPknR0vrslFKlGrHJ4Bx8li0XROOrSKFwFcmrs2usatipfPwWGNy2JlebzE6xGLrBg+fkhX5+PuXtoR0J0UzcY8p94U1mwnnzMPFp28ts15RPLeFFXxCtekvGn+YxsAm6ywhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/KBUZ7nMUPiuTL25+23+Nj8fTWZvW9SpWio17p+bF8=;
 b=ifPm1gSmBz9iPZcYCjwclnscd8XB+Kapl6uM15yLtXspuGd3/riHceO7gPJHZHFoIz+mC0WwkRurOzriQeG1qLuBpopEJnsv9/yCcrysUgucrMTGzysXhYOG7HNS6o6mZqDNhXSHDj0uxR4H52t70jm24zOVOrmMeIxwHHOegyaFDWp2mgZ41hT4h2+P8icmJqNvgva2hqSyy6rWZX9i09ZchJpT9FajRoM0kBl10BZT/GBPJms5cWJgTwrikhjXSL4wcCf4Nw385zk9YcR5P2ozgY/RxlKVGy9UpKpvw+kfWvFIOKwMUW+vsuH0qK6N95oVxY2AdiMDa87EI98Gaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4736.namprd11.prod.outlook.com (2603:10b6:806:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:34:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:34:27 +0000
Date: Tue, 3 Jan 2023 11:34:23 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y7RZD0Li5E16fKGc@intel.com>
References: <20221230182422.29680-1-gustavo.sousa@intel.com>
 <20221230182422.29680-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221230182422.29680-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0196.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4736:EE_
X-MS-Office365-Filtering-Correlation-Id: 0953a7c1-de3a-4114-b3f7-08daeda86192
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FAEX0jgNzpPI2zsNofcy25ePRdruavYzZBtjD6ThgE5Z9X1HnuZnonVoJ7s8wywH94vdhuW6t5pQWWOLxLwNC4aUa0HwjxI/WSoW9qxUfQ8zJDhhzYuc+xIyXS2ab8axgAB4/NZ3dB2K3ciDMsBusl2IoSQ1t85UmYAdT7PxlCl6wiOPjIMAj7BO+/wi9Y4S5QVUsAeqQWIkzy1+b0fgQUpwB80G81d7kzT20UNfIU/BPnFQ3WaaYEJJj+O09dLIeOIFJsiFg1kS3P5t/6+ECh/CCQev0J/ytYwCSv6VscB3iDO9nsf6FNbU/WzVXd4r2Vnyzicpq4Pe/msoD82fgVUubg5JRmInT6WbdVKNcGFG++ERJmtp7Sk1wedkr8nkMSaVJRTuDu5KcUa1yFvkEkVDun0I5DTrlTCt7474HBf6ajLokhqwckdEmitlRBwGLTttInkcLGqA88aOKZ3frTLVLV6Uih8a+i3RbAZa8TWll9DrsNzOrdPrxw3La9T1w/KGYJqD/o0IHuJ6Z8ILCh/T8w42TtsW5NIfaf/M7c1nb4lMNOa3EPPVEjbecdHh/TY7pj8R79ITtDfl8tBIF0hO3EKyCpJ48VAVibn8EY+YfDS/NBFD1EXVW3fJTYg3heCmxDP4uXzvetM7I8aTCzp7ATZMCKFO3mu1HRsHtcxG45rj2apczXGuLldgMKJUoob1ZmgdX5J61rFlarjo/O2Qhqs859VKg35hwaOHh6A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199015)(44832011)(5660300002)(41300700001)(316002)(2906002)(54906003)(6636002)(37006003)(4326008)(66556008)(8676002)(6862004)(66476007)(8936002)(66946007)(6486002)(36756003)(478600001)(6506007)(6666004)(966005)(107886003)(2616005)(26005)(186003)(6512007)(83380400001)(82960400001)(86362001)(38100700002)(22166006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YuAUtpzKbd5cMA8dm2fmf2bha/g6v9/IILlKnB79S3e9XW47Ka4p0DOM5DSc?=
 =?us-ascii?Q?o6jVerTWy8KMnfm+kbhSc53RifmLeTu+Sj3sc64AUw28/k8PegYmoAdN9UQO?=
 =?us-ascii?Q?GuoIJ7XMgKqUAk+vPNxEeKNV44dpr3AINHmcVbOy+DLqsGuUDtvtFcxNM732?=
 =?us-ascii?Q?cwbmpR5Udkm8Ah/3Qkyj+VoeEFCLyDt7mozLW4D+P3Kr66y5GngnQlXL2OnW?=
 =?us-ascii?Q?UNFYE9nAkUeUOdKDDXtk9N7BGvb97YVBevjZbRv+BvWZv5qhRbJiKqaSKBlK?=
 =?us-ascii?Q?dYmynAzbP8OlU0gi/pR2Kvg9IVQE/MC6KFcP4sY2LkIQISCKx+mhJAP3AXgy?=
 =?us-ascii?Q?ECGIvp1i7wQvQnfHRDHHkjGaIr4AwtH8Xkq5QaXDOSVCbvCkvyXuJ0Da0c36?=
 =?us-ascii?Q?XEYv9hXoymb3h+yvm4hdwIWNv+jRM+4K0QeCCytNo2W/qd08480vnnYFbZO9?=
 =?us-ascii?Q?WPa9FHiNUIx6y4cC+UMxljlH48pXg+C2OfhyMFizNkYeZdzlcCpdI8hoesEs?=
 =?us-ascii?Q?SoCUd5I1SVf4EGSJqH+sjDEcbxI2zegcSHcVPzP70ermE5eKehezCaSNWvLW?=
 =?us-ascii?Q?l4RuY6kY6M/cl9LkGvb6EuP1j8j5ZTgLOAYxneY+QmxEXzpU9EgX99OOt1n4?=
 =?us-ascii?Q?dnRwWmiNrF7sjJ0iOlor1zjs1SPx5aGnIiMQ4H2tj5dUISTA/Bsz01tWeJy1?=
 =?us-ascii?Q?QDwlIcVVfueSE8Y9emZqWLKGcNRYO1JMkutn565psMHQn7HfJyPUkQMuLVpX?=
 =?us-ascii?Q?8tyksGJ/0Razc6bEgW5MHQYbpMkHeLbTbgvzSi/ZzNrLfoeKbf9U4JrBos9z?=
 =?us-ascii?Q?mOBgXARaBprkowPHLypIh35EzFP7h8S80BcpZ2pUYC4O4k/k2CatTpd6+sC5?=
 =?us-ascii?Q?wqlOu7714KHrdC3oi6QtGF2rcOlL0LKEOFA6D/TASlkm1oaAow13BauoOlvr?=
 =?us-ascii?Q?N95YbFMAL8K9gNl46L/kMR2yQ38P2jmJLoodtNkg2Rc7/1doqPbyoPrmMoYa?=
 =?us-ascii?Q?4AVUp8a19xU3pgqtSRJJqMc1XKegRV/mQUeX077HzAdmZ90fLl/VPcpEb2VV?=
 =?us-ascii?Q?/WjaPj2i38xrzDUkn9EMU8tVMLBkOcqDVAlakpzjmyUZLVBCj9u6blkBcu7v?=
 =?us-ascii?Q?KiBwZP7RfcyShuGNXcET0PenCBa0qy9q8iCTBBCwR22ungRWMFQImKm3bIc3?=
 =?us-ascii?Q?qj1QDZDLt/Z8wvLgGh5ZA98mm7n9u/nIATo0tJZnbHijotGhXJspVYB9GgHG?=
 =?us-ascii?Q?eQPE+g5s+SP21MxgH5LgeQa7lpU/bIpX69htBA3TSoSkMFiyOb4pO0rWoNN3?=
 =?us-ascii?Q?Q+mpJWPsypYZ3ueyybtQxmGRMUrrIOQSfHd+jlpnTBH6lVqkwl9o/2aNhHmT?=
 =?us-ascii?Q?/YCO8e92ibug55PXdi1TpsIHHgBJlusMIO6F8fyj2B2I05J6qIbw3UcoPe5L?=
 =?us-ascii?Q?wMspJ+LyoD6SjTNCuTIDhKGvgt/B2s6tLf3jnGAmah8D2+u6RNlfl+qNIXqV?=
 =?us-ascii?Q?3ydzRyy8+0Kj0thduAfLLE60hlp1L2RBzlYUM8o/AIib0Pivd+qKs1RvdT0d?=
 =?us-ascii?Q?bNwSiwjT5HaV46hkD/pChtNKlMMtKWdDaIlhnIbyKnfD0VuLoKuxXSygrlcJ?=
 =?us-ascii?Q?Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0953a7c1-de3a-4114-b3f7-08daeda86192
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 16:34:27.7211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U4HcWrH94XA6KXN962vYuUlpKInNuBKu92LPp9xJOPtPN1lD++potTEe7x1Ipv6BpZI5IIo1/CPqjvw0AToOyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4736
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/dmc: Do not require
 specific versions
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 30, 2022 at 03:24:22PM -0300, Gustavo Sousa wrote:
> Currently, i915 interacts with the Hardware and not with any DMC
> ABI/API, so the API is fixed within the platform, hence no need to get
> this so-tied version requirement.
> 
> v2:
>   - Use link to firmware guide from kernel documentation for
>     "References:" instead of mailing list thread. (Rodrigo)
>   - Provide a more elaborate justification in the commit message.
>     (Rodrigo)
> 
> References: https://www.kernel.org/doc/html/v6.1/driver-api/firmware/firmware-usage-guidelines.html
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

and I'm going to push this right now...

but btw for a next time:
there's no need for cover letter in single standalone patches ;)

Thanks for the patch,
Rodrigo.

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ------------------------
>  drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
>  2 files changed, 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 905b5dcdca14..4124b3d37110 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -53,51 +53,40 @@
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
>  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>  
>  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> -#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
>  MODULE_FIRMWARE(ADLS_DMC_PATH);
>  
>  #define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> -#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
>  MODULE_FIRMWARE(DG1_DMC_PATH);
>  
>  #define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
>  MODULE_FIRMWARE(RKL_DMC_PATH);
>  
>  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
>  MODULE_FIRMWARE(TGL_DMC_PATH);
>  
>  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> -#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
>  #define ICL_DMC_MAX_FW_SIZE		0x6000
>  MODULE_FIRMWARE(ICL_DMC_PATH);
>  
>  #define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> -#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
>  #define GLK_DMC_MAX_FW_SIZE		0x4000
>  MODULE_FIRMWARE(GLK_DMC_PATH);
>  
>  #define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> -#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
>  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>  MODULE_FIRMWARE(KBL_DMC_PATH);
>  
>  #define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> -#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
>  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
>  MODULE_FIRMWARE(SKL_DMC_PATH);
>  
>  #define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> -#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
>  #define BXT_DMC_MAX_FW_SIZE		0x3000
>  MODULE_FIRMWARE(BXT_DMC_PATH);
>  
> @@ -765,17 +754,6 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>  		return 0;
>  	}
>  
> -	if (dmc->required_version &&
> -	    css_header->version != dmc->required_version) {
> -		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
> -			 " please use v%u.%u\n",
> -			 DMC_VERSION_MAJOR(css_header->version),
> -			 DMC_VERSION_MINOR(css_header->version),
> -			 DMC_VERSION_MAJOR(dmc->required_version),
> -			 DMC_VERSION_MINOR(dmc->required_version));
> -		return 0;
> -	}
> -
>  	dmc->version = css_header->version;
>  
>  	return sizeof(struct intel_css_header);
> @@ -903,49 +881,38 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  
>  	if (IS_DG2(dev_priv)) {
>  		dmc->fw_path = DG2_DMC_PATH;
> -		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
>  		dmc->fw_path = ADLP_DMC_PATH;
> -		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_S(dev_priv)) {
>  		dmc->fw_path = ADLS_DMC_PATH;
> -		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (IS_DG1(dev_priv)) {
>  		dmc->fw_path = DG1_DMC_PATH;
> -		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		dmc->fw_path = RKL_DMC_PATH;
> -		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (IS_TIGERLAKE(dev_priv)) {
>  		dmc->fw_path = TGL_DMC_PATH;
> -		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
>  	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		dmc->fw_path = ICL_DMC_PATH;
> -		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
>  	} else if (IS_GEMINILAKE(dev_priv)) {
>  		dmc->fw_path = GLK_DMC_PATH;
> -		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
>  	} else if (IS_KABYLAKE(dev_priv) ||
>  		   IS_COFFEELAKE(dev_priv) ||
>  		   IS_COMETLAKE(dev_priv)) {
>  		dmc->fw_path = KBL_DMC_PATH;
> -		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
>  	} else if (IS_SKYLAKE(dev_priv)) {
>  		dmc->fw_path = SKL_DMC_PATH;
> -		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
>  	} else if (IS_BROXTON(dev_priv)) {
>  		dmc->fw_path = BXT_DMC_PATH;
> -		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
>  	}
>  
> @@ -958,8 +925,6 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  		}
>  
>  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
> -		/* Bypass version check for firmware override. */
> -		dmc->required_version = 0;
>  	}
>  
>  	if (!dmc->fw_path) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 67e03315ef99..435eab9b016b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -25,7 +25,6 @@ enum {
>  struct intel_dmc {
>  	struct work_struct work;
>  	const char *fw_path;
> -	u32 required_version;
>  	u32 max_fw_size; /* bytes */
>  	u32 version;
>  	struct dmc_fw_info {
> -- 
> 2.39.0
> 
