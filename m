Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8366824BF2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 00:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F5CB10E563;
	Thu,  4 Jan 2024 23:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC35510E563
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 23:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704412357; x=1735948357;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6Z3T6uBN3jrbPtKzK1fac8PxlhSnLD904+2mcKXokMM=;
 b=VX2wYJxftXFOMv+HLtuWp2Y3x7HnLeYG5t0Gvosd9pal/2rMnHev8YCH
 hZx12oZkVnWSaytRqCPlu/KOBRoYBucgSE4eP8RoBBmvdEAPJO8zZCJlU
 fWslgbYweuq67OUk2n8Xc6UWkgaNGntXz92l/PqGcLy6S+rGWmt+ZpH2t
 C7NnUh7BiUt0OHMIz7KjR5CMhISDheoHPMOEuYDYYa85oWNxT08fv7it4
 ERcCra7lxEQ3XkJVuLMI8TrzRCX21iAiuHKAFXeJ3mkrL33dkeLarOO5d
 S6ftLTeOs/U5eYF4kBs6F1uVPcbuZVTScEyY3CSikB20uERkPghmQKDhP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="400151123"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="400151123"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 15:52:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="730313387"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="730313387"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 15:52:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:52:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:52:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 15:52:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 15:52:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VJhbeuz609sWFOFgJE4NFHk0EKx5OUc9ZQ/4p4TJFXezaJy7xZ1XHeybbcRVrf1Tkp/O/B0KUjXyvuW+VG5fP7bARzjg6OLuiSLHz6kLZqzsbC6LeoiycBo7kRU16gVV7B9nytVM2ezlM65x3vHbfMhXpgccFM4MMtIfZwmlKO2FSdc44BW5MfSB+aMLZtqF2eKXBja95Rx/Jpto/eqKJTlm1NCJxVYIMPhsgTe50MxC/tDQ8mZbuOr92SSci2iDFdIXdNWqR6Xpc2oqg+hzjnAgmvwforRMyKYwyyU/UBLgQIkqJdwjRjf4Ct51eG2TnSp3hnHxysgCeq4+mWzZ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xIVfP68fga+EtFvHK5NohF3R/U3AU3/Qm5shJobNCOc=;
 b=P8ck2Q7ieyCWTwMRj0terUqfuIZMul0N/+6XC8v7cCk2GcULZCHRgmpgygZJTcJvdKEWVT3vf7nltldTEXVWf1guawv263vv+YXBxPHWALyq9N/rzrtHiMw6D3JL4MKJxw6Flt1t66nn5Pa0cRdjGZiyKlzvZTWkled7UFtMO4N/DnfVoS/hOUPqImFxNbdRIZWR/44HeW15bPwCJm6AcJ52/YIXvWL/7DuE9F/zO7X+Si1MA1oXdFCbvYCGHU9pYG1GvoNiYXJ1FkNAphxgZ3TaKRiBFk/FvhkxUMl7wvspfRakFHQZdotXBbTOKfERwwDFCpFr3DfAQESNMclQcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB8325.namprd11.prod.outlook.com (2603:10b6:806:38c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.15; Thu, 4 Jan
 2024 23:52:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 23:52:34 +0000
Date: Thu, 4 Jan 2024 15:52:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
Message-ID: <20240104235232.GA1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-5-gustavo.sousa@intel.com>
 <20240104234831.GZ1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240104234831.GZ1327160@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR05CA0113.namprd05.prod.outlook.com
 (2603:10b6:a03:334::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB8325:EE_
X-MS-Office365-Filtering-Correlation-Id: c16fd62b-58ba-4db9-388d-08dc0d803949
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NvEryBEWcp2WurHw3dyGhUeB910bgh0CB7MwRoDeAOrqieTKnf8VZOtPt7U1f1YEp1ew7zcST4W1n4q2Fd/jiTB0JbudaUdDCOIhwKALb7HDDUqEUF2El5pIOcWTmvbU4aJ/vq3PL46MeP59HgEUL27A8G3JdwQtOBVm8btqt+5sgkADneYxLSTLs8L481hdQsqfDT9SLPVvb8dc1I7dKKvcv9S1Iz+Noyrgekk6FPr3MWkJNAyxfjA0M5x7AVFfh4lBVokap+3hKl+tXuNyg5y2Jut2AREt2xzGlThrrBNY3phWVK5yJ55SX24EDkFTtj2q8Ox+bP723F7qsjN4DxgNM76OfQ+tC2MaciBX79RsnTwc41UKAcuy7LfAqQQz1KHywD2otBaXYSx49LCtn5lUjG7xoTbgo5JwOp2Xx1keY6rSkwzhADmcysevPMt9LhRGOGBiyOar5rvMR77YYUXYtvDN/phQL10DjqmnFC2tX2Yx0pw4/KA1Zev56A6RReOhoNqp8HqH+sCQy9+GHH1TGxP96i0WpTbMY4CvtHRWO7GAWlmpOprCkRywpXM8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(366004)(346002)(39860400002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(26005)(478600001)(6486002)(6506007)(6512007)(1076003)(66476007)(83380400001)(2906002)(41300700001)(66946007)(316002)(6636002)(66556008)(4326008)(8936002)(8676002)(5660300002)(6862004)(33656002)(38100700002)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wplUVDINWLc31OWcdp9Grf7ybbQRiXcO/Qcbc8hGeIEzcRzV3guQE41wZYEO?=
 =?us-ascii?Q?UXDv5B/OyMP8LgVRkSH+0/G4751jIA93PDrgRDHcBMBzuxbtDXzTR9FPQ9hF?=
 =?us-ascii?Q?gmcm4tQxmXfjdTme2JpzO155qPfe9XWs2et5j8ZwN1kCazOxqolkz8Sgl8nk?=
 =?us-ascii?Q?SwuzrACqEi5O7/rLW9tK+QTjXdOinSIh49y6/hBeSp57U156aODzyH80XMhX?=
 =?us-ascii?Q?zhuGOh/aJIdh33PQ1Vj+74L2oMan+oRN7AV1MXu54lgIxiBM9xJpg0P/6w2p?=
 =?us-ascii?Q?aKu2kigHf9d8SKVHHXE6rtYJ7Kbtz16s60iayMFMlMiyd1Xb1rftOIN2+l68?=
 =?us-ascii?Q?SzLgURX53jaDSw7vEoh6n1gao63S5jzHmwR60lQpARTT3j3/amxDpThn6d6Q?=
 =?us-ascii?Q?u92417o/+zxU62RQagfYJ2m5s6JAMd+sPVDw14m+3fr6ucJTecpIrstLSECx?=
 =?us-ascii?Q?Qw08dcfXuJYzuF0LEy+Eh1A04cLdU7SP7qIvT/LW2BCVUJvux6LwmMVgwm5C?=
 =?us-ascii?Q?R9stfGHpUXPebK5YMM2n7Q0VSFwxbZotpJJnWEyoC5z7bM/jd12DVIoNyR3y?=
 =?us-ascii?Q?W2HXXN9iM6lMVPVXMh8FTWFNOQsAzn1mS4U3ebslih7XT75pZF5x0I1A3W5Y?=
 =?us-ascii?Q?wL1yinxyuij9meGpRnSBwyZYgrZ3YrP7BBZZZPMbDMWBAaZb4zY1JRQfoTWe?=
 =?us-ascii?Q?BLxlwn7s/r7OpZI2Vq+PJWBWHz55ymKLySiVUJ0rptBaFMumpw5bchEL/VCd?=
 =?us-ascii?Q?ycUFzhLgcs8PbEaW4Q7U/Qk0lJyMweBxQmUw3WNumrPfroFV/2/L1fnDh5Km?=
 =?us-ascii?Q?RC5seEVRfF4ZM/3qpENwoquVsoQvXdlRTfSxZoJpyFJyaoyhtX2rdf77APx+?=
 =?us-ascii?Q?+BizayHt2ZUwWjIVj92X98y+1qOQundgXGyxGeDARFyFv4Vl7ccqrcBqUotl?=
 =?us-ascii?Q?f9yOFEENFwzAgT7Ivnnd5Qg/HxXUlkRgkfSXSjQhggpwwh2g3aph4boAKjfd?=
 =?us-ascii?Q?e9OKXXyJ7NiMfJng8/G3mCvUlw04+fWmfISMkoJ+9NWL5hvr6eq+kMB+rvoE?=
 =?us-ascii?Q?mlpwu3BxvahPi4Lx2eezjcCNg0bByRMtxuarlkPishEOtjxHccegtVU9lngP?=
 =?us-ascii?Q?QZSL3EXo+1rcWBdXk8D3gVmF4z1RDDNvPMG78LgyogTf6URKhyhcCEnnrrj4?=
 =?us-ascii?Q?tzg0/sSd1266XIYwk3WsvjVsmgQ70znk/NuORXO75v8+GZ0ct8t8BZNinPhd?=
 =?us-ascii?Q?+Csq+3g7ekG6mIX+F3v1sAt5kmrmom0OeAjHcwyFXEM1cCjFlSA8x0He4JB6?=
 =?us-ascii?Q?3Kpyt0iB9sUXz//AXpPTIETeWcfmN63MPLhgj4a87MM5ES0r6ldSFloIj/EH?=
 =?us-ascii?Q?ykcs0mngB8A1fZSXgCuGW75iLeztoKuJkeRBj/ZVWVZlHN3XRgb6D3nKEKdA?=
 =?us-ascii?Q?5VmiFjUEbOjFacoz53PwA5e/IgNYDHvZNcwh2uED7IyQ/+9U/GWC2zamcSau?=
 =?us-ascii?Q?3/dKoZ050eXnK3HeHXGsfHpW0wJXNz4SzLfq3eBur3+8YGgZQiEW2ahzK02g?=
 =?us-ascii?Q?7gBIqP6ov8reghsyj6FPQGELI6cQUZvF4MVCWkxYc73p8Ko7Yd+hz3jcFb4K?=
 =?us-ascii?Q?sA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c16fd62b-58ba-4db9-388d-08dc0d803949
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 23:52:34.8920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ikTJiCbecNwMA6PfXQYNzzEdLlC+bCW8KrJhO1WOAnZMmmD0tVLtp3uv3uODq8FkWxLRzP9pyZGcW6q+eb86L5MroMIcCOkcoBoWhOoNeRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8325
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

On Thu, Jan 04, 2024 at 03:48:34PM -0800, Matt Roper wrote:
> On Thu, Jan 04, 2024 at 12:21:50AM -0300, Gustavo Sousa wrote:
> > That's the function responsible for deriving that register's value; use
> > it.
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Forgot to mention...I think it's a bit jarring when the commit message
starts out referring to something in the headline ("That's the
function...").  It's probably a bit better to just re-state the function
name in the commit message again rather than assuming both get read
together.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 +++-------------------
> >  1 file changed, 3 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index fbe9aba41c35..26200ee3e23f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2051,7 +2051,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
> >  {
> >  	u32 cdctl, expected;
> > -	int cdclk, clock, vco;
> > +	int cdclk, vco;
> >  
> >  	intel_update_cdclk(dev_priv);
> >  	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
> > @@ -2076,6 +2076,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
> >  	 * so sanitize this register.
> >  	 */
> >  	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
> > +	expected = bxt_cdclk_ctl(dev_priv, &dev_priv->display.cdclk.hw, INVALID_PIPE);
> >  
> >  	/*
> >  	 * Let's ignore the pipe field, since BIOS could have configured the
> > @@ -2083,28 +2084,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
> >  	 * (PIPE_NONE).
> >  	 */
> >  	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
> > -
> > -	if (DISPLAY_VER(dev_priv) >= 20)
> > -		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
> > -	else
> > -		expected = skl_cdclk_decimal(cdclk);
> > -
> > -	/* Figure out what CD2X divider we should be using for this cdclk */
> > -	if (HAS_CDCLK_SQUASH(dev_priv))
> > -		clock = dev_priv->display.cdclk.hw.vco / 2;
> > -	else
> > -		clock = dev_priv->display.cdclk.hw.cdclk;
> > -
> > -	expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
> > -					   dev_priv->display.cdclk.hw.vco);
> > -
> > -	/*
> > -	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> > -	 * enable otherwise.
> > -	 */
> > -	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > -	    dev_priv->display.cdclk.hw.cdclk >= 500000)
> > -		expected |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> > +	expected &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
> >  
> >  	if (cdctl == expected)
> >  		/* All well; nothing to sanitize */
> > -- 
> > 2.43.0
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
