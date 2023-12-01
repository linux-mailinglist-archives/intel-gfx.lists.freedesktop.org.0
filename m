Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4573B801748
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Dec 2023 00:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C726610E147;
	Fri,  1 Dec 2023 23:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8650710E976
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 23:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701472091; x=1733008091;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=oAVaO33bVFRVzHbbL6ybqYic4WUc0QaPKIfdeUR7AVk=;
 b=HkIYVaqIGARmBkKNwLDRy8rlVncgObX3H0K7b2XNt7qd0s0ewTrvJHEC
 gcVLnEwzqfrljGITiT1TZDBOD435NiNHUFQJu1bYk/+zxJK22Gai1Zs53
 h4s6iF4uHNHDtR7mseMxOckC1eUBT31H6BIVyU8Ctq7Q0VxB1xiNf25f1
 CtYAVLp86E7D01w6X8/EJUkUP+/1kJ074eVmCO8I70mRsr0lsJ95ds5Td
 k3wYHo3O6PpXY0drb5v5gYAmYgLrETwPrIU3W6ffgyef5fZZpG6XNhOG8
 RpKlv9Nfh6TmzQ3Lz9zYBis57pyHre62ON7qkoZvBfgvkMEqFIY2v7Dac w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="372952821"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="372952821"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 15:07:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="913727471"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="913727471"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 15:07:54 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 15:07:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 15:07:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 15:07:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3eCQSuXwcTW3wBApJ4VXsTawQsu+0k8WBtLHJQbz10OpHpaPDeBmByuN5HyA4/KWpHz8s375uutmGdQZefJ6mJSaJI3LjIfEEQf0oE6v2+9iD3ONUKnYZBiDKp8l6KGcw3Et0b5Y8tb4j4xe1TYeQzTsu5oEN3TYgPS21UCCVdFXnOjIZHw4UUDYu3yOJMk+AWZzYF7/Va8DYmUcSGvdACyZt50zxVvTunrMt1WHbL8UekjhqLrYBYMvgFk3nUVQUa0+UNLnTw/FqaEA4IeFlawB9Q/4lpcIA9HrnCg4sGZGnvTZC1FHHJ02OACKy56/fMYounHTR//4kZjxA61nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Akt4si1/8o2RXIuTiJLleWDCcKv8t/pjspDzPua6f3M=;
 b=Ko3pNcrCtHZOvGV7rT4zINs4HIjuYAZe3zBBxml6jTKsrl/ez1J2UL7bdv/TlLjC7+u4LKqQFQAn1NMwJ6wvPWhmi+wTbgMgjH6oXlbY/9tfTJVN9vH7qWEoA9b7f4gWtCkHqzP/Xu9nX3on/M0Yk8wysOc+I8BThTkVlqqb5PTiAydmK1BQvURWjbRbkS6PNleaBUVEmaio89Z1iOmaVHAjxWWM0ntSRSvid+qb6vRVKuszEbd7HZM1kbtdwMEoFjW8tJ55T8wHrR6yOQQ3eJvZ24G0kGCB221MnAdCKOBay6w9/MW0dmJvXyV8oqfsfgGZCw2/HXmUjHgaAiYdiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB7547.namprd11.prod.outlook.com (2603:10b6:a03:4cd::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 23:07:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 23:07:51 +0000
Date: Fri, 1 Dec 2023 15:07:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20231201230748.GU5757@mdroper-desk1.amr.corp.intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com> <ZWW4L7POCQLJi6aJ@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZWW4L7POCQLJi6aJ@intel.com>
X-ClientProxiedBy: SJ0PR13CA0198.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::23) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB7547:EE_
X-MS-Office365-Filtering-Correlation-Id: 12b1d34b-8cfe-4581-2fbc-08dbf2c25752
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bo5XlshjAwTgIcaU4VxUw3OszOr/4Gj+AKet6owqbjihH+lbd1BIIZ4mRp0/OFSFnWugDHrrIW0GlhWtsKaTl/O/tWGz65Ewev84tjyJ23zJo1UEYgw5IOvFheSC97B4/XL1SyrRvdC7QFThjhZ9Zo9BKBA6z2yj2oP/qlLS56xDEp50RnLngfYNB4GHwWV8iIHiHXaQO+7ths/UcVumOYUzTBukjhw7V7dZRcntNyimsLK2rMB8H15tUs/31o9FXwc05Nc3+nnVMx8auqr0WA2FSbeP52Xw3+4/DBNBzBvTsZEMlKYC2nGGXdqWPFCEDUdFBjzCAkF927i8L7NXTvYs32flQuVchd5dubwTWmI+Xytp3iFw98QNY8FIGfVqiywo6c1GXwkOPVDVzRoU0g/BGatsHqIeM1kxaaq4kF+yugfkE1WxKefgknbUC6WundU7e9KddNlHHGJsdh/YpdA+Y9IJZYr83Aa2iFzPe4yLu14dg04pFyGRX1Lv/chYP9ZGGbJETZTB+COi1bc4SseoRkBPZXlgccGjuwOwK58KLbhyHHKZFx1SxxQdthwQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(366004)(39860400002)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(6486002)(30864003)(4326008)(8676002)(8936002)(2906002)(41300700001)(26005)(316002)(6666004)(66556008)(66946007)(6916009)(66476007)(5660300002)(1076003)(6512007)(6506007)(83380400001)(66574015)(86362001)(82960400001)(38100700002)(33656002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ScWdUK/WHX530AHNwSAHIemESw+o1iWWsCr7J6J1AKDOU0hVLbaUy1VMJS?=
 =?iso-8859-1?Q?J2JcIUjzd0uTJmdYwWYiJSKdwykZt9lfb6GvhbdtTmcRqBAZsal12DFFSI?=
 =?iso-8859-1?Q?wTbo+8FRkNe/i2yCf5UFLdqm5eCIEXn8in59GR7OW0Oh0wfjls/vw7sNKV?=
 =?iso-8859-1?Q?9CvqBF02hMZ1fMrNgfkDfxaasPDJiWe5rKSmmQiZiWWIIWSR0w/L2chE3m?=
 =?iso-8859-1?Q?q4xkWcYnYW4+3oKSvTegBcpOv3lT4kjGFmVEHTP6zAjbZ2cHJvp3gTImVw?=
 =?iso-8859-1?Q?JgIternH5fYOy10XdF4EVW+atapgSnBBdJ7BVQcJ4hzO5qfQIHFIaDhu9A?=
 =?iso-8859-1?Q?hzfnh08PIr2mkcaZI+B1gid7lLPXSuyur55E5zEi+ilCt2YUFZsPUs11vQ?=
 =?iso-8859-1?Q?kUgJJZmmX8vW5qSQZxdS0ARt38n4E96fLzCYJ+3RidxQUqI+UeAbg5HBeF?=
 =?iso-8859-1?Q?KMbhKdvZ7mFLv0IFJnat0AGks7lFq0IxzYSiFgTEdTfLaAwYcWqUr549eW?=
 =?iso-8859-1?Q?wikyUPvHdPcIlohcQZxRXSbLX5lKTxiA/b/rXfP54FVZ2htzOULlOMKsh3?=
 =?iso-8859-1?Q?1BoO7aDsrN/PXL6gkrS0wcBB/WLkJM1ahdeqrsoGTxfpTadeVKONXVoHkr?=
 =?iso-8859-1?Q?k12YcVIJ7aPlQu2tHI2wz770vXsWFn6ipv/RKlKK7BSUVf2kUZqo2AT4rV?=
 =?iso-8859-1?Q?+mmvnn6A1MFbBhwGn4Ch5q8NeQnbA5I4YPaNPRPcFDE8st5V9lSPY8fWIq?=
 =?iso-8859-1?Q?Xi2eAue8cPOtUEIHAT1EeFmpnWi9Jpm/t4l+ed4E4T+qXcqrZMVoNQcPSW?=
 =?iso-8859-1?Q?rJTHFt4MbRGd8zDl7RmwrrS7e3WL2rMfWv3E5RABFInFW5P2sq6xuMsIyf?=
 =?iso-8859-1?Q?vhjHMSb6SCLhOOL+9TRkAIFKEK5RLZqYeJlAd5BCKl4QSYJblfl2W02NAG?=
 =?iso-8859-1?Q?IPCZ6DxCmTV4hLJaGFkHey785IsM3KkZ0s3uN34tQST4zVcOJ6txesMip9?=
 =?iso-8859-1?Q?35WAwJARtIMXz7uATnNtEAeQyF/iNmVWcQ0w6Jlc6MbH91CNqIjVTah2EU?=
 =?iso-8859-1?Q?hr5Q0E9420v0nEcGOjzhZJYu8wL4sMmtIm/yRbKHMpkflOOnW01/qQB1k+?=
 =?iso-8859-1?Q?TVuRB4pcM4dZ7xFX0/grDGxwB9z0NT7wGx6fCEPAvGljpPF44SDralpsUG?=
 =?iso-8859-1?Q?zEmzKQgfdnw+mNz1CpRKrtjAvk9D0x9rCqBQttXiudgjjbLiKovs76DgFP?=
 =?iso-8859-1?Q?79SDODehFfILrKTfAPZUc+JyOXAg4kYeAsDSMMg7M7N9VjHH8tUzessTOO?=
 =?iso-8859-1?Q?QGUNFdNkIySQ9do8O3Sz/q8UPPzRvtZmo/bdVysTVYhLP3DqecfFDNxA50?=
 =?iso-8859-1?Q?F1L7uwWqzaZpGi0KvkqNA0WYc1/QGMe01XMBBc4IiSXZbjc1a/9zEW76Qh?=
 =?iso-8859-1?Q?hthLsjhLnFrkAGZhOJshaPFr+mq/R9i7mHoznU5V3yGVXHfZFVLaQUJ6gz?=
 =?iso-8859-1?Q?Z19dJI2+MLCRZrF8qTYFUZBwU5b8rZxMfdJ3cIrn3NJ3B6hIYPqXfbcLU1?=
 =?iso-8859-1?Q?2gA/PU5N2UmXA+HsnPfqeLNaHq7wsWrfkLp5njeLIpTkFrh2YSMuBY9/Qz?=
 =?iso-8859-1?Q?CTVXMWW9twhnzPnM9VPy3KDvd/oZpI8Os764TiGdXC7TQkHZhAvEL70g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b1d34b-8cfe-4581-2fbc-08dbf2c25752
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 23:07:50.8130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P0eMcoKT1QNwNCtfLHPspFphk27o3ettvV1bSntq500JlEiR7pvCWib5RSAgpqb4o5GKTiZz/t10dnKwH8kfa2UrTDkS5ut6POinZSNzca0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7547
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
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

On Tue, Nov 28, 2023 at 11:51:43AM +0200, Ville Syrjälä wrote:
> On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrjälä wrote:
> > On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
> > > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
> > > > The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
> > > > Use literal representation of cdclk tables"). It has been almost 4 years
> > > > and the divider field was not really used yet. Let's remove it.
> > > 
> > > I think we need to go the other way and actually start using it instead
> > > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic the
> > > driver is using today doesn't account for the potential use of
> > > squashing, which means we program the wrong divider value into CDCLK_CTL
> > > in some cases.  I pointed that out during the LNL code reviews a couple
> > > months ago, and I believe Stan is working on fixing that.
> > 
> > The code should be correct as is, but it does assume that the cd2x
> > divider is 2 when squashing is used. If that no longer holds then we
> > have to change something.
> 
> Something like this should be sufficient to eliminate that
> assumption.
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 8bb6bab7c8cd..58567d42e725 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1897,10 +1897,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
>  
> -	if (waveform)
> -		clock = vco / 2;
> -	else
> -		clock = cdclk;
> +	clock = DIV_ROUND_CLOSEST(cdclk * 16, cdclk_squash_divider(waveform));
>  

I haven't had time to come back and revisit this (or check your new
series yet), but when I was reviewing the cdclk stuff a couple months
ago, my concern was around bxt_cdclk_cd2x_div_sel() which is deriving
the CD2X divider from the vco and cdclk value.  On a platform like DG2,
we use squashing instead of changes to PLL ratio to hit different cdclk
values, so the calculation there doesn't seem valid anymore.  Am I
overlooking something?


