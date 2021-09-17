Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54C740F867
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 14:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A346EC78;
	Fri, 17 Sep 2021 12:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA006EC77;
 Fri, 17 Sep 2021 12:54:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222844321"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="222844321"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 05:54:29 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="546362269"
Received: from unknown (HELO localhost) ([10.251.216.224])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 05:54:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
In-Reply-To: <cover.1631191763.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1631191763.git.jani.nikula@intel.com>
Date: Fri, 17 Sep 2021 15:54:23 +0300
Message-ID: <87mtobuzuo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 00/13] drm/i915/dp: dp 2.0 enabling prep
 work
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

On Thu, 09 Sep 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> v3 of https://patchwork.freedesktop.org/series/93800/ with minor tweaks
> and the already merged patches obviously dropped.
>
> Jani Nikula (13):
>   drm/dp: add DP 2.0 UHBR link rate and bw code conversions
>   drm/dp: use more of the extended receiver cap
>   drm/dp: add LTTPR DP 2.0 DPCD addresses
>   drm/dp: add helper for extracting adjust 128b/132b TX FFE preset

Maarten, Maxime, Thomas, can I get an ack to merge these four patches
via drm-intel please, or would you prefer a topic branch instead?

Thanks,
Jani.


>   drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode
>   drm/i915/dp: add helper for checking for UHBR link rate
>   drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates
>   drm/i915/dp: select 128b/132b channel encoding for UHBR rates
>   drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0
>   drm/i915/dp: add HAS_DP20 macro
>   drm/i915/dg2: use 128b/132b transcoder DDI mode
>   drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH,LOW} for 128b/132b
>   drm/i915/dg2: update link training for 128b/132b
>
>  drivers/gpu/drm/drm_dp_helper.c               | 42 +++++++-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 61 +++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 ++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c | 99 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 11 +++
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  include/drm/drm_dp_helper.h                   |  6 ++
>  9 files changed, 180 insertions(+), 49 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
