Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CF18C64AA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF4510E1DD;
	Wed, 15 May 2024 10:04:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDfordYH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124B610E1DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767469; x=1747303469;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cVnEECAZHlILK+mx9mw1tcOnfNeCJLgbiD65+NelBm0=;
 b=GDfordYHxUrNjzTspzJuUb3OyS1HIhrbz7BAUYQGxVBeZNyb4MNah3DW
 zXj6/9AAvZBZt44CTImRy3YUUKww3vnQvIQgUZMIFuX/QQ2IHXtRWOP6f
 OKzwUz7ZfyTBFJ0CRWbCgMeY6GGA/tDvrPDO04x2xgV9mAJq4xXSXcRWP
 i1B0kHx8jM/jJh5CJo+fV+j7TooDGh50a7MtoyMQL1ZXnMOxgTE0oOpYX
 x1e1qtNtEsBc1Ea4JX3wzj+xuvQinSkDTaMNmhUORNHt8v/sHRsXzVthw
 nZuEWBJYjlw+W2ywp6qUkc4sp9VXtJDbCT0tKWWP2viDq6WsfjoMoo3q2 w==;
X-CSE-ConnectionGUID: GClquvcESVOTymKkbBsuWg==
X-CSE-MsgGUID: G2jWRHV4T/+BGYXTf4Mgpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11936986"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11936986"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:29 -0700
X-CSE-ConnectionGUID: oiot4aqSQVOWE3yJfpUbiA==
X-CSE-MsgGUID: yf+LjdVbTC+Hn80mdzm8+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584200"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/8] Panel Replay Fixes
Date: Wed, 15 May 2024 13:04:03 +0300
Message-Id: <20240515100411.691203-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patch set contains fixes found when debugging Panel Replay and
Early Transport and ALPM using eDP panel supporting all these features. 

Jouni Högander (8):
  drm/i915/psr: Do not use fast_wake_lines for aux less wake time
  drm/i915/psr: Add Early Transport status boolean into intel_psr
  drm/i915/psr: Get Early Transport status in intel_psr_pipe_get_config
  drm/i915/psr: Use enable boolean from intel_crtc_state for Early
    Transport
  drm/i915/psr: Allow setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE via
    debugfs
  drm/i915/display: Take panel replay into account in vsc sdp unpacking
  drm/i915/display: Skip Panel Replay on pipe comparison if no active
    planes
  drm/i915/psr: Write also AUX Less Wake lines into ALPM_CTL

 drivers/gpu/drm/i915/display/intel_display.c     |  4 +++-
 .../gpu/drm/i915/display/intel_display_types.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c          |  5 ++++-
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 +++++++++++-----
 4 files changed, 20 insertions(+), 7 deletions(-)

-- 
2.34.1

