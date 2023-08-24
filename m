Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE567874BC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6456410E59D;
	Thu, 24 Aug 2023 15:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456C810E59D;
 Thu, 24 Aug 2023 15:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692892699; x=1724428699;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bc6bR2U5aF9yxJXWNbawZx6vWLhdRKMThxcuwmi6h0U=;
 b=NAHdbf3hC9mQ8YJq64dI8utgUADDhLJXTaljhLQs58K2qg+SmiLsQ7Z+
 TuAaxU+O8VaDEqRBwd9QweGAuTk0MuWREuWR/nopeKi8P76UGSVGPufs9
 iS82X+EXhFpF8yx3cBcQtsyx1ZqtnPQvF27hHz0HHkPuqzi4N97ClyGDH
 oRX1Yi6oGLtT4svILAOAdWFy5kiCvN663LQPCZkC8uGtDxwGP7xccfKE5
 RWM99NY/Sr6UWMMig6AiVUp/gS0sDNYMqeEQkGuftOfauonuRs7eDQuPZ
 s3413n9LyPmbl00bXPD36kBpLhs9bHv64rKIMtKbXpTlXnnvcr9qVXSDg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364671546"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364671546"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802588561"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802588561"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2023 08:58:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:58:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:58:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3HCjvewylp0LxJ/M3y5z9XTvJ915fuWqxAPY+EFwlhDLG18KFUmWQ2qK7Gp34IgEkFcC6rXRw2TXeMbgeuc9I1kX26OBAxwRNMww4CEMUlfm2ZGKGJoLETESBvo4Z9epDEqCMm6yBSx1tQIKf2JmFwbbPOvhnUyQBxd/QI+poK0UVLpiPp9XdFm2r0Iq6p9ym9ypPTVuoOms3U6L5Yd+FFLlWzvMzy2hNrJlDZV3L58JRPA3/b7g3WNe9FXeOlFIh2dW/vF7tyXtWE8Diqw+9nKLOUmDMKMG0x2pdxGcQVjUxkBaPuVujXwjdny6mkT4p0jOWwCHti9CaVzC8oJlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Cjz76jP9hDbtSMjDuWVWkazEx9DJ0PT4xVakGCJBaw=;
 b=Sk8sGWpTIEp6icoNfYfhpy3j4QRyz/V27jwyAqyrzq2n3fZjv50eSZJja+J6E3MT2QKAfU21qaZ6Oxldkwzd+ZtnrmeTUkqrS85y/xUC6YTDP2z91BIBDN1+pHTOZfzok5ImMj50HMsgbp4r+qOKNWjn5gQHaXb1G3GZ7507yNlsorBxtlcFDGQAE2oLPvVJeazpixc+AMq0fJMww7NR/Z2qySKWqGkEqxZus3ZH7BCOZ98j7MG4w4yoUJcK/8rpkujCESKCYgsVbj2RcifhBEaX2J6R7x/aPFKUEXIW8cH4lZsNs+cx0sy8LnRKFbiNK6x5cQgMZ937GXhqVG829g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:58:11 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:58:11 +0000
Date: Thu, 24 Aug 2023 08:58:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230824155807.GT1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-13-lucas.demarchi@intel.com>
 <20230823180342.GG6080@mdroper-desk1.amr.corp.intel.com>
 <e7pyyuqstsofgsjv6c4tsrjpienmhr4rmbesw7g3nmr2ru6gne@rrtdpxfsr2jg>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e7pyyuqstsofgsjv6c4tsrjpienmhr4rmbesw7g3nmr2ru6gne@rrtdpxfsr2jg>
