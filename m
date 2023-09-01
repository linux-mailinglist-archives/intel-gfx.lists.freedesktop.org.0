Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D0C78FA4A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 10:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8036810E184;
	Fri,  1 Sep 2023 08:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928EF10E74E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 08:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693558523; x=1725094523;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=28pXvDZBXG0hDa0Ux34wX5kjCocOx3WZBrGXg6fNje4=;
 b=T04O1XzX9WAKxah/J29IaoJJE1yTOHAP93cz2FDKQPsQhCgA8Tlh0JkZ
 prl+BtFBrG6MPL0JFCGrrpQ4nbF9wUttHVFx0DUm97idRlUBYmtjPKchv
 /ls5aUwPJ2q1Hvie+7LrOFQ92phnLrO5IT0fERPVxTp14EOXW/+mjnGbx
 ZploSeu6BLsjqzGg/lac6WHpGhrjqMNG9YrRzHXpx+u0CVhsLi/CNh+3S
 jaSTI8HM/I5JINjrGaqvsuBLRsfz6GzmbQae8qoksPeO4V4Uh69bdixOX
 +jgO7pffHbhIaaDpFH3zD2XZvfqguP37Eum9BICIrXFG/CMI2rEw14/dP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440151460"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="440151460"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 01:55:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="769133152"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="769133152"
Received: from shochwel-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.58.219])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 01:55:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20230831163613.GS6080@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
 <20230821180619.650007-15-matthew.d.roper@intel.com>
 <875y4vjifc.fsf@intel.com>
 <20230831163613.GS6080@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 01 Sep 2023 11:55:15 +0300
Message-ID: <87zg26i87g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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

On Thu, 31 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Thu, Aug 31, 2023 at 07:16:55PM +0300, Jani Nikula wrote:
>> On Mon, 21 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > index a408ec2d3958..4566c95da1ca 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > @@ -20,6 +20,7 @@
>> >  #include "skl_scaler.h"
>> >  #include "skl_universal_plane.h"
>> >  #include "skl_watermark.h"
>> > +#include "gt/intel_gt.h"
>> >  #include "pxp/intel_pxp.h"
>> >  
>> >  static const u32 skl_plane_formats[] = {
>> > @@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>> >  				 enum pipe pipe, enum plane_id plane_id)
>> >  {
>> >  	/* Wa_14017240301 */
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> > +	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
>> >  		return false;
>> 
>> This seems to be the only user of IS_GFX_GT_IP_STEP() under display/,
>> and it kind of seems wrong to have display code check for GT
>> versions. Is there a clean way to move this out of display?
>
> If I remember correctly, this one literally is tied to the graphics IP
> rather than the display IP.  There's something busted with how the
> graphics GT is trying to generate compressed buffers that causes them to
> not decompress properly in the display controller (although GT<->GT
> compression/decompression is okay since both sides are broken in the
> same way).  So the workaround is to not advertise our display planes as
> having support for compressed buffers when the GT is A-step, because we
> know they're going to show up in the wrong format.  That still allows
> compression to be used for the non-display use cases, but avoids
> possible display corruption.
>
> Honestly the simplest solution might be to just go ahead and delete this
> workaround since it's only relevant to pre-production hardware.  I know
> our general policy has always been to hang on to workarounds for
> pre-production steppings in the driver until the n+1 platform/IP is
> pretty far along, but in this case it looks like our CI machines are
> already on B0 GT stepping, and even if some internal people are still
> working with older boards, this is still kind of a corner case that
> probably won't impact most usage.

Thanks for the explanation. I'd ack just nuking the check.

BR,
Jani.

>
>
> Matt
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
