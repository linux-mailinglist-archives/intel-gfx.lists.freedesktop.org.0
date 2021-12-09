Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC72446F2E5
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 19:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA4810E1F0;
	Thu,  9 Dec 2021 18:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E038D10E201
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 18:21:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="237979818"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="237979818"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:21:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="480438668"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 09 Dec 2021 10:21:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 20:21:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 20:21:06 +0200
Message-Id: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/fbc: More multi-FBC refactoring
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

A bit more prep work towards multiple FBC instances.

One thing that is still up in the air is the debugfs
layout. Haven't relly figured out what the best approach
would be, and whatever is chosen does require igt changes
as well.

Ville Syrjälä (3):
  drm/i915/fbc: Parametrize FBC register offsets
  drm/i915/fbc: Loop through FBC instances in various places
  drm/i915/fbc: Introduce device info fbc_mask

 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 232 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +
 .../drm/i915/display/skl_universal_plane.c    |  12 +-
 drivers/gpu/drm/i915/i915_drv.h               |   5 +-
 drivers/gpu/drm/i915/i915_pci.c               |  22 +-
 drivers/gpu/drm/i915/i915_reg.h               |  34 +--
 drivers/gpu/drm/i915/intel_device_info.c      |   4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               |  31 ++-
 10 files changed, 206 insertions(+), 144 deletions(-)

-- 
2.32.0

