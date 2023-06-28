Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4283C741684
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEDE110E37F;
	Wed, 28 Jun 2023 16:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2369310E371
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 16:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687969987; x=1719505987;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iS6SUfvD7v9ruMWB9eeyHI8aMQKYVPOAzzV5t0it9JQ=;
 b=S2tzTACJXGeLMEDUXMe+rl254u01BbnAhdJZcdtFC/x9941wxA639wOd
 OrJNFu35Ww0SexNYtGX+om3lE6sa6PLlIkHlbCB1UmDOeuLX3mlMUZmJt
 Cnys94KnsGobEbu1ekkxviGCxnbr19Jlnohzkqzdl8nZg0SVg5konxnVl
 hqjWI2Usy7V1GQocEKKLxZg11ViiY4UOnO3a+yh+HQIcA6Utnyd8NjChe
 wP+GYv00nGIsxtfQjtk07qPLXIk537lCVQlvD7DLG4gPV8Ut9wcnwA2S6
 vGLL2dBF1LuovNYR38y7Dnl3Po3PGNYHf2lE+a1UI0MdBhgmhB6Sj1OI5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="346661869"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="346661869"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 09:32:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="1047482262"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="1047482262"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jun 2023 09:32:42 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 22:03:56 +0530
Message-Id: <20230628163359.2879668-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Mitul Golani (3):
  drm/i915: Add has_audio to separate audio parameter in crtc_state
  drm/i915/display: Configure and initialize HDMI audio capabilities
  drm/i915/display: Add wrapper to Compute SAD

 drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  16 +--
 drivers/gpu/drm/i915/display/intel_audio.c    | 115 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   6 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  10 +-
 12 files changed, 147 insertions(+), 32 deletions(-)

-- 
2.25.1

