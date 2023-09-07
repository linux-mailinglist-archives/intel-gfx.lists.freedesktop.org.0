Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F627797ECB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 00:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D6910E824;
	Thu,  7 Sep 2023 22:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104BD10E824;
 Thu,  7 Sep 2023 22:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694126965; x=1725662965;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rgwSzWuQGMZw2B4UBT1fOR6RcPDvVwdH1d9PRSFYMe8=;
 b=Zsv4TL5LiXdlkJPjWNQizP8AyFRqsVHDhPcjPDto1wYqRXhOVhM9QU9c
 wGUZPOdS4prbxQyjQfDdREJsgmCagngWYJnv9faBMrsI1zAyZEISXWaCE
 pywj9A33k9zhqprbWxerPnZ3xdU4O/Ji1WCfb98f1vcCchYIFi56vw/AO
 kuT1J0+DwtctHOJp0z2ceY8NoHjTmbpw6THLMp2A5GQTQg5D8wqdib60M
 LPcrcAs+Ah/H0TgvNJSKulbTbYokTqzinsEO+vflf+maDiP1fDjNGqIHp
 IBePSCJwQJaaBeOSbRJYjawF6bVJ3oQW8qlfpFtaKDtyeZDnaohxfN1oI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362564500"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="362564500"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 15:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="857073526"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="857073526"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 15:49:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 15:49:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 15:49:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 15:49:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=miwSeBpuXQrvYSp0mk3rMfOih2N+6Rtebb88BGxv/cnUECdyEt0jSt9Bj3EV3BL9wNQbMb3XDm6d34I5LOJuYPjlV4VMwgBuzG1HO5crR1gMHkkPKoc4zatklK1BpHfR19Wjq3rXd/K74J4YZZQpoZlhkrx8UQds9GETiN4QcmTldaZcOvm2tL2haMp75MiWeQYT8noddZvpRb3TuHWkJYd+pPGo5M3SjSLEJ1UgoOjttCRmX2Dia63lO7HwFv22zBqK9lTHznVasWWbyfy/913NJl4gw70WMmNZehnTdTgqO5FG/bmh4PLdt/qHQhMEzau445NQnnVYd3D6miM40A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nu6YH4Uou9oid6PW31uOogx0PApTu90HLrHbqkVSv/4=;
 b=liQbwcUDn5NTS/ZLxanS3W/RgDdxyuCUeiy2ALXMD+tbocrk69kmX3MnyLq8/ZY5bxqE63Nj4Ckvl4k+FdTRF+cgqk1ody5tyFBlcNxM8Xd0nRkgNOiqao2N571dRK85NSdao+T0gfoUyakAnu97M98mVsWVcaeTjT6aNoNJf/T75yObA8GrTkd2oYAqnR1G3tVYq7xRMyq94/8x0WxN1zpSiYrXK/11SpML/V9RraTTG/Hy9DC/QsZlbuc5pSGTw1myVolNztdWrxC4rGHA87wkMBqVgRig6NkatffcChBGGpEnVe8nnMWSdiQHD9wj8WuAkVi9Bw5luZXO3bYw7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO1PR11MB5170.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Thu, 7 Sep 2023 22:49:02 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 22:49:02 +0000
