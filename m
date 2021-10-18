Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D42431AAE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 15:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190916E09A;
	Mon, 18 Oct 2021 13:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F1F6E09A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 13:23:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208349275"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="208349275"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 06:23:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="482730679"
Received: from mhe-mobl1.amr.corp.intel.com (HELO intel.com) ([10.212.124.254])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 06:23:15 -0700
Date: Mon, 18 Oct 2021 09:23:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <YW11QUUhp/fJzip9@intel.com>
References: <20211015091650.87270-1-rodrigo.vivi@intel.com>
 <87mtn6u4df.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mtn6u4df.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't propagate the gen split
 confusion further
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

On Mon, Oct 18, 2021 at 11:25:00AM +0300, Jani Nikula wrote:
> On Fri, 15 Oct 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > There's no such thing as gen13. It is either display 13
> > or graphics 13. Don't propagate the gen12 confusion
> > further.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

thanks, pushed

> 
> >
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index da9055c3ebf0..1e221fbe37fd 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8263,7 +8263,7 @@ enum {
> >  
> >  /*
> >   * The below are numbered starting from "S1" on gen11/gen12, but starting
> > - * with gen13 display, the bspec switches to a 0-based numbering scheme
> > + * with display 13, the bspec switches to a 0-based numbering scheme
> >   * (although the addresses stay the same so new S0 = old S1, new S1 = old S2).
> >   * We'll just use the 0-based numbering here for all platforms since it's the
> >   * way things will be named by the hardware team going forward, plus it's more
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
