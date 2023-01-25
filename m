Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386D067B5A0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 16:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588F210E7F5;
	Wed, 25 Jan 2023 15:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1633610E033
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 15:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674659574; x=1706195574;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8SgXTArwqRwtPbl5Zx8/zf8oUB0F1HQx/HIe/aXsULM=;
 b=dgwa0RD3WRG91DyNKqifl+ieXXpgmBALuEh3ssngoxamZRM+NZd4EhMY
 2ukym+LYLubZhbyvXNLPmk7ssW4wjl68mjnaJSLAKSLUtHN1aFoZqIahm
 YGtANliCIhPy4jHZjStAVugXvp1VZEXWoIfa7FoTo3UhBwNW05qAhS9aD
 vyl82cQ1W/rZ+ZzI5qKn7LpNZW9jDMUDMbLw0cD347wFpt0wd/k+wLBdM
 LERx7Z9u0crdYBcNxHavXwq2j4dX9FwTGmlRlWKjfJ1+PLm2GtwIUcbq0
 SHBzvAaz6eVYniVoLG/CmXgZLRHG0hKxOJ1iwde4LB2MGw1MuVmDaUcEq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="328662261"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="328662261"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 07:10:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="692978789"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="692978789"
Received: from sjuberti-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.92])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 07:10:51 -0800
Date: Wed, 25 Jan 2023 16:10:48 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>
Message-ID: <Y9FGePinKwoYO1Q6@ashyti-mobl2.lan>
References: <20230125100003.18243-1-nirmoy.das@intel.com>
 <Y9E+bqC2uSuXetNK@ashyti-mobl2.lan>
 <62049532-41b2-5225-a62f-41a654f731d3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <62049532-41b2-5225-a62f-41a654f731d3@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl/selftests: Flush all tiles on
 test exit
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

Hi Nirmoy,

> > On Wed, Jan 25, 2023 at 11:00:03AM +0100, Nirmoy Das wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > We want to idle all tiles when exiting selftests.
> > > 
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > except from the tag list and the title I guess this is the same
> > patch as the previous one, right? Can you please add some
> > versioning next time?
> 
> 
> I wasn't sure if I should add v2 for the title change.
> 
> > 
> > If it's the same this patch then it's good to be pushed. Just a
> > little failure that is independent from this change.
> > 
> > BTW, why is there a "mtl" prfix in the title while in the
> > previous version it was "xehpsdv"? I can understand the latter
> > because originally xehpsdv was a synonymous with multi-gt. But
> > it's not the case anymore. If you don't mind I would remove it
> > before pushing.
> 
> 
> This confusion is because I didn't do the versioning properly :/ Sorry about
> that.
> 
> Matt clarified in the v1 that we haven't enabled multi-tile for xehp, only
> for MTL we have multi-tile
> 
> enabled. I actually tested this on MTL.
> 
> 
> Do you want me to resend with a added  "v2: fix the title as we only support
> multi-tile for MTL now(Matt)" ?

no need, I'll remove the mtl part. I think the title identifies
only the file path.

As we are at it, I have some patches for adding multitile to
xehpdv, but I'm not sure we want them. Any opinion? Matt? Tvrtko?

Andi

> Regards,
> 
> Nirmoy
> 
> > 
> > Andi
> > 
> > > ---
> > >   .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
> > >   1 file changed, 17 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> > > index b484e12df417..29110abb4fe0 100644
> > > --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> > > +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> > > @@ -14,21 +14,27 @@
> > >   int igt_flush_test(struct drm_i915_private *i915)
> > >   {
> > > -	struct intel_gt *gt = to_gt(i915);
> > > -	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
> > > +	struct intel_gt *gt;
> > > +	unsigned int i;
> > > +	int ret = 0;
> > > -	cond_resched();
> > > +	for_each_gt(gt, i915, i) {
> > > +		if (intel_gt_is_wedged(gt))
> > > +			ret = -EIO;
> > > -	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> > > -		pr_err("%pS timed out, cancelling all further testing.\n",
> > > -		       __builtin_return_address(0));
> > > +		cond_resched();
> > > -		GEM_TRACE("%pS timed out.\n",
> > > -			  __builtin_return_address(0));
> > > -		GEM_TRACE_DUMP();
> > > +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> > > +			pr_err("%pS timed out, cancelling all further testing.\n",
> > > +			       __builtin_return_address(0));
> > > -		intel_gt_set_wedged(gt);
> > > -		ret = -EIO;
> > > +			GEM_TRACE("%pS timed out.\n",
> > > +				  __builtin_return_address(0));
> > > +			GEM_TRACE_DUMP();
> > > +
> > > +			intel_gt_set_wedged(gt);
> > > +			ret = -EIO;
> > > +		}
> > >   	}
> > >   	return ret;
> > > -- 
> > > 2.39.0
