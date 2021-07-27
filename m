Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C443D7DCA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 20:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014AC6E199;
	Tue, 27 Jul 2021 18:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B442C6E199
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 18:38:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="273586475"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="273586475"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 11:38:28 -0700
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="417505782"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 11:38:28 -0700
Date: Tue, 27 Jul 2021 11:38:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Yokoyama, Caz" <caz.yokoyama@intel.com>
Message-ID: <20210727183826.GZ1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
 <20210723174239.1551352-2-matthew.d.roper@intel.com>
 <a2bb4c3922b85c68bf32459ad8d989fc41d36f4c.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2bb4c3922b85c68bf32459ad8d989fc41d36f4c.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 01/30] drm/i915/xehpsdv: Correct
 parameters for IS_XEHPSDV_GT_STEP()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 27, 2021 at 11:34:28AM -0700, Yokoyama, Caz wrote:
> On Fri, 2021-07-23 at 10:42 -0700, Matt Roper wrote:
> > During a rebase the parameters were partially renamed, but not
> > completely.  Since the subsequent patches that start using this macro
> > haven't landed on an upstream tree yet this didn't cause a build
> > failure.
> >
> > Fixes: 086df54e20be ("drm/i915/xehpsdv: add initial XeHP SDV
> > definitions")
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h
> > index d118834a4ed9..d44d0050beec 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1562,8 +1562,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> > *i915,
> >       (IS_ALDERLAKE_P(__i915) && \
> >        IS_GT_STEP(__i915, since, until))
> >
> > -#define IS_XEHPSDV_GT_STEP(p, since, until) \
> > -     (IS_XEHPSDV(p) && IS_GT_STEP(__i915, since, until))
> > +#define IS_XEHPSDV_GT_STEP(__i915, since, until) \
> > +     (IS_XEHPSDV(__i915) && IS_GT_STEP(__i915, since, until))
> Is your comment saying that the first parameter
> of IS_XEHPSDV_GT_STEP(), p or __i915 must be the first parameter of
> both IS_XEHPSDV() and IS_GT_STEP()? The older code is a bug, correct?
> -caz

We can name the parameter anything we want, it just has to be used
consistently throughout the macro.  Defining the parameter as 'p' but
then passing a different undefined name '__i915' into IS_GT_STEP won't
work (but it will only start causing compile errors when we land
workarounds and such that start using the macro).


Matt

> 
> >
> >  /*
> >   * DG2 hardware steppings are a bit unusual.  The hardware design
> > was forked

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
