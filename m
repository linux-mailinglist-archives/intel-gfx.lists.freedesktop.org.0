Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31368A791B5
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 17:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C44410E802;
	Wed,  2 Apr 2025 15:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B36CqMtm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4341E10E80B;
 Wed,  2 Apr 2025 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743606053; x=1775142053;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ppJaE6TgO2ja6Y4YcYKHhkhqpuZJN2aU6PI0O8Jks/g=;
 b=B36CqMtmNB981tBAOwn6YaT1XtxWgB9goDUfVKcjL7RuG/gvufpaeBOJ
 q8tDk2bwKOnsKF74n/35do12xcq80PIE0AnCugHMyx+Ns/v/CPjAY6CWn
 TfczHp+l73sXqQk0WvmgK27TSHrqw0VbKbtr9z023aR5WOrO8MSh0L2Tm
 J6nE8Jlm9Yc4TxSihKcNBXBwNuMYsOQlfMmQ1xU/fDGG8HsSGRCs+xf2I
 gMl5ba6FsbNhp0fivWAQiiEvrhfvruOogT4twyK08BlBXsxFyz7XiYVR0
 dQyUeZXDu7UNOwaNhuj4LfJg7VlnQiWjzycseDMi+0ddfdlHZnFNAv4KG A==;
X-CSE-ConnectionGUID: +0HqwWsQTCOUBpCGzcvM1g==
X-CSE-MsgGUID: MnxpeXSMS9KWTACzaBWYEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="62377375"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="62377375"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 08:00:53 -0700
X-CSE-ConnectionGUID: w3PjeQrlRbCatimpOxQILQ==
X-CSE-MsgGUID: 2Xr09KNUSK+RGjQ4m7fGJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="131919467"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 02 Apr 2025 08:00:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 18:00:50 +0300
Date: Wed, 2 Apr 2025 18:00:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Precompute plane SURF address/etc.
Message-ID: <Z-1RIsXg14-2qMbg@intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
 <174356840050.25661.7739072322248133579@e6b6f09ec485>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <174356840050.25661.7739072322248133579@e6b6f09ec485>
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

On Wed, Apr 02, 2025 at 04:33:20AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Precompute plane SURF address/etc.
> URL   : https://patchwork.freedesktop.org/series/147097/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16361_full -> Patchwork_147097v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_147097v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147097v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_147097v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_color@ctm-max@pipe-a-hdmi-a-1:
>     - shard-snb:          [PASS][1] -> [ABORT][2] +17 other tests abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16361/shard-snb2/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147097v1/shard-snb5/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html

Apparently I forgot that we can't do the *_ctl_crtc() stuff
so early as crtc_state->gamma_enable & co. haven't been computed
yet.

I think I still want to clean up the ->ctl stuff, but I probably
need to add a new plane vfunc for this. And I think I might take
that opportunity to move some of plane related details from
intel_color_add_affected_planes() into the plane code proper.

For now I'll probably repost the first six patches as a
separate series since all that should be completely fine as is.

What's also slightly troubling about these CI results is that
GLK didn't catch anything, despite the potential to use a stale
PLANE_COLOR_CTL. And presumable SNB only caught stuff becasue the
state checker noticed the stale DSPCNTR, but the tests didn't.
So seems like we are somehow missing tests that would change
gamma_mode & co. without touching the plane...

> 
>   * igt@kms_color@ctm-max@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +3 other tests dmesg-warn
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16361/shard-snb2/igt@kms_color@ctm-max@pipe-b-hdmi-a-1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147097v1/shard-snb5/igt@kms_color@ctm-max@pipe-b-hdmi-a-1.html

CI folks, why is this reported as 'dmesg-warn' vs. the previous test was
'abort' even though both tests failed in the same exact way (state checker
WARN)?

-- 
Ville Syrjälä
Intel
