Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46604747368
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 15:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EC710E135;
	Tue,  4 Jul 2023 13:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD1310E174
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 13:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688479183; x=1720015183;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UdolUpyKN8jpiBmLo2zWWsw4sqe2g4TgyUA9kk95s8A=;
 b=aTooB0gs9QoX73C4NM/PZ2Hu89agHWQujOmOnnWxCPW09lEQQLSz+MmA
 p6+nqUUd9+crfCDpAnJ0LkXHKvhJF2w7Re3wCQyEbgDPDNOZwNTzj+vsv
 EDq2rxN11Pw1LSx0LUM2OHl0ormflxDX4Jd6r/ll7ibBo2MY1Oh0WiLjQ
 N6fsH0KAWwF6cLr62SsisXb9QRcor+vbmuT23AsjKOgtpzE4w0pE8Fjhx
 Ed1jDccGczuuGvalbjqi8kT8tMQn+Ao83ma1VSs/NaSokxhQeBXiXGXrM
 mLtEKRb1TnOcSUDukfJcQvBD16g05ubqis027iAXZCzgYsLTQe46L12/1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="347920955"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="347920955"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 06:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="1049403004"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="1049403004"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jul 2023 06:59:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 06:59:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 06:59:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 06:59:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 06:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=je4PLx06yjyIMwNfcsBBBbK4Xopf8mbDeGv+BBZ7UwxhGPLEvCErBVvrGTjD1fKcCK7pHiS1wkCRssRXbDgUfCPElgF1C8xtlhceGvVx9JPcXyoy1tgqAWQzX4SYtuGzySTVtM9VnPHVT/8m2sqVLhzdqrLw3Z71oQq5ohi/wUmGuAp0fehilq+B9nPy9DGFd4C8Ky/X05jmLO7PNebdlhnx10Sn/jzEpzm4YXzFyc4wwq6dti5eboYvcvrIF09HPvx1O+dxDXuY33Jw/zXQ6w8c3lNhaPuB3/J9GzS4J5ZwyW4LHB2wbv3Mdg6924Jr7HSvglbQR+D9LcLFaZhIDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hcJmBPthsAXOZJIW1DuONU3CCsnoE2MjZsqv/Ho3qQ=;
 b=gJnr5ZMjynAo5Nuh7urSeZPkgT+0Iy5pNeqyAWZCEav9NrF8Q73SqhIJlS2jfcpL3GV6rBD/i5L7EsaKAWYVJa/jOupe0ZWZvMe8uC1hEpFnjm42wPAhpqJQKBs6O5ftpOqaVohhjqFDOf5NZdm6zsJ8VIKpuBQ/xWSMWHcybVqr8z2RaSfpraEA7ufiU25acvVL1MwqQy9Sez72qcsF3SQoaMlXeF07KOWl6VD04oSB+64Cy4rkeGL9EzG8SefO2Cif0Datq65pSvPJfjtachQGx1txXNmfCslNjPxjPvOGu3kLi9N7evQH2tx5P5ENEuTgmZ/cn6S8NvBLsnPD5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB7790.namprd11.prod.outlook.com (2603:10b6:208:403::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 13:59:33 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::bc0:ef1e:892a:e49f]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::bc0:ef1e:892a:e49f%5]) with mapi id 15.20.6565.016; Tue, 4 Jul 2023
 13:59:33 +0000
