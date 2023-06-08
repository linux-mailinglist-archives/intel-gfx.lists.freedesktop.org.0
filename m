Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C16727AF4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D365310E0A8;
	Thu,  8 Jun 2023 09:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46F410E40F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686215694; x=1717751694;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SQqAyhKSX5qhLY6Fwi6SQxNr5Zj/b0+D1hzClta9R58=;
 b=bUGjDeAK0jsTL/0dnaNcJrHPLbbH8a2FJ3HA80iUIq4S9ZcDo4oXlY/V
 BFYBh6H5UlUXVGdmTnszutqHxSHyNrpN8CgJRYo093yc8JxruI086Qfb3
 uBg4ik1o2mD8KolwNUBEssHK7W11HmIU8xBHMHfVjQU96JIM+xK93Ar31
 HpMPwo8HfIWO1EKmhyue2/onziiA7eiQNKSpf4+uneQGgDIfQ4A4KmVgY
 lgRlvgZ4jCiX0A4Ixo3bZvx3uXTE4ysnEQei5cn6Ci/p3sEMPUOw4hu1w
 BJ3i3wUnl596L1EdZcy/ZIJfvoXSUft/gwoyRqPE1LBShsKsiGzZ9MAxB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336887819"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="336887819"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="704008259"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="704008259"
Received: from ovaispap-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.59.117])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:14:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230606163942.330052-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230606163942.330052-1-luciano.coelho@intel.com>
Date: Thu, 08 Jun 2023 12:14:49 +0300
Message-ID: <87o7lqs4c6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 0/3] drm/i915: implement internal
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 06 Jun 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
> Hi,
>
> This series implements internal workqueues in the i915 driver in order
> to avoid using the system queue.  We add one generic workqueue in the
> drm_i915_private structure, one specific for wake references and one
> in a self-test.
>
> This is based on Tetsuo's work[1] and is required to get rid of the
> flush_scheduled_work() usage.
>
> As discussed, we can either take Tetsuo's implementation first, which
> uses a module-global workqueue, and then my series on top of that, to
> change the implementation to per-device workqueues, or apply my series
> directly.  And a third option would be to keep the workqueue as
> module-global.  I'm fine with any of this options.  It's up to the
> maintainers to decide which one to take.
>
> In v2:
>    * Removed per-engine workqueue and wakeref-specific queue;
>    * Renamed the workqueue name from "i915-wq" to "unordered_wq";
>    * Added comment about when the new workqueue should be used;
>    * Changed wakeref structs to store i915 instead of rpm;
>
> In v3:
>    * Fixed queue to destroy in the init error path;
>    * Improved the new queue's description a bit;
>    * Removed stray empty-line removal;
>
> In v4:
>    * Fixed the queue used in __intel_wakeref_put_last(), we were
>      accidentally using the ordered workqueue.  Thanks, Tvrtko!
>
> In v5:
>    * Fix compilation error cause by change from dev_priv to i915 in
>      intel_hdcp_enable().
>
> Please review.

mock i915 device also needs to have
i915->unordered_wq. mock_gem_device() in selftests/mock_gem_device.c

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/shard-apl1/igt@i915_selftest@mock@requests.html

BR,
Jani.


>
> [1] https://patchwork.freedesktop.org/series/114608/
>
> Cheers,
> Luca.
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
>  29 files changed, 136 insertions(+), 77 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
