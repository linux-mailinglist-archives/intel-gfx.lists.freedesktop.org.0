Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE1A1DE7DB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 15:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30576E0CB;
	Fri, 22 May 2020 13:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 744616E0CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 13:17:05 +0000 (UTC)
IronPort-SDR: 3GQKh5YvudysOL2ZFStQ28XOns7HWM/igImchEUlHcqaF9CKZyEwCVtK0wTTA7upVpgYd8PcOs
 NKlyZ8OkVSuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 06:17:05 -0700
IronPort-SDR: 87ApscBEKchhAod9aBceMOlBPFcuaoUY/zGfFwgL7DVKfCHSomy2yskl60WnFpyAWCVgKS287p
 /x0nOLtwLgrw==
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="412754701"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 06:17:03 -0700
Date: Fri, 22 May 2020 16:13:02 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200522131302.GA20068@intel.com>
References: <20200522125534.19935-1-stanislav.lisovskiy@intel.com>
 <159015272616.32320.7673829907075394808@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159015272616.32320.7673829907075394808@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Fix includes and local vars
 order
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

On Fri, May 22, 2020 at 02:05:26PM +0100, Chris Wilson wrote:
> Quoting Stanislav Lisovskiy (2020-05-22 13:55:34)
> > Removed duplicate include and fixed comment > 80 chars.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c    | 43 ++++++++++++----------
> >  drivers/gpu/drm/i915/display/intel_bw.h    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
> >  drivers/gpu/drm/i915/intel_pm.c            |  3 +-
> >  drivers/gpu/drm/i915/intel_pm.h            |  2 +-
> >  6 files changed, 29 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 8d2f58e39595..db9ba8f922bd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -5,13 +5,12 @@
> >  
> >  #include <drm/drm_atomic_state_helper.h>
> >  
> > +#include "intel_atomic.h"
> >  #include "intel_bw.h"
> > -#include "intel_pm.h"
> > +#include "intel_cdclk.h"
> >  #include "intel_display_types.h"
> > -#include "intel_sideband.h"
> > -#include "intel_atomic.h"
> >  #include "intel_pm.h"
> > -#include "intel_cdclk.h"
> > +#include "intel_sideband.h"
> 
> There was also the accidental remove of a '\n' before
> intel_bw_crtc_update()

Weird..how didn't I spot this.

> 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index dda9bae02a86..643701cca6ba 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -23,10 +23,10 @@
> >  
> >  #include <linux/time.h>
> 
> \n between system and local includes
> 
> >  #include "intel_atomic.h"
> > +#include "intel_bw.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_display_types.h"
> >  #include "intel_sideband.h"
> > -#include "intel_bw.h"
> 
> 2 more nits then
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> s/Reviewed/Critiqued/
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