Date: Thu, 7 Sep 2023 15:48:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907224859.GR2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-23-lucas.demarchi@intel.com>
 <20230907215204.GP2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907215204.GP2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR07CA0052.namprd07.prod.outlook.com
 (2603:10b6:a03:60::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO1PR11MB5170:EE_
X-MS-Office365-Filtering-Correlation-Id: aa920860-35f7-448f-6b3e-08dbaff4a1a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jEYcIycHpVvzQyiYXFU0z3R/0CrV667B4HOwe49rf135fxoMJmii0biIFqwER8xfjU/fsZ1yMOfV2fRTN/wAvmrnxcm61yunwB/uU2JAbapZSWoaclz9xGS2Ic+TrUkyJ8swW/jyT+CvuQ2Ghg+vTQkJ6c83s20mhjk8hoEmbriefWg3ji/XXYA3UHFFFPAe71u1Dv8gLCTTuKnFXjd09GgVtPVzj7vHUSx5EGj93iC/UT1qBzXEvVjsM0TbeD1/ecg2g7IpVi0h1kH61PxOY1wNSMJLxM+x9BjDozRbwF1WziRta0jDVf16GZSTBJVDpcL4HcUA7AoS6NQkVru6W/OznTn5KVsP3qwyeDoJ6fF3gJihEnyNMJIxO5PlG9P4IeHfV1McLTZKlA5WiN3NBKk2JXDrRdFYe2sWfAl6WzvgjWPytuIA/wn1lJ5Eof6wlvBzfVqmFkoD4WgXcfD7QI7kj3jBuVlalN0cF/rgrFtjTXL1daZvKZg5myVIsG4rypkySOj7QgGwG/SCmnz9IShBZHtgfBYCGY3Uo80gnR4kJBEc3FjKfrVDDQggsXNc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(39860400002)(396003)(346002)(186009)(1800799009)(451199024)(82960400001)(6666004)(6512007)(6486002)(6506007)(8936002)(41300700001)(86362001)(33656002)(38100700002)(107886003)(26005)(478600001)(8676002)(2906002)(1076003)(83380400001)(450100002)(6862004)(316002)(4326008)(66946007)(5660300002)(66476007)(6636002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4ds08wfq0GEpQyvs83w9wLv2JFSmQjcDOql1iOyFYnx+b3yohHgOA9GUvlYo?=
 =?us-ascii?Q?hj/LIMOyNHn6TEvz0Kc6h7AZPoVgqqE/b1qGd3aAfnidt3GowPXaqF18LkgY?=
 =?us-ascii?Q?5HkoWtqge7vLVF5SCrk4tfZeuJ6U6B/me3vsijIAbat9yi+4lLoyC1xiRYyC?=
 =?us-ascii?Q?PzDW7Ji5E+9ijAK8t8Ie/sH6XcsBF6Zywky45JWWGqMl5yzigz+7tZ+OnGte?=
 =?us-ascii?Q?pwzbTZC+NHN1REb3X9U8596M/B9QPNU2B5Vnfbb+0Pc0/sVlYN99QCu4VpQv?=
 =?us-ascii?Q?ZixB2OhjVSf2gW1H44SESUBXdi7QJEih0PzO4FXT3VNZyFDhgJqSvkpMa2f9?=
 =?us-ascii?Q?+Lx7Thdfe0JdA+PMG3ym5XzoAvGfP3ZtT+tHrhJamonqAj0YBarSzl4e2X2a?=
 =?us-ascii?Q?kQIQOYnv/LgN0APD204cnx0uprbssOMnKMzIpdfU1j8vtIVENsiLANoAfQj+?=
 =?us-ascii?Q?66W/rpwBWiCBfe3LxQ8xo+G4t+p5paZRjseWf9oDdeodig69F49WL8yP/u72?=
 =?us-ascii?Q?NF7SRHli/3YjtM0/DWUGhvJ3xsA6gvcbAheBBDdcT91OTL1FiffN+9bLh+ZN?=
 =?us-ascii?Q?8mIYE+yLD5qCwxp2fAAKOwNqHIe2McAoC0XAk/7H/lEGdjn88JeAvqczdpUq?=
 =?us-ascii?Q?uPQlwKO0YIUNMRxFjoQgMdspdHw17YFGveP+mGgf8tL5fKLLKadUZCIfNHv/?=
 =?us-ascii?Q?nj2+sh0/Nsx6B8F7ON13PhZr3OWKdSk/kIYzXh3Ff+at1GOcMcSJ4k0rCxsA?=
 =?us-ascii?Q?aRTzP0yp+MvzIewiPni0oSu+Tozmm9s4IIw4e/SkZIpwz2pdMI98gB6ofvn8?=
 =?us-ascii?Q?Iv8jcXqFe0dlBpLGWVIxSym2REkGMhdIZuKzzLihMKfxLKev8UL2eLdNtihr?=
 =?us-ascii?Q?mhSy6fVUgHIKvhfQWUpxZG3tm3JdlPJ/bQHxzQW8cwOybHaG5EmLT2ONofoM?=
 =?us-ascii?Q?YPEfAd2f3DM82esbNEcnI2uHrafauXS0YoiF7Im99nnZwtdlllRVgZI4IJmL?=
 =?us-ascii?Q?HQ6wO4TE2U2p8KSbN375s4I6rcuObNGhwIiepsEjVi3KXCW86Xc+T8Fjf37R?=
 =?us-ascii?Q?3cFmp84xbsnnkw3KCRGlyyMfnsRZOXf3jrtToAFIgXbckDOMtdnYkpFihg91?=
 =?us-ascii?Q?n6Mgj2nQvge4zY5jjS7IZnzWSb9/oOXr7e4nobIyZH/ndn9sQidLmX7zFXnp?=
 =?us-ascii?Q?keAOtLlgvM/ku6S5MrFnguAtrCpC0TF1aLIcMQRRrgi1kiP3OXp8SPLpJRbs?=
 =?us-ascii?Q?HJi36cBtAZ6S0DdLqvI6Mld+BWmINQlvuBSd5gG2FoOcsJpMnoJ46FAXGPOr?=
 =?us-ascii?Q?P+/imR++DR6mNStt3u2KQSRXuANKCIxq10+w6uQ7cwk2KbzJ9j3Z8XyBN/cX?=
 =?us-ascii?Q?KjWF2+H2O7XJZSsX1vPi53OnvBhJx8NP1dUv4U6/wIjVVlUi9Dwy+HOk4YPX?=
 =?us-ascii?Q?tgHmKdve1stDbb6QRChsJrincTjPgJjXKO94CRJ15CkF7bUtMf84iAr+r5/M?=
 =?us-ascii?Q?LEMIn521ZE0pdtcuNgf1owSy6EhAs1lZ5aDFCe+cmkrObH4xYKDBkg+Hd31q?=
 =?us-ascii?Q?c9r9dXdD2/Xi2ZDG9fL9n1bgrPQoJNErXs0wh5rgV+Bs16CpAO5M3EorYYX/?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa920860-35f7-448f-6b3e-08dbaff4a1a4
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 22:49:02.3511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KVg9/95cgByXno44KBT3uNiWSJOXE8hqX97hehbyLtXVagRBc5tsBwGtusEFRLgPAqmO72QB27FVZfiZIfn2RwjVnhBzmE5doy/f7ceI9kQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5170
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 22/27] drm/i915/lnl: Add CDCLK table
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 02:52:06PM -0700, Matt Roper wrote:
> On Thu, Sep 07, 2023 at 08:37:52AM -0700, Lucas De Marchi wrote:
> > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > 
> > Add a new Lunar Lake CDCLK table from BSpec and also a helper function
> > in order to be able to find lowest possible CDCLK.
> > 
> > v2:
> >   - Remove mdclk from the table as it's not needed (Matt Roper)
> >   - Update waveform values to the latest from spec (Matt Roper)
> >   - Rename functions and calculation to match by pixel rate (Lucas)
> > 
> > Bspec: 68861
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 55 +++++++++++++++++++++-
> >  1 file changed, 53 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index cfd01050f7f1..7307af2a4af5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1382,6 +1382,31 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> >  	{}
> >  };
> >  
> > +static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> > +	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> > +	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > +	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> > +	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> > +	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> > +	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> > +	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> > +	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> > +	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> > +	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> > +	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> > +	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> > +	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> > +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> > +	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> > +	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> > +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> > +	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > +	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > +	{}
> > +};
> > +
> >  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
> >  {
> >  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> > @@ -2504,12 +2529,35 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
> >  	}
> >  }
> >  
> > +static int
> > +xe2lpd_cdclk_match_by_pixel_rate(struct drm_i915_private *i915, int pixel_rate)
> > +{
> > +	const struct intel_cdclk_vals *table = i915->display.cdclk.table;
> > +	int i;
> > +
> > +	for (i = 0; table[i].refclk; i++) {
> > +		if (table[i].refclk != i915->display.cdclk.hw.ref)
> > +			continue;
> > +
> > +		if (table[i].refclk * table[i].ratio >= pixel_rate)
> > +			return table[i].cdclk;
> > +	}
> > +
> > +	drm_WARN(&i915->drm, 1,
> > +		 "Cannot satisfy pixel rate %d with refclk %u\n",
> > +		 pixel_rate, i915->display.cdclk.hw.ref);
> > +
> > +	return 0;
> > +}
> > +
> >  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> >  	int pixel_rate = crtc_state->pixel_rate;
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 10)
> > +	if (DISPLAY_VER(dev_priv) >= 20)
> > +		return xe2lpd_cdclk_match_by_pixel_rate(dev_priv, pixel_rate);
> 
> Is this actually what we want to be doing?  Generally this function
> returns a minimum possible value cdclk value that could support the
> pixel rate (e.g., pixel_rate / 2 on modern platforms), without caring
> (yet) about the set of cdclk values that the platform is capable of
> generating.  We then do some additional CRTC-level or device-level
> adjustments to that minimum in intel_crtc_compute_min_cdclk and
> intel_compute_min_cdclk, and only at the very end of the process (in
> bxt_calc_cdclk) do we go into the table to find the lowest possible
> clock greater than or equal to the adjusted minimum we had calculated.
> 
> From what I can see, the minimum cdclk (as far as this specific function
> is concerned) should still be half the pixel rate on Xe2 (bspec 68858:
> "Pipe maximum pixel rate = 2 * CDCLK frequency * Pipe Ratio").  The only
> thing that really changes with all the mdclk stuff is that cdclk and
> mdclk are no longer fundamentally locked together in hardware; that's
> why the table of possible cdclk settings in the bspec now has additional
> rows where the cdclk value ranges anywhere from mdclk/4 to mdclk/2
> (whereas on previous platforms every single row corresponded to an
> mdclk/2 value).
> 
> tl;dr:  I don't think we want/need this hunk of the patch.
> 

