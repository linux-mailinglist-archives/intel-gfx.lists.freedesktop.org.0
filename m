Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4CB18536C
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 01:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E196E083;
	Sat, 14 Mar 2020 00:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558AC6E083
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 00:45:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 17:45:04 -0700
X-IronPort-AV: E=Sophos;i="5.70,550,1574150400"; d="scan'208";a="235468547"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 17:45:03 -0700
Date: Fri, 13 Mar 2020 17:45:35 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20200314004535.GI1853544@intel.com>
References: <20200311103640.26572-1-chris@chris-wilson.co.uk>
 <877dzr5fc3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877dzr5fc3.fsf@gaia.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Restrict gen7 w/a batch to
 Haswell
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

On Wed, Mar 11, 2020 at 12:57:32PM +0200, Mika Kuoppala wrote:
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The residual w/a batch is casing system instablity on Ivybridge and

little typo here                ^ ?

> > Baytrail under some workloads, so disable until resolved.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1405
> > Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> > Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 1424582e4a9b..fdc3f10e12aa 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -2088,7 +2088,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
> >  
> >  	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
> >  
> > -	if (IS_GEN(engine->i915, 7) && engine->class == RENDER_CLASS) {
> > +	if (IS_HASWELL(engine->i915) && engine->class == RENDER_CLASS) {

this was out of the latest pull request for drm-next, but if that gets in
soon we might send with next-fixes...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> >  		err = gen7_ctx_switch_bb_init(engine);
> >  		if (err)
> >  			goto err_ring_unpin;
> > -- 
> > 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
