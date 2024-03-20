Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A82881455
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC7010FD59;
	Wed, 20 Mar 2024 15:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kR6Y6N0I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E961810FD5C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710947812; x=1742483812;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=r7sI4oUYb84DsnGekoYETpCyBuNgl3qnqovIUp56X9Q=;
 b=kR6Y6N0InYuWJknKAfJYeRMmrQUAXpKpdOBIPwBNvIfWBHGwqKoCaj5+
 1lYDGKllslgCix2RyoOi8pxTusGhUER6RHdCselq5B5QWFUjhltD4YRWk
 dh9/334SHUGDguoLX2Wy9eDzD8+X6XrTbQQUKihpcwxm0KngwE9AQV8+5
 VV57c1grAQ19OCxrn7n98W/XbK3LzNtnjI3UxXoTxe2e15LyN0Af8f4pj
 mxPoHk5Dm8/clEoQ+lgHi3NIOMdcy2T27jkAXXVDGCWW6wN1pEDGVWlJB
 FI+F5bLmAZV4jvHBh7kTRYd3p8rR1LNIszp6vplcTGgV+FWI8l5Reytbs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="16616012"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="16616012"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:16:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782583"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782583"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 08:16:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 17:16:48 +0200
Date: Wed, 20 Mar 2024 17:16:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, imre.deak@intel.com
Subject: Re: [RFC 0/7] drm/i915: pass encoder around more for port/phy checks
Message-ID: <Zfr94E30khxsVf3G@intel.com>
References: <cover.1710253533.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1710253533.git.jani.nikula@intel.com>
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

On Tue, Mar 12, 2024 at 04:28:55PM +0200, Jani Nikula wrote:
> Based on my ideas at [1], pass the encoder around more instead of i915,
> port pair. Look up phy and TC port based on encoder.
> 
> This could be later extended to e.g. cache the info to encoder and/or
> look up data from encoder->devdata.
> 
> I know relying solely on encoder has its drawbacks, namely not being
> able to do stuff unless you have that encoder for that specific
> port/phy. And have a reference to it.
> 
> Thoughts?

Yes.

> 
> BR,
> Jani.
> 
> 
> [1] https://lore.kernel.org/r/87y1dnswgo.fsf@intel.com
> 
> Jani Nikula (7):
>   drm/hdmi: convert *_port_to_ddc_pin() to *_encoder_to_ddc_pin()
>   drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
>   drm/i915/snps: pass encoder to intel_snps_phy_update_psr_power_state()
>   drm/i915/display: add intel_encoder_is_*() and _to_*() functions
>   drm/i915/display: use intel_encoder_is/to_* functions
>   drm/i915/cx0: remove intel_is_c10phy()
>   drm/i915/cx0: pass encoder instead of i915 and port around

I have basically that same patch sitting in some branch.

With commit messages polished the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

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
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
