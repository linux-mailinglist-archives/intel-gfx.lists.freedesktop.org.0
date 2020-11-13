Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C4F2B1BCD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 14:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2CD6E3D0;
	Fri, 13 Nov 2020 13:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DF06E3D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 13:24:48 +0000 (UTC)
IronPort-SDR: SHhteOXkIL+VERD1xhMWWtvl5nucCj/3ggoPXctaO7cgsPu8e4AGieDUGQYEl3naE/062ywE6S
 /jFzw1pjx8Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166961089"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="166961089"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:24:48 -0800
IronPort-SDR: imMSQ/78ppYkexyKBTI7DnQIb4bZ5NImj/JBKnERi/o5uBZyKzS51gA62aHkqsmLDbOh6cJX+Y
 4FxtOzDnBtrQ==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="542655033"
Received: from rbrenna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.159])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:24:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 15:24:30 +0200
Message-Id: <cover.1605273766.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: nuke remaining legacy reg
 helpers (I915_READ/WRITE etc.)
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To prevent new code with the old helpers being added, nuke the remaining
legacy reg accessors.

v2: Replace a few conversion patches with code removals as suggested by Chris.

BR,
Jani.

Jani Nikula (9):
  drm/i915/debugfs: remove RPS autotuning details from
    i915_rps_boost_info
  drm/i915: remove last traces of I915_READ_FW() and I915_WRITE_FW()
  drm/i915/cdclk: prefer intel_de_write() over I915_WRITE()
  drm/i915/debugfs: remove the i915_cache_sharing debugfs file
  drm/i915/debugfs: replace I915_READ() with intel_uncore_read()
  drm/i915/suspend: replace I915_READ()/WRITE() with
    intel_de_read()/write()
  drm/i915/pm: replace I915_READ()/WRITE() with
    intel_uncore_read()/write()
  drm/i915/irq: replace I915_READ()/WRITE() with
    intel_uncore_read()/write()
  drm/i915: remove last traces of I915_READ(), I915_WRITE() and
    POSTING_READ()

 drivers/gpu/drm/i915/display/intel_cdclk.c |   4 +-
 drivers/gpu/drm/i915/display/intel_dvo.c   |   4 -
 drivers/gpu/drm/i915/i915_debugfs.c        | 299 ++++-------
 drivers/gpu/drm/i915/i915_drv.h            |  37 --
 drivers/gpu/drm/i915/i915_irq.c            | 336 ++++++-------
 drivers/gpu/drm/i915/i915_reg.h            |   6 +-
 drivers/gpu/drm/i915/i915_suspend.c        |  33 +-
 drivers/gpu/drm/i915/intel_pm.c            | 552 ++++++++++-----------
 drivers/gpu/drm/i915/intel_sideband.c      |   4 +-
 drivers/gpu/drm/i915/intel_uncore.c        |   4 +-
 drivers/gpu/drm/i915/intel_uncore.h        |   6 +-
 11 files changed, 580 insertions(+), 705 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
