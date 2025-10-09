Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C11BCAE25
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF98F10EB1B;
	Thu,  9 Oct 2025 21:13:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FILBWxPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F9C10EB1B;
 Thu,  9 Oct 2025 21:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044397; x=1791580397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3s+c0Sw7ncDbyRkwVmKRd/pi1lDQ+EK9BjafrOW5sOw=;
 b=FILBWxPwj5Rff3WEW0Dn+z38QEduQc9KqC+o93YnJ4hld4Ju7c0JtEQY
 eDU8yvSLfXmb/VqyHoDH/ywHwAhEDomOYWAeh3NHS7CRjx3i4FMmjVFxJ
 gM3hCaJhvKvyTCNyxeBpfVvzfXzp4lgnL8nqKla7q6RyezqjcBZBa+WB5
 ZrUZoJH6oD0hL90sNRJzeeNDH04DcIpuQ6OcZxuf7TZHIjqAhi0mii1vE
 VWCpaBKWtXbJOzrr7O58wZgGHY7uTPp8XcWCdQ3QF5QXRkfKeHO+A+gYj
 yq2RixVYeMpLsZuOWkAESkn8weH0aijvJ1jKoKqa4cS6GqxFg47kAWq8g A==;
X-CSE-ConnectionGUID: mtcnBB2hQ5iboEsi5NSUww==
X-CSE-MsgGUID: ZsI0f6AmSxaoWzJ9KQ94xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910080"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910080"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:17 -0700
X-CSE-ConnectionGUID: yBV003G1TCm/kM7hCdtTRQ==
X-CSE-MsgGUID: 6yUFWZsaSwq/adIolIZDBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516283"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915: Some universal plane fixes and cleanups
Date: Fri, 10 Oct 2025 00:13:04 +0300
Message-ID: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
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

Fix up some of the universal plane min size handling, and do
a bit of random cleanup.

Ville Syrjälä (8):
  drm/i915: Rewrite icl_min_plane_width()
  drm/i915: Drop the min plane width w/a adl+
  drm/i915: Implement .min_plane_width() for PTL+
  drm/i915: Start checking plane min size for the chroma plane
  drm/i915: Introduce intel_plane_min_height()
  drm/i915: Remove pointless crtc hw.enable check
  drm/i915: Extract glk_plane_has_planar()
  drm/i915: Unify the logic in {skl,glk}_plane_has_*()

 .../drm/i915/display/skl_universal_plane.c    | 94 +++++++++----------
 1 file changed, 44 insertions(+), 50 deletions(-)

-- 
2.49.1