Matt

>  	if (HAS_CDCLK_SQUASH(dev_priv))
>  		dg2_cdclk_squash_program(dev_priv, waveform);
>  
> > 
> > > 
> > > I wonder if the misprogramming we're doing today is what requires the
> > > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
> > > 
> > > 
> > > Matt
> > > 
> > > > 
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
> > > >  1 file changed, 134 insertions(+), 135 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > index b93d1ad7936d..7f85a216ff5c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
> > > >  	u32 cdclk;
> > > >  	u16 refclk;
> > > >  	u16 waveform;
> > > > -	u8 divider;	/* CD2X divider * 2 */
> > > >  	u8 ratio;
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
> > > > -	{ .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
> > > > +	{ .refclk = 19200, .cdclk = 144000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 288000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 384000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 576000, .ratio = 60 },
> > > > +	{ .refclk = 19200, .cdclk = 624000, .ratio = 65 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals glk_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
> > > > -	{ .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
> > > > -	{ .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
> > > > +	{ .refclk = 19200, .cdclk =  79200, .ratio = 33 },
> > > > +	{ .refclk = 19200, .cdclk = 158400, .ratio = 33 },
> > > > +	{ .refclk = 19200, .cdclk = 316800, .ratio = 33 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals icl_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 18 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 326400, .ratio = 68 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 180000, .ratio = 15 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 324000, .ratio = 54 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio =  9 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> > > > -	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> > > > -	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> > > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio =  36 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio =  40 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio =  64 },
> > > > +	{ .refclk = 19200, .cdclk = 326400, .ratio = 136 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 116 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 136 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 180000, .ratio =  30 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio =  32 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio =  52 },
> > > > +	{ .refclk = 24000, .cdclk = 324000, .ratio = 108 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio =  92 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 108 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 18 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 68 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 68 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > >  
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24400, .cdclk = 648000, .ratio = 54 },
> > > >  
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> > > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > > -	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> > > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > > -
> > > > -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > > -	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> > > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > > -
> > > > -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > > +	{ .refclk = 19200, .cdclk = 480000, .ratio = 50 },
> > > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > > +
> > > > +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > > +	{ .refclk = 24000, .cdclk = 480000, .ratio = 40 },
> > > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > > +
> > > > +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> > > > -	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> > > > -	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> > > > -	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> > > > -	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> > > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> > > > -	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> > > > -	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> > > > -	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> > > > -	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> > > > -	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> > > > -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
> > > > +	{ .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
> > > > +	{ .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
> > > > +	{ .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
> > > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
> > > > +	{ .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
> > > > +	{ .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
> > > > +	{ .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
> > > > +	{ .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
> > > > +	{ .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
> > > > +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> > > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
> > > >  	{}
> > > >  };
> > > >  
> > > >  static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> > > > -	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> > > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > > > -	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> > > > -	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> > > > -	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> > > > -	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> > > > -	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> > > > -	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> > > > -	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> > > > -	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> > > > -	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> > > > -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > > > -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> > > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > > > +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> > > > +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> > > > +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> > > > +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> > > > +	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> > > > +	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> > > > +	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> > > > +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > > > +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > > >  	{}
> > > >  };
> > > >  
> > > > -- 
> > > > 2.42.1
> > > > 
> > > 
> > > -- 
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
