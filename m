Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE967812F58
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15F310E2E5;
	Thu, 14 Dec 2023 11:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D95E10E2C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554534; x=1734090534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W/z9QL4aj8o1z7+pWttR4hE0VJAGF45h4X804PwSkHY=;
 b=AHaGBVVlV3VOi4ikZyWGBJQEUEKHqUBn3kMTwuNOQ58XwE6HOMrH95Za
 OXjpJ7bfhoNEYz0GmY5DFFzjiJHYkafTV0A7JF/fy8dJIUMAlJTG0xyCd
 ZAltsWtm+M4J33PBZ7IRXWI+It+KSoc9M8ToIdER5rI84hjFDE4tam+mf
 HqB5vlkEVjCegbHSDE+x9l7Se8pGZ2RdrnfrbKYVb7p8DYFS34d7DC3+h
 f7Lg4nYQa8S6S0zNF8TFUq4tiRJdIvQ7RrSphiiUpnk6VoLHOX1K9UwDO
 WXtj31xAWC9wz8I9KdQDCpY0hSB79t3xqni8LiMJyyBKKKW7Ttub9TWOI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658681"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658681"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678846"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678846"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] VSC SDP rework
Date: Thu, 14 Dec 2023 13:48:31 +0200
Message-Id: <20231214114838.1113648-1-jouni.hogander@intel.com>
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

Current VSC SDP configuration code is broken:

1. Driver configured header and data is not used at all
2. Colorimetry data is not added into VSC SDP if PSR1 is used

This patch set fixes these problems and makes VSC SDP configuration a
bit more simpler by unifying PSR and non-PSR cases.

Cc: shawn.c.lee@intel.com

Jouni Högander (7):
  drm/i915/display: Remove intel_crtc_state->psr_vsc
  drm/i915/display: Move colorimetry_support from intel_psr to intel_dp
  drm/i915/display: Unify VSC SPD preparation
  drm/i915/display: Fix vsc_sdp computation
  drm/i915/display: Ignore only psr specific part of vsc sdp
  drm/i915/display: Read PSR configuration before VSC SDP
  drm/i915/display: Take care of VSC select field in video dip ctl
    register

 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  9 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 97 ++++++-------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  7 --
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 11 +--
 7 files changed, 44 insertions(+), 96 deletions(-)

-- 
2.34.1

