Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D972C5E5D7F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C3310E231;
	Thu, 22 Sep 2022 08:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F45E10E232
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663835398; x=1695371398;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=A903FL7RFuXuGsyHFYtc+TtvmCMDLyXtabdMIeqCCKI=;
 b=dKE36q0Cxr3T3K5YSvubJlxItjwTtcXMsIQ7vCJltxgOfeQSc1uoETMg
 O4/fRDYO9qVPi0FL8uNDxVT93iQ3DABjxy24s+9ix+rRheJtyTvsULJH/
 mEnX+GCZhnIxab646Cia4b56Vqv2gGAVfp6y2F9I3SyD7wGuLd1hQQvct
 D8oCFUs2FGGdZd7Dloe+xecQlFxCeoGmow7zYx4W4GOrxdLvJo3exEI5F
 pJpE2ZlDGcLTZ1x5BPklzLENy9eZfS+ix7eVQn5e9wij2TX1LjD/XW8TF
 WoRfHKWaktB8TGmAIR+7L7hIVqnhvpK3Eb9LwfqZ/YvCkjf5VYbJQ9tbV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="386526114"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="386526114"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="597343507"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 22 Sep 2022 01:29:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 11:29:54 +0300
Date: Thu, 22 Sep 2022 11:29:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <YywdAq6eYfTEppUC@intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-3-ville.syrjala@linux.intel.com>
 <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Mark FBC B gone if pipe B is
 gone
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

On Thu, Sep 22, 2022 at 11:18:55AM +0300, Luca Coelho wrote:
> On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > If pipe B is fused off we also shouldn't have FBC B.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_device_info.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 1434dc33cf49..fbefebc023f1 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> >  			runtime->pipe_mask &= ~BIT(PIPE_B);
> >  			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> > +			runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
> >  		}
> >  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> >  			runtime->pipe_mask &= ~BIT(PIPE_C);
> 
> I don't know (yet) what exactly this does, but it makes sense if you
> think of consistency: we already do that for PIPE_A.

It's basically saying the entire pipe is fused off, so anything
living inside that pipe should also be fused off.

> 
> But what about PIPE_C and PIPE_D? Wouldn't it make sense to do the same
> thing for them as well?

There is no FBC engine on those pipes (we don't even have
the INTEL_FBC_C+ enum values defined), at least for now.

-- 
Ville Syrjälä
Intel
