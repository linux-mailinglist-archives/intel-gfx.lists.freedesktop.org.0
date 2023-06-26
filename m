Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FD373E540
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8174010E178;
	Mon, 26 Jun 2023 16:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155F410E178
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687797426; x=1719333426;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ONeTYU1zVYkyZqq1xFGS+ICRbAkTh6pz90N/dtWvjpE=;
 b=AuY35/ksohRW65TpVV9mrhlaRmJkOpMPRuqzOSB9ZjcL724JdNPyQ6Tg
 Wc9r8GXowoFJwa1Xp2ajB6oXls551mlTcrp7a0Jl5/Nr/VcckjGYVZwR0
 fkhx7PHGjHFV21EdZETYXZ6cT4z23BX1BzhrUgmOTKMKsqas/IV84VKRO
 LfMmRUBrLInxs1D42vbOncIGuCoEC0ah7YFb92rGCqeMwvQHvhGi+Yay5
 Z/TGuNGfwHLhvSyqP7qKxrp3rLt+kGPvhaGSxjYy8aPiCbfsp5/vXTFeg
 8UYBG7jXi6Jr0FkwoEP8Vz9XZk6Zro2RljshXHBHEy7U87PFC6DHJD5QG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="358818271"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="358818271"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="781505070"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="781505070"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jun 2023 09:37:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 22:08:16 +0530
Message-Id: <20230626163819.2759500-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/3] Get optimal audio frequency and channels
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

Currently we do not check if there is enough bandwidth for
audio, and what channels and freq it can really support.
Also sometimes there can be HW constraints e.g. GLK where audio
channels supported are only 2.

https://patchwork.freedesktop.org/series/107647/

Obtain the optimal audio rate and channel based on available display
timing constraints.

This can be achieved by:
- Retrieve the supported channel and rate information from SADs
- Adding audio-related config parameters in the CRTC state, such
as audio support, rate, and channel.
- Initializing the audio config parameters with the maximum supported
rate and channel by the audio source.
- Computing the SADs based on the audio source's capabilities.

Mitul Golani (3):
  drm/i915/hdmi: Optimize source audio parameter handling
  drm/i915/display: Configure and initialize HDMI audio capabilities
  drm/i915/display: Add wrapper to Compute SAD

 drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 16 ++--
 drivers/gpu/drm/i915/display/intel_audio.c    | 75 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h    |  4 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    | 12 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 38 +++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 10 +--
 14 files changed, 148 insertions(+), 32 deletions(-)

-- 
2.25.1

