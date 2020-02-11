Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600B159644
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:36:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634136F38A;
	Tue, 11 Feb 2020 17:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A516F38A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:36:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 09:36:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="380503774"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2020 09:36:06 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 22:55:25 +0530
Message-Id: <20200211172532.14287-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/7] 3 display pipes combination system
 support
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

Updated version after fixing some review comment provided by
ville on v2 version, which unfortunately didn't reach to mailing
list due to typo in "to address".

Anshuman Gupta (7):
  drm/i915: Iterate over pipe and skip the disabled one
  drm/i915: Remove (pipe == crtc->index) assumption
  drm/i915: Fix broken transcoder err state
  drm/i915: Fix wrongly populated plane possible_crtcs bit mask
  drm/i915: Get first crtc instead of PIPE_A crtc
  drm/i915: Add WARN_ON in intel_get_crtc_for_pipe()
  drm/i915: Fix broken num_entries in skl_ddb_allocation_overlaps

 drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 35 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h  |  5 +--
 .../drm/i915/display/intel_display_types.h    | 36 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  5 +--
 drivers/gpu/drm/i915/i915_drv.h               |  2 ++
 drivers/gpu/drm/i915/i915_irq.c               | 20 ++++++-----
 7 files changed, 77 insertions(+), 28 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
