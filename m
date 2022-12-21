Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A8265331A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:22:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C659610E45E;
	Wed, 21 Dec 2022 15:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B98010E45E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671636161; x=1703172161;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZVTmLlQph5X4EOyCXC2N6aar3VHzsC28Z7BYczdmW+s=;
 b=RWpjM1KWVThFx3riUtCEMXiVQFAZ43GB/cibNg3QpWhG3FKR/sFHzPSJ
 Px564O7jJHXdQeKuBhX2uV78va+G38r/VRNTIZ9OkH0H3ySGkYMxqOYxe
 f70MloxJDKUAXF9h3t9A2LLyphBV3nUJYU6KUbR+GgVPfRGnwt3rh4m4b
 jQ/1WXEgKL4qA9f8Cph4fPtJ5XEZ74cxnsCw60hy7F4EpVZabGMIGYB5h
 vPqSlSgfklKcD+3p9AgZKMebXkRQ7uh4sE03w0IDS2IVLPo8k1lEhJAx/
 KFKXWbaQM6KLDSwjagFuwp38yjy71QlvXGAGOj79/BKJT1thMvZrK4j38 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="319945478"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="319945478"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="758553313"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="758553313"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 21 Dec 2022 07:22:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Dec 2022 17:22:37 +0200
Date: Wed, 21 Dec 2022 17:22:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <Y6MkvVJ1ZLnhaXBi@intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
 <Y6MdhrwVjkzGx6z5@intel.com>
 <4e929234-8a88-4d81-7b4b-19d4d5e52b44@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e929234-8a88-4d81-7b4b-19d4d5e52b44@suse.de>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 21, 2022 at 04:08:13PM +0100, Thomas Zimmermann wrote:
> Hi
> 
> Am 21.12.22 um 15:51 schrieb Ville Syrjälä:
> > On Wed, Dec 21, 2022 at 11:49:59AM +0100, Thomas Zimmermann wrote:
> >> Hi
> >>
> >> Am 29.11.22 um 13:43 schrieb Jouni Högander:
> >>> After splitting generic drm_fb_helper into it's own file it's left to
> >>> helper implementation to have fb_dirty function. Currently intel
> >>> fb doesn't have it. This is causing problems when PSR is enabled.
> >>>
> >>> Implement simple fb_dirty callback to deliver notifications to psr
> >>> about updates in fb console.
> >>
> >> I'm a bit confused about i915's use of fb_dirty here. How is this
> >> supposed to interact with mmap?  i915 doesn't use deferred I/O so fbdev
> >> mmap will never call fb_dirty if userspace writes to mmap'ed pages. Is
> >> this only required for the kernel's graphics console?
> > 
> > It's required for everything. mmap is presumably borked for
> > the cases where we can't use any hw based damage tracking.
> 
> In this case, it would make sense to implement the update with fb_dirty 
> (instead of the fb_ops I mentioned).
> 
> For mmap you can use fbdev's deferred I/O. There's 
> drm_fb_helper_deferrer_io() that tracks mmaped pages and regularly calls 
> fb_dirty to let the driver do an update.

Not sure we want the extra defio overhead for a feature
no one is likely to ever need.

If we actually cared about any of this we could perhaps
just hook into .fb_mmap() and turn off any stuff that
needs software dirty tracking while the buffer is mapped.

-- 
Ville Syrjälä
Intel
