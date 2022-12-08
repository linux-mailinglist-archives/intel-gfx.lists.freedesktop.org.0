Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3866470E3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 14:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F46210E49F;
	Thu,  8 Dec 2022 13:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875DF10E49F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 13:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670506604; x=1702042604;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ThOM/0YNt8LTr7sUDojUhFJveEsC1YhxzHrM4P+jQk4=;
 b=EkWsLVz+qK0XFblJ36id3W38e5X009Xtl/Jc2Pe49tvo/6D+jTKQZ0eO
 FlrwEOogGnJL5WxMev0gf8LJDA+ZyxFjDSH5kNMl3L8E1+Dv6SL0og08/
 RH/2o7TiFyEFzzBM4lWlBUcmwH0TsC9c7D8JNmYT6/rH71xT9hC1Ln+Ci
 BlR+hslwTvW1Gtzh9ovRbh2svWuUtW8PfEQ8ibendpU5VSpeTlIRDB9nM
 xlDZm7+MQRYOCXUH3RglMcB3E0FHihrU74+iAo9/A52etRHI6TD818wZt
 nSOuM3akrJorU5vxnwR0eGmWvhIJFwZCNKSWSJn8m/523r5M/ro5GX70a A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318312284"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="318312284"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:36:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="975860023"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="975860023"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:36:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 15:36:38 +0200
Message-Id: <20221208133638.478024-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: no need for gt/gen8_ppgtt.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove an unnecessary include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32b257157186..6cdfdae2c712 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -70,8 +70,6 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_object.h"
 
-#include "gt/gen8_ppgtt.h"
-
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
-- 
2.34.1

