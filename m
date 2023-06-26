Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB25E73E588
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BBA10E0CD;
	Mon, 26 Jun 2023 16:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799B610E089
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687797892; x=1719333892;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ONeTYU1zVYkyZqq1xFGS+ICRbAkTh6pz90N/dtWvjpE=;
 b=J1JGcsylMqx7nr9ViSeHOwb0ousMksNDvapIBcEKaab1SexVfRi2kJMf
 slmHZulTIT62wsVEW+jOg8hcQp62i2c1vEASzBZCT/F/rm1HTggZMlP7/
 a+5ebsGspgVIIt5oAephR4ReUUvCJAeSd0s6xY/BzE1BraZOv24sgcQZK
 3l7V7sbutUNYACdF0sGpkHf+qgQpAcJ06VVvfa48mkaZZiP9ryn5eBpbC
 L0zRAreKlTPadk0MN6xfdmXjPM+LsITzzYWON0dcMu346BRTJG978A4q9
 DpNlqU3kL7650tuYrv2UmPSFhJjgl8SUkiqjbstiTiI8VnLRIK/W+XLY+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341658758"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="341658758"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="806129468"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="806129468"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2023 09:44:50 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 22:16:01 +0530
Message-Id: <20230626164604.2759876-1-mitulkumar.ajitkumar.golani@intel.com>
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

