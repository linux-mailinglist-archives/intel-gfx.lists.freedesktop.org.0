Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B2499536D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 17:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B3110E583;
	Tue,  8 Oct 2024 15:32:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kEcc/+cs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C762910E581;
 Tue,  8 Oct 2024 15:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728401575; x=1759937575;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=/HFMwMYyYRnQnGo/XgX2fLzDKhPq9hWY/h22oXY7OiY=;
 b=kEcc/+csEH4A5X1G06PMGR2eAoPBK2Y9OEce7CnZnMTjl/v694+f9mpY
 CpZYF8O3BiT8OH551843TNx1kbUHuxTOwcLvCjNO1KupXV2sFXIUfbZxq
 Z2yb0t1ph1jV9X3n9ePChRzdvICHO0QSdc1LTzab2904mWXjqKedIU//Z
 2PTe6j6FoDu3nayYlam0EZBS+AFU6ZDbOFW0jWOuyWfl6rr5Ny5mDFekS
 IXKGunzAUeKLyThJ7AXWhkVSD5TgIexiGdeh/f+fKsVNocKgaIE5oZqUW
 qS+KX7HlxpUEVih23xOnGr50UFSP+ifVTfgKjj6U96i+ayc/eA6uX01zl Q==;
X-CSE-ConnectionGUID: p0McgbV2TU6ThBNg+KYISA==
X-CSE-MsgGUID: cbJ2go7ETEefOh4Qle54Qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38262954"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38262954"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 08:32:54 -0700
X-CSE-ConnectionGUID: yA7IFRiBSAqsr28qffETJQ==
X-CSE-MsgGUID: rnIg0T/lTguikB4DQGp5jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75982059"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 08:32:53 -0700
Date: Tue, 8 Oct 2024 18:33:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Message-ID: <ZwVQwTN-FklTi6cb@ideak-desk.fi.intel.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
 <20241007140531.1044630-2-imre.deak@intel.com>
 <BL1PR11MB5445566CC674BD448027A065E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
 <ZwQsnaXxhGOPLO9T@ideak-desk.fi.intel.com>
 <ZwQt5t9iR9mYLsWR@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZwQt5t9iR9mYLsWR@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 07, 2024 at 02:52:22PM -0400, Rodrigo Vivi wrote:
> On Mon, Oct 07, 2024 at 09:46:53PM +0300, Imre Deak wrote:
> > On Mon, Oct 07, 2024 at 09:29:46PM +0300, Cavitt, Jonathan wrote:
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> > > Sent: Monday, October 7, 2024 7:06 AM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > Subject: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during non-d3cold RPM resume
> > > >
> > > > Atm the display HPD interrupts that got disabled during runtime
> > > > suspend, are re-enabled only if d3cold is enabled. Fix things by
> > > > also re-enabling the interrupts if d3cold is disabled.
> > > >
> > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > 
> > > Is there a reason this ended up as a separate patch?
> > 
> > On the principle of doing one thing in one patch: the first is
> > refactoring, this one is a fix.
> 
> We do need this, but we need a lot more.

I think this should be applied before other changes and from your
patchset similar fixes (ideally xe-only changes) should be applied first
before other refactoring changes (I think there are other such changes
there). These fixes could be backported then if needed.

> Please help on the review of the consolidation and the true split:
> https://lore.kernel.org/intel-xe/20240924204222.246862-1-rodrigo.vivi@intel.com/T/#m482df5716f81e6f6a3b5f459f57f193a4292ab52
> 
> > 
> > > Not blocking, just curious.
> > > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > -Jonathan Cavitt
> > > 
> > > > ---
> > > >  drivers/gpu/drm/xe/display/xe_display.c | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > > index cb2449b7921ac..695c27ac6b0f8 100644
> > > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > > @@ -486,6 +486,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> > > >               return;
> > > >       }
> > > >
> > > > +     intel_hpd_init(xe);
> > > >       intel_hpd_poll_disable(xe);
> > > >  }
> > > >
> > > > --
> > > > 2.44.2
> > > >
> > > >
