Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D263782DBB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 18:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6A510E282;
	Mon, 21 Aug 2023 16:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD5010E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 16:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692633860; x=1724169860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0r82R88iwdeOhGIaCkAURN+6nmcA2hhMTD4zWH916QI=;
 b=UuXBlV39ej2+9+4xzfZrukhRGj0IdHV3KpD0XFa9EVuHgTHGgGtxsgtD
 cDt8DpT1+XUbxAUQEWAo8MkzSBE7ABYosSRpKfi+A4nvJDC3zJcAaIoaY
 LiOxgkNMpgGAZ2mwLof8o9Z3C3meQL9oiDt2svWpMhWBDGkLrjJ6ulYyL
 WJnu4thIbZ8Coq3JEmpeTsQiwALfhybvTLZ5e5qtg5TsKWtNgEGKIBP4n
 XzEfQHn1xUOlfta50cwapYWazgpNpTZNQbXa6B9EackimncOZKA5IUn+O
 j+AEbbUSjDey4B8+h0mnjUXoZbPDbPSA9vBc5eKbDk2WyAaWwFDCzKiVW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="363799469"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="363799469"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 09:04:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771012417"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="771012417"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2023 09:04:17 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 21:30:01 +0530
Message-Id: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Get optimal audio frequency and channels
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
Cc: jani.nikula@intel.com
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
  drm: Add Wrapper Functions for ELD SAD Extraction
  drm/i915/display: Configure and initialize HDMI audio capabilities

 drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  16 +--
 drivers/gpu/drm/i915/display/intel_audio.c    | 133 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   6 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  10 +-
 include/drm/drm_edid.h                        |  15 +-
 13 files changed, 175 insertions(+), 37 deletions(-)

-- 
2.25.1

