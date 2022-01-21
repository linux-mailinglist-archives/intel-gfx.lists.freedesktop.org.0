Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89243495F57
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D2D10E9DE;
	Fri, 21 Jan 2022 13:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072E710EA17
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770051; x=1674306051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ru6Omg3fr3+cvT3I74kazR4UCmdo2zm/Tp2+DHr3JBs=;
 b=CAPgF0eQGdqVSWcj7J6QJEiocqv0FcXmZs6DAvGkHqHW9oOKbWcK12lH
 0b3fPT5YlnHKPmFixcwqrVVvnsOn1mmAPWxBxqQDYyGTcsdrj3HXwp2HA
 WD/1AJbDYyS4t8QUj5JIKo3uqMCCK0g/nn2+lkCLeZ6lIYtKY9/FdCiey
 HimxSjfXzg62x+58Xizhc5x+15oCdDqn0X2qk1/2gbh3YTcGpmLwRVlM0
 v76nlGx2o+rm88S/xWOegTrosTr+YgH/QHNxxp178GynJ9vYPLW2FLhYE
 VcVQqrAwCOlc3kava6pzGIzy2j3t/ao98olHyY/rTDso1FcQYANnFKxWt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245867003"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245867003"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:00:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533265923"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:00:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:29 +0200
Message-Id: <cover.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/display: drm device based logging
 conversions
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Purge some accumulated drm device based logging changes from my local
branches.

Jani Nikula (9):
  drm/i915/snps: convert to drm device based logging
  drm/i915/pps: convert to drm device based logging
  drm/i915/hotplug: convert to drm device based logging
  drm/i915/dp: convert to drm device based logging
  drm/i915/plane: convert to drm device based logging and WARN
  drm/i915/sprite: convert to drm device based logging
  drm/i915/lspcon: convert to drm device based logging
  drm/i915/cdclk: update intel_dump_cdclk_config() logging
  drm/i915/cdclk: convert to drm device based logging

 .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  23 +--
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  35 +++--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  14 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 142 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_pps.c      |  22 +--
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  29 ++--
 drivers/gpu/drm/i915/display/intel_sprite.c   |  24 +--
 .../drm/i915/display/skl_universal_plane.c    |  10 +-
 12 files changed, 169 insertions(+), 142 deletions(-)

-- 
2.30.2

