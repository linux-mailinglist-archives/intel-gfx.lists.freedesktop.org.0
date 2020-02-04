Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFF3151849
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:58:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6EB6E2F8;
	Tue,  4 Feb 2020 09:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7146E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:58:32 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 01:58:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="403739976"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by orsmga005.jf.intel.com with ESMTP; 04 Feb 2020 01:58:30 -0800
Date: Tue, 4 Feb 2020 11:58:30 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200204095830.GB1670@intel.intel>
References: <20200203202110.670209-1-chris@chris-wilson.co.uk>
 <20200204090636.GA1670@intel.intel>
 <158080738803.27392.10698748710924477408@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158080738803.27392.10698748710924477408@skylake-alporthouse-com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix rc6 on Ivybridge
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > > The current rc6 threshold is larger than the evaluation interval on
> > > Ivybridge; it never enters rc6. Remove the special casing so it behaves
> > > like the other gen6/gen7, and we see rc6 residencies before we manually
> > > park the system.
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1114
> > > Testcase: igt/i915_pm_rc6_residency/rc6-idle #ivb
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Andi Shyti <andi.shyti@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > index 01a99fdbb3c4..682f598f7042 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > @@ -226,10 +226,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
> > >  
> > >       set(uncore, GEN6_RC_SLEEP, 0);
> > >       set(uncore, GEN6_RC1e_THRESHOLD, 1000);
> > > -     if (IS_IVYBRIDGE(i915))
> > > -             set(uncore, GEN6_RC6_THRESHOLD, 125000);
> > > -     else
> > > -             set(uncore, GEN6_RC6_THRESHOLD, 50000);
> > > +     set(uncore, GEN6_RC6_THRESHOLD, 50000);
> > 
> > why was is set like this in a first place?
> 
> No one knows.

I haven't found any exception either...

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
