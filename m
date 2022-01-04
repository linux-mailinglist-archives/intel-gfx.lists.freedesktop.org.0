Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A66484713
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC09288FFE;
	Tue,  4 Jan 2022 17:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D1010E13D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318014; x=1672854014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p8xGuGSXxzyHN+0uOb7G9nWtK7m5Wd+HuL83tOURDAU=;
 b=ZhCMaxrjZBQe5MIxUh10t33l49s9Ak1ARc3nMQrseqINrK2hNXs7ZT3t
 ASkfVQZqo5TCZZPCJkfWy4ZoR/akdcvrlVmf9qIWlFVKFlPb3nmLfBe1T
 PPSqL07Z/+MRgBfB1PjMWVo/bC8HZGMJ7W984mZQ4Up2XE+GK6UlTCSgM
 tnn9pK5e45yVm/WK0gFIwKUiNXdlbKdK4/FhgpiX7vSYaiiQyDRHCAdjt
 omqK+XCpQ7+BLF3sjibtPs2aX2AzXZuomgq7dnhA90Gdke/wugDMG85mL
 1N34AhWIDlA8RLguJdOYv8zisKBwjUoqGjrk/ugkfP0gM8F/UBif17g4p g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="222940055"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="222940055"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="470235989"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:47 +0200
Message-Id: <2598933bbd1d81dada1e08553806e22c5eb4831f.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/mst: debug log 4 bytes of ESI
 right after reading
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

For whatever reason, the ESI link service irq vector was missing from
the debug output. Add the missing byte, clean up the debug message, and
do the logging right after reading the data.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ebf80a875a41..065c4607e21f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3682,6 +3682,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 		}
 
+		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
+
 		/* check link status - esi[10] = 0x200c */
 		if (intel_dp->active_mst_links > 0 && link_ok &&
 		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
@@ -3690,8 +3692,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			link_ok = false;
 		}
 
-		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
-
 		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
 
 		if (!handled)
-- 
2.30.2

