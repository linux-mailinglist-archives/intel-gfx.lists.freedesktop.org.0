Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D89502825
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 12:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F31C10ECC8;
	Fri, 15 Apr 2022 10:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C810F10ECC8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 10:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650018089; x=1681554089;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7XNqy6zmSjFv8aEymW3sRtoINzElV/s20kt6loa3dlY=;
 b=gCgUHLuz8c+QSTCAPZhcm6lKL0tUd+0lAlZSUF8R/BKjUlqSPDlQ29as
 2MkSJAwiNUVXet6a/7d/zXKs4RT6rvH8niZ0bFGrpL4l8UaKYBUYEP77R
 T5JrBAkKNRSfn1ef1PcJYHWev0EcErHGZJ1EIHLKMKIkl6xW/vgyxMIQF
 PMeOf3I+wXKTl4NN6dahTD8eQCQgIOVZtcd097Usfl+DHRJHmxtT5jPv6
 /ipRQRYQVMR7c/To/vw3lpHhp4Gk0vEvcZRcYfsVNgxNINOhDlmySs56T
 t6IH/M0KwAqTqKCe9Y++jjd2rkBePcOl5x6hc0LPXkfQAiY+YtQdlv0to A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262887123"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="262887123"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:21:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="574298851"
Received: from pgooneti-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.255.34.169])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:21:28 -0700
Date: Fri, 15 Apr 2022 06:21:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YllHJizrltBkHUDw@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <8f667da9aa39452524abef1333226b645438d2cc.1649871650.git.ashutosh.dixit@intel.com>
 <87lew7eque.fsf@intel.com> <878rs72t78.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878rs72t78.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 03:31:07PM -0700, Dixit, Ashutosh wrote:
> On Thu, 14 Apr 2022 06:28:57 -0700, Jani Nikula wrote:
> >
> > On Wed, 13 Apr 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> > > Each gt contains an independent instance of pcode. Extend pcode functions
> > > to interface with pcode on different gt's. Previous (GT0) pcode read/write
> > > interfaces are preserved.
> >
> > The big problem here is that this hard couples display code to gt code,
> > while we're trying hard to go the opposite direction. It doesn't matter
> > that the existing interfaces are preserved as wrappers when it relies on
> > an intel_gt being available (via i915->gt0).

I don't believe there is a big problem in here...

please note the intel_pcode.h is keeping the abstraction for display

#define snb_pcode_write_timeout(i915, mbox, val, fast_timeout_us, slow_timeout_ms) \
        intel_gt_pcode_write_timeout(&(i915)->gt0, mbox, val, fast_timeout_us, slow_timeout_ms)

#define snb_pcode_write(i915, mbox, val) \
        snb_pcode_write_timeout(i915, mbox, val, 500, 0)

display only uses these macros that Ashutosh didn't touch.

> >
> > Note how 'git grep intel_gt -- drivers/gpu/drm/i915/display/' matches
> > only 1 line.

As well with the patches applied:

$ git log --oneline -1
1f58f1195478 (HEAD -> drm-tip) drm/i915/gt: Expose per-gt RPS defaults in sysfs

$ git grep intel_gt -- drivers/gpu/drm/i915/display/
drivers/gpu/drm/i915/display/intel_display.c:           intel_gt_set_wedged(to_gt(dev_priv));

>
> Hi Jani, would you have suggestions about how to do this (handle pcode on
> multiple gt's)? The thinking was this patch would be a straightforward way
> to avoid code duplication. Also:

Maybe it is just a matter of renaming the macros used by display
in intel_pcode.h to reflect that it should be used by display only?

Thanks,
Rodrigo.

>
> int intel_gt_probe_all() {
> 	...
>        /*
>         * We always have at least one primary GT on any device
>         * and it has been already initialized early during probe
>         * in i915_driver_probe()
>         */
>
> Thanks.
