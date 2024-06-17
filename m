Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1395990B171
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA8210E3DE;
	Mon, 17 Jun 2024 14:19:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IoE3aFOi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 503DB10E3B9;
 Mon, 17 Jun 2024 14:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718633957; x=1750169957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=74deXvoiU+rr8emBgxWlJZpFw92zkNEwhRVUYUgjhgs=;
 b=IoE3aFOir8EjtcTgHuLk/HNi4e5xPEI3zusZtjrT/A/q+BuKwug4I/7K
 ADr0Mbkl8b/6tQrKcl/wsjoEgMscv3C3jnX8qHsyHu4/lde58HSp4C3f/
 ql6La2SzjvLT9RVDQRdxIPAwwHbX/Oha5fVk5cU9grzy6kWdQJG6Qq3gC
 VDwQ5hBNHTogON8OThRbSwq1hPTFzJxB31gKzRmGXb8YY6A3gkn2+cAhc
 0M/1+uT8EVwVDOvhVW4yx/8WE8u6f71lJbAMZnvZE3FQmIRjxLpJ0Sv58
 to64iarxZqMejOdE4pRAnRXW6SAws9gmys+Hm8yXRpwwnUYOM9SJrGoV9 w==;
X-CSE-ConnectionGUID: qvJfW/usQGWD84fT3rtC4A==
X-CSE-MsgGUID: Y4Nf0wbzQGi6uaVKlST+Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15593287"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15593287"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:17 -0700
X-CSE-ConnectionGUID: lfZSN2d9RqGHUWUmlhQcwQ==
X-CSE-MsgGUID: bgyKBBEVTjSke2OZaOLgHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41083506"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915: make struct intel_frontbuffer opaque
Date: Mon, 17 Jun 2024 17:18:57 +0300
Message-Id: <cover.1718633874.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

Hide the struct intel_frontbuffer implementation to add more clarity in
the interface boundaries.


Jani Nikula (5):
  drm/i915/frontbuffer: un-inline frontbuffer bits checks
  drm/i915/frontbuffer: hide ->bits more
  drm/i915/frontbuffer: add low-level kref accessors
  drm/i915/frontbuffer: hide ->write
  drm/i915/frontbuffer: make struct intel_frontbuffer opaque

 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 57 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 53 ++++++-----------
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 .../i915/gem/i915_gem_object_frontbuffer.h    |  4 +-
 drivers/gpu/drm/i915/i915_vma.c               |  2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
 7 files changed, 75 insertions(+), 47 deletions(-)

-- 
2.39.2

