Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEE554C8E8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 14:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115E010E58D;
	Wed, 15 Jun 2022 12:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE5E10E58D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 12:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655297286; x=1686833286;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B7gbu7CZBLwTXHebIk8xT3/viWVsCwhmqLdSBzEob9o=;
 b=Cx6BlJDRdnHC+ST4TCPSEin4+LgEXiyyTMUaw5Egw81Or3OdC2HSe0FM
 gLFPy5w0CyeyQ86fS0ydjX9BY+ph5ltBL/Q5VAQ0LCp5TEcByHjFSddk3
 eBnaqN2Uyh9H2BtbQ7nSyfxZNNsijIiT1EkB4vY6FxdBCiGRHuFTY8OGP
 6rLztacqE1LA8YchK2ZIZ3Xq/4BGbfYYhHpiueSxVP5knsUwIlcoBuiWr
 0exBUbLh+PW6uac/Meq0c8rcizrU7U/8PYjWoTCIJia8TzZweODvVfmhg
 e9X38fvtyJCbtZsaKNzCqBNF/n1jvnBAdY3qR/vZJxHV3BImt5IRI6L+T A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258800843"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="258800843"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="640976207"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 15:47:54 +0300
Message-Id: <cover.1655297182.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/display: split out verifation,
 compare and dump from intel_display.c
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

The state verification and pipe config comparison/dumping are fairly
isolated pieces of code within intel_display.c. Move them to separate
files in a long overdue cleanup.

Jani Nikula (7):
  drm/i915/wm: move wm state verification to intel_pm.c
  drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
  drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
  drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
  drm/i915/display: split out modeset verification code
  drm/i915/display: split out pipe config compare to a separate file
  drm/i915/display: split out pipe config dump to a separate file

 drivers/gpu/drm/i915/Makefile                 |    3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 1373 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |    3 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 ++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
 .../drm/i915/display/intel_modeset_verify.c   |  247 +++
 .../drm/i915/display/intel_modeset_verify.h   |   21 +
 .../i915/display/intel_pipe_config_compare.c  |  581 +++++++
 .../i915/display/intel_pipe_config_compare.h  |   17 +
 .../drm/i915/display/intel_pipe_config_dump.c |  314 ++++
 .../drm/i915/display/intel_pipe_config_dump.h |   16 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
 drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
 drivers/gpu/drm/i915/intel_pm.c               |  138 +-
 drivers/gpu/drm/i915/intel_pm.h               |   14 +-
 15 files changed, 1482 insertions(+), 1386 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compare.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compare.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump.h

-- 
2.30.2

