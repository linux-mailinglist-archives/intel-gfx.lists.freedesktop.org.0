Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25643A18E55
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 10:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C271F10E2FD;
	Wed, 22 Jan 2025 09:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eWPlnQbo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F7510E2FD;
 Wed, 22 Jan 2025 09:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737538222; x=1769074222;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=07T+KOU5qDPfeOSGudaFlXzZ5aFj9VsmwvIU/vyZPV4=;
 b=eWPlnQboEPG2Fu18VH0LnRIdG5c5Jbx0ePW02Wb2L7RqIkSNqlrqjtkV
 3APPIV133bzPGPM7R33KkABtLpzoxqDJFl/k6LJINdud2WBH63hFUTr47
 7JrEqU7Ilx97XW4RGOgydVnNWBqM7SVygLfHOimdQKHgabJR61IAPU7/X
 SaIjgkstLUlBNVkuakHg9QIKgOh+Q0ExelTNc54/UESMe+9luwu/xLA6Q
 nfe6qpZ95TbAM8PxtDr4iqQ6Rcb6NpuOAW7XmDcCTQ7Jm+801YrficA9m
 KJ/AeFMXaRsbGqDqBSUfnfQUbYD6t6HTLmn/0XOeEu2cbpcbe37vl1jsy A==;
X-CSE-ConnectionGUID: NHLJ4UosTW2hgwh68Pp9Ow==
X-CSE-MsgGUID: SD+RzdrsS4mDqV5qBqKAMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38156729"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="38156729"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:22 -0800
X-CSE-ConnectionGUID: Aagwf5PQStCj8zYbV06+UA==
X-CSE-MsgGUID: G1ccCkO+S/ut3CxZH5QdPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137929301"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.31])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:19 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v4 0/6] drm/i915/xe3: FBC Dirty rect feature support
Date: Wed, 22 Jan 2025 11:30:00 +0200
Message-ID: <20250122093006.405711-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
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

Dirty rect support for FBC in xe3 onwards based on the comments after the
initial RFC series.

v2: Dirty rect related compute and storage moved to fbc state (Ville)

V3: Dont call fbc activate if FBC is already active

v4: Dirty rect compute and programming moved within DSB scope
    New changes are added as separate patches to make it easy for review
    But could be squashed if the reviews as ok.

Vinod Govindapillai (6):
  drm/i915/xe3: avoid calling fbc activate if fbc is active
  drm/i915/xe3: add register definitions for fbc dirty rect support
  drm/i915/xe3: disable FBC if PSR2 selective fetch is enabled
  drm/i915/xe3: add dirty rect support for FBC
  drm/i915/xe3: handle dirty rect update within the scope of DSB
  drm/i915/xe3: introduce a dirty rectangle state variable

 drivers/gpu/drm/i915/display/intel_display.c  |   7 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 153 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.h      |   7 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |   9 ++
 4 files changed, 173 insertions(+), 3 deletions(-)

-- 
2.43.0

