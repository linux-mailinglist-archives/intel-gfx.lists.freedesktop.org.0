Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BAF73E6B3
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 19:38:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B50D10E08B;
	Mon, 26 Jun 2023 17:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DA910E08B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 17:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687801127; x=1719337127;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=QHDCtrmEnH7IyZNfVIwaZz+tlN1YKsIlks8m9udFdAk=;
 b=m3/TSfmf7kXDaAVIqV7VbdyDlqBXDVyPiONw51X1lg8kmeGOa6Zvye5g
 l9lB9JkrksHEXDTbyxyw73QteQYl2AlrzmAyDGqF0A/UMGOQvWRpK8y4L
 MusHw+XDhKuYBh9mBsf/WDvDuaXEK76n7SEEi2DFhJU89xXL8TkPgiKvn
 uzO/0sIDVHdI13plDN+J2+nMjYrJQ4f0y8i7pI3A5Kf5+VIpQ/ysChDhE
 DDN7G6sPzvj00jOzAnUvs9dy9tEQPY/sH76biUa0BaNEqN9YwvY9HLZF6
 iYGxMVYMnhWWc/DjomnsjF8DAHcfhpYJXFK6M1/0kmNYB7i8A0Z8lyOiF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="447723964"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="447723964"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="962844132"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="962844132"
Received: from pdenis-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.207])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:38:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 26 Jun 2023 20:38:29 +0300
Message-ID: <87o7l2t97u.fsf@intel.com>
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

On Mon, 26 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Currently we do not check if there is enough bandwidth for
> audio, and what channels and freq it can really support.
> Also sometimes there can be HW constraints e.g. GLK where audio
> channels supported are only 2.
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

Please don't send so many iterations of the series consecutively. And
please add the version in the subject.

I've given feedback on the previous posting, and won't give further
feedback on this thread.

BR,
Jani.


>
> Mitul Golani (3):
>   drm/i915/hdmi: Optimize source audio parameter handling
>   drm/i915/display: Configure and initialize HDMI audio capabilities
>   drm/i915/display: Add wrapper to Compute SAD
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       | 16 ++--
>  drivers/gpu/drm/i915/display/intel_audio.c    | 75 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_audio.h    |  4 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
>  .../drm/i915/display/intel_display_types.h    | 12 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 38 +++++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 10 +--
>  14 files changed, 148 insertions(+), 32 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
