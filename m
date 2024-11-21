Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EBC9D4BDC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 12:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03E010E1C2;
	Thu, 21 Nov 2024 11:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g+/hqL3X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FAB310E1BB;
 Thu, 21 Nov 2024 11:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732188460; x=1763724460;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9deqdZC0u8OcDT/Chgb4t9piw7d6DQFUUyjpJ2oseE0=;
 b=g+/hqL3XyTwQOfsuhlva7Eh8oQ/uoL1APqJ2mj3msBiVP/NwIf93JjD6
 mF5XyZMk53hkoqWVGwUd0A/Aa+9nN3S7dzP69Eo/eveU3AvLUoMr6HRMq
 /WPih9HzxfrdqJ+iQyLY5EEA36wWejKXj5rGFL2ahIlNPL8Y5ntnhPcN6
 UeKEqhUDHmhnbv7Nm6AjlKmHgYaPkH8iGYwoSQf3hjoEY5JYUfNEXl94p
 g3YOB5pbQvG19XsxIhAxL04XEh7lntP8n/4oNUvwnh9b3sSalzWj1uMGe
 4G1ARxg/6efOdNbjLAeABB/qRFVBYcyDgeJCDAgEnOLoLZoGgrHmcoPw2 w==;
X-CSE-ConnectionGUID: OMlN6cqcQl2pCTKZkhp1Pg==
X-CSE-MsgGUID: /ZwQvVW5R2mQVCPGKi3U0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49821029"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="49821029"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:40 -0800
X-CSE-ConnectionGUID: fsGfR3rZQJu2s6EfH+/YRA==
X-CSE-MsgGUID: DtITExBVRyaEo5ZexvY+Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="90165728"
Received: from vgovind2-mobl3.fi.intel.com ([10.237.66.37])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:38 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 0/3] use hw support for min/interim ddb allocation for
 async flip
Date: Thu, 21 Nov 2024 13:27:23 +0200
Message-Id: <20241121112726.510220-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
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

In Xe3, hw can automatically switch to minimum / interim ddb allocations
for async flip use case. Configure the minimum and interim ddb
configurations. As usage of intel_display is recommended instead of
drm_i915_private, few preparatory patches were added for that purpose.

v2: Addressed review comments
    Dropped few patches which do replacing i915 with intel_display
    Dropped the debugfs patch to print dbuf allocation stats as
    part of ddb info

Stanislav Lisovskiy (1):
  drm/i915/xe3: Use hw support for min/interim ddb allocations for async
    flip

Vinod Govindapillai (2):
  drm/i915/display: update to plane_wm register access function
  drm/i915/display: update to relative data rate handling

 .../gpu/drm/i915/display/intel_atomic_plane.c |  27 +---
 .../drm/i915/display/intel_display_types.h    |   8 ++
 .../drm/i915/display/skl_universal_plane.c    |  26 ++++
 .../i915/display/skl_universal_plane_regs.h   |  15 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 135 +++++++++++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   4 +
 6 files changed, 160 insertions(+), 55 deletions(-)

-- 
2.34.1

