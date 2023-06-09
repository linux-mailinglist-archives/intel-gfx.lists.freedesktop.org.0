Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B23729384
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 10:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304F510E18E;
	Fri,  9 Jun 2023 08:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45308892F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 08:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686300245; x=1717836245;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gtKhI2QwfYpZ0HI3q1mWJo4dDmtbUTr/3oyVvDNIXqM=;
 b=NczNh82aZRzvUh9a3lEoY6mAOd2SMovFSTohZx7oBFGX5Rk+tyHl3bVD
 7bFuMuV0PglVEWe0sWRsCDVIoql5cB8GxHS9LGIjVuTN9cidqH4FiXGSk
 XnodQ9tuHPW4TYJCibNcTjvYcH0+U86kbElFpsETpD8X1IFBv05jh161M
 XnSo+/I8FaReVqUOReAbJHh4hFiZx+S9CZyrw6Nke8j6E29fUksfpYhY/
 s7z4+tzAbjCt5+JaI0pP9DU9Hotzt2s7zw66vSUSi9UoUp3/TfWQeak+D
 GHk9o6avKES1K3QRfQUs682UmB1ujphw142d3+ZqNv6FsVIoBGJe5/pm0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="357553413"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="357553413"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:44:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="884501519"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="884501519"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga005.jf.intel.com with ESMTP; 09 Jun 2023 01:44:02 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 14:15:00 +0530
Message-Id: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/4] Get optimal audio frequency and channels
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

Mitul Golani (4):
  drm/i915/hdmi: Add audio config related params in crtc_state
  drm/i915/display: Update access of has_audio param
  drm/i915/display: Add wrapper to Compute SAD
  drm/i915/display: Initialize and compute HDMI Audio source cap

 drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 16 ++---
 drivers/gpu/drm/i915/display/intel_audio.c    | 72 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_audio.h    |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    | 12 +++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 39 +++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 10 +--
 14 files changed, 143 insertions(+), 32 deletions(-)

-- 
2.25.1

