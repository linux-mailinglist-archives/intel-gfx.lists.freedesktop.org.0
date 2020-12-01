Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 615C62CA163
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 12:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33CFD89C6B;
	Tue,  1 Dec 2020 11:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742AD89C6B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 11:32:46 +0000 (UTC)
IronPort-SDR: 4ux+aWtn7A9kzKmv1mOPR/CYZWgqZRN71j3Vb+EAN1zqj1GJm1aRgBkLMnW4XQ+6HNJ5X2so9z
 2WeaFCZLBD/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257521817"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="257521817"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 03:32:43 -0800
IronPort-SDR: l1MnSvPfDkF4dKwcZeE7jmmJ9Zhcf5RoLpt3xfl2ROEbKjOO90Vc9gZ2fLl6c10IhcONAakS2S
 s8JOtseBM2xw==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="481064185"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 03:32:42 -0800
Date: Tue, 1 Dec 2020 13:32:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201201113238.GB2849269@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-10-imre.deak@intel.com>
 <160677402120.12351.15729317951519810612@build.alporthouse.com>
 <20201130224708.GD2480925@ideak-desk.fi.intel.com>
 <160681048020.12351.8804231018277657231@build.alporthouse.com>
 <20201201105222.GA2849269@ideak-desk.fi.intel.com>
 <160682121868.17248.514046911489151009@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160682121868.17248.514046911489151009@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Make
 intel_display_power_put_unchecked() an internal-only function
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 01, 2020 at 11:13:38AM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2020-12-01 10:52:22)
> > On Tue, Dec 01, 2020 at 08:14:40AM +0000, Chris Wilson wrote:
> > > Quoting Imre Deak (2020-11-30 22:47:08)
> > > > On Mon, Nov 30, 2020 at 10:07:01PM +0000, Chris Wilson wrote:
> > > > > Quoting Imre Deak (2020-11-30 21:22:00)
> > > > > > All the display power domain references are wakeref tracked now, so we
> > > > > > can mark intel_display_power_put_unchecked() as an internal function
> > > > > > (for suppressing wakeref tracking in non-debug builds).
> > > > > > 
> > > > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > 
> > > > > Ok, after all previous patches it will only be called from the header
> > > > > after throwing away the wakeref.
> > > > > 
> > > > > I have a sneaky suspicion you might take another path after reviewing
> > > > > the danger caused by the debug build, 
> > > > 
> > > > Yes, how about also adding:
> > > > 
> > > > +static inline void
> > > > +____intel_display_power_put(struct drm_i915_private *i915,
> > > > +                           enum intel_display_power_domain domain,
> > > > +                           intel_wakeref_t wakeref)
> > > > +{
> > > > +       intel_display_power_put_unchecked(i915, domain);
> > > > +}
> > > > +
> > > >  static inline void
> > > >  intel_display_power_put(struct drm_i915_private *i915,
> > > >                         enum intel_display_power_domain domain,
> > > >                         intel_wakeref_t wakeref)
> > > >  {
> > > > -       intel_display_power_put_unchecked(i915, domain);
> > > > +       ____intel_display_power_put(i915, domain, wakeref);
> > > >  }
> > > > 
> > > > (and similar change for intel_display_power_put_async()) ?
> > > 
> > > Hmm. The compiler shouldn't DCE the wakeref since it has a side-effect.
> > > We can but see.
> > 
> > Yes, arguments passed to functions are evaluated exactly once. The above
> > extra call doesn't make sense anyway.
> > 
> > Are you ok with patch 4 then?
> 
> If you've done a quick non-debug test run, then I'm convinced I was
> barking up the wrong tree.

Yes, I was testing w/o CONFIG_DRM_I915_DEBUG_RUNTIME_PM, it worked as
expected.

> The remaining patches are
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> (since they were all blocked by the uncertainty in behaviour of the
> fetch_and_zero).

Thanks. After this discussion, still pondering about a generic policy
wrt. allowing side-effects in function arguments. I decided that
put_ref(..., fetch_and_zero(&wakeref)) is practical and frequent enough
to allow it there.

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