X-ClientProxiedBy: SJ0PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::25) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_
X-MS-Office365-Filtering-Correlation-Id: a9990318-633a-438d-58d7-08dba4baea7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Od51wF2ZeE7iHypubqoPIZ34F/XV8A0bcqRH6GhC9IdsnUBgU4/QhgFYRU2d7UnDqgN4376Er1XELamgOem2r4i12fcb2vAZnF14K8xQ+SOwPprr9XQapyogb2tkg5bJ7EHbl3TpSdsM78SDW3jw3E12sahkeH4CKzOhznjmrM9bpTkGjd7wHAnkaOWjLs04gF6psl4cvWBkfwBqsG/j2QbNZoIVNDvcyAXSVyE7jxJSfrGfe/M32Tn5r+uJ6buXV7vEdTDnJjzlkq3p4bMKXy0oBrj446/sg+muphzO7TlA3m4nYLagfSztg+H6XVyNmY0C1zebwYt2Du2fNy5ON2tLUGd2wSsIi9Zmwr2DEnjY7KnD+tbvqDnCvOaGKsShNsIaoTcxr0YHhmdiyJfGNadX31luyKwzaxwjOoNH+bsCjCo0bmtnLYfkOIazxMLXsfyWmbh4OZyLnHwpbntfMm6MYiNR/7Y3fxeMPVLPFV5kE0OiCWG84KrPOMsY88h3q8NPz3gKAWmC0onqbe2KcLuKxiQ9Tq/6l8EuNhhdieghg9CUY3OQTgfg7d443the
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(396003)(136003)(186009)(1800799009)(451199024)(66476007)(66946007)(66556008)(6636002)(316002)(82960400001)(478600001)(26005)(38100700002)(6666004)(33656002)(41300700001)(6486002)(6506007)(86362001)(2906002)(6512007)(4326008)(6862004)(8676002)(83380400001)(8936002)(450100002)(5660300002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bVL1d1ml1jC+1a/VGppYWwcyydwnxYYvfb79cWboargYk+Vg9wg1On1A85gs?=
 =?us-ascii?Q?HyIjAG6cIaRZ2yc+Q++PJGv0381DI3NmlY250ahCFFhQYGp+TeobNU7d8fvm?=
 =?us-ascii?Q?dGM7subo1WZfLoOS0P7oGxMvf/D5EQ5/ZhStmZQzgoxq+lUzlL2CIGwUQAlc?=
 =?us-ascii?Q?b34+6NcuMrh2ZbxW/BRzmxc911ewhv2Rv5MyzN/i08Mr1pQBrfjBrq6Db+Kq?=
 =?us-ascii?Q?Gfmdtz78dMPvUvvyMz7m6qJEgEiHscxrjisaedQtXJAKVDT0/UzSmqK8C+Ni?=
 =?us-ascii?Q?Pgpkw6mcXlI1451c/pwKeuVu12Rj5IoYqIPrvvR2Wt0t+rr8L7b7HOznZPx+?=
 =?us-ascii?Q?p86OwrPRUhXsrb9ryW57S0+eaA3/No0fyAM2W0pGEqw68J8SAJh8LlYaueg0?=
 =?us-ascii?Q?fvdxRh+xTBXcAGUWhopcbbiJCQzksglh5y8uHVgFYlwFeRHvwdKGndmaOekS?=
 =?us-ascii?Q?8Ur/4Ci/7/d0JGXVugfh4/apYxdTGdUlAHztkKTvkcdVWlaC03t7JpMS8rTU?=
 =?us-ascii?Q?MDcIsym++1oxItVUJS13RCau7yRFIt4m/QDg2YVED0I0iftIcAGb8wjXskZ9?=
 =?us-ascii?Q?y3YTApNjZBNfNJwlAHwqaJUpgPLhHXRodNlqKExD++DJ0uMaUpsIkvhzb8XI?=
 =?us-ascii?Q?X9mNzw2BZbf23XG1JqxzrveVvGDHxvjLMJbicbdZRaF0AfEitAHzwtrxVAGE?=
 =?us-ascii?Q?4cDHOds89F4m1WOF+8TgFbVQ396M/pCxr0R4SS0Mcp65OQCeBY84ivCosOOb?=
 =?us-ascii?Q?tTMBAe9EMxb/Wz3UIXPY4XkV5pf16K/lCKv35cAUNG9/VLPdpBguDPskl4Cn?=
 =?us-ascii?Q?SEZFi4B7QyATeQuW7Hm6xu0JitpMes6E9GEgs5YL3WbH7SuotLcv84nPtf77?=
 =?us-ascii?Q?jV1J6pANIsjeMnJjEZKUsfYLpl/gszxU8OkXxnkdN22Dmy6D3E+heUXSsxdS?=
 =?us-ascii?Q?43RwN9iqcjH6Msy3fXq0O4KRP87bqqGBoKnsfPNjN0B22gmpahCKKfJIzcwL?=
 =?us-ascii?Q?j0Fp5rn/eu/dWCZuLZmfoLVUFfK+OTjHuUloSKbpL1k5MozW3KlPqpXnIF9i?=
 =?us-ascii?Q?UEDl9+r4nw+R/qPVnNqM1BrvfKv1HXKfssNf4Lz4QOxvFkXbJlgfPW7QwXpU?=
 =?us-ascii?Q?xovSD9jBYi5UV5OU7aSkTmon2r7dWjOKI1eMMhc/kh/ag7PRNl04t+rzqfC8?=
 =?us-ascii?Q?KjYzlTPpfaIL5SugKUEJR3Y7VSABJjnYByvuNrwQJI1iP9aQff+TeziTkIMk?=
 =?us-ascii?Q?WFzSoJQf2NiPFWMYDgRmT9ME+iukHyIopsH5xaCsPPdaFAfB0shvQnD4tEEm?=
 =?us-ascii?Q?dovwBu6lUT+qkoTWjRjdf18mnfIhDviTHVdtXrSZqp8EFWDKU5S7TVXnOiBR?=
 =?us-ascii?Q?bAsn4YkwjbucGZ4SsPaDL5sm6jewbks85y+rm+jtrnG4pQvjPVVXrWhtePYo?=
 =?us-ascii?Q?/9tf9g6nbvF6dlKh/tgcBxLrppQwQDrywaivJomRDCB3aO84K9KkGjm4+qXw?=
 =?us-ascii?Q?m9X6W4TcdXIwY+IAUja+scMonNIG9CjhKCdASPgr3yxjzIdjyokzJkp5wYK7?=
 =?us-ascii?Q?hF26/5pKqEPXyQ2g6X3Xj3UXqXFe/AxQggSIqgRFIaWCXL2PuWyfs/2FhWbK?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9990318-633a-438d-58d7-08dba4baea7c
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:58:11.1763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gMWZZ3j9AVavVUNej9KU0SkFsbqjHv+y5au2Z1QtU+U1/W/eEsYSsmKZFtctuM3fPEX9hnoSymyAPyANW7smxvXPJUdrSqkS23j2yc7sm0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 12/42] drm/i915/lnl: Add display
 definitions
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

