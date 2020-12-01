Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9D22CA05A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 11:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59CBF6E4DD;
	Tue,  1 Dec 2020 10:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7946E4DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 10:52:30 +0000 (UTC)
IronPort-SDR: vr2OwDmrgCX7BQQY/Ml/HokOAfxDK+beaMWhhj4zQfxupW8a//DHWijQKfzxVBeRgT+aW4oD1M
 5Ir/v8PvUaxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="152637627"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="152637627"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 02:52:27 -0800
IronPort-SDR: USL2aiZD3ttV8ZU0uvcdk3nQQX7Fvrbjh+2nM9g9vjqx3ARnW6Sgao1M4S3lfgyPEIHgoQqXGd
 GaxBKNgMMUiw==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="549520042"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 02:52:26 -0800
Date: Tue, 1 Dec 2020 12:52:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201201105222.GA2849269@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-10-imre.deak@intel.com>
 <160677402120.12351.15729317951519810612@build.alporthouse.com>
 <20201130224708.GD2480925@ideak-desk.fi.intel.com>
 <160681048020.12351.8804231018277657231@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160681048020.12351.8804231018277657231@build.alporthouse.com>
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

On Tue, Dec 01, 2020 at 08:14:40AM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2020-11-30 22:47:08)
> > On Mon, Nov 30, 2020 at 10:07:01PM +0000, Chris Wilson wrote:
> > > Quoting Imre Deak (2020-11-30 21:22:00)
> > > > All the display power domain references are wakeref tracked now, so we
> > > > can mark intel_display_power_put_unchecked() as an internal function
> > > > (for suppressing wakeref tracking in non-debug builds).
> > > > 
> > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > 
> > > Ok, after all previous patches it will only be called from the header
> > > after throwing away the wakeref.
> > > 
> > > I have a sneaky suspicion you might take another path after reviewing
> > > the danger caused by the debug build, 
> > 
> > Yes, how about also adding:
> > 
> > +static inline void
> > +____intel_display_power_put(struct drm_i915_private *i915,
> > +                           enum intel_display_power_domain domain,
> > +                           intel_wakeref_t wakeref)
> > +{
> > +       intel_display_power_put_unchecked(i915, domain);
> > +}
> > +
> >  static inline void
> >  intel_display_power_put(struct drm_i915_private *i915,
> >                         enum intel_display_power_domain domain,
> >                         intel_wakeref_t wakeref)
> >  {
> > -       intel_display_power_put_unchecked(i915, domain);
> > +       ____intel_display_power_put(i915, domain, wakeref);
> >  }
> > 
> > (and similar change for intel_display_power_put_async()) ?
> 
> Hmm. The compiler shouldn't DCE the wakeref since it has a side-effect.
> We can but see.

Yes, arguments passed to functions are evaluated exactly once. The above
extra call doesn't make sense anyway.

Are you ok with patch 4 then?

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
