Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B78F1456FD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:45:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3066E525;
	Wed, 22 Jan 2020 13:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076CA6E507;
 Wed, 22 Jan 2020 13:45:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:45:24 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="215911651"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:45:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 22 Jan 2020 15:45:06 +0200
Message-Id: <cover.1579700414.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/7] drm/dsc: fixes and cleanups around
 rc_model_size
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <hwentlan@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make it possible to adjust the rc_model_size parameter instead of
hardcoding it all over the place. Only actually change the size for i915
DSI DSC.

Patch 3 for AMD isn't really required, but it felt like a natural
cleanup to incorporate.

Vandita, please check if this helps with the DSI DSC woes.

BR,
Jani.


Jani Nikula (7):
  drm/dsc: use rc_model_size from DSC config for PPS
  drm/dsc: add helper for calculating rc buffer size from DPCD
  drm/amd/display: use drm_dsc_dp_rc_buffer_size() to get rc buffer size
  drm/i915/dsc: configure hardware using specified rc_model_size
  drm/i915/dsc: make rc_model_size an encoder defined value
  drm/i915/bios: fill in DSC rc_model_size from VBT
  drm/i915/dsi: use VBT data for rc_model_size

 drivers/gpu/drm/amd/display/dc/dsc/dc_dsc.c | 37 ++++-----------------
 drivers/gpu/drm/drm_dsc.c                   | 30 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bios.c   | 11 ++----
 drivers/gpu/drm/i915/display/intel_dp.c     |  8 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.c   |  4 +--
 include/drm/drm_dsc.h                       |  1 +
 6 files changed, 48 insertions(+), 43 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
