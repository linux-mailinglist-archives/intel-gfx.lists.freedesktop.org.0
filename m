Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBC0730F51
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 08:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C707710E11A;
	Thu, 15 Jun 2023 06:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD0310E11A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686810633; x=1718346633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8TLoIynRQILsjugK5Fsp4+qoBZEYz2SDDyw7DCAhYVU=;
 b=YRI3ti/KB/LnOCC5acNoKdE+LsOIzTz9YIctbs7mLopJBmMixd+wvvkt
 dUfecPQNh4USUx+xMbSsdwSx54TZS/GAoxxug8vkJtswO+1YwfHN5nr0G
 O6HQBLlAWKckqcjdlWsQGo8Jbj/OErcP/rO6OXYYnzWsngAR8dTowN+Fm
 HyKWs0uHkCyuw+YsNu/BBItRWcgVlVoRESs7x4UHHLI8M3xDUQF224Vu1
 5Am7xYFilhfMd/dvwRqYuoxt1uT2wMhxLwTtBfHpk4anawyxCwt7MwyDU
 aDxqrrne5RnRLTjcXDij+OJb45ap4UyJvRmRc9Z+lT1v/J3bG4sYuqHKx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="348493374"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="348493374"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 23:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="1042514798"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="1042514798"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2023 23:30:30 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 12:01:34 +0530
Message-Id: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
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
  drm/i915/hdmi: Optimize source audio parameter handling
  drm/i915/display: Configure and initialize HDMI audio capabilities
  drm/i915/display: Add wrapper to Compute SAD

 drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 16 ++--
 drivers/gpu/drm/i915/display/intel_audio.c    | 75 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h    |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    | 12 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 39 +++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 10 +--
 14 files changed, 146 insertions(+), 32 deletions(-)

-- 
2.25.1

