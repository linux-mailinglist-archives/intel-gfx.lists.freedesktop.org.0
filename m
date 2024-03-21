Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F150E885917
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 13:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EFF10E8A0;
	Thu, 21 Mar 2024 12:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bYxtQRnh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7992210E88F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711024233; x=1742560233;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7jG6fI0SM5zTCfshZNRiz5Uip60mvsOs8mjZCHe4dRI=;
 b=bYxtQRnhetfYycNcjJJH2pLuUrFO9Vqq4lYRrPW3Ou/uYqOnNYvWxjo4
 aiDNKL4Ag2EY6rUVg2FbB9wUQBIOiOKUP0/VJCsDMrL0xfcw29/2zfaZk
 iT8KDG6p5bJKdrmSfQ8FX9U7xKkMj4iBJR7yIuOHASpgAM2irzMkih9IV
 xmT2SJ5ybcF+Cd2+pVZdjSYfF3JVIgtATXDqAk+85/91GSQGFZqho/tl9
 PliSUFFOyNvQxSRKBFkNgP2fKq5/EkknYOa4mNdhQZ7tuRV4re8tY6PHl
 XnwDtlslENJTfp4vf6i6ONFexyHwA9335VU0P7U3P7n5701X4fW3KV4sC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5856903"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="5856903"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 05:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="14467141"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 05:30:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [CI 0/7] drm/i915: pass encoder around more for port/phy checks
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1710949619.git.jani.nikula@intel.com>
Date: Thu, 21 Mar 2024 14:30:28 +0200
Message-ID: <87edc3n4wr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 20 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> v1 after the reviewed RFC [1].

And pushed to drm-intel-next, thanks for the review.

Fixed patch 1 subject prefix to "drm/i915/hdmi" while applying.

BR,
Jani.

>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/cover.1710253533.git.jani.nikula@intel.com
>
> Jani Nikula (7):
>   drm/hdmi: convert *_port_to_ddc_pin() to *_encoder_to_ddc_pin()
>   drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
>   drm/i915/snps: pass encoder to intel_snps_phy_update_psr_power_state()
>   drm/i915/display: add intel_encoder_is_*() and _to_*() functions
>   drm/i915/display: use intel_encoder_is/to_* functions
>   drm/i915/cx0: remove the unused intel_is_c10phy()
>   drm/i915/cx0: pass encoder instead of i915 and port around
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 299 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 127 ++++----
>  .../drm/i915/display/intel_ddi_buf_trans.c    |  14 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  40 +++
>  drivers/gpu/drm/i915/display/intel_display.h  |   7 +
>  .../i915/display/intel_display_power_well.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  15 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  80 ++---
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  14 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   7 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  16 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.h |   4 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |  33 +-
>  15 files changed, 339 insertions(+), 344 deletions(-)

-- 
Jani Nikula, Intel
