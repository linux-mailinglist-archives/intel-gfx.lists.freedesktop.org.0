Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA067A914AF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 09:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C00C10EA12;
	Thu, 17 Apr 2025 07:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="huoOTdbj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC5210EA12;
 Thu, 17 Apr 2025 07:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744873499; x=1776409499;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=S85qOTIAWTMFSMY52x11uuRjoV35ODWKZdWrJ3EVpX0=;
 b=huoOTdbjRfSRHTgscKFbv1IRjY2zPlm1LHWBfcRCWb1nNP8gNJ80Z1MD
 RMnSt4YDlNXIYgt68sN7UpQimhOtBrg0WppnbwXS71Oy31KRmcd+5tamT
 PBBwrzjrK6xObgvvllODgorb2N9h1pETVFEcnjqfKkMHXps1hXvMgYJ9a
 tA0aLULP4xuBp1maplO6S66rjUqlvhIM++wGEToFGFxfUcyVFupj9n/CH
 GSwDGDYYZwT1E6q0rY0qpuvx1A1efOzxaOUb2Rgon5oCHbzZ6YU76UwyK
 jY1IcakCJCkD9L+TfXtZngEfFGZle2WhG3wGsFzZtW9Z9erVsNW+M+mPC g==;
X-CSE-ConnectionGUID: 0sDOn44RQzO7VEtE9kkSZA==
X-CSE-MsgGUID: IZcY7OVSTj6qtgjuX0q5Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="63983894"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="63983894"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 00:04:59 -0700
X-CSE-ConnectionGUID: d6qiPzc0Tg6cj1FU82/tcw==
X-CSE-MsgGUID: 2WAmhbxhTXOY6PKq5k9cTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="135688880"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 00:04:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Oded
 Gabbay <ogabbay@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-fixes
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 17 Apr 2025 10:04:50 +0300
Message-ID: <87fri7p8tp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Hi Dave & Sima -

drm-intel-fixes-2025-04-17:
drm/i915 fixes for v6.15-rc3:
- Fix DP DSC configurations that require 3 DSC engines per pipe

BR,
Jani.

The following changes since commit 8ffd015db85fea3e15a77027fda6c02ced4d2444:

  Linux 6.15-rc2 (2025-04-13 11:54:49 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2025-04-17

for you to fetch changes up to 3a47280b768748992ee34bd52c394c60b2845af3:

  drm/i915/dp: Check for HAS_DSC_3ENGINES while configuring DSC slices (2025-04-15 10:33:37 +0300)

----------------------------------------------------------------
drm/i915 fixes for v6.15-rc3:
- Fix DP DSC configurations that require 3 DSC engines per pipe

----------------------------------------------------------------
Ankit Nautiyal (2):
      drm/i915/display: Add macro for checking 3 DSC engines
      drm/i915/dp: Check for HAS_DSC_3ENGINES while configuring DSC slices

 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c             | 7 ++++---
 2 files changed, 5 insertions(+), 3 deletions(-)

-- 
Jani Nikula, Intel
