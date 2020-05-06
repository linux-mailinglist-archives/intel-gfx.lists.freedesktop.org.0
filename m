Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF341C7333
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 16:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C306E883;
	Wed,  6 May 2020 14:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A8D6E883
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 14:45:18 +0000 (UTC)
IronPort-SDR: dwns7ma4N0XNjoT5jyYQisVa33wOz4u6SOXi9LAxg5qjS/VtMeJf2XFhRJ3OVf6QUUPSOiWT9y
 xfSpfeoTwzjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 07:45:17 -0700
IronPort-SDR: IM/7TksA6qy8XdioNU1wM0KMWS0qj8dJcIvpEF73EMgMicinAvEUK+lSneZvspZzTQpfiqE7Uj
 4JNJcy32c6VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="251216416"
Received: from pratiks1-mobl.gar.corp.intel.com (HELO [10.252.56.151])
 ([10.252.56.151])
 by fmsmga008.fm.intel.com with ESMTP; 06 May 2020 07:45:10 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <3c82e6ff-2550-ac66-d0b0-a5a3baecc8fb@linux.intel.com>
Date: Wed, 6 May 2020 16:45:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 00/11] Rebased Big Joiner patch series
 for 8K 2p1p
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

I've been testing on re-tgl1-display, but series fails.

The 8k mode is rejected because of htotal exceeding limits.

When testing 5120x3200@120 Hz, I get:

[18352.624231] i915 0000:00:02.0: [drm:intel_crtc_compute_min_cdclk [i915]] required cdclk (1056740 kHz) exceeds max (652800 kHz)

Latter makes any further testing impossible.

I've copied 8k and 5k@120 edids to re-tgl1-display edids for testing DP.

~Maarten

Op 01-05-2020 om 01:09 schreef Manasi Navare:
> This rebases the big joiner patch series from February:
> https://patchwork.freedesktop.org/series/73014/
> or from Maarten's internal tree:
> https://patchwork.freedesktop.org/series/73014/
>
> This especially needs a thorough review on Patch 10/11 due to
> all the refactoring around commit_modeset_enables
>
> Maarten Lankhorst (11):
>   HAX to make DSC work on the icelake test system
>   drm/i915: Remove hw.mode
>   drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
>   drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
>   drm/i915: Try to make bigjoiner work in atomic check
>   drm/i915: Enable big joiner support in enable and disable sequences.
>   drm/i915: Make hardware readout work on i915.
>   drm/i915: Link planes in a bigjoiner configuration, v3.
>   drm/i915: Add bigjoiner aware plane clipping checks
>   drm/i915: Add intel_update_bigjoiner handling.
>   drm/i915: Add debugfs dumping for bigjoiner, v3.
>
>  drivers/gpu/drm/drm_dp_helper.c               |    4 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |    2 -
>  drivers/gpu/drm/i915/display/intel_atomic.c   |    9 +-
>  drivers/gpu/drm/i915/display/intel_atomic.h   |    3 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  112 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |    7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   81 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 1070 +++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h  |   20 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   29 +-
>  .../drm/i915/display/intel_display_types.h    |   32 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  141 ++-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |    2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   16 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |   46 +-
>  drivers/gpu/drm/i915/display/intel_sprite.h   |    3 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  199 +--
>  drivers/gpu/drm/i915/display/intel_vdsc.h     |    7 +-
>  drivers/gpu/drm/i915/intel_pm.c               |   92 +-
>  include/drm/drm_dp_helper.h                   |    1 +
>  20 files changed, 1390 insertions(+), 486 deletions(-)
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
