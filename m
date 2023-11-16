Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DE47EDFF7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 12:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178A110E276;
	Thu, 16 Nov 2023 11:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F59410E27C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 11:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700134754; x=1731670754;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zSHrReE8+499ihyphtqPBaQlqbPHoL7uhFz2N3ieOds=;
 b=GfxRQd6wAM1XeM3eJBI5CikAAI77A0xgU/wLgaX61e2bxg3eEmacC+GG
 AF6g5FBxkc7ivXLoSMgL6A8/5JTUdKj/irGO7z2MYgwOcE2wTXHcv6YkP
 8MaPmCnclb9fafvnMWHrwv0eNLZ8g4UUys83jvpI5g8IS0slDqgc1Vrtq
 gP5zXvezwyjuv2b3MbsbSq07BjwgGRPYgc52MUdcXQYH9nNXR7gEUaNB+
 FS4uHmQ6ungoeSHVi6ouW13gdnKckg2I2VGYAj2dbXkZEpHTrDq4yW5sh
 c8+QME0lt46o2I3Hmj7AOtpzTFDfiFQndR3bdvJoGY06VJjesB5Z8PhDS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370428563"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="370428563"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 03:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="800145431"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="800145431"
Received: from dcarcium-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.40.251])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 03:39:11 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 13:38:56 +0200
Message-Id: <20231116113859.4151950-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Prepare intel_fb for Xe
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel fb creation is differing between Xe and i915 due to different
implementations of backing object. This patch set is splitting i915
specific code into it's own source file. Similar source files will be
introduced for Xe as well.

Also use intel_bo_to_drm_bo instead of directly referring
i915_gem_object->base. One i915_gem_object_put is changed to
drm_gem_object_put.

v2: Couple of fixes to error value handling

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>

Jouni Högander (3):
  drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c
  drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
  drm/i915/display: Split i915 specific code away from intel_fb.c

 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/display/intel_fb.c    | 124 ++++++---------------
 drivers/gpu/drm/i915/display/intel_fb.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  93 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 ++++
 5 files changed, 157 insertions(+), 87 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

-- 
2.34.1

