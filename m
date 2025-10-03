Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835E4BB740A
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34C910E939;
	Fri,  3 Oct 2025 14:57:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XM9YH0WM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027BB10E938;
 Fri,  3 Oct 2025 14:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759503459; x=1791039459;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IkdMT0vNAHmEBsyvwU0AzbH6SLeqkf2KOiqHJ+DBuys=;
 b=XM9YH0WMW5yoqdAqISuilxPg6TMAfgxEKMq+UAWTENzbEfnsD1httH8X
 MuQb2wohNWKfCCUTFRzTSxYRtZIQC3ci3LlQ1FZyVssnrOGcezTU0glmA
 zqiTbAeKfJAdtkARMUS9On4kt5+bGGtLXm4H/fBVy9yOTQW5nSudSfJN6
 8lGZrudNgKmwFlHg0uDWOnnYsJ2hmYOjRMy2kzP0azPYjrZn6Tw9K0GoQ
 jD+KCT4O3/j+8SyrXknTG/S0lqZTZ2pa5ZTlv33zmmPpbhFXT61V5bMMm
 osumBarotPt7vSMUYIEMO+xTFsz7g5m+Pcw0n+sxyTAMCJiNlVD85ndHN Q==;
X-CSE-ConnectionGUID: ep5kgFTtT+uk6fRNucj7eQ==
X-CSE-MsgGUID: OWnjMD3LSdeyWfwvVlad6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="64400477"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="64400477"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:39 -0700
X-CSE-ConnectionGUID: ALu+yDW8RnyjqIsGG1UDnA==
X-CSE-MsgGUID: VmTYDMLcQzKMHmYqG5tyjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="184501959"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:38 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/5] drm/i915: fb fixes and claenups
Date: Fri,  3 Oct 2025 17:57:29 +0300
Message-ID: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Some cleanups and fixes to fb handling.

v2: Fix the frontbuffer bo refcounting on xe

Ville Syrjälä (5):
  drm/i915/frontbuffer: Move bo refcounting
    intel_frontbuffer_{get,release}()
  drm/i915/fb: Fix the set_tiling vs. addfb race, again
  drm/i915/fbdev: Select linear modifier explicitly
  drm/i915/fb: Drop the 'fb' argument from
    intel_fb_bo_framebuffer_init()
  drm/i915/wm: Use fb->modfier to check for tiled vs. untiled

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  7 ++--
 drivers/gpu/drm/i915/display/intel_fb.c       | 42 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_fb_bo.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 10 ++++-
 .../i915/gem/i915_gem_object_frontbuffer.h    |  2 -
 drivers/gpu/drm/xe/display/intel_fb_bo.c      |  3 +-
 8 files changed, 39 insertions(+), 33 deletions(-)

-- 
2.49.1

