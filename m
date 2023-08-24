Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B040786C5C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 11:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB9910E513;
	Thu, 24 Aug 2023 09:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5079210E513;
 Thu, 24 Aug 2023 09:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692871001; x=1724407001;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Dq3vNpFC1F5bykIlFCLoZe/p9z2kWBfnkUf6/oAtiVg=;
 b=KRE1bjqxw7fYmrfvfNmk5At3LIJwrRNSDFasjiv2foccj7CTYkmdEtih
 5yiLqEsOapb5AX0BKGJ931WfzmMOfhczxemM74fwm+u/KYqkOq5D5dwE5
 zuxzggj3g2s2R/tptXkXE4sozwSFrjOJAUh+Qu5eNshNGxlIsyJeWVyJG
 Q29Dd70J5lFNF56BEiDg6wyrIaINtkJbSh7G4Z2apAvsIiPtRxEZc/Q7P
 klQra5VpNRF9or+86xOQYZU8l+IbhL2ywrEfigRuAjDyXyC9OvAX2sOY1
 5Xcny6+DtRyAhzjg0kgOBCwMqq2Wk4kGrnf1WZVDac6vm+VDuXhwBxF1O g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378150331"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378150331"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="736987258"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="736987258"
Received: from andrzejk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.90])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:56:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gil Dekel <gildekel@chromium.org>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
In-Reply-To: <20230824043240.323564-1-gildekel@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230818170156.2194015-1-gildekel@chromium.org>
 <20230824043240.323564-1-gildekel@chromium.org>
Date: Thu, 24 Aug 2023 12:56:36 +0300
Message-ID: <87il944vcb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 0/6] drm/i915/dp_link_training: Define a
 final failure state when link training fails
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 24 Aug 2023, Gil Dekel <gildekel@chromium.org> wrote:
> Next version of https://patchwork.freedesktop.org/series/122643/
>
> Reorganize into:
> 1) Add for final failure state for SST and MST link training fallback.
> 2) Add a DRM helper for setting downstream MST ports' link-status state.
> 3) Make handling SST and MST connectors simpler via intel_dp.
> 4) Update link-status for downstream MST ports.
> 5) Emit a uevent with the "link-status" trigger property.

Please don't send series in-reply-to other series. It'll confuse the
patchwork/CI doohickey trying to apply the patches for testing.

Thanks,
Jani.

>
> Gil Dekel (6):
>   drm/i915/dp_link_training: Add a final failing state to link training
>     fallback
>   drm/i915/dp_link_training: Add a final failing state to link training
>     fallback for MST
>   drm/dp_mst: Add drm_dp_set_mst_topology_link_status()
>   drm/i915: Move DP modeset_retry_work into intel_dp
>   drm/i915/dp_link_training: Set all downstream MST ports to BAD before
>     retrying
>   drm/i915/dp_link_training: Emit a link-status=Bad uevent with trigger
>     property
>
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 39 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c  | 14 +++-
>  .../drm/i915/display/intel_display_types.h    |  6 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 75 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  2 +-
>  .../drm/i915/display/intel_dp_link_training.c | 11 ++-
>  include/drm/display/drm_dp_mst_helper.h       |  3 +
>  7 files changed, 110 insertions(+), 40 deletions(-)
>
> --
> Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics

-- 
Jani Nikula, Intel Open Source Graphics Center
