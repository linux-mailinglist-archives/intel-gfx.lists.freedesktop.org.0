Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB54760A650
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 14:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB9210E43A;
	Mon, 24 Oct 2022 12:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A7910E432;
 Mon, 24 Oct 2022 12:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666614839; x=1698150839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hOZaeBepnoECI1xDENgudFG1+G8jWsVquCgkyZ7ni7s=;
 b=l5UxqF+01lpnDDpKEXQ+nBaHU5HK06BI3Q5qrqQd0QqskNuuq/dhLW9u
 //lE515GMKwBZFh2QTBFuEnKcqZZXQWZ/3S9Cd4ZU5Sc0bmRu4KNPVH4p
 YmCHrsvALkBWFUE6ROy6Da9eGW5OrhcQsyL/XJLe6COQ+nH5x3QGrLI6O
 VJNlfQSi5cC5LG4pPY4Wbc5aZK9uAC+vvGxZqYpqCbFT4AjPiHIlySYty
 ldO+2Z3pBr0YBViNXC5cF+cOHvYJ5BcdYaPgtVq5QX7lQ8uvRb+TYVJIg
 hCCle+uZR09dUEvipuwx8SOsfbJcYbSyXW91oQVYm/mF/FwYo2GkvEny+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="306135918"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="306135918"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 05:33:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="876418564"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="876418564"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.221])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 05:33:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 24 Oct 2022 15:33:28 +0300
Message-Id: <cover.1666614699.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/16] drm/edid: EDID override refactoring
 and fixes
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of drm/edid: EDID override refactoring and fixes

Address review comments, add patch 15.

BR,
Jani.


Jani Nikula (16):
  drm/i915/hdmi: do dual mode detect only if connected
  drm/i915/hdmi: stop using connector->override_edid
  drm/amd/display: stop using connector->override_edid
  drm/edid: debug log EDID override set/reset
  drm/edid: abstract debugfs override EDID show better
  drm/edid: rename drm_add_override_edid_modes() to
    drm_edid_override_connector_update()
  drm/edid: split drm_edid block count helper
  drm/edid: add function for checking drm_edid validity
  drm/edid: detach debugfs EDID override from EDID property update
  drm/edid/firmware: drop redundant connector_name variable/parameter
  drm/edid/firmware: rename drm_load_edid_firmware() to
    drm_edid_load_firmware()
  drm/edid: use struct drm_edid for override/firmware EDID
  drm/edid: move edid load declarations to internal header
  drm/edid/firmware: convert to drm device specific logging
  drm/edid: add [CONNECTOR:%d:%s] to debug logging
  drm/edid: convert to device specific logging

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   3 -
 drivers/gpu/drm/drm_connector.c               |   1 +
 drivers/gpu/drm/drm_crtc_internal.h           |  15 +-
 drivers/gpu/drm/drm_debugfs.c                 |   8 +-
 drivers/gpu/drm/drm_edid.c                    | 346 +++++++++++-------
 drivers/gpu/drm/drm_edid_load.c               | 109 ++----
 drivers/gpu/drm/drm_probe_helper.c            |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  20 +-
 include/drm/drm_connector.h                   |  16 +-
 include/drm/drm_edid.h                        |  10 +-
 10 files changed, 283 insertions(+), 247 deletions(-)

-- 
2.34.1

