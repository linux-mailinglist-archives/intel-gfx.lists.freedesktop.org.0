Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3886888FDBB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF16C10F51D;
	Thu, 28 Mar 2024 11:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZcer+z5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEF510F4FF;
 Thu, 28 Mar 2024 11:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711624090; x=1743160090;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dsxSQ7j6YAgkLCDxmDPnwUC5gjaZLRO+Vqr/G20RCXI=;
 b=iZcer+z5tydbfTUU1HzJ8YH7bg7tor1Ol97NIzVnDPRUzffAPtBZWCW2
 cK+khMoJWERjkfHWzQY5l2YkU7BNBtrBclmGfDco9cwOVQKw3uofIB2lZ
 TCglHWCBMiLLDWyTvg4teZxTewjuNxkdxMJdwOw9bLuGZm4HbXMnqX7Io
 CVLa+ZzyHlTYz8p5kVgKFtoZnuuE0ffv/1gHIBhJ9tFPX5GnTHU4CMvHN
 +zRIoq5cyhNlmFdtKPcTsWf7A28tBBPNnYYGLEfoJ2alMV+z9wtcpruIG
 mW29h9e/liAXZxVgXTnBZYfYStgpFCHu9eAqL2Ri9aRfgDDYDDtjN+t6F Q==;
X-CSE-ConnectionGUID: 25AhlhSHTA+VNmgGBaiM7A==
X-CSE-MsgGUID: x9dsU8FMQVqEMHEzhiRTmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10564784"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10564784"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:08:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16609539"
Received: from unknown (HELO intel.com) ([10.247.118.221])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:08:05 -0700
Date: Thu, 28 Mar 2024 12:07:59 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <ZgVPj8wHbjj2Oyu_@ashyti-mobl2.lan>
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
 <ZgUq47D313cr2VYp@ashyti-mobl2.lan> <87r0fufxy2.fsf@intel.com>
 <ZgVKWBQqEat-3iR3@ashyti-mobl2.lan>
 <IA0PR11MB730702DC9B3DBCAFB8396B33BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB730702DC9B3DBCAFB8396B33BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

Hi Arun,

> > On Thu, Mar 28, 2024 at 12:33:09PM +0200, Jani Nikula wrote:
> > > On Thu, 28 Mar 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > >> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> > > >> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> > > >> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> > > >> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> > > >> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> > > >> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> > > >> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
> > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
> > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
> > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
> > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
> > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
> > > >> +		return -ENOMEM;
> > > >
> > > > why not extract the value from drmm_mutex_init()? it would make the
> > > > code a bit more complex, but better than forcing a -ENOMEM return.
> > > >
> > > > 	err = drmm_mutex_init(...)
> > > > 	if (err)
> > > > 		return err;
> > > >
> > > > 	err = drmm_mutex_init(...)
> > > > 	if (err)
> > > > 		return err;
> > > >
> > > > 	err = drmm_mutex_init(...)
> > > > 	if (err)
> > > > 		return err;
> > > >
> > > > 	...
> > > >
> > > > On the other hand drmm_mutex_init(), as of now returns only -ENOMEM,
> 
> The function is also returning -ENOMEM and there is no other error code returned from the error.

yes, but it's wrong to assume this will always be true.

> > > > but it's a bad practice to assume it will always do. I'd rather
> > > > prefer not to check the error value at all.
> > >
> > > And round and round we go. This is exactly what v1 was [1], but it's
> > > not clear because the patch doesn't have a changelog.
> > 
> > ha! funny! I missed v1.
> > 
> > > This is all utterly ridiculous compared to *why* we even have or use
> > > drmm_mutex_init(). Managed initialization causes more trouble here
> > > than it gains us. Gah.
> > 
> > As I wrote here:
> > 
> > > > I'd rather prefer not to check the error value at all.
> > 
> > we could rather drop this patch. Checking the error value is always good, but
> > checking implausible errors with this price is not really worth it.
> 
> This is reported as error from Coverity. My suggestion was also to discard this error from Coverity but the same API used in other places in our driver is considering the return value.

Strictly speaking, coverity is right and if I have to choose, I'd
prefer your v1. v2, in my opinion, is wrong, even if it's more
nice and readable.

Thanks,
Andi
