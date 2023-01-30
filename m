Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384CB681834
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81ED10E0A6;
	Mon, 30 Jan 2023 18:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323D210E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101944; x=1706637944;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MKjxTm4kzkmyGdepxg8F/B/frJtzRlxlYZuJoULvqSg=;
 b=glnvyVwUjm1zyqwYe9RCo4MFTexuaZaLF72//B5d/sx5keKnjR1fLqDD
 yOSuHAIuBCkI+kA/CCUbeH7mn1FERQHtA1NK2OGdAgUJSp4+/8u2Q314v
 4jcN/tug14XK0gAlM8EAODPZJUrCDgw/2G9FVpFOIyGur2uw1F/q0lbDm
 jS3pmwtUcirsHez659za08DHhD3j8G9T0DpoDGUQa49HX0YELNjIPU0q4
 6InEiT0kFmTJp01GY1UFLK8kh2yCXXwSoL8f3yiUdWmKojBw0gzgG1zOl
 XQEXZ9stnwfkfG6sjUz8w7sGZ7dH1vK0KN7I7b3Ema8qm0HUqLh/GtcjL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742185"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742185"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:05:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918022"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918022"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:32 +0200
Message-Id: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: LVDS cleanup
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

Some cleanup/modernization of the LVDS code.

Ville Syrjälä (8):
  drm/i915/lvds: Split long lines
  drm/i915/lvds: Use intel_de_rmw()
  drm/i915/lvds: Use REG_BIT() & co.
  drm/i915/lvds: Extract intel_lvds_regs.h
  drm/i915/lvds: Fix whitespace
  drm/i915/lvds: s/dev_priv/i915/
  drm/i915/lvds: s/intel_encoder/encoder/ etc.
  drm/i915/lvds: s/pipe_config/crtc_state/

 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     | 332 +++++++++---------
 .../gpu/drm/i915/display/intel_lvds_regs.h    |  65 ++++
 drivers/gpu/drm/i915/display/intel_panel.c    |   1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |   1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  56 ---
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 8 files changed, 232 insertions(+), 226 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lvds_regs.h

-- 
2.39.1

