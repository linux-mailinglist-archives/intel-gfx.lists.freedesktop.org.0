Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A476073101B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 09:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE0110E488;
	Thu, 15 Jun 2023 07:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79E1710E488
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 07:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686812779; x=1718348779;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U0oGv5wG5HpZnB5qhuOSi4DgC1V8HDIkI0rLdwArIjg=;
 b=Kjt4WFP+pn1JVEFK5ilBDsAlmwVd1ohq6napLKvdsMRrU2ppuH83D5ub
 6dxQN7O3CprKW34fK34WWhbu+8QesaUA6FMkE8cpaUqo+rqEUGjY5UHPp
 2Elad39J7hkIqUiBxpvOLjJ7+iTHxKzGLPwAQZvOtKtKJSj65DzTq6mUb
 8xW+o1nXaM2FiYZyCdsx/7CB2K+d7aGPSDad2bDKjI5zCd6g3HjYK68Uh
 ZsUwNtGYVlJCDfr8ykxcn4h1fq8ROzVNwmPZGhujTpVvraBAWfWMn1Yl4
 L34nJCvyKi2SkgjA7SMnIlHbDNDaLFEOGDgHSOG9Tzvodh2Rj0KyJuOLS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387264271"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="387264271"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 00:06:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="777550161"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="777550161"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2023 00:06:17 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 12:37:20 +0530
Message-Id: <20230615070723.2220271-1-mitulkumar.ajitkumar.golani@intel.com>
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

