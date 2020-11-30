Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEEF2C8FDC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B53C6E8B4;
	Mon, 30 Nov 2020 21:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F426E8AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:05 +0000 (UTC)
IronPort-SDR: ImUkBW1N2P03mff7bR4sJQRTFSVc5943HvbjHsZVibFqsTEb9EXgQ9qEb6Xn3aqPTRnB1t7XDM
 BTkuBzKzJSkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424717"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424717"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:03 -0800
IronPort-SDR: GCTkJ2IBuVMdhTb1kNAExGTw1sjH29929sMGXR840b5HmqdHQmIgnfYutSFQ+0M3RLXKCIoOAM
 hpE5AIyMPgEg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810498"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:21:51 +0200
Message-Id: <20201130212200.2811939-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Add the missing wakeref tracking
 for display power references
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add wakeref tracking for display power domain references where this was
still missing.

Cc: Chris Wilson <chris@chris-wilson.co.uk>

Imre Deak (9):
  drm/i915: Make atomic commit get/put power domains symmetric
  drm/i915: Factor out helpers to get/put a set of tracked power domains
  drm/i915: Track power references taken for enabled CRTCs
  drm/i915/ddi: Track power reference taken for encoder DDI IO use
  drm/i915/ddi: Track power reference taken for encoder main lane AUX
    use
  drm/i915: Track power reference taken for eDP VDD
  drm/i915: Rename power_domains.wakeref to init_wakeref
  drm/i915: Track power reference taken to disable power well
    functionality
  drm/i915: Make intel_display_power_put_unchecked() an internal-only
    function

 drivers/gpu/drm/i915/display/intel_ddi.c      |  61 +++++----
 drivers/gpu/drm/i915/display/intel_display.c  | 100 +++++---------
 .../drm/i915/display/intel_display_power.c    | 123 +++++++++++++-----
 .../drm/i915/display/intel_display_power.h    |  37 +++++-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  18 ++-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +-
 7 files changed, 212 insertions(+), 134 deletions(-)

-- 
2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
