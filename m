Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 408838C7322
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0FF10E132;
	Thu, 16 May 2024 08:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MI7W2I2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF75C10E132
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849412; x=1747385412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GWBSfa02Vq+iejlrYf9P4eCqZykZkByaFqQWHLr+TUQ=;
 b=MI7W2I2nealsa/BspwXXi6czOqj0EOzaT4hhtrod4QgX8IaFXZmKpyIP
 zrA/qi0zV1spEDCZRGW8tJtgLBrNYFMdu3Lb39LeCkPKzJCj0cdl6hi0o
 CqvXdloUg69bO98oZPHFW2gJmrcd1gafBxflyDMjedY9L4/6Iv+lrDoOf
 eECEWbvsGfl62mWm7rsGnNjuRywnIgjGHCMbOLh3Bveo2Cx1ZJWRxvuqp
 RI24qUS6vU5D+8h8nh/jmrCMvOr3AM1WVWYDxfNR7KkNeEhdCqhk11rQj
 V5RsH4HavB2Ae8lY/Xu9+BKUHLku4LIq2+roVxUZspaEAv0I0wYvzZ+AD g==;
X-CSE-ConnectionGUID: 7RDA1isgQDCjz3pEFd4neg==
X-CSE-MsgGUID: 9Nc7tj9bTLyflrRLQLCC7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756019"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756019"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:11 -0700
X-CSE-ConnectionGUID: oIWVEBkDQhm3NRv0fYg48w==
X-CSE-MsgGUID: 4BPl3+qAQlijAPOnI/59wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398032"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 00/17] Panel Replay eDP support
Date: Thu, 16 May 2024 11:49:40 +0300
Message-Id: <20240516084957.1557028-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

This patch set is implementing eDP1.5 Panel Replay for Intel hw. Also
Region Early Transport information is added into debugfs interface
and patch to disable Region Early Transport by default is reverted as
it is needed by eDP Panel Replay.

Jouni Högander (17):
  drm/i915/psr: Store pr_dpcd in intel_dp
  drm/panel replay: Add edp1.5 Panel Replay bits and register
  drm/i915/psr: Move printing sink PSR support to own function
  drm/i915/psr: Move printing PSR mode to own function
  drm/i915/psr: modify psr status debugfs to support eDP Panel Replay
  drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
  drm/i915/psr: Add Early Transport into psr debugfs interface
  drm/display: Add missing aux less alpm wake related bits
  drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
  drm/i915/psr: Inform Panel Replay source support on eDP as well
  drm/i915/psr: enable sink for eDP1.5 Panel Replay
  drm/i915/psr: Check panel Early Transport capability for eDP PR
  drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
  drm/i915/psr: Check Early Transport for Panel Replay as well
  drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 287 ++++++++++++------
 include/drm/display/drm_dp.h                  |  19 +-
 3 files changed, 208 insertions(+), 100 deletions(-)

-- 
2.34.1

