Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9C2151A30
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 13:01:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684C389DB5;
	Tue,  4 Feb 2020 12:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C345789DB5
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 12:01:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 03:39:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225481715"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2020 03:39:40 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:59:20 +0530
Message-Id: <20200204112927.17391-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] 3 display pipes combination system support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is update to last RFC series after fixing the review comment
provided by Ville, and fixed couple of broken vblank API, which
were passing the intel_pipe to drm core.

Anshuman Gupta (7):
  drm/i915: Iterate over pipe and skip the disabled one
  drm/i915: Remove (pipe == crtc->index) assumption
  drm/i915: Fix broken transcoder err state
  drm/i915: Fix wrongly populated plane possible_crtcs bit mask
  drm/i915: Get right max plane stride
  drm/i915: Add WARN_ON in intel_get_crtc_for_pipe()
  drm/i915: Enable 3 display pipes support

 drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |  5 ++-
 .../drm/i915/display/intel_display_types.h    | 12 +++++-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  2 -
 drivers/gpu/drm/i915/i915_irq.c               | 14 +++++--
 drivers/gpu/drm/i915/intel_device_info.c      | 38 ++++++++++++++-----
 6 files changed, 74 insertions(+), 26 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
