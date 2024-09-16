Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B6197A381
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 16:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABEE910E191;
	Mon, 16 Sep 2024 14:00:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R75ubJVm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B785310E191;
 Mon, 16 Sep 2024 14:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726495258; x=1758031258;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KTQjwZHHiSqkh5lM354P8c235yJpVLBjBFd2tnP+YGw=;
 b=R75ubJVmXWqOgXh0s+V3Aad7OkR+0esOTBqm6NBe88VGMEpJqiG0J+jh
 btZqTijwFsR1rqbe7F2h89ugdQfX/JsEVJUFct4pRpqfr7iVU4UXa6swO
 s/w1tWqfyFdR53aofyclpjQqPIULcWgnLqHaPg17QUoInoCTwweHl1V6B
 ZKZAl5r34PB3BTOovy7A43mnSSnTbndRr/szkXlB1zF7vo+YD0fs0N7Qd
 NlQzyr527EvXMV4qcz+IrozSsTdZt4QhDmYAYU2wEAS5RFrwu8GW0qKgh
 O+NMKcKgkR/LoOH7tc5y/rf52E+om2u2FW0aXEx8MJUR4c9e7FK8WUwOJ g==;
X-CSE-ConnectionGUID: xqhZcqz7TciU6RtdqKIaFw==
X-CSE-MsgGUID: S9t+8eWpRlSR8St9zM56Fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42795890"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42795890"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 07:00:57 -0700
X-CSE-ConnectionGUID: uiKCoy98Sg+/xz/SlRuCAg==
X-CSE-MsgGUID: P5ZkOCGoQhaed088masrZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="68983149"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 07:00:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 17:00:54 +0300
Date: Mon, 16 Sep 2024 17:00:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/xe: Fix DSB buffer coherency
Message-ID: <Zug6Ft6BCuhGd_y0@intel.com>
References: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
 <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
 <ZuRykc_etbea6063@intel.com>
 <57f44ae3-9cd9-4bd9-ba5d-67e8ae0d7f09@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <57f44ae3-9cd9-4bd9-ba5d-67e8ae0d7f09@linux.intel.com>
X-Patchwork-Hint: comment
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

On Fri, Sep 13, 2024 at 08:44:01PM +0200, Maarten Lankhorst wrote:
> 
> 
> Den 2024-09-13 kl. 19:12, skrev Ville Syrjälä:
> > On Fri, Sep 13, 2024 at 01:47:53PM +0200, Maarten Lankhorst wrote:
> >> Add the scanout flag to force WC caching, and add the memory barrier
> >> where needed.
> >>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 5 +++--
> >>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> >> index f99d901a3214f..f7949bf5426af 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> >> @@ -48,11 +48,12 @@ bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *d
> >>  	if (!vma)
> >>  		return false;
> >>  
> >> +	/* Set scanout flag for WC mapping */
> >>  	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> >>  				   NULL, PAGE_ALIGN(size),
> >>  				   ttm_bo_type_kernel,
> >>  				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
> >> -				   XE_BO_FLAG_GGTT);
> >> +				   XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT);
> >>  	if (IS_ERR(obj)) {
> >>  		kfree(vma);
> >>  		return false;
> >> @@ -73,5 +74,5 @@ void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
> >>  
> >>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
> >>  {
> >> -	/* TODO: add xe specific flush_map() for dsb buffer object. */
> >> +	xe_device_wmb(dsb_buf->vma->bo->tile->xe);
> > 
> > MMIO itself should be sufficient to flush the WC buffer.
> > But I guess no real harm in hammering it a bit harder.
> 
> You would say that, I still saw a spurious DSB timeout without the flush. :)
> 
> "Memory mapped I/O usually takes place through memory locations that are part of
> a window in the CPU's memory space that has different properties assigned than
> the usual RAM directed window.
> 
> Amongst these properties is usually the fact that such accesses bypass the
> caching entirely and go directly to the device buses.  This means MMIO accesses
> may, in effect, overtake accesses to cached memory that were emitted earlier."

WC != cached

Any uncached access is supposed to flush the WC buffer,
same as sfence.

Sounds like you have some other issue and the sfence just happens
to work around it somehow. Either that or the CPU is broken.

> 
> Since the memory is write combined, the memory barrier itself is sufficient
> and no further invalidation is required.
> 
> Just the workaround should be fine. The l2 flush should be moved after the mb as well.
> I'll do that in a followup patch.
> 
> >>  }
> >> -- 
> >> 2.45.2
> > 

-- 
Ville Syrjälä
Intel
