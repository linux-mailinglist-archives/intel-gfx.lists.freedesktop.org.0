Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347F487FA4F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 10:07:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE3610F8A4;
	Tue, 19 Mar 2024 09:07:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHxLpeKj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31D510F8A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 09:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710839231; x=1742375231;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:from:subject:cc:message-id:date;
 bh=6qDaD5gVR9BBFil0216lV95S0F2TXpL71pHcjsMc9aE=;
 b=gHxLpeKj6eIy8jJV1p0ld5AdU1/fNgR0EafOiPyEuL3kCmXUv4B+qstn
 HfEbEKyKRV8zigkpfqBcNEvuhUGVB6/ltCOOdAn9sgiY1kD7LYtmCNSqY
 WJOeVmVt0HE9BY8lNsMETmtzNclzljWpkDMxUrCc71/Zg6l2GUFMTSZK9
 XFv0iNb9GA2yVYNhrxfz8StBV/l9hJ7opi/9Tanx6AI6iUayfJvn3nwAc
 ylz9GXOCL7Bs1Wx43Wp68tSeFKLV0YaSSuy9/R3UYC+w3ZRiIWvOxa/yb
 Q9/FAwgmir3MKxf4QCzqpIn0C5vXBgLXpcykpSadcGXb5xLIaS3WtK4uu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="8636533"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="8636533"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 02:07:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="13784783"
Received: from unknown (HELO localhost) ([10.245.245.23])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 02:07:08 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0b7482ea82d770474cb6d1cc342beab58372143d.camel@intel.com>
References: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
 <ZesnfFTu3GLJVIrj@intel.com>
 <171042049765.18343.17884019367529376664@jlahtine-mobl.ger.corp.intel.com>
 <0b7482ea82d770474cb6d1cc342beab58372143d.camel@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in
 i915_memcpy.c
Cc: "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <171083922601.5991.17880071082447108987@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 19 Mar 2024 11:07:06 +0200
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

Pushed this, thanks for the review.

Regards, Joonas

Quoting Vivi, Rodrigo (2024-03-18 14:40:56)
> On Thu, 2024-03-14 at 14:48 +0200, Joonas Lahtinen wrote:
> > Quoting Rodrigo Vivi (2024-03-08 16:58:04)
> > > On Fri, Mar 08, 2024 at 04:46:43PM +0200, Joonas Lahtinen wrote:
> > > > Add standalone includes for BUG_ON and BUILD_BUG_ON to avoid
> > > > build failure
> > > > after linux-next include refactoring.
> > >=20
> > > any lore link so we can use with a 'Closes:' tag?
> > > and perhaps a reported-by?
> >=20
> > The build failure seems to have happened in intel-gfx-ci.01.org but
> > the
> > failing build results are not uploaded so it's only visible in the
> > background.
> >=20
> > From the CI page[1] we can see next-20240304 is the last successful
> > build[2].
> > Failure seems to have started next-20240305 after which the results
> > are
> > not uploaded due to the failure.
> >=20
> > For future, I asked if we could improve the CI dashboard by alos
> > showing the
> > failing builds in the CI view.=20
> >=20
> > However, for now we don't have a reference, I guess.
> >=20
> > [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> > [2] https://intel-gfx-ci.01.org/tree/linux-next/next-
> > 20240304/filelist.html
> >=20
> > >=20
> > > >=20
> > > > Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > > Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> > > > ---
> > > > =C2=A0drivers/gpu/drm/i915/i915_memcpy.c | 2 ++
> > > > =C2=A01 file changed, 2 insertions(+)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/i915/i915_memcpy.c
> > > > b/drivers/gpu/drm/i915/i915_memcpy.c
> > > > index ba82277254b7..cc41974cee74 100644
> > > > --- a/drivers/gpu/drm/i915/i915_memcpy.c
> > > > +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> > > > @@ -25,6 +25,8 @@
> > > > =C2=A0#include <linux/kernel.h>
> > > > =C2=A0#include <linux/string.h>
> > > > =C2=A0#include <linux/cpufeature.h>
> > > > +#include <linux/bug.h>
> > > > +#include <linux/build_bug.h>
> > >=20
> > > git grep BUILD_BUG_ON drivers/gpu/drm/i915/
> > > output
> > >=20
> > > vs
> > >=20
> > > git grep build_bug.h drivers/gpu/drm/i915/
> > > output
> > >=20
> > > tells me that we likely need this in many more files...
> > >=20
> > > but not opposed to move with this faster and come back later with
> > > other fixes if this unblocks people:
> >=20
> > Yeah, I made the same observation.
> >=20
> > Are you fine to merge this with the R-b even without the reference?
>=20
> sorry for having missed this.
>=20
> yes, the rv-b can be used even without the reference, let's just get
> this in and fix the build issue.
>=20
> >=20
> > Regards, Joonas
> >=20
> > >=20
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >=20
> > > > =C2=A0#include <asm/fpu/api.h>
> > > > =C2=A0
> > > > =C2=A0#include "i915_memcpy.h"
> > > > --=20
> > > > 2.43.2
> > > >=20
>=20
