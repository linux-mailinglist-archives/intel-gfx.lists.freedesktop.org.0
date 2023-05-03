Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B03296F61C4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2F210E165;
	Wed,  3 May 2023 23:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FCB10E102
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155414; x=1714691414;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D37KGAqERxBGFphxpL/hqrpI2zcYnhut9yDKqlalg0I=;
 b=eNTxSDz8Ty7aKyXEsYg23afJ+aPcvqvRfX005zAYCBdJ9eD/6vL2bXlW
 CSVqHUz+MAzFR0sJOKFWc2S7nIKDgOlIGt1n1Lt9DtmiFTOCV6z1AaCIF
 xcvwpqvOBdp+vy0pT9Nspz8GYoGP6vMWP8Q94nvgL74bpao5GVxMRPASh
 4kx/5SjbCOv0RQ25SxZJColmyYe1yG6cdQIJh8VdtJgJTUkaRrho/9Fc6
 LOwI73AnQjRc6I3bhSJsD+irPolTj+9LmGyY5Kk2JVxjqEl4f6Qx2IkIC
 vfggwB9Mld86fh4a9nvOpAYemQD+RUtDy+bRewFR236bgQg0+gzPMy1PI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607559"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607559"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872066"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872066"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:36 +0300
Message-Id: <20230503231048.432368-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/12] drm/i915/tc: Add a workaround for an
 IOM/TCSS firmware hang issue
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

This is v2 of [1] addressing the review comments from Ville. It also
includes a few fixes I noticed during further testing, and a workaround
for the firmware blocking the HPD state update of an active/disconnected
port (stuck in the connected state) until another active/disconnected
port gets disabled (added in the last patch).

Tested on regular and port-sync configs (on ICL/TGL/ADLP) and on
bigjoiner/port-sync+bigjoiner configs (on ADLP).

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/all/20230426165305.2049341-1-imre.deak@intel.com/

Imre Deak (12):
  drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
  drm/i915: Make the CRTC state consistent during sanitize-disabling
  drm/i915: Update connector atomic state before crtc sanitize-disabling
  drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()
  drm/i915: Factor out set_encoder_for_connector()
  drm/i915: Add support for disabling any CRTCs during HW
    readout/sanitization
  drm/i915/dp: Add link training debug and error printing helpers
  drm/i915/dp: Convert link training error to debug message on
    disconnected sink
  drm/i915/dp: Prevent link training fallback on disconnected port
  drm/i915/dp: Factor out intel_dp_get_active_pipes()
  drm/i915: Factor out a helper for handling atomic modeset locks/state
  drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the
    sink disconnects

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  77 +++-
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  81 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
 .../drm/i915/display/intel_dp_link_training.c | 399 +++++++-----------
 .../gpu/drm/i915/display/intel_modeset_lock.c |  50 +++
 .../gpu/drm/i915/display/intel_modeset_lock.h |  33 ++
 .../drm/i915/display/intel_modeset_setup.c    | 316 +++++++++++---
 drivers/gpu/drm/i915/display/intel_tc.c       |  29 ++
 drivers/gpu/drm/i915/display/intel_tc.h       |   1 +
 13 files changed, 676 insertions(+), 331 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.h

-- 
2.37.2

