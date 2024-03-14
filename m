Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C1E87BCFF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 13:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89DFB10FAE0;
	Thu, 14 Mar 2024 12:48:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ES6C7QR6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B13D10F5EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 12:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710420503; x=1741956503;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:from:cc:subject:message-id:date;
 bh=d52tK3oNdqBnTS7nQ0lPs4mTsZHEYiOGM3KANvMw4wQ=;
 b=ES6C7QR64Q0sPF/1YPvHqWX3EKg/jpFweBMfKmtZthGmlT4L6u/yx4qZ
 0ZqPP/TZrFSgFo/NGVRcJROs4Ey06AxArINBhKO7HTb0Ic+QjVJjTfTCu
 ct293jN1IpLXN8OU5c622HwyclgxEkTXrRbWQwrQZH87FVx8sF+A9rl8T
 NLp1uh7UhUUGa+ju69/6+3fKQhdWsR6NWxbphdDKqr8E2qwfjOK0xjXkB
 aPlwzWdAmGWDmxXxrPwfnz+tV0aw//W6USpzsVeMMZSm2IhhF5FvYslY0
 PkI2VdJiDe5MAQPlIVzk6TQBnGQU4KXJxFspb+dPWxxs7ZWxl1TwJ/aRM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="16630309"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="16630309"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 05:48:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12166279"
Received: from unknown (HELO localhost) ([10.245.244.239])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 05:48:21 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZesnfFTu3GLJVIrj@intel.com>
References: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
 <ZesnfFTu3GLJVIrj@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH] drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in
 i915_memcpy.c
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <171042049765.18343.17884019367529376664@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 14 Mar 2024 14:48:17 +0200
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

Quoting Rodrigo Vivi (2024-03-08 16:58:04)
> On Fri, Mar 08, 2024 at 04:46:43PM +0200, Joonas Lahtinen wrote:
> > Add standalone includes for BUG_ON and BUILD_BUG_ON to avoid build fail=
ure
> > after linux-next include refactoring.
>=20
> any lore link so we can use with a 'Closes:' tag?
> and perhaps a reported-by?

The build failure seems to have happened in intel-gfx-ci.01.org but the
failing build results are not uploaded so it's only visible in the
background.

From the CI page[1] we can see next-20240304 is the last successful build[2=
].
Failure seems to have started next-20240305 after which the results are
not uploaded due to the failure.

For future, I asked if we could improve the CI dashboard by alos showing the
failing builds in the CI view.=20

However, for now we don't have a reference, I guess.

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://intel-gfx-ci.01.org/tree/linux-next/next-20240304/filelist.html

>=20
> >=20
> > Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> > ---
> >  drivers/gpu/drm/i915/i915_memcpy.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/=
i915_memcpy.c
> > index ba82277254b7..cc41974cee74 100644
> > --- a/drivers/gpu/drm/i915/i915_memcpy.c
> > +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> > @@ -25,6 +25,8 @@
> >  #include <linux/kernel.h>
> >  #include <linux/string.h>
> >  #include <linux/cpufeature.h>
> > +#include <linux/bug.h>
> > +#include <linux/build_bug.h>
>=20
> git grep BUILD_BUG_ON drivers/gpu/drm/i915/
> output
>=20
> vs
>=20
> git grep build_bug.h drivers/gpu/drm/i915/
> output
>=20
> tells me that we likely need this in many more files...
>=20
> but not opposed to move with this faster and come back later with
> other fixes if this unblocks people:

Yeah, I made the same observation.

Are you fine to merge this with the R-b even without the reference?

Regards, Joonas

>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>=20
> >  #include <asm/fpu/api.h>
> > =20
> >  #include "i915_memcpy.h"
> > --=20
> > 2.43.2
> >=20
