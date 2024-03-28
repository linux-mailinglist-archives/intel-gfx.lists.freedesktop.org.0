Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C246F88FD51
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83D810E526;
	Thu, 28 Mar 2024 10:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hOaQ4eNg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850D410E53D;
 Thu, 28 Mar 2024 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711622754; x=1743158754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=f25yB72Mh0U8dF9ga+leqWjJU7uB75I9nZ4R9nQuPd8=;
 b=hOaQ4eNgTqwohPc21a69YBz/Dkhe7JNhqXNw68IAnnsyRP4o9h3my/Zq
 IlElt1RbnbfmcRvCmeDNEbXWgWyWSFhzS2DJ2wnnFcfvnDxM/yOtrOKMX
 0KkY8yneP/BpNmKkiU84K9I3fjTLcTm1xmKbhpjAsMInj5o397m6oAQ1T
 4Y5thJ24hmCSEXQpF3qhbqMyvu+NcvixRoA0wTGZ8jdRyznWmINqT0IK/
 VybLiI+S+1hh26MbEltrMTbVZlTRtTUUFHKb7m6kZXvylbPFnGphboiC8
 XoUh5X++ZAEYFNKBDqwqSoKq6u+sqlZVyN4H4w04sYbLoVK8q+SSZtn3m Q==;
X-CSE-ConnectionGUID: Z3kIbvL3RDaoO87wK28eWA==
X-CSE-MsgGUID: fNLDxuLARGq+uHg+96fIDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="24215573"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="24215573"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16635666"
Received: from unknown (HELO intel.com) ([10.247.118.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:45:50 -0700
Date: Thu, 28 Mar 2024 11:45:44 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <ZgVKWBQqEat-3iR3@ashyti-mobl2.lan>
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
 <ZgUq47D313cr2VYp@ashyti-mobl2.lan> <87r0fufxy2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r0fufxy2.fsf@intel.com>
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

Hi Jani,

On Thu, Mar 28, 2024 at 12:33:09PM +0200, Jani Nikula wrote:
> On Thu, 28 Mar 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> >> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> >> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> >> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> >> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> >> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> >> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> >> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
> >> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
> >> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
> >> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
> >> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
> >> +	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
> >> +		return -ENOMEM;
> >
> > why not extract the value from drmm_mutex_init()? it would make
> > the code a bit more complex, but better than forcing a -ENOMEM
> > return.
> >
> > 	err = drmm_mutex_init(...)
> > 	if (err)
> > 		return err;
> >
> > 	err = drmm_mutex_init(...)
> > 	if (err)
> > 		return err;
> >
> > 	err = drmm_mutex_init(...)
> > 	if (err)
> > 		return err;
> > 	
> > 	...
> >
> > On the other hand drmm_mutex_init(), as of now returns only
> > -ENOMEM, but it's a bad practice to assume it will always do. I'd
> > rather prefer not to check the error value at all.
> 
> And round and round we go. This is exactly what v1 was [1], but it's not
> clear because the patch doesn't have a changelog.

ha! funny! I missed v1.

> This is all utterly ridiculous compared to *why* we even have or use
> drmm_mutex_init(). Managed initialization causes more trouble here than
> it gains us. Gah.

As I wrote here:

> > I'd rather prefer not to check the error value at all.

we could rather drop this patch. Checking the error value is
always good, but checking implausible errors with this price is
not really worth it.

At the end drmm_mutex_init() should make our life easier.

Andi
