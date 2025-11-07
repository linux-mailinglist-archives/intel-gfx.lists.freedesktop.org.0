Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A3CC413C7
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A49F510E1A7;
	Fri,  7 Nov 2025 18:12:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HgATcQN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4E010E1A7;
 Fri,  7 Nov 2025 18:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539128; x=1794075128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iknQP46v7pceT5zwsjVuJhKhR/V4IZlqunGrs4bZyVo=;
 b=HgATcQN6RIE4OnJIuAhfrnPvqdGORnN6dsofZLXwusHYlDhR7YH/aDvd
 T1JSXAZgCYg7DarM4UT8NVnmEMsma9GLrjvYdgyzkXtfrxecWO8Nv/48/
 9xp/UA3fwlecbPIM96LIPMGvzKU9VMHD6KTp34ICf+JqBvalkokN4A8Ca
 YhRombCgalUWYRaq1DiT0D6nWQgycxBbf0nbQo4kdaZmS3KbX7uG2tyfl
 wL4T79QhldrrLxTR7inhImyF50iRLRnV4AxoEmA4iijS6K21IgYu4OYvd
 Xnd98gon1YaFIS40HT7Fs6gxH+S6eWV5eSihUKcqExEGOksSr3vi73WM8 g==;
X-CSE-ConnectionGUID: HmNXvNVGSeuJ8ccOGb6aRQ==
X-CSE-MsgGUID: QY7BBMf9RQOQhr/bkxaZPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="82320676"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="82320676"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:12:07 -0800
X-CSE-ConnectionGUID: 8RjxeH9qRDm58sktAtgu1w==
X-CSE-MsgGUID: 3/ioWqGiR4SAAeq3lWv38g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="187398979"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:12:05 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/cursor: Initialize 845 vs 865 cursor size
 separately
Date: Fri,  7 Nov 2025 20:11:26 +0200
Message-ID: <20251107181126.5743-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
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

The if+ternary combo used for the max cursor width initialization
on 845/865 is rather cumbersome. Just split this into a straight
up if ladder.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 8410646a1f95..a10b2425b94d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -1097,8 +1097,11 @@ void intel_cursor_mode_config_init(struct intel_display *display)
 {
 	struct drm_mode_config *mode_config = &display->drm->mode_config;
 
-	if (display->platform.i845g || display->platform.i865g) {
-		mode_config->cursor_width = display->platform.i845g ? 64 : 512;
+	if (display->platform.i845g) {
+		mode_config->cursor_width = 64;
+		mode_config->cursor_height = 1023;
+	} else if (display->platform.i865g) {
+		mode_config->cursor_width = 512;
 		mode_config->cursor_height = 1023;
 	} else if (display->platform.i830 || display->platform.i85x ||
 		   display->platform.i915g || display->platform.i915gm) {
-- 
2.49.1

