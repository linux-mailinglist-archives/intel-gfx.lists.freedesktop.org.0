Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A622B0428
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 12:44:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584266E1F4;
	Thu, 12 Nov 2020 11:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C39B6E1F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 11:44:53 +0000 (UTC)
IronPort-SDR: 3/Sj7utAVJx66EbDHPvK0wUytsJ2r9DKUAB7dyExqtNy8CFIPX8/jwsSpk/jqoeIHYXy8A71+0
 JPJ4nb6ZClRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170402209"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="170402209"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 03:44:53 -0800
IronPort-SDR: 9fHvTAgKRyskMy7VH4/PL/vnhiMKQsQW2jf6hIJWebsavRa5y2U32k3vSHsunkR/xGruViwRAp
 EI65m0RCXrmg==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="542232215"
Received: from mghidovi-mobl1.ti.intel.com (HELO localhost) ([10.251.81.155])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 03:44:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 13:44:33 +0200
Message-Id: <cover.1605181350.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: nuke remaining legacy reg helpers
 (I915_READ/WRITE etc.)
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

To prevent new code with the old helpers being added, nuke the remaining
legacy reg accessors.

BR,
Jani.

Jani Nikula (9):
  drm/i915: remove last users of I915_READ_FW()
  drm/i915: remove last traces of I915_READ_FW() and I915_WRITE_FW()
  drm/i915/cdclk: prefer intel_de_write() over I915_WRITE()
  drm/i915/debugfs: replace I915_READ()+I915_WRITE() with
    intel_uncore_rmw()
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
 drivers/gpu/drm/i915/i915_debugfs.c        | 230 +++++----
 drivers/gpu/drm/i915/i915_drv.h            |  37 --
 drivers/gpu/drm/i915/i915_irq.c            | 336 ++++++-------
 drivers/gpu/drm/i915/i915_reg.h            |   6 +-
 drivers/gpu/drm/i915/i915_suspend.c        |  33 +-
 drivers/gpu/drm/i915/intel_pm.c            | 552 ++++++++++-----------
 drivers/gpu/drm/i915/intel_sideband.c      |   4 +-
 drivers/gpu/drm/i915/intel_uncore.c        |   4 +-
 drivers/gpu/drm/i915/intel_uncore.h        |   6 +-
 11 files changed, 587 insertions(+), 629 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
