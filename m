Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9F16AF6D9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530F810E551;
	Tue,  7 Mar 2023 20:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5703710E551
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678221626; x=1709757626;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PWpgSIa/cyeVpzJWLWQG3Sg3toZvMrtJqM9ddXoJW2k=;
 b=ZZAA+VZWpJeIHjZIGzlx5nAayh99HQfUGDzg3mlbKtRkFuD9OrkYxM70
 Ii+DaUu5a2h5IBIGCUr8cW2MiG1g4L4sigFulcmqqkjwtSA5iW7utFo82
 X+adctfAPQO+pzrnMO/GzrmF51U0hCQCCoRluAstNxbG9Xfq9+7ZGvLfg
 B0qawOHKQ+R1M+wWW2bnS72JWL/XodA1kYU/90fzaTJg6OTjgibZJOyfS
 pXT8ipp2ZS1SWEnDvHMik6aau06bsp1Mtz3LIkr6IoiqHCOj5kV6TZTqL
 pntUumjLfXHniLSJVhGqN9flrVLFB1p0TUlB2rC1aqPQp/xEh6Cqx48ak Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="338290583"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="338290583"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:40:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679090443"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="679090443"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 07 Mar 2023 12:40:24 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 12:40:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 12:40:23 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 12:40:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 12:40:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FCFf3aBkxha4wPcM1yf5q0VT+0MhkErNvCuONPHeBonhG03Aqsw8LslHVowHpcaTi8Ba5VzrkgIS9YkWx+lyNmxbrGFOD66JFSI8NSlyF/ZaD+k3ehrfGooQ05fCIaHhtmviyKiozcyXjBr/gz6x4FW+s7h+bfXqqMysuK952L3A0p5RK0h6pr3Vv9NaLFMnAjsBCR6LYtwquzB+L3JM2s1atiMtTrGfgpmfj7HEL+BuasX8edEsATfVdzqaaOKfDXOOkQWKvBRaGyCyp03/mn45WxBltZWkowU4RwtF6aJi1R8uHVnyxmlf54Lch4kij1zo2AUjZipZ/4UAvhhbZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SXOEoY/aRAPFqV0UI8vVgY80gVemYDoSTmfLN/7bzTo=;
 b=FoqYUDFVe5H7n+JZyL59OU2OOpBa9ZGWunwIwp5pi+QtCz1UiMa9rvMOtk8g7uAqlJy8L0P1rMvDuw1zTGMn0U1uPEPNhRzwuRHhUlLzV6sPeFRn0LN+2/Vub1RdP7nmuqhUaKwOKpAHQnejizg64EbBu5z3VMlSA4IgWTxCGeN2n7PAXO7lqKqNnlAQ2hrGKjiAoZDzsmv3G3w1CkXYQcbsGXw6sSUoRIL/w/9TnBIr8UPx8Nca9YlS33QGLJKPtQY1bq8LepS+n+gjLP82WSC6lr7vd6sxJDt0HovyQmE1GMaV4RdcpzJC8Rm6G6zVaarQQBF8jcQD5oW5s3OI6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB5628.namprd11.prod.outlook.com (2603:10b6:510:d4::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.16; Tue, 7 Mar 2023 20:40:21 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 20:40:21 +0000
Date: Tue, 7 Mar 2023 12:40:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230307204017.GP1543793@mdroper-desk1.amr.corp.intel.com>
References: <20230307032238.300674-1-gustavo.sousa@intel.com>
 <20230307201246.GO1543793@mdroper-desk1.amr.corp.intel.com>
 <20230307202337.qydw5h4daegej4lj@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230307202337.qydw5h4daegej4lj@gjsousa-mobl2>
X-ClientProxiedBy: SJ0P220CA0005.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::12) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB5628:EE_
X-MS-Office365-Filtering-Correlation-Id: d5efc8ae-68ba-4da3-afba-08db1f4c2b30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A8wX9VXF63EDp8tgy85x/IJ8i7Ms9pNdvVLQJSCbyfinNESxdh9gLUldF6Ow8T6gxGxjs4mNE2FD0ErxOmucGPMwcitFRYkTmLGgsM0+SbrzLhsyzOT2sPO9Jsj20eu4welL+51E2bTD8P6GClMbSIbSHWwrcBPInCJAl7gUBOwxkbs8fUPNVFXaI2VSZ4FxQ3CHOzgxZsPAv9zsKTfCU8G8Y5nC8qJCBXZytWdwUvnOit0zT0plQjfKJKuOap9TksZ1eM78f9Kuv+4/MwnQ2rj9R5+AlS+ZqvFAdgWCFbqMpRBeFcqupBR0RBUXURnxWmBQZFJ6LbUaBWMH500NO3S0TYS3CZnr9phzrOKXD+QUAT/AJUI3ftPIP8iir9pImKEnGgTmXMs4nsrRkKamUp6IeSGaKPiA/PTlvu1LmkYd4B2rSs547olCQzF5G8BtpMSZaSwJJb9TN4XcD0Ys8h0JAIKH77+3phvzl+2+xKXHV2p16dh2FevHIcAGnd3A8b+ueuXtt++6/3RJmknPAa0DpAeweoqev3U/dYa6OHo6hU0W0RpViz/hU50eP6aOBYNGwtjeq4HxILOA8HhHixe3hnegtNyTk7HUwkBVtH4fo120CZEYoEF/z/SoJVC/PGFrtXCuG1F0Qzh6vyNg8A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(376002)(39860400002)(396003)(346002)(451199018)(6636002)(316002)(33656002)(1076003)(6666004)(26005)(478600001)(6506007)(82960400001)(6512007)(66946007)(4326008)(8676002)(2906002)(38100700002)(66476007)(66556008)(86362001)(66899018)(41300700001)(6862004)(8936002)(186003)(83380400001)(5660300002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X9NDVAwvcLri4EagcqJl6PtFkuIGA4Ibvt3Z4C8QdwDyceFluIxf8PETa56/?=
 =?us-ascii?Q?ixw3hGUlGxu9RakATLJFrpr5n7di3uAE3eBk1mml18ptTufgXc2Khs8qfV4I?=
 =?us-ascii?Q?t8P7IS1Lt+aPVoGg0x2Du0SMoPQ2Wa9vZiwSPQcQ3XS6ZasrZdUSxSMg772R?=
 =?us-ascii?Q?Ueph7kgAhodd/s39MOZHxsgL9/C/wKhEX6YVl2cPfpyNV9CjgZ5JRYVZwDer?=
 =?us-ascii?Q?J4OKTOaAxEKhFY2Of3YWFa0+rFv1kLELJ2LRSzAl/9eH9w6hUZ4iJTMqunhB?=
 =?us-ascii?Q?Gj6CQvk8ICoNwRsHmHER099XSzSxDfQyAma+QFFN4eTUNMcYIWEKy/XgdavB?=
 =?us-ascii?Q?KLIp1IVdM5z30Ec6g8DNBAM1qT0pHpVvzAeKGZIsLu9JdA3lYznRRVB1D/vm?=
 =?us-ascii?Q?GDuvvWQtdEq+hMO/V3fOsh6Sg1TklR5lukwlmCqjrLvAllDQ+o7Ba7PX2y1q?=
 =?us-ascii?Q?DwaxNmfj1bbRdLugMJ7Dq2sp5WR1Ah8lkiXhG1nl8bXrTJ3UWsGCPNy9ITbB?=
 =?us-ascii?Q?s9zjPmcxJi3L1kVWrMhs39Il2FWaBw9S2Sp0kxHmSeVhTqQZiY00+II+YVFy?=
 =?us-ascii?Q?yuOw2Z0Ieep0CuJOwZOGtYq+cVidqX3pkqbolHMp2bAViv56VdT5gksVMttT?=
 =?us-ascii?Q?5LdU0X44uyTSQn0H61GXX0htJJIdTckPGfwbxVCj8eteifsYFOymqmSfEhnN?=
 =?us-ascii?Q?fjhZxqv7K3dj1tZuJIwvG1sEjZ34h8lWvWd0p+VHF3C3rUOWlnQofLAIewg9?=
 =?us-ascii?Q?dGlKD/ZFRUuz7Elbz1S28ezPC71CQZNkr4VuhU5qrkfyNr93x6kjjqB/L7ot?=
 =?us-ascii?Q?2KJnJDoXEaxeHeaKT9f81oUzECeqTMZtYSknZO1AiQXHBOWt1ctJNfsfZvwm?=
 =?us-ascii?Q?SMzTABbsjFkJMgnGuMeCbz93jZ4rDSPIag+7HYVyBg179vEz9934NApMjEbx?=
 =?us-ascii?Q?Pu9Q9MZwpHy2zF/fDKqiHfgXBZzX99x82YdxcAmy79PZCuL1K2FSQhC0yhtq?=
 =?us-ascii?Q?5fTWDvkg6lfx4pxSfiyY3ZFD8R4dhH39Qqte6x9IEy5fEx4FV8DI2Z2jNctq?=
 =?us-ascii?Q?FcFipI4u7LNLmH08O3eicZwoajplEi0Jqu4kNGez4SGt0lWsylvtlTP/tsL2?=
 =?us-ascii?Q?2U8FnxVZnj4cQHNtnEiQwvylLBd/7gSYW7RP6rjYOQhPCYmj8YYcUZQ5yha8?=
 =?us-ascii?Q?Rd2LccXc7I2b+0mkBCPf39rJpTv0rU6mhh3LRfYEa5XvE60hHVDKbwriJW4l?=
 =?us-ascii?Q?rzNBhsjr4UkkS3ykzOUTsK5zZFCB9jyTcg2qbRdVWKW8JkuUZS6uehq9Rvhe?=
 =?us-ascii?Q?I8HEiFGt+LJRNhF0Fbk5LMeSxpCTfbWNx69I6WW36+/00R5iM7jektlU99+W?=
 =?us-ascii?Q?2CthxvC99OduHoaZZUcptL38Y/7jqYFY87CqpD10UkJwsKTbmrsn6I1+6NYj?=
 =?us-ascii?Q?pw9BvFDWdu3IFhWAabT7HNd4lnWNlnD/Fs0uJosYfFpWx2HXfD7sjDLD1SMo?=
 =?us-ascii?Q?SHB9s483vwsCXHDkhrstXRfZtT++CLxaxVlr5CZJjPdb/QaPvRW+g7k9Ksqn?=
 =?us-ascii?Q?XZs+oetgmRoly0aZ69HN8FPBRY0XIjj/Cn0dToy66buXPNs0w3OnvpykyApl?=
 =?us-ascii?Q?Kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5efc8ae-68ba-4da3-afba-08db1f4c2b30
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 20:40:20.7206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xumm2kSms6LBD9qXuP7tx94Cw8WTkfoDQP3uuXeUWh/beD+6m04rs70W7Rgadp4PQySx/bX1ns3af4R1/DhbeIwdw6XUG0ipq5BvuF2a7QE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5628
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelp: Implement Wa_1606376872
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

On Tue, Mar 07, 2023 at 05:23:37PM -0300, Gustavo Sousa wrote:
> On Tue, Mar 07, 2023 at 12:12:46PM -0800, Matt Roper wrote:
> > On Tue, Mar 07, 2023 at 12:22:38AM -0300, Gustavo Sousa wrote:
> > > Wa_1606376872 applies to all Xe_LP IPs.
> > 
> > "...except DG1"
> 
> Oh, okay. I thought there was distinction between Xe_LP and Xe_LP+.

I think technically DG1 is considered "Xe_LP+" in some marketing
material, but that's not a term we've ever used in our drivers so I
don't think most people will be aware of it.  Even "Xe_LP" has only been
used once or twice in i915; generally we've just continued to refer to
all of these older TGL/RKL/ADL/DG1 platforms as "gen12" since that name
was already grandfathered in before the Xe branding was announced.
Going back and trying to rename everything in i915 at this point would
cause too much thrash (although when working on the Xe KMD where we
don't have years of ancient history to deal with we should avoid the
"gen" terminology from the start).

> 
> > 
> > Aside from that,
> > 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Thanks for the review, Matt! Should I send a v2 or can the amend suggested above
> be done while applying?

It can be done while applying.  It looks like CI already came back
clean, so I'll take care of that in a little bit.


Matt

> 
> --
> Gustavo Sousa
> 
> > 
> > > 
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
> > >  2 files changed, 8 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > index 08d76aa06974..4aecb5a7b631 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > @@ -478,6 +478,9 @@
> > >  #define   HDC_FORCE_NON_COHERENT		(1 << 4)
> > >  #define   HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
> > >  
> > > +#define COMMON_SLICE_CHICKEN4			_MMIO(0x7300)
> > > +#define   DISABLE_TDC_LOAD_BALANCING_CALC	REG_BIT(6)
> > > +
> > >  #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
> > >  
> > >  #define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 32aa1647721a..8092f289c492 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -743,9 +743,13 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
> > >  	       FF_MODE2_GS_TIMER_224,
> > >  	       0, false);
> > >  
> > > -	if (!IS_DG1(i915))
> > > +	if (!IS_DG1(i915)) {
> > >  		/* Wa_1806527549 */
> > >  		wa_masked_en(wal, HIZ_CHICKEN, HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
> > > +
> > > +		/* Wa_1606376872 */
> > > +		wa_masked_en(wal, COMMON_SLICE_CHICKEN4, DISABLE_TDC_LOAD_BALANCING_CALC);
> > > +	}
> > >  }
> > >  
> > >  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > -- 
> > > 2.39.2
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
