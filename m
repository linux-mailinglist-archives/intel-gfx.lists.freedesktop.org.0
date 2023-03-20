Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB2D6C226C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4FB10E647;
	Mon, 20 Mar 2023 20:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3805910E647
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679343554; x=1710879554;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LYrp4z2WSMNciC9zd8/jM4Y4O0w+1KM1Jo4ruNlAc2g=;
 b=mdxjU9tdOr0LvXkpi6iZx28uRSB99h20hyh3D9gL41hggPQiFsOiKSPx
 d+FByzXntpTumUJ3k9jqf2DMsyZ7/hFuS1oyqDzeJmSlGmfwsMX9kZvqj
 W+5ieXmEx/dH1r+Z439FxRK36xtbkp8QC7fwuvfFVThgAp8QzEri2x+SK
 BOUnMJttHQDFfB8M89Ea/sOODKf6whP573j2DYgH9bQybR7MQykKdhOzc
 BjY510+WJLwxOuj6qyhnnVRHHIdSGAbem5gzeFYkUbiwk5GWaYMSMC9k1
 cRgujJsDYizG8DmpP0tYUHoypFco+9D94CvsDnkCefaKNt1y8jnrYZAcB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327145440"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327145440"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770334456"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770334456"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:19:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:19:05 +0200
Date: Mon, 20 Mar 2023 22:19:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZBi/uVMhXNIqP5UU@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 00/14] drm/i915/tc: Fix a few TypeC / MST
 issues
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 03:17:10PM +0200, Imre Deak wrote:
> This patchset fixes a few issues on TypeC ports, related to the legacy
> port handling, HW state readout/verification. It also fixes an issue on
> TC port/MST outputs during system suspend/resume, where the modeset
> restoring the pre-suspend state fails atm.
> 
> Tested on ICL, TGL, ADLP.
> 
> Imre Deak (14):
>   drm/i915/tc: Abort DP AUX transfer on a disconnected TC port
>   drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
>   drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
>   drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
>   drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
>   drm/i915/tc: Factor out helpers converting HPD mask to TC mode
>   drm/i915/tc: Fix target TC mode for a disconnected legacy port
>   drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
>   drm/i915/tc: Fix initial TC mode on disabled legacy ports
>   drm/i915/tc: Make the TC mode readout consistent in all PHY states
>   drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
>   drm/i915: Add encoder hook to get the PLL type used by TC ports
>   drm/i915/tc: Factor out a function querying active links on a TC port
>   drm/i915/tc: Check the PLL type used by an enabled TC port

Read through it and didn't spot anything egregious. Just a few
minor nits for which I replied separately.

Apart from those the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  44 ++-
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +
>  .../drm/i915/display/intel_display_types.h    |   6 +
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  15 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       | 319 ++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_tc.h       |   1 +
>  6 files changed, 320 insertions(+), 68 deletions(-)
> 
> -- 
> 2.37.1

-- 
Ville Syrjälä
Intel
