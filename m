Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1595112B3D8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 11:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008316E165;
	Fri, 27 Dec 2019 10:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E686E165
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 10:29:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 02:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,362,1571727600"; d="scan'208";a="419687696"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga006.fm.intel.com with ESMTP; 27 Dec 2019 02:29:08 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Dec 2019 15:26:21 +0530
Message-Id: <20191227095629.1796-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [V4 0/8] Add support for mipi dsi cmd mode
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

Address the comments on v2 and rebase v3 on top of
vdsc mipi dsi patches.

Vandita Kulkarni (8):
  drm/i915/dsi: Configure transcoder operation for command mode.
  drm/i915/dsi: Add vblank calculation for command mode
  drm/i915/dsi: Add cmd mode flags in display mode private flags
  drm/i915/dsi: Add check for periodic command mode
  drm/i915/dsi: Use private flags to indicate TE in cmd mode
  drm/i915/dsi: Configure TE interrupt for cmd mode
  drm/i915/dsi: Add TE handler for dsi cmd mode.
  drm/i915/dsi: Initiate fame request in cmd mode

 drivers/gpu/drm/i915/display/icl_dsi.c        | 163 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c  |  10 ++
 .../drm/i915/display/intel_display_types.h    |  10 ++
 drivers/gpu/drm/i915/display/intel_dsi.h      |   3 +
 drivers/gpu/drm/i915/i915_irq.c               | 119 ++++++++++++-
 5 files changed, 286 insertions(+), 19 deletions(-)

-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
