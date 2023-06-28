Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748BC741615
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDAB10E379;
	Wed, 28 Jun 2023 16:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124FD10E379
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 16:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687968739; x=1719504739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5rHFZRlYe6q00P+ZZetPhaQKVcYFWmEuIssj8gNXLDI=;
 b=C5EFc42FVmO5s5TTIHoyHfIGvuA+zbDrdmuf3Gcbj+TA/06rn4Xf2Wkw
 +RkzCfjBkFFQaOzONIT/zpuk0G+br8mdjGzMyBC3iiM444wXLUkdcxNxA
 Ib76MPNberw5x/IvL0KUvdb+RAt/lkWIAL9QUNZIsbatHO67EJkwFzUC+
 F2y0BhMu/cw5FsBkQpXQbshqF7fBb9eQbzRUV8D5U/iEaORPmKxqmW0IG
 FhEm2ka5l4eehzrWDaIjZmnAkeCf6rszKfwrFtkykNnsV/0OMd07FW4hm
 pac2JPNcpv9xureeVgEsM1tvU4I5iIWPKVNzI8p9H7J/K4fuj+Fuw4J8l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="392613371"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="392613371"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 09:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="830180692"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="830180692"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2023 09:09:45 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 21:41:00 +0530
Message-Id: <20230628161103.2877959-1-mitulkumar.ajitkumar.golani@intel.com>
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

