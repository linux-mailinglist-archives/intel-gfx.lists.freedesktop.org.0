Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D26FD241567
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 05:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E764389DE1;
	Tue, 11 Aug 2020 03:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1FB89DE1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 03:44:52 +0000 (UTC)
IronPort-SDR: euZJIa0x+U4GT7VQ96fz9riTQGqpU24WF5Y6QLza0UiHQTYWuVdQEOxMPkTt+l6sQQDaJGxK8Z
 A9MfoWgPzSnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="153634661"
X-IronPort-AV: E=Sophos;i="5.75,459,1589266800"; d="scan'208";a="153634661"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 20:44:51 -0700
IronPort-SDR: ypW52wWc++gy+dggMPFTVjqUUGFZC7Ho12HCBIcfMkNcsMLb+0Y5XpjD+Lp0owEIJvTjIa67WO
 x/Y2qHzGABWg==
X-IronPort-AV: E=Sophos;i="5.75,459,1589266800"; d="scan'208";a="277463477"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 20:44:51 -0700
Date: Mon, 10 Aug 2020 20:44:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200811034450.GK2720297@mdroper-desk1.amr.corp.intel.com>
References: <20200810180851.2746267-1-matthew.d.roper@intel.com>
 <159709282441.2955.11306667328253055885@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159709282441.2955.11306667328253055885@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't try to check max stride for
 disabled/non-existent display
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

On Mon, Aug 10, 2020 at 09:53:44PM +0100, Chris Wilson wrote:
> Quoting Matt Roper (2020-08-10 19:08:51)
> > Userspace may still create GEM dumb buffers even on platforms with
> > disabled or non-existent display.  When creating dumb buffers we try to
> > check the max fb stride for the platform by looking at the first pipe on
> > the platform.  We previously fixed a crash related to accessing the
> > non-existent PIPE_A in commit 8ac495f624a4 ("drm/i915: Don't oops in
> > dumb_create ioctl if we have no crtcs") but the crash is back as of
> > commit eae3da27ba84 ("drm/i915: Get first crtc instead of PIPE_A crtc")
> > because we now try to iterate over the [uninitialized] crtc list.
> 
> drm_mode_config_init() is still being called
> i915_driver_probe
>   -> i915_driver_modeset_probe_noirq
>     -> intel_modeset_init_noirq
>       -> intel_mode_config_init
>         -> drm_mode_config_init
> regardless of the status for HAS_DISPLAY or INTEL_DISPLAY_ENABLED. So
> drm_crtc_index(0) should be returning NULL?

Ah, you're right.  The kernel that I was looking at the backtrace from
was a bit different than drm-tip and had a different initialization
flow.  Looks like drm-tip doesn't suffer from the same problem and we
don't need this patch after all.


Matt

> -Chris

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
