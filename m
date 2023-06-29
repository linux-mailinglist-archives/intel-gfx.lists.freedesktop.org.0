Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7158E7421D3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 10:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2985010E3BC;
	Thu, 29 Jun 2023 08:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9763310E3BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 08:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688026392; x=1719562392;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=9+dvHc5Xv21IwHhyuyf9ggyw+gVbnJoW3DxTQ9fzGoc=;
 b=ehzHd/KULrB3b9LQwBBQ1ckUEeFffMVjpzNso0I5euQmR3/1K0U4SmRq
 tJI5xearyYZTYGlxDcnpDs7BfOtCy2Thjp+MUd7Rvu3PV2ZGSWLu1kCpA
 MCB8Tt3qYRIHIQAygNYc/obWPCz3r5QHDMA/qwyo6V5DMuqjH+KynVBdw
 tSzkAMp9YQHNtMqO3Tc+a+cSZQ0pyKsykhCgwFw/Clyyy6L8iB73EbB4Y
 z4nOV9gu7mr6+L8saiPxGAgtMIZaxK/a1WuxsKrUoCk10SvI44VkYW0Zr
 hUlH1/zE8mdnMUG+bPMpIB7tu3jJYMfBwG/NmVzUn/WbcUM9uz/JU7k78 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="364597909"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="364597909"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 01:13:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="720484240"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="720484240"
Received: from gyorgysx-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.135])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 01:13:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230628163359.2879668-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230628163359.2879668-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 29 Jun 2023 11:12:51 +0300
Message-ID: <87h6qqsn3w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 0/3] Get optimal audio frequency and channels
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

On Wed, 28 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Currently we do not check if there is enough bandwidth for
> audio, and what channels and freq it can really support.
> Also sometimes there can be HW constraints e.g. GLK where audio
> channels supported are only 2.

Why are you sending this so many times? What are the changes between the
versions? People lose track.

BR,
Jani.

>
> https://patchwork.freedesktop.org/series/107647/
>
> Obtain the optimal audio rate and channel based on available display
> timing constraints.
>
> This can be achieved by:
> - Retrieve the supported channel and rate information from SADs
> - Adding audio-related config parameters in the CRTC state, such
> as audio support, rate, and channel.
> - Initializing the audio config parameters with the maximum supported
> rate and channel by the audio source.
> - Computing the SADs based on the audio source's capabilities.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>
> Mitul Golani (3):
>   drm/i915: Add has_audio to separate audio parameter in crtc_state
>   drm/i915/display: Configure and initialize HDMI audio capabilities
>   drm/i915/display: Add wrapper to Compute SAD
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  16 +--
>  drivers/gpu/drm/i915/display/intel_audio.c    | 115 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   6 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>  .../drm/i915/display/intel_display_types.h    |  12 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  10 +-
>  12 files changed, 147 insertions(+), 32 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
