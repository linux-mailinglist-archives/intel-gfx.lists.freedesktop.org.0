Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4EC80DB4E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 21:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26F4E10E129;
	Mon, 11 Dec 2023 20:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B72E10E129
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 20:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702325551; x=1733861551;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OyeWiyebsDRdKC7HmyLJmUdtPi1svjKntRKo9oxhAdQ=;
 b=F0OjpFJsTD5V21KXKFSO+p5QCmpcODBwRkBHcnjxVEnIExB1CF7X/CHd
 uk2s8hsrEC5sM/jYTSaRkpB2XkAzc9pR9Ni08lvTvYrxLoL1Bns9+d6Kn
 VcWGp8QnMpyigvErkVljzGBUSuPSlSbA6lA1O/ZPXLAaGzn/ySsvpIwT0
 YCxUkuEImyVvvQrbbS3yoFkfFjJEIosILxosNGoM0CwMI8UzKYckqKdQL
 XBopHryBhV3R0o2jvrwM3S09Hwpgk3uNhe009EMlZNiBzWOoYB4aNJuRW
 2rIc9UV2mOwwhzcP62y7YohTquF9z6DzARNBkGL7ehFxTKJ44M/LjikOy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="1542849"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; 
   d="scan'208";a="1542849"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 12:12:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="802158313"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="802158313"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 12:12:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 12:12:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 12:12:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 12:12:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 12:12:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OjuBIjTtZ5r+ynR1MIQc/vMXw6x2UDg3P1RRzKgvBezMXQzORvK602dc4JzzWuWOpOOKEre0TJSdRIuLT3yS2/Akno+Y2+3txDxyOU9YzRj/Btf36O16pBcA7BnIM+WKVP+JFjQnNo1ui0SppO2NR2WbaZLRPvluK3f/DwiaUtgGikvzpXwEahhh8GOPi9t3UHKw5hbVGna9HYUcmkN+hJlgfXTkIIFhCVVMFD7o3MTARmKh5KfTc3oruv/EBh4DYm4KKh13Ilyr78rNxDXdlSG+HL/znVuvpgclklW/zk1/Qx1kA1CGuzzctzCTOgfZJam2STj+WGHIgPNkH8TvaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfATkcmRaIaCihgDIBN+OcshpTFYnYicOcDmDBcxE04=;
 b=mLvE6nziq8WbKdp+VPRREjXZgXVSLho+66XGQNDTTmEeAHlLcVrwkneBc4QA4GC005k5IyHukV3TSSaFUZNQvkOaIcbfEW1pTB2sQo4Pp9pmqh5zm7Bw6c8TlhzT1IKy3WD1TNzPfTDpES7zeY0cwuptq7APOyaqWr9uzL90063zcU0TSOwKnwQYY+alTbhLgRC4FUiKk0O6MEA1r5xwLU3OKo2fmOoF+tI43/hP+BMn3lYYERTsk55RVzxPi4gU79Do7fScBGYl4thYWwKHMJoLbP6RmZNwlWV+XID0mcnPlxefi1SftOhe1sQctZDphaR0TqIMpIKgQFZJiNJtxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM3PR11MB8672.namprd11.prod.outlook.com (2603:10b6:0:44::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 20:12:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 20:12:22 +0000
Date: Mon, 11 Dec 2023 15:12:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: do not use cursor size
 reduction on MTL
Message-ID: <ZXdtIg022CezmPLR@intel.com>
References: <20231124-cur_size_reduction-v1-1-30495dba475f@intel.com>
 <167c0fb0-8014-4fa3-85de-643efcd2b755@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167c0fb0-8014-4fa3-85de-643efcd2b755@intel.com>
X-ClientProxiedBy: SJ0PR13CA0014.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM3PR11MB8672:EE_
X-MS-Office365-Filtering-Correlation-Id: bd3b4570-3f3a-4487-6efb-08dbfa857bde
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jb64TUmeK9leN2DxFj/kLbWFKqRhkNFHTf2zk+Le26cKvTDoFVnb1EaY0W/kEXYCNIGGO9ul3kWFBLcKDCNibx/7JSPR3bsFWrWLG9mSGfsj3JOFYDXU60vV6JThirNaXeoBF7BAlxLvXmaACo56gav3FMHjr+ZePJdrTkPXmFcd7X1qkPgwSvrnz7aWEz+GI8UyKEfYw6kR1kJGJtUTAII3XVEimepz79x69i2hMckYdORUsnlbfJH9xI1NWPFH/aY6bmRMvg3lPSaGTTC1WsdCKb26i+lzys9IDz7FAAgIsvBAegKwPGaM+UyyXvG7oRaa56sCVTHvEz/yCVaYYLdy2zyihJD7m+dcnqIhMcdcrw0JXN3Z+oJ4NTeHOj26UJ5cxu82k/dkW5aLOmAjsvrambx7zZoLZIQdVVptGgJTi5fNfZ21WGG5ZEfnERBZoG/wdncDcCKCXynKZYuyF2jze29PKj+62NRuJ+10MzrbQNI9vv5PmVhQBdM5E1/Kdu/S662a0aHayiI+A0c0pgeKIlsUpkaM9J/QtkTl8aD/BIbxFuhjqwcpxj+gSkq3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(346002)(136003)(366004)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2906002)(41300700001)(38100700002)(36756003)(86362001)(82960400001)(2616005)(83380400001)(26005)(478600001)(53546011)(6486002)(107886003)(6506007)(6666004)(6512007)(4326008)(6862004)(5660300002)(44832011)(316002)(6636002)(66946007)(54906003)(66556008)(66476007)(37006003)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cBPuzXPV4+YZWCKzq1bBGcbgnTFq0wFveDxpVqi1qJP9kS71fY5IkJj/bfk3?=
 =?us-ascii?Q?VRAd2XkERkWweQ16ECf/RcuX+BtY6Emf8JntRcrtPR7yQWWAg9Q5Fwg9v8gG?=
 =?us-ascii?Q?v1fhry9OmyATOJhHhYiuT8zMf9/ngo6Q5U4FJ7K1ZE4FRTFcNlyG8IUoYDsU?=
 =?us-ascii?Q?5YHWB2JIKc+w8At17d40ncnKQnOb67iT5HkX4503spsdd8Qmb/BYwBBf/Lwq?=
 =?us-ascii?Q?tVAvEZdrDmyB6GNNULSs/2zQK18NSCznzH8Z3uMB+AuQT+hj67nrL1O8bGA1?=
 =?us-ascii?Q?lA+tjfCxxfiTqqj3wlHl6FnEOmUTvtJKvUOYlIbCSDGuBcs/WRcb6G/yvPEw?=
 =?us-ascii?Q?9G+JRd2NbOsBjJ8TLaJ8gV5pz/wyC8XbUjP+wSsuarbQIGgaqWaJ2k+LDR0a?=
 =?us-ascii?Q?gBMwHRgLdzVbWcond8vNbnUM09EvCnnXQFReZBM3/wsjI/dm4lQUEuZ4dPCh?=
 =?us-ascii?Q?0fg8J9j6qInFayCA5ee4lheYiYcYFx8djez9SUJbBxfIR7Vwl+SHv9jjVGTq?=
 =?us-ascii?Q?tZhqHkH9l/aJTsfVdA03EB+0vl9b0Unu4OLrfsH3IW0G+TjwsZbfBlQa1MVq?=
 =?us-ascii?Q?qR/N27oBhpY+FPUveaR8pN0g0dO6VnCdkuIZQLt1bjQilsXbfJAaVuVrxWys?=
 =?us-ascii?Q?SJXnL1pBZQmZtObho/mLIeGpqc3z+14h2ORpdKDzgdFzi8Lu1C+9HEwkJox3?=
 =?us-ascii?Q?Bd6q1Stu71H+1MO2PoRVppqw2t0cQSVwBS+ujMM1YOjrncIip1BxSuJ4B1Iz?=
 =?us-ascii?Q?YiEXJck0sycdBqcQdU7FQ2i9gIc8YvcOcuuajTDYF68gg30LCwTlnoVVA1js?=
 =?us-ascii?Q?vDKrTYAB7+y2nOcAHme6m/2dqktClCeD4MS3r5fqZ05iUZyn5D+TpNsbUxgE?=
 =?us-ascii?Q?kb4cgIddk8ErMUDLqeZs3X8rbwio08z/1zT54XFPRmoWK74ugp4U3doj30QY?=
 =?us-ascii?Q?RObLQ3fuyih2Fl08LaGaCvYYMf8OdoPgLpDHKDWCasYzeYCqF3VSv6M5PLR3?=
 =?us-ascii?Q?urMrbRKWdxUTjnKftgr8psknSwmKmSGromw1j4tcBZYY72xIPbHyFhmJePXr?=
 =?us-ascii?Q?MD6PrFt9ksf9flPOhyUmtOQbpozv1oQAlPy6b93ehCUYRSMAw3x3ZcjZnkWq?=
 =?us-ascii?Q?9EkbxZHLCIQIKvbwNa/5djhpJGDTSqnp9KNhrcywR0JvfyZKj+r9gPmKIR7d?=
 =?us-ascii?Q?xxZi98kcAAhOQQS/dHLaaM9mCnLZmFC4rv1nXac1EQa2fRFu8h4XiqlQZNy5?=
 =?us-ascii?Q?xBRdb8be730gGk6dLVVCXpPDCoi3TuE1P+i54qc/3tR0YcElQi4U2RiYsHX9?=
 =?us-ascii?Q?5jOXybry/iv0/4oYLD/o3zpFaqH8hnnBO6PtIbA5y26tn9ft1ysE9Uw7nKd8?=
 =?us-ascii?Q?FYZ6hOKLD2GcjuOB4Uu/q7+eJYEQUFiDrgUh7dhOv2wkiMiQ+pUGwMGenFYi?=
 =?us-ascii?Q?hIl1jGVUsgLMGNjj7U1Isg8fdpunqaw2KI6ZiVkSLPdHJ2pIn8HD9AiEo6j4?=
 =?us-ascii?Q?vWlGuEK/DC9CeO11E2Qkl/atI47E+hYDU2zMJqv1hEmSy3qlw2PZ7yPkxZyG?=
 =?us-ascii?Q?4WbYxR9rVy/Nn9Xw223Pw8fgxdopnqIJVgx9n0e6JxM2mF6hEkIliVWFlJMO?=
 =?us-ascii?Q?2w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd3b4570-3f3a-4487-6efb-08dbfa857bde
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 20:12:22.1692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4IHejq76U2G6KtrMHF7EoA4SShEKjhbmODL8eXUu8b0WlMwifLU1NoOd8dMEWpztYWMvUnnVO90b0iiImwM/Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8672
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 11, 2023 at 02:42:30PM +0100, Andrzej Hajda wrote:
> On 24.11.2023 08:53, Andrzej Hajda wrote:
> > Cursor size reduction is not supported since MTL.
> > 
> > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Gently ping.
> 
> CC: maintainers

pushed to drm-intel-next.
There was probably an hesitation due to CI complains, but from what
I could check there's nothing to worry.

Thanks,
Rodrigo.

> 
> Regards
> Andrzej
> 
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 4299cc452e0504..6610d73f55e6c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -36,7 +36,7 @@ struct drm_printer;
> >   #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
> >   #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
> >   #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
> > -#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
> > +#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
> >   #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
> >   #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
> >   #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
> > 
> > ---
> > base-commit: 94f973d8238e0d8fd1b0234f220783a1e346f60b
> > change-id: 20231124-cur_size_reduction-813979149f83
> > 
> > Best regards,
> 
