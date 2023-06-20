Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB9F7372F9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 19:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C521F10E301;
	Tue, 20 Jun 2023 17:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837DA10E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 17:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687282435; x=1718818435;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eOOXr7WdYU3EwcyrfEM2N5CKgEHFBTJa55vHnVo7iUc=;
 b=YsASmcpxY89Zkmj9UMwtRsfdNTgoHVaBoFbef+TUVENj7i88DXzTjP14
 MCXhmq6q12d0M8IjasjWqt5FP1YiGB4iu+VfY5DHFfnwUOnDDZ2glk5BF
 8sdul5ysTUoYVkrRENUh/6R8Jn8aYbR6K85hhiRNuiR7cgdjL2m45wtE7
 dmLpsHATxdEpKNjxEK4llIgtYWRmlOqwQZBR077eAVnnoiIjrtCX0FZqM
 hHn3y1bYGZwSqi1fRTGZHyf3IWZ5RdwqQjoe8jBrmCPoWtllSNV/pq/i2
 lchKOM9bYEZEbxfUhdGN1zuHfUewUsE+YebZ/7AQG3042bh67bCwfjF9L Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363353743"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="363353743"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 10:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804029127"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="804029127"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jun 2023 10:32:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Jun 2023 20:32:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 20:32:37 +0300
Message-Id: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: Init DDI ports in VBT order
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

The remaining parts of the big VBT based DDI port initialization
series.

The main goal being to get the HDMI port working on many
ADL-P machines where the VBT declares both eDP and HDMI
for the same DDI port (B).

Ville Syrjälä (5):
  drm/i915: Initialize dig_port->aux_ch to NONE to be sure
  drm/i915: Only populate aux_ch is really needed
  drm/i915: Remove DDC pin sanitation
  drm/i915: Remove AUX CH sanitation
  drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child
    device

 drivers/gpu/drm/i915/display/g4x_dp.c         |   5 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 drivers/gpu/drm/i915/display/icl_dsi.h        |   6 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 187 +++++-------------
 drivers/gpu/drm/i915/display/intel_bios.h     |   6 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  66 +++++--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  11 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 -
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  51 ++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  72 +++++--
 12 files changed, 232 insertions(+), 193 deletions(-)

-- 
2.39.3