On Thu, Aug 24, 2023 at 08:49:42AM -0700, Lucas De Marchi wrote:
> On Wed, Aug 23, 2023 at 11:03:42AM -0700, Matt Roper wrote:
> > On Wed, Aug 23, 2023 at 10:07:10AM -0700, Lucas De Marchi wrote:
> > > From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > > 
> > > Add Lunar Lake platform definitions for i915 display. The support for
> > > LNL will be added to the xe driver, with i915 only driving the display
> > > side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
> > > i915 module.
> > > 
> > > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_display_device.c   | 15 +++++++++++++++
> > >  drivers/gpu/drm/i915/i915_drv.h                   |  1 +
> > >  2 files changed, 16 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > > index f87470da25d0..b853cd0c704a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > > @@ -727,6 +727,20 @@ static const struct intel_display_device_info xe_lpdp_display = {
> > >  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> > >  };
> > > 
> > > +static const struct intel_display_device_info xe2_lpd_display = {
> > > +	XE_LPD_FEATURES,
> > > +	.has_cdclk_crawl = 1,
> > > +	.has_cdclk_squash = 1,
> > 
> > XE_LPD_FEATURES, crawl, squash, transcoder mask, and port mask are all
> > common between Xe_LPD+ and Xe2_LPD.  Maybe we should add an
> > XE_LPDP_FEATURES macro first, and then re-use it here so that the deltas
> > are smaller and it's more obvious what the key changes are with this new
> > IP?
> 
> ack
> 
> > 
> > > +
> > > +	.__runtime_defaults.ip.ver = 20,
> > > +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
> > 
> > With Xe2, FBC is supported on all pipes now (bspec 68881, 68904).
> 
> intention was to only do this after
> "drm/i915/xe2lpd: FBC is now supported on all pipes". I guess I can
> reorder the patches to bring that one first and fix it.

I hadn't noticed that patch yet when I reviewed this one.  But maybe the
best bet is to drop this line in this patch (so you'll inherit the value
from XE_LPD[P]_FEATURES), and then that later patch will update it with
the right value.


Matt

> 
> 
> > 
> > > +	.__runtime_defaults.cpu_transcoder_mask =
> > > +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> > > +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> > > +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> > > +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> > > +};
> > > +
> > >  __diag_pop();
> > > 
> > >  #undef INTEL_VGA_DEVICE
> > > @@ -795,6 +809,7 @@ static const struct {
> > >  	const struct intel_display_device_info *display;
> > >  } gmdid_display_map[] = {
> > >  	{ 14,  0, &xe_lpdp_display },
> > > +	{ 20,  0, &xe2_lpd_display },
> > >  };
> > > 
> > >  static const struct intel_display_device_info *
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 07f79b1028e1..96ac9a9cc155 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -574,6 +574,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
> > >  #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
> > >  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
> > > +#define IS_LUNARLAKE(dev_priv)  0
> > 
> > As noted on the previous patch, we might be able to drop this completely
> > if we update the fake PCH and gmbus code to match on display IP.  Given
> > that PCH isn't even involved in south display handling anymore, that
> > seems like it might be reasonable?  If anything, we're more likely to
> > need to match on PICA ID (which has its own GMD_ID register) than base
> > platform at some point in the future.
> 
> ack
> 
> thanks
> Lucas De Marchi
> 
> > 
> > 
> > Matt
> > 
> > > 
> > >  #define IS_METEORLAKE_M(i915) \
> > >  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
> > > --
> > > 2.40.1
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
