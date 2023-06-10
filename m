Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C9A72A98B
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jun 2023 08:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4986110E125;
	Sat, 10 Jun 2023 06:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C39910E125
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jun 2023 06:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686380320; x=1717916320;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/FZpqtd+xpK37qgI/mpKHGdd9h7vNmcPRu6cmm7dpds=;
 b=mrTNsSNLpSTFzHt2wx0Nm3ov0ar1nLpE0bhTbpahly5fOWNjZ9iExna0
 bL2L4wh5aB7ReKGrDxjcnM69Snkyjomn+UjFLZaffRzvM2nzVzcsuKNuQ
 TqJCBqwOH3Vc+Ro55Qeg9UcO8xx/hL83OfbyShjtK71he21HbWw/eJU7s
 crVHDvG4LJZBF9J0Ew047RmZlENXbQLvDWC7ML56HzMjtTFTGyhV8Jq61
 TZVWjvAoEqev99JiQN4xqj0gyet9UF3vsyFkXAhQ7khIS/t5X2+5CI9h6
 Um0kHNHOqMWg0ct7KhIPoeFu07jN/zzXjAOLcdX9LHuMvYPLdL9wyvRUs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="356630652"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="356630652"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 23:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="743721517"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="743721517"
Received: from mnovakov-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.60.33])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 23:58:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1686231190.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1686231190.git.jani.nikula@intel.com>
Date: Sat, 10 Jun 2023 09:58:34 +0300
Message-ID: <87352zreg5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v6 0/3] drm/i915: implement internal
 workqueues
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
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, luciano.coelho@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jun 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> This is v6 of [1], creating i915->unordered_wq also for mock devices.

Pushed to drm-intel-next. Thanks for the patches and review.

This also superseeds [1], and finally removes the last user of
flush_scheduled_work().

Tetsuo, this will make its way to v6.5. Apologies about all the
procrastination and delay.


BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/47c5fe59-faec-8eb6-7f3c-f76a4bb0f3cb@I-love.SAKURA.ne.jp




>
> BR,
> Jani.
>
> [1] https://patchwork.freedesktop.org/series/118947/
>
>
> Luca Coelho (3):
>   drm/i915: use pointer to i915 instead of rpm in wakeref
>   drm/i915: add a dedicated workqueue inside drm_i915_private
>   drm/i915/selftests: add local workqueue for SW fence selftest
>
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +++-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 18 ++++++++++-----
>  drivers/gpu/drm/i915/display/intel_opregion.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_pps.c      |  4 +++-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  4 +---
>  .../drm/i915/gt/intel_execlists_submission.c  |  5 ++--
>  .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 10 ++++----
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 10 ++++----
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++++--------
>  drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            | 13 +++++++++++
>  drivers/gpu/drm/i915/i915_drv.h               | 10 ++++++++
>  drivers/gpu/drm/i915/i915_request.c           |  2 +-
>  drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
>  drivers/gpu/drm/i915/intel_wakeref.c          | 22 ++++++++++--------
>  drivers/gpu/drm/i915/intel_wakeref.h          | 12 +++++-----
>  .../gpu/drm/i915/selftests/i915_sw_fence.c    | 16 ++++++++++---
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  7 ++++++
>  30 files changed, 143 insertions(+), 77 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
