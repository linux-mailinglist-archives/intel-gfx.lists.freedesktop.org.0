Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE7A56FE1
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C7F10EC29;
	Fri,  7 Mar 2025 18:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4B8K7VX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BAC10EC1E;
 Fri,  7 Mar 2025 18:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370505; x=1772906505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xp5NkKIr9EtniqM+BO0svyxBnaUSDD2193H/6PxWo4c=;
 b=b4B8K7VX0XLQ0X8hR5E+K/1HJVzVtBlKIrrYPBaxK4cavJABVY5jIauk
 36UmqGjEWCbZkZ0o4CjJfyr9DviGsXysAi2uGyoSw4dvn8jrx6V1djnw9
 t58W7zz0RK2Lux9aH4HN+ra9p08ri1IB2HwdPGfnbu5OCEuRPP0e4d6WZ
 b50f34OkvYruJ71hG4S8UktHLhU8ZBysJKlfoDDDNFDozpRZDxpl7C9nF
 wjxr+QzG0h2v1ioiaR6YRw6yf7jY+nnrRT6haC+cyKNphzv9mxOTnRp1I
 BQfnRDn9ZpmJNso0w2Q4Hl2giYRr3Sur9lBcbaSzO7VMabobjQ2h2MKB5 g==;
X-CSE-ConnectionGUID: TBO08lfGRkyK3XWqb9k/gg==
X-CSE-MsgGUID: 8YmVxOwxSXqDLjjTQpjiWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637105"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637105"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:01:43 -0800
X-CSE-ConnectionGUID: jxZisiEYTwWBcTIwJO7Kjg==
X-CSE-MsgGUID: GGN0NuqgROSBGTNmmTyKUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621036"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:01:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:01:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/14] drm/i915: sagv/bw cleanup
Date: Fri,  7 Mar 2025 20:01:25 +0200
Message-ID: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Continue improving the code around sagv/bw vs.
watermarks. A lot of the details get better encapsulated
within intel_bw.c and the complicated interactions between
different parts of the code are somewhat reduced.


Ville Syrjälä (14):
  drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
  drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
  drm/i915: Extract intel_dbuf_bw_changed()
  drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
  drm/i915: Avoid triggering unwanted cdclk changes due to dbuf
    bandwidth changes
  drm/i915: Do more bw readout
  drm/i915: Flag even inactive crtcs as "inherited"
  drm/i915: Drop force_check_qgv
  drm/i915: Extract intel_bw_modeset_checks()
  drm/i915: Extract intel_bw_check_sagv_mask()
  drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
  drm/i915: Make intel_bw_modeset_checks() internal to
    intel_bw_atomic_check()
  drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
  drm/i915: Eliminate intel_compute_sagv_mask()

 drivers/gpu/drm/i915/display/intel_bw.c       | 187 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_modeset_setup.c    |  22 +--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 112 ++++-------
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 7 files changed, 202 insertions(+), 139 deletions(-)

-- 
2.45.3

