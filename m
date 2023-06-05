Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85E9722AC0
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 17:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247E710E2DA;
	Mon,  5 Jun 2023 15:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3ED10E2DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 15:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685978383; x=1717514383;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=I1h+iIGGikIdx4nT8uUhpmgKfc0AqhHJknt/8lkVG0Y=;
 b=hXXHgodu/VJ2TtdprhTCdGMAzaGd/oJvrL8LCAbia6rL7rqEKmXFVI+D
 sBn428hHqqmrrBoNJAmdBVtf1URxvU2TqMMdc0Dfh29AX0VS5BGVHV78w
 MCZo29Cc0ySQK3e64F0D24iruVPdkoaUs6Hez5z4fTZSCawdjemRj6oHs
 b9WntPyra428pp7WbfciUyfZMPSjSMyqlc2ecZy1IQdnpUdou7brKdedv
 lMWfl4CYE3CmTICM9ZMl3mOJb7KjF0+oQPd7yWai9C916tF45vAmaSAM8
 7M4nvruCEvcmGGGb8wqqsAWHyrVwmCSG9Eet5PZN6Di2NC87mOnXELtYL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="442768226"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="442768226"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="711846062"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="711846062"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.122])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:19:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
Date: Mon, 05 Jun 2023 18:19:38 +0300
Message-ID: <87ilc2aqd1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/5] s/ADL/ALDERLAKE
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

On Tue, 30 May 2023, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Replace all occurences of ADL -> ALDERLAKE in
> platform and subplatform defines. This way there is a
> consistent pattern to how platforms are referred. While
> the change is minor and could be combined to have lesser patches,
> splitting to per subpaltform for easier cherrypicks, if needed.

Cc: Joonas, Tvrtko

Commented on a couple of patches.

I'm not necessarily opposed to switching from acronyms to full names,
but this series alone does not improve consistency. Quite the opposite
actually.

It's a lot of churn to rename everything. Do we really want that?


BR,
Jani.


>
> Anusha Srivatsa (5):
>   drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
>   drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
>   drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
>   drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
>   drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform  defines
>
>  drivers/gpu/drm/i915/display/intel_cdclk.c       |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c         |  8 ++++----
>  .../gpu/drm/i915/display/skl_universal_plane.c   |  4 ++--
>  drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c  |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c            |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c         |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                  | 16 ++++++++--------
>  drivers/gpu/drm/i915/intel_device_info.c         |  2 +-
>  drivers/gpu/drm/i915/intel_step.c                |  6 +++---
>  10 files changed, 24 insertions(+), 24 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
