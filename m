Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4014CB6C43
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 18:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ADCD10E28C;
	Thu, 11 Dec 2025 17:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtLVT49m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B84A10E28C;
 Thu, 11 Dec 2025 17:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765474639; x=1797010639;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kkezpfg9zldyo/dzI2smh+dcDVNfQrbe9SLM6Ti1nnU=;
 b=AtLVT49mVCRFBQxVbZtsVohodb1n4u6OYXb+EHYFnqKU+EVFEJ2YePW0
 YcAe+UnvbHbugbQan/WUrn9r1m++qIxhk2wzYmx5/iDMjGSEyysvNsbax
 TsF+BncuQDXGuCgFeIR3ffb+RqOAtsiTCz0r7B4eME4oqomwhHIvofR2T
 L1o1Z/2aADg2UUzbsQyoRe/Ed+wigjBOgzYciK1eYVW/H6scbMOHstrdd
 IoJLsbKYkYKjwItrly8YtXJKD3y3RPhhfoJBEjg4nwkjsrUtmuAQ+/b2W
 EpCA9Z1SSfndsOa8hNtsJr4TA1b0QXw+UDhoo46vRoCkZ1ystyt7HB6Xe A==;
X-CSE-ConnectionGUID: bGGo3V4SQJyqH7Sdmi+DTA==
X-CSE-MsgGUID: o1nbVmA9S7G9XyNBSi221g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="71087898"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="71087898"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:37:18 -0800
X-CSE-ConnectionGUID: 9ZIVy+/kQ225F3bgt2OFQQ==
X-CSE-MsgGUID: Uz3xAOupSMmTQk0nuqScxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="196756927"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:37:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/{i915,
 xe}/panic: move panic handling to parent interface
Date: Thu, 11 Dec 2025 19:37:10 +0200
Message-ID: <cover.1765474612.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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


Jani Nikula (2):
  drm/i915/panic: move i915 specific panic implementation to i915
  drm/{i915,xe}/panic: move panic handling to parent interface

 drivers/gpu/drm/i915/Makefile                 |  4 +--
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  1 -
 drivers/gpu/drm/i915/display/intel_fb.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_panic.c    | 27 --------------
 drivers/gpu/drm/i915/display/intel_panic.h    | 14 --------
 drivers/gpu/drm/i915/display/intel_parent.c   | 15 ++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  6 ++++
 drivers/gpu/drm/i915/display/intel_plane.c    |  5 ++-
 .../drm/i915/display/skl_universal_plane.c    |  1 -
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 drivers/gpu/drm/i915/i915_panic.c             | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_panic.h             |  9 +++++
 drivers/gpu/drm/xe/display/xe_display.c       |  2 ++
 drivers/gpu/drm/xe/display/xe_panic.c         | 16 +++++----
 drivers/gpu/drm/xe/display/xe_panic.h         |  9 +++++
 include/drm/intel/display_parent_interface.h  | 11 ++++++
 16 files changed, 103 insertions(+), 57 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_panic.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_panic.h
 create mode 100644 drivers/gpu/drm/i915/i915_panic.c
 create mode 100644 drivers/gpu/drm/i915/i915_panic.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_panic.h

-- 
2.47.3

