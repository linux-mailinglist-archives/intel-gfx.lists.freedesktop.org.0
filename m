Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CED3F8D15
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 19:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13336E886;
	Thu, 26 Aug 2021 17:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B688F6E886
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 17:31:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="278810925"
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="278810925"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 10:31:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="527975968"
Received: from fbenmlih-mobile.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.148])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 10:31:49 -0700
Date: Thu, 26 Aug 2021 13:31:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Lee, Shawn C" <shawn.c.lee@intel.com>,
 "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Message-ID: <YSfQBAtd08OdF65u@intel.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
 <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <20210818161712.GA2831921@ideak-desk.fi.intel.com>
 <YSAqlKSixZ9CNWNz@intel.com>
 <20210820230203.GC2886701@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210820230203.GC2886701@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Aug 21, 2021 at 02:02:03AM +0300, Imre Deak wrote:
> On Sat, Aug 21, 2021 at 01:20:04AM +0300, Ville Syrjälä wrote:
> > On Wed, Aug 18, 2021 at 07:17:12PM +0300, Imre Deak wrote:
> > > On Wed, Aug 18, 2021 at 06:09:43PM +0300, Lee, Shawn C wrote:
> > > > On Tue, 2021-07-07, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> > > > >On Tue, 2021-07-07, Almahallawy, Khaled <khaled.almahallawy@intel.com> wrote:
> > > > >>I believe Imre's LT fallback:
> > > > >>https://github.com/ideak/linux/commits/linktraining-fallback-fix  and Chrome user space fix:
> > > > >>https://chromium-review.googlesource.com/c/chromium/src/+/3003487
> > > > >>should address Chrome concerns for LT failure and LTTPRs
> > > > >>
> > > > >
> > > > >Thanks for comment! The new fallback patch should help on this DPRX problem.
> > > > >One more thing. If driver did not handle DPRX link train failed properly.
> > > > >It would impact link layer compliance test case in below.
> > > > >
> > > > >400.3.1.3
> > > > >400.3.1.4
> > > > >400.3.1.6
> > > > >400.3.1.12
> > > > >400.3.1.13
> > > > >400.3.1.14
> > > > >
> > > > >Best regards,
> > > > >Shawn
> > > > >
> > > > 
> > > > Hi all, before Imre's patch series land on upstream driver. The link train failed
> > > > handling works for LTTPR only. But DPRX does not. Could you please consider to have
> > > > this change as temporary solution? Thanks!
> > > 
> > > I sent already fixing this, see
> > > https://lore.kernel.org/intel-gfx/20201027133600.3656665-1-imre.deak@intel.com/
> > > 
> > > but it fell through the cracks. Applied now your patch, thanks.
> > 
> > We seem to have a tgl that fails consistently at DPRX link training:
> > https://intel-gfx-ci.01.org/tree/drm-tip/fi-tgl-1115g4.html
> > 
> > Previously the error went unnoticed.
> 
> Yea, didn't notice this. Can't see anything obvious, besides that it's a
> DPCD rev 1.1 monitor, so maybe not compatible with LTTPRs. I follow up
> if I find something.

I opened this thread exactly to tell that I'm avoiding this patch on
this week's pull request targeting 5.14 exactly because I saw something
strange with CI_DIF_604 on TGL that doesn't happen without this patch
CI_DIF_603.

Since I don't know what's going on there I'm also avoiding
d7f213c131ad ("drm/i915/dp: Use max params for panels < eDP 1.4")
just in case...

> 
> > 
> > -- 
> > Ville Syrjälä
> > Intel
