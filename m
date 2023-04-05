Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C75B46D7A05
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 12:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DBA10E8B9;
	Wed,  5 Apr 2023 10:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C2B10E8B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 10:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680691307; x=1712227307;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bnCECc6v7qfTU0D6KsS2OzkKqN2SACh0nsSaCwbK2KU=;
 b=fBK8MYbso2M832u42RJFf01LDhn6rl7D/IMQUx/zngAZUxkdILbkmoqC
 p0L2/l3RvUBv/4HHwSa0KuoSvgKIcxVB35ymrJgJws1p0Rm0c7uhuYCh7
 BpEBrrgBXp/KBdeTfQj9hJSrHPFeYC89vhx3OIoj/MTSW8e9hQjuHjwbU
 ve/cNxNqdNACFxzkye+d2jrhhNJjdVLGx/2vQxiszyG9FYszLvQ1wh/gA
 UXUNAGMTiOc36EtXn7FHIRAN8xlRyw8/lZ6UqOM+h79MWvgH4fZkj7VY8
 Hn6HwoSQgBodLPoo4cLLZajRbRApWUenkBEEsGwZoCEvgQvTXd/81qPMR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370245048"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370245048"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 03:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810587854"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="810587854"
Received: from dlemiech-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.158])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 03:41:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 13:41:41 +0300
Message-Id: <20230405104142.766598-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tc: demote a kernel-doc comment to
 a regular comment
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

There's not much point in a static work function having a kernel-doc
comment. Just clean it up and make it a regular comment.

This fixes the kernel-doc warnings:

drivers/gpu/drm/i915/display/intel_tc.c:1370: warning: Function
parameter or member 'work' not described in
'intel_tc_port_disconnect_phy_work'

drivers/gpu/drm/i915/display/intel_tc.c:1370: warning: Excess function
parameter 'dig_port' description in 'intel_tc_port_disconnect_phy_work'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 2bb02d4e6859..3b60995e9dfb 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1358,10 +1358,7 @@ void intel_tc_port_lock(struct intel_digital_port *dig_port)
 	__intel_tc_port_lock(to_tc_port(dig_port), 1);
 }
 
-/**
- * intel_tc_port_disconnect_phy_work: disconnect TypeC PHY from display port
- * @dig_port: digital port
- *
+/*
  * Disconnect the given digital port from its TypeC PHY (handing back the
  * control of the PHY to the TypeC subsystem). This will happen in a delayed
  * manner after each aux transactions and modeset disables.
-- 
2.39.2

