Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E4AA3AAA6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5234310E10A;
	Tue, 18 Feb 2025 21:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dkOs7fMD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E489910E10A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913557; x=1771449557;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4hJc3D1+j+J6G5bZyaKWy7sS1PGLPe2pv3UATxVEmwo=;
 b=dkOs7fMDiM+6sjLO7Q1YvmmnAv3AHrvhxIQqE3PjVitzCoaSiEbqOxWM
 NXk+iCmXTgwWXVAAihw505NOhwZTuQ1PgDHR6TJBgIYw5Z2QXsAVw/qYt
 GnI7yKTa9xJpfFW3lK/IKylYUiDlDgofsVWRnvLXwZ5aqZDuR3rvPnecl
 sYC3JtlUlp/VFX4dbVKvizPvYITz2Q0NTX/RU8K8NcWNOdeyfZgBj2aR3
 uC6FwSHwNenTQIg1nwqEWuZeMh1aAve3Px95CtElDbuPkLI4upby9VVrn
 dTcTobFEwYe8r+hadwRCSSYNkj9hC8vqPLADwLH5mxyFffqeiqztfLDIl g==;
X-CSE-ConnectionGUID: 8UDSPbX3Rbi+k6s6oAH2gw==
X-CSE-MsgGUID: G6iGxUcmSjm5aRjbB1AM/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862244"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862244"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:16 -0800
X-CSE-ConnectionGUID: md6JCWjqR7WU+WRPvGaaYg==
X-CSE-MsgGUID: kc9m6ccARQ+krzAK9r2tIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693340"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/19] drm/i915: cdclk/bw/dbuf readout/sanitation cleanup
Date: Tue, 18 Feb 2025 23:18:54 +0200
Message-ID: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

I want to clean up the messy interactions between
cdclk/bw/dbuf/etc. code. Start to making the state
handling during readout/sanitation a bit more sane.

Ville Syrjälä (19):
  drm/i915/cdclk: Do cdclk post plane programming later
  drm/i915: Drop redundant shared_dpll=NULL assignments
  drm/i915: Don't clobber crtc_state->cpu_transcoder for inactive crtcs
  drm/i915: Use intel_plane_set_invisible() in
    intel_plane_disable_noatomic()
  drm/i915: Extract intel_cdclk_crtc_disable_noatomic()
  drm/i915: Extract skl_wm_crtc_disable_noatomic()
  drm/i915: clean up pipe's ddb usage in intel_crtc_disable_noatomic()
  drm/i915: Add skl_wm_plane_disable_noatomic()
  drm/i915: Extract intel_bw_crtc_disable_noatomic()
  drm/i915: Extract intel_cdclk_update_hw_state()
  drm/i915: Extract intel_bw_update_hw_state()
  drm/i915: Update bw_state->active_pipes during readout
  drm/i915: Skip some bw_state readout on pre-icl
  sem/i915: Simplify intel_cdclk_update_hw_state()
  drm/i915: Simplify cdclk_disable_noatomic()
  drm/i915: Split wm sanitize from readout
  drm/i915: Do wm readout ealier for skl+
  drm/i915: Move dbuf_state->active_piepes into skl_wm_get_hw_state()
  drm/i915: Relocate intel_bw_crtc_update()

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 18 +----
 drivers/gpu/drm/i915/display/intel_bw.c       | 76 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |  6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 30 +++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 45 +++++------
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 .../drm/i915/display/intel_modeset_setup.c    | 55 ++++----------
 drivers/gpu/drm/i915/display/intel_wm.c       |  6 ++
 drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  | 56 ++++++++++++--
 drivers/gpu/drm/i915/display/skl_watermark.h  |  4 +
 12 files changed, 193 insertions(+), 109 deletions(-)

-- 
2.45.3

