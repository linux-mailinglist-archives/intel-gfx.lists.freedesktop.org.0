Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7571C672343
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7317510E1F1;
	Wed, 18 Jan 2023 16:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 385A610E047
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059453; x=1705595453;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=057S/Q1OfSV+jWzQwoqCf+mPMw0OcekBq5i2D0LS0lI=;
 b=M6TvETAATZKvsrlanhcec6boHJbP+bq085GIGf1KC3imhjA84GkHyFMg
 9qTakowSlyM2Xq2rfk7W0rDhKT+KXxWESSsozw+/0wgZUgrBqr9V3xp1K
 z27H9da+nw3gxubpTpk9v8LKZAKIE4qd4vq9YXh/MErnigdos429yttIK
 XG1aOrJPhboWA0kHJ0IL4LSWSw0MOfrjzqDSVOOK9OLZrvkV250fP6SeV
 1hLW9VyJEZwKR3rdo8KnSDu16Y6FRTOOqy5pew+bIsbapk0J8QJ6Y4wn1
 8RTemrZ+F0Go2xC+qfMnVYFL9+A8zrMEGJDOpCIT5Jf0K8I7ZATpOqTjD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289718"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289718"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:30:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060408"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060408"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:27 +0200
Message-Id: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: Load LUTs with DSB
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restore DSB usage for lodaing the LUTs, and do so
properly during vblank to avoid tearing. And also
included are some improvements to aid in analyzing
DSB issues.

There is one undocumented (afaik) hw issue with
the legacy LUT that I still need to report to the
hw folks. But I have already included what seems
like an effective workaround.

Ville Syrjälä (13):
  drm/i915/dsb: Define more DSB registers
  drm/i915/dsb: Pimp debug/error prints
  drm/i915/dsb: Split intel_dsb_wait() from intel_dsb_commit()
  drm/i915/dsb: Introduce intel_dsb_finish()
  drm/i915/dsb: Dump the DSB command buffer when DSB fails
  drm/i915/dsb: Allow vblank synchronized DSB execution
  drm/i915/dsb: Nuke the DSB debug
  drm/i915/dsb: Skip DSB command buffer setup if we have no LUTs
  drm/i915/dsb: Don't use DSB to load the LUTs during full modeset
  drm/i915/dsb: Load LUTs using the DSB during vblank
  drm/i915/dsb: Write each legacy LUT entry twice with DSB
  drm/i915/dsb: Load LUTs with the DSB
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    | 46 ++++++++++--
 drivers/gpu/drm/i915/display/intel_color.h    |  2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 70 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dsb.h      |  5 +-
 .../drm/i915/display/intel_modeset_verify.c   |  2 +
 drivers/gpu/drm/i915/i915_reg.h               | 50 ++++++++++++-
 8 files changed, 156 insertions(+), 26 deletions(-)

-- 
2.38.2

