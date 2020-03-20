Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB34318D10C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3734489E5F;
	Fri, 20 Mar 2020 14:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C4BB6E15D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:36:45 +0000 (UTC)
IronPort-SDR: 9c3tGJ0KabOIjjEkCkWiLZmWP39q9vJgAW7Vzjs9vBDj0xrx5xm2BTEkKqE3L/G5zJZ03R0Y2p
 RCn8lfo305AA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:36:44 -0700
IronPort-SDR: 5m4+ub1r6mYquiYnFSqQ1DmTy2S3GP9pYMvbXsxyVGbxhS05UafoG39wzMPmbuHsfFgHjxkWfT
 XFpROxvgemuA==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="418730956"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:36:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:25 +0200
Message-Id: <cover.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: drm device based logging changes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Here's a batch of logging conversion.

BR,
Jani.

Jani Nikula (13):
  drm/i915/ddi: use struct drm_device based logging
  drm/i915/display_power: use struct drm_device based logging
  drm/i915/dp_aux_backlight: use struct drm_device based logging
  drm/i915/dp_mst: use struct drm_device based logging
  drm/i915/dsi: use struct drm_device based logging
  drm/i915/hdmi: use struct drm_device based logging
  drm/i915/dsi: use struct drm_device based logging
  drm/i915/connector: use MISSING_CASE instead of logging
  drm/i915/tv: use struct drm_device based logging
  drm/i915/display: clean up intel_PLL_is_valid()
  drm/i915/display: use struct drm_device based logging
  drm/i915/psr: use struct drm_device based logging
  drm/i915/wopcm: convert to drm device based logging

 drivers/gpu/drm/i915/display/icl_dsi.c        |  10 +-
 .../gpu/drm/i915/display/intel_connector.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 118 ++++++-----
 drivers/gpu/drm/i915/display/intel_display.c  |  65 +++---
 .../drm/i915/display/intel_display_power.c    |  22 +-
 .../drm/i915/display/intel_dp_aux_backlight.c |  84 ++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  26 ++-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   9 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  11 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 189 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_psr.c      |  47 +++--
 drivers/gpu/drm/i915/display/intel_tv.c       |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   3 +-
 drivers/gpu/drm/i915/intel_wopcm.c            |  22 +-
 14 files changed, 367 insertions(+), 247 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