Date: Tue, 4 Jul 2023 10:59:24 -0300
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <iwdi2hxv55vbojf7pcmyzjfm7y4skzjgseh3mkiblpgn6tzl56@5bfqk27hrui2>
X-Patchwork-Hint: comment
References: <20230627105849.274263-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230627105849.274263-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0032.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::45) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB7790:EE_
X-MS-Office365-Filtering-Correlation-Id: a6c56b17-061c-4ce2-b000-08db7c96e46c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PZe2IgC57CG7Yx5azggG7dnZ/B0+BKv/qyIFEKYYO9Usl1ZjwZOfEjwKkJQZjqAn8eS25fL1jHTg6jVc7aPmN8HExLSgTjFQy7+bOlvEKccIrSIbJtkZMu/krHHmJ0CVLsqoiP0g7nKP/xRVmtVUxUSK2BaAyOiZj7CBNjiea43PWPNfUiwX6XstoiQWBkbBgVki+Ka1a32UYf+e+dLTQJTo83Gz9jtd1crm5x0nOW6Snfsd3kRSB4KXHJQLfgt2voOkRsH+hgJgIHlij/SaqUZQFKaMeqWuz8BVPSvkOeekiU+KI/F7kpCA3XyBF1LRXhmXU3l4knCYxYDQ8prTKLJVRFmiwPVpwg9pPIwfpgVtGd8mG7KUb8H0ZEtChMNaT2LKLSmSjOMxiNKG96toR7gFPLZfGAxItPqfoPDtMX/V63VFQqW30+cOlRLFvZJicSjEPX23DBXxrU20geNMtWfinonkGI75ePRCVUTu9djlIDeLbwrQCrZmLyPrlYZDYfg/xyXjfVoPg7STeQ5DJ/f0fgmQPA99u/OkTGCmfap/TSVku/bOIiZwmx7CLugB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(136003)(366004)(39860400002)(376002)(396003)(451199021)(4326008)(316002)(66946007)(66556008)(86362001)(186003)(6636002)(9686003)(26005)(6512007)(66476007)(6506007)(82960400001)(83380400001)(2906002)(6486002)(38100700002)(6666004)(33716001)(5660300002)(478600001)(6862004)(8676002)(8936002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EiLCuBAIAxX0kh1R+UBAsoeesBeNRVu9MQ/s7ZZe7mbpmmoX/VJWkS/3rnT8?=
 =?us-ascii?Q?7REbdJMN8wCzplDKKumtFQh255Iuj/AKfgQ+BIXWkOf65DHd4qHkZ4pLtr+o?=
 =?us-ascii?Q?MjAkdOQVZjBi6b5mwPv6M3nIE1gSoBFg/QkVSItGma4eeBBeLOHhg9Ib3uJL?=
 =?us-ascii?Q?RKsKIsGJO4oxMNwNouZSaVHwCgGt7wkec1P61OIJABQcCsbmTZtl1pNcPI+U?=
 =?us-ascii?Q?pxuIBeTwlPTaR1cbVYVDO4IEIvDGcwFdAGNgn8YKp4M0KnjtGc9HYezPNBou?=
 =?us-ascii?Q?/3YGSFVAuOcs+0RxEMnpxVldt+01y11Cf4HoJApIkbrYGuXEE8Ru1Rnwi9aJ?=
 =?us-ascii?Q?Ra/yijbDO5WEsKX1raH+WMRRav3pZwULaeMk5DVHAkZid56/balKRCIdpU6g?=
 =?us-ascii?Q?Yp18XtWusffbOZBWgRsQ5D/aPaGnqt4l/zAZ8o5w2Uu5NwNQJ7IWe0L1wZJ0?=
 =?us-ascii?Q?8dzjrgY6D/Gz1WrHb32jtTE0NvDXIlWZnb+kmS+f9qExA3TWYI6apK0uh8AO?=
 =?us-ascii?Q?FurIGS/vVf/tbnH4nAzgYGenidGY+OtvHSutNLsYKVLb9nAXAb7k/jK3rES/?=
 =?us-ascii?Q?aCwNimxZsqxCEWN29JbxMPTZMk9w8DH5tsk17NaZxYvlDTYGGS5jYNcHX+zq?=
 =?us-ascii?Q?NQ70GEFC9BduD2wN85xSKEKGVpcn+UOpwiwjQMp7v+pwnHQUFNd3E5XskzXz?=
 =?us-ascii?Q?6iZBUFN+LPv8Amra/baL8r+FzY69ZcTttHrO8AWYjlXdGIcN6Ljw7ms9wsNu?=
 =?us-ascii?Q?EeOTn6Ia0rKyeKLhPm+K/cBhysrgjGZt63agouFEIjIkxoOYaMnKpTrvJ60t?=
 =?us-ascii?Q?abDlz50CB6J8J7e5AD2AAELEwxnM3j9OhH7pR0T0r4T7F8tFHlai1p5SMszY?=
 =?us-ascii?Q?fX1J+fWq5ypJIwBaioPNlqKZ621ALhYei/hlprj8Cpa8Y8WufGdIU3T7Ud72?=
 =?us-ascii?Q?n44EGlm4M42RZSArqCIi8f3aoH2TOhYtgsniko6CeWNW5Z3TttRIgpyUqgT3?=
 =?us-ascii?Q?Fk8pLCXJP+Qdh5lrSBdakKcG71YKfMypTFQiJxLe4jM3bklwAor/mw+dl4MX?=
 =?us-ascii?Q?gxENjH8MIqbykhgLQw8tdCtBhsiy2XBIrlgS1/S3JBIrbvGWm79pj7R+nwMA?=
 =?us-ascii?Q?IgIlw20TV8zzt3Etp/etEJL4lwPJRVpXqyYwcLJ0Zov1ZafDbI9VgGfep3Cn?=
 =?us-ascii?Q?b4Vb02JZ3L2tg9BSNUtL0OzbtIiIf1sS1c5dyhxF8KZKVE/oZiKftHsQI1I3?=
 =?us-ascii?Q?Z3zBuvZaLGnOS/PNFUxQinvF4Lk2pbY6K5BFT4sc6ZGMCYFstya7qUCdGPQj?=
 =?us-ascii?Q?HDlAkd9oW4tqkwT8fEal6x3EW1YjtM/wcC7ZZSAmHcQuHGiSVwTbCv5GBKKM?=
 =?us-ascii?Q?Qpslabs0STR98t5YDcGx/aYwX55yuVeZNc70wWEENizqmzCywRePmymxghW5?=
 =?us-ascii?Q?taMwkbjlxEj1iEg4o/SvNcbvIUsoSBcxAqvBA1cqGhyZIkWX1xJTI7HnPVRp?=
 =?us-ascii?Q?ZU6/zNrFOmwhdQmmQIPzd9quy7PJ3CSQoM43nVU+UDP8DbgFJpQvAb+5yPvM?=
 =?us-ascii?Q?TshueZ0MYTElwR1Z+2hl4IgQrzw2mli7YStXiIX1lgkuG1f8pkzwwk0e495q?=
 =?us-ascii?Q?QQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6c56b17-061c-4ce2-b000-08db7c96e46c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 13:59:33.3111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9BexI/MpalgYbQZqAi2fDim0FCSlxQV0VkBn2ZufT+6eprryg8o6wUjSu10gd2pcOUepU+B30D4X3ezBrbO9TjkdDtbbTcPnD/E5y02JPIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dram: replace
 __raw_uncore_read32() with intel_uncore_read_fw()
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

On Tue, Jun 27, 2023 at 01:58:49PM +0300, Jani Nikula wrote:
>The __raw_uncore_* interface is supposed to be intel_uncore.[ch]
>internal only. Replace the remaining outside user with
>intel_uncore_read_fw(), which is essentially the same thing.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

as a follow up, could we perhaps move the private-to-uncore functions to
the end of the header is a note that they shouldn't be used directly?
AFAICS the defines would still work fine.

Lucas De Marchi

>---
> drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>index 9f0651d48d41..15492b69f698 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>@@ -704,7 +704,7 @@ void intel_dram_edram_detect(struct drm_i915_private *i915)
> 	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || GRAPHICS_VER(i915) >= 9))
> 		return;
>
>-	edram_cap = __raw_uncore_read32(&i915->uncore, HSW_EDRAM_CAP);
>+	edram_cap = intel_uncore_read_fw(&i915->uncore, HSW_EDRAM_CAP);
>
> 	/* NB: We can't write IDICR yet because we don't have gt funcs set up */
>
>-- 
>2.39.2
>
