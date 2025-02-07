Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7544A2C068
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4BD10EA99;
	Fri,  7 Feb 2025 10:19:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHl91qgn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42AF810EA97;
 Fri,  7 Feb 2025 10:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738923465; x=1770459465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1CzxyJLYcaXqAQyYto6r9/6Cbv4crt1J7g8Bk8xj6E8=;
 b=iHl91qgnTgOTpJXmkY+Uc1NZCfGVWPqqv0saC3iQv0I4tzyvd6Mjqm8u
 FRxGG/7tcbXSDllzSoc5Mf4I1Rd3NaF0V1/xWO3NvQ6veccHgw9488COj
 XYRTbGT8xug3UC/cYPkDdctY/rzPo7WbhoeBkyl4wN0Ska99OrjeYNQSh
 AgvFiAqCXmFvUuGygsujCc+5jeIs/Evk+SBA8pFmqHA7uoBi3ii3CsSer
 f6SLsiUMrUjthe02uXkL51ezFDZ6zkmK8PlYVPHIVgwrbueDDCk09qzjX
 5/TjududMzb/9vA7M4dwLTii04RPVKExCBZ2JesAzW81GGJ8QZOD8HF80 A==;
X-CSE-ConnectionGUID: 6a9VJX0QSQ+ZEN/a9LK0kA==
X-CSE-MsgGUID: a7HkeE+fQoGFyHwOUKxuXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39674915"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39674915"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:17:45 -0800
X-CSE-ConnectionGUID: YCTZLDD8SLClMUvs/xIuAg==
X-CSE-MsgGUID: NpxRpUkFSVC5BmkCnYp3pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116686083"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:17:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/pch: small cleanups, refactors
Date: Fri,  7 Feb 2025 12:17:35 +0200
Message-Id: <cover.1738923308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

The PCH detection code is a bit problematic in terms of making it
independent of i915 core code. I don't have a solution yet, but while
looking I came up with these small improvements.

BR,
Jani.


Jani Nikula (3):
  drm/i915/pch: Make LPT LP a dedicated PCH type
  drm/i915/pch: Hide PCH device IDs
  drm/i915/pch: Remove unused i915->pch_id

 .../gpu/drm/i915/display/intel_backlight.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  1 -
 drivers/gpu/drm/i915/soc/intel_pch.c          | 42 +++++++++++++----
 drivers/gpu/drm/i915/soc/intel_pch.h          | 45 +++----------------
 drivers/gpu/drm/xe/xe_device_types.h          |  1 -
 5 files changed, 41 insertions(+), 50 deletions(-)

-- 
2.39.5

