Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B1C4BFF45
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:51:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AA410E8B2;
	Tue, 22 Feb 2022 16:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B6B10E8B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548701; x=1677084701;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=74KcdEryCz8ZGGeWm4Is8QhX4rwsCfB9KrZKG/tqzZ0=;
 b=MBdlqN5KlI92g7VD0ntFV9MjIj9e7PLq2xP1TlivY+nx62IBjoVGT4jD
 9ExYhAm8xoklxhlW1ANGQNaWS8HW5L2ZD/WnEWShprgXuY+t3xhcM0aGL
 ubZjCZVn7IwMYG/ibbquG6CdskLOZq2f4lfaQuFlqmC9b2eEmzIRURpg5
 5EPajrAynd/MejgV0CDdEP6z5yP8aR/X7I/PECtqCbaqSB81ULHap1oqg
 syxPoetbI/uWzhy/p/cZf19Hc3Vcokl54c937etrIo857BgWPf57ClsEM
 OU9TLR3Uh6TpDkpY1iMCI7RrMDzlckCgR5vsmNhxEnxJ4JX5UdwWdZPgW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985501"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985501"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828234"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:29 +0200
Message-Id: <20220222165137.1004194-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Move power well code to a
 separate file
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

This is the first half of patchset [1], rebased on drm-tip and adding
the R-b tags from Jouni. I'll send the second half separately as that
needs a minor change and it's worth having a separate CI test result for
the changes there (convert the u64 domain to a bitmap, sanitize the
port/aux_ch->power domain mappings).

[1] https://patchwork.freedesktop.org/series/99476/

Cc: Jouni Högander <jouni.hogander@intel.com>

Imre Deak (8):
  drm/i915: Fix the VDSC_PW2 power domain enum value
  drm/i915: Sanitize open-coded power well enable()/disable() calls
  drm/i915: Remove redundant state verification during TypeC AUX power
    well disabling
  drm/i915: Move i915_power_well_regs struct into i915_power_well_ops
  drm/i915: Move power well get/put/enable/disable functions to a new
    file
  drm/i915: Add function to call a power well's sync_hw() hook
  drm/i915: Add functions to get a power well's
    state/name/domains/mask/refcount
  drm/i915: Move intel_display_power_well_is_enabled() to
    intel_display_power_well.c

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   1 +
 .../drm/i915/display/intel_display_power.c    | 521 ++++--------------
 .../drm/i915/display/intel_display_power.h    |  37 +-
 .../i915/display/intel_display_power_well.c   | 113 ++++
 .../i915/display/intel_display_power_well.h   | 153 +++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   1 +
 7 files changed, 386 insertions(+), 441 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_well.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_well.h

-- 
2.27.0

