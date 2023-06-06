Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D69B724CB5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FDA10E395;
	Tue,  6 Jun 2023 19:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7C910E395
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078908; x=1717614908;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QYkMteh2WAJsHsChh5HV52TnCnc30qABbPJD4c1ohD4=;
 b=gLJJZ82gyFThTvx4vMirLGQEyJeG5MoIuBSpyAhTpGEz6JsuzWrXF4XN
 BP7A+4hsyYPUhbgNU8DlthB6q5ICmpPZZZlhUDcxMKWiK9MtzKKUgtP4/
 Ud6Ty0Z0ZTNf27AM6DOSWPau+cYdIPXLcF3Kod7SzJ4E5J6snp9JwYmKl
 PxIzPHM0JbyCqbUgKWVhfP2T08jZbWNFqD/Ncoyeu40nlkW5Erdu7Pbyl
 JIpz7v+yg0DqO5Xzqu03kHjEx/J7wM2VYvUnj8hVQcYyTZo1dm9KN2S2I
 SG8wd6+zZBRzJIjvQ5NKaFmhqZZJKiP2Ohg5btDlIDoBOkKO4iYjyMn1d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146203"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146203"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709186976"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709186976"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:45 +0300
Message-Id: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/19] drm/i915: Load LUTs with DSB
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

Another attempt at re-enabling DSB based LUT loads.

The main change from the last attempt is that we now
use the DSB's DEwake mechanism to combat PkgC latency
which was causing the LUT to not always load correctly
(due to the anti-collision logic not working correctly
for DSB LUT accesses).

I also got the non-posted writes working correctly 
which lets us load the legacy LUT without the 
"write each entry twice" trick I used previously.

Ville Syrjälä (19):
  drm/i915: Constify LUT entries in checker
  drm/i915/dsb: Use non-locked register access
  drm/i915/dsb: Dump the DSB command buffer when DSB fails
  drm/i915/dsb: Define more DSB bits
  drm/i915/dsb: Define the contents of some intstructions bit better
  drm/i915/dsb: Avoid corrupting the first register write
  drm/i915/dsb: Don't use indexed writes when byte enables are not all
    set
  drm/i915/dsb: Introduce intel_dsb_noop()
  drm/i915/dsb: Introduce intel_dsb_reg_write_masked()
  drm/i915/dsb: Add support for non-posted DSB registers writes
  drm/i915/dsb: Don't use DSB to load the LUTs during full modeset
  drm/i915/dsb: Load LUTs using the DSB during vblank
  drm/i915/dsb: Use non-posted register writes for legacy LUT
  drm/i915/dsb: Evade transcoder undelayed vblank when using DSB
  drm/i915: Introduce skl_watermark_max_latency()
  drm/i915: Introudce intel_crtc_scanline_to_hw()
  drm/i915/dsb: Use DEwake to combat PkgC latency
  drm/i915/dsb: Re-instate DSB for LUT updates
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    |  58 +++--
 drivers/gpu/drm/i915/display/intel_color.h    |   2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 217 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dsb.h      |   9 +-
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |  31 +++
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |  14 ++
 drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  14 ++
 drivers/gpu/drm/i915/display/skl_watermark.h  |   2 +
 12 files changed, 317 insertions(+), 46 deletions(-)

-- 
2.39.3

