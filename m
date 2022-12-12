Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 684DE64A34D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DE810E175;
	Mon, 12 Dec 2022 14:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B51310E18B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855371; x=1702391371;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=25rV2SXJqzm/rTbfsRc0ZfN08jSKHzVYgz5BvBYpBPY=;
 b=FBDtJUnpgx78iwLxSi6Y9DuZuqeu3QoNJVa8X/yLU55TyRz4KYEq2Vwp
 tiaG1O16Op8POMoDVj/iKD19Gqb4Z8U6UJUzAxuSkIDdhMfveRReykM/G
 cGqD71k2ADZAaPg2856EtTx120PId1vAD1N1UMjtIU5CK3Mk53wXPlUR8
 XbgXStEe20cxXXoT6TVgnx27b+RZ5AIJqtx8SWVIUGbjo+zwS+Ztt0MWv
 jbiYKXH8GYN4HzmjBIA3YJjsUMliZf7/854fYa7qD/Phr6yB89wX0BPRE
 feL+MvnfkB+kqMtkM5ngwbAoImEyjGAyonnDuy+0NxFyK9zOor1TuZaqy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="316558418"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="316558418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790511121"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790511121"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:18 +0200
Message-Id: <cover.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code to a
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new intel_vblank.[ch] and dump a bunch of the vblank/scanline code
there.

Jani Nikula (7):
  drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
  drm/i915/display: move more scanline functions to intel_vblank.[ch]
  drm/i915/display: use common function for checking scanline is moving
  drm/i915/hdmi: abstract scanline range wait into intel_vblank.[ch]
  drm/i915/vblank: use intel_de_read()
  drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank
    counter
  drm/i915/reg: split out vblank/scanline regs

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_de.h       |   7 +
 drivers/gpu/drm/i915/display/intel_display.c  |  54 +--
 .../drm/i915/display/intel_display_trace.h    |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 456 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h   |  24 +
 .../gpu/drm/i915/display/intel_vblank_regs.h  |  42 ++
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_irq.c               | 408 ----------------
 drivers/gpu/drm/i915/i915_irq.h               |   6 -
 drivers/gpu/drm/i915/i915_reg.h               |  35 --
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 17 files changed, 541 insertions(+), 508 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank_regs.h

-- 
2.34.1

