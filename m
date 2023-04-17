Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D946E4361
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 11:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCCB810E00E;
	Mon, 17 Apr 2023 09:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6E010E00E
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 09:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681722947; x=1713258947;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TOBDhCuJzZM7lBZ5YiT2e5H2tFM3iWILX8gk09sjOfY=;
 b=mLo/bt3cJ8w48uG6cQiTWcxtWKGgwCe9Gwv3teV87M6iZ5y1vR0nywhp
 erPQyXXgnveEbu/+ki3Z2dVyNCRlA4BhF/qQ8+MAAzxjyKIE8IFDldXNx
 uKKz94tEMdU3TZ0otV3ddcehYWcfp4iITZ4QUGcd4G34o5cNASTTEEs4v
 K6i9cE1ntGutz57I1dwuWxdNHM/F/jChK13GU+eR+j9FnosCL9Xog6z8Q
 jtVFzgSfd6xRfuyFwBFP3nltnivMX+rb4cllz6FVxjfKGwM/tTAF4q7Tn
 lv8o6bToeeanhnaJYB8PLFd/tg0LM2SvNQs1S9wN3npgR1e7hAnyU/GaF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="344844011"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="344844011"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:15:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="780003342"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="780003342"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:15:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1681465222.git.jani.nikula@intel.com>
Date: Mon, 17 Apr 2023 12:15:42 +0300
Message-ID: <87v8hueuo1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 00/10] drm/i915/display: split out high
 level display entry points
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Apr 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> v2 of https://patchwork.freedesktop.org/series/116431/ with the minor
> review comments addressed.

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

>
> BR,
> Jani.
>
> Jani Nikula (10):
>   drm/i915/display: remove intel_display_commit_duplicated_state()
>   drm/i915/display: start high level display driver file
>   drm/i915/display: move intel_modeset_probe_defer() to
>     intel_display_driver.[ch]
>   drm/i915/display: rename intel_modeset_probe_defer() ->
>     intel_display_driver_probe_defer()
>   drm/i915/display: move modeset probe/remove functions to
>     intel_display_driver.c
>   drm/i915/display: rename intel_display_driver_* functions
>   drm/i915/display: add intel_display_reset.[ch]
>   drm/i915/display: move display suspend/resume to
>     intel_display_driver.[ch]
>   drm/i915/display: rename intel_display_driver_suspend/resume functions
>   drm/i915/display: add intel_display_driver_early_probe()
>
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 691 +-----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  29 +-
>  .../drm/i915/display/intel_display_driver.c   | 581 +++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  36 +
>  .../drm/i915/display/intel_display_reset.c    | 135 ++++
>  .../drm/i915/display/intel_display_reset.h    |  14 +
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  34 +-
>  drivers/gpu/drm/i915/i915_irq.c               |   2 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   3 +-
>  11 files changed, 817 insertions(+), 716 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.h

-- 
Jani Nikula, Intel Open Source Graphics Center
