Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB984E5863
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B36389E69;
	Wed, 23 Mar 2022 18:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2CA389E57
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060178; x=1679596178;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W1oYfuEZjxq5jz3C8U4gAqlIzL/xId8lBnWuQX2FVIs=;
 b=AMLJSCfq+mWHjZ+OsmQOpdql9CPq8/hOWLqb4KeUKgpqUAlbzuu5a/qj
 Tw5PZyJQ1zZ2tblW8h7fs/Ri9JB8S5JEHUvMpcIEjDDxsY80m/Mkyda5l
 qxCXltBYq87QXc1okVoYBDdGTubIoE9rBNLpkQ7qwz4b9f1pFkHrqxJZs
 z0hHyVOAPQQ5ojrdLSdi6ZUeIfUlZVLTtrp8AKZ+KHYOHGvpy9SQknSdf
 NY8ibsjz8yINv4VbnKDa/Jmd+aQO2/JMhiXsqNtZyOrcOdTRo/y9jCloQ
 Obgzy2SjG1w57wAJA9Ya2gfe9ZMkqY4Kgibzy1fztrjb2D94w9ocRlbku w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="245671840"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="245671840"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="693044756"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 23 Mar 2022 11:29:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:26 +0200
Message-Id: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: More fixed_mode refactoring
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

Continue refactoring the panel fixed_mode stuff. The main
thing here is unifying SDVO with the rest of the world.

Ville Syrjälä (9):
  drm/i915: Pass intel_connector to intel_panel_{init,fini}()
  drm/i915: Use DRM_MODE_FMT+DRM_MODE_ARG()
  drm/i915: Extract intel_edp_add_properties()
  drm/i915: Use intel_panel_preferred_fixed_mode() more
  drm/i915: Rename intel_panel_vbt_fixed_mode()
  drm/i915: Extract intel_panel_vbt_sdvo_fixed_mode()
  drm/i915: Extract intel_panel_encoder_fixed_mode()
  drm/i915: Use intel_panel_edid_fixed_mode() for sdvo
  drm/i915: Change SDVO fixed mode handling

 drivers/gpu/drm/i915/display/icl_dsi.c        | 11 +--
 drivers/gpu/drm/i915/display/intel_bios.c     | 12 +--
 .../gpu/drm/i915/display/intel_connector.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
 drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++---
 drivers/gpu/drm/i915/display/intel_dvo.c      | 30 ++------
 drivers/gpu/drm/i915/display/intel_lvds.c     | 22 +++---
 drivers/gpu/drm/i915/display/intel_panel.c    | 77 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_panel.h    | 13 +++-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 46 +++--------
 drivers/gpu/drm/i915/display/intel_tv.c       | 12 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 11 +--
 12 files changed, 149 insertions(+), 132 deletions(-)

-- 
2.34.1

