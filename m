Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3EE733859
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 20:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E90410E67D;
	Fri, 16 Jun 2023 18:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBE8B10E679
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 18:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686941464; x=1718477464;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nB6TSdJ8uO2QZwlldynFs/Kub9q4XpQmRKUR1yGKQVw=;
 b=M73YkbDRd5JghAGcA1156BE2m6CuJ/VKkndzVi8Btdw8u2NQX4+UTH+n
 0/n6M1dVucPlyBjr7M9SVXofdObOV4ePUO4msIH8DzaIMAgixoM5n+n2E
 p+G776qkses/vCdf5oSCczGSL4OOa5DtEHnTKPhqzLuXCVLBfwdKte/qI
 mN5xDSNqrl1lidPPlZix6BBKgsYtMCEdoLu2vRTO0MTeFOeWvhr+DK6cm
 ssWFdOKg4OjOEij0J+McqQ94H4duNVI8ehyaoYb2Dq+CTribzWBOvB/bE
 dM+tC9D+YHBmSUDaJgf4nSy4Z2OXX10igPaMtxfKiq5Soqp6pSa7VcSzK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356778187"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="356778187"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="887198413"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="887198413"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 21:51:02 +0300
Message-Id: <20230616185104.2502003-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230616185104.2502003-1-imre.deak@intel.com>
References: <20230616185104.2502003-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Remove redundant forward
 declarations from display power headers
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

Remove the forward declarations for enums and structs from display power
header files that aren't used in prototypes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h      | 3 ---
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 -
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index df38632c62371..83ceab091468e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -12,9 +12,6 @@
 #include "intel_wakeref.h"
 
 enum aux_ch;
-enum dpio_channel;
-enum dpio_phy;
-enum i915_drm_suspend_mode;
 enum port;
 struct drm_i915_private;
 struct i915_power_well;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 1015bba4af01e..a8736588314d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -11,7 +11,6 @@
 #include "intel_dpio_phy.h"
 
 struct drm_i915_private;
-struct i915_power_well;
 struct i915_power_well_ops;
 struct intel_encoder;
 
-- 
2.37.2