BTW, completely unrelated to this LNL-specific patch, but since I'm
looking at this area of the code again, I'm questioning whether the
general logic in bxt_cdclk_cd2x_div_sel is correct for platforms that
have squashing (DG2, MTL, LNL, etc.).  Now that we can reach multiple
effective cdclk values with a single PLL ratio / VCO setting, it seems
like this logic can no longer going to properly derive the CD2X divider
from VCO.  And we seem to be relying on that function to program
the divider in CDCLK_CTL rather than using the value that was provided
in the table.

If I remember correctly there were some unexplained underruns seen on
DG2 before we hacked the cdclk to a higher value than expected; maybe
this is the explanation for that?  Sometimes you'd get lucky and wind up
with the right divider in the end, other times you'd select it
incorrectly and wind up with something that didn't match the value
specified in the table.


Matt

> 
> Matt
> 
> > +	else if (DISPLAY_VER(dev_priv) >= 10)
> >  		return DIV_ROUND_UP(pixel_rate, 2);
> >  	else if (DISPLAY_VER(dev_priv) == 9 ||
> >  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> > @@ -3591,7 +3639,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
> >   */
> >  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
> >  {
> > -	if (DISPLAY_VER(dev_priv) >= 14) {
> > +	if (DISPLAY_VER(dev_priv) >= 20) {
> > +		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> > +		dev_priv->display.cdclk.table = lnl_cdclk_table;
> > +	} else if (DISPLAY_VER(dev_priv) >= 14) {
> >  		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> >  		dev_priv->display.cdclk.table = mtl_cdclk_table;
> >  	} else if (IS_DG2(dev_priv)) {
> > -- 
> > 2.40.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
