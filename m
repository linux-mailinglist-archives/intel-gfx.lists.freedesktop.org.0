Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A7A9573C1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51FB310E1DA;
	Mon, 19 Aug 2024 18:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="asrrKD2v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A3410E1DA;
 Mon, 19 Aug 2024 18:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093084; x=1755629084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UJVpH49vsjvbFTuyqf1elUlyyo0EWgZzb8GpZj9pPW4=;
 b=asrrKD2vjKoujEvJJXchnP1yR2cdye6+Bff3pKD8vlJg2DjFyvDv4Xqz
 e35N0RrN2qzbWFRis5+L6pRnlFcOAygRnA0XzKs/8o4Um/bmKDn0iR1X9
 4TWDtyN2i0pi34x2J+MPVizEkKeOI92J24O+gMWOmJ5kdIoQKhrL37lrE
 EvDPoekGTyaJ6dTkYAAHca9CvxjWZdVqmH50IFLQn3P8aFjhe15O1rU5t
 t0cTqGfGm6UUpedziE3oN3MuiYhaae3RDjjM+c7wJpGxbH9ep6LU3pZct
 IHja8JCohbIh9q7ifF36lqxQ7FMru8oZkvMj61diyVD0hQ56mVMBcr0b2 w==;
X-CSE-ConnectionGUID: dYWA95kaS3aAns4K+QOcmw==
X-CSE-MsgGUID: itYmT3bzQFqQZrN29czNEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26157478"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="26157478"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:44:44 -0700
X-CSE-ConnectionGUID: MINA1ILSRDKAdbDWFKhuSA==
X-CSE-MsgGUID: guo8x5P0RjSFPcDAeudVyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="97940241"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:44:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Date: Mon, 19 Aug 2024 21:44:27 +0300
Message-Id: <cover.1724092799.git.jani.nikula@intel.com>
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

v2 of [1]. Please read the cover letter there.

This addresses review comments and adds a few more commits on top, in particular
the last one showcasing the approach.

The main question remains, is this what we want?

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1718719962.git.jani.nikula@intel.com


Jani Nikula (9):
  drm/i915/display: use a macro to initialize subplatforms
  drm/i915/display: use a macro to define platform enumerations
  drm/i915/display: join the platform and subplatform enums
  drm/i915/display: add display platforms structure with platform
    members
  drm/i915/display: add platforms "is" member to struct intel_display
  drm/i915/display: remove the display platform enum as unnecessary
  drm/i915/display: consider HSW/BDW ULX to also be ULT
  drm/i915/display: keep subplatforms next to their platforms
  drm/i915/bios: use display->is.PLATFORM instead of IS_PLATFORM()

 drivers/gpu/drm/i915/display/intel_bios.c     |  36 ++--
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   |  89 ++++++---
 .../drm/i915/display/intel_display_device.h   | 180 ++++++++++--------
 4 files changed, 174 insertions(+), 134 deletions(-)

-- 
2.39.2

