Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28079C3A87
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9370910E460;
	Mon, 11 Nov 2024 09:10:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VN2EfONH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 340A210E45E;
 Mon, 11 Nov 2024 09:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316224; x=1762852224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tviS/J3i8++XoV9oNccIcIGiRl0QxbJe/GxpWAfao/g=;
 b=VN2EfONHgPHCY4/SqiGOnARUvZENVErGhdGUEvMyhoJjNDnUvCq9+GDt
 /+CKobZyUbqdzj7by7ltcGmbB8tnKrvNtuLurUeuziZc4xVAnPZFO+9Dt
 MLlCz4NslEq742Y7UDOOK3FjKofSMMfU6J99+YlvRt0fhL8INOusJFUj/
 vXMxy2xkPxC42BLtkFNmk0yNzhnHMxBCFSbncLcPf6iXGX/HREC8Kxp5B
 lLlvgs0aQXwvctsxZDVgcnsRgy7pAZK8GBtjlxgcEour+8wSIfePWat1L
 RhZ/BOoZSooAFfsFwS0TLTizAgaQWmqxm+hOJ0SzQLb1psTlF47kKxtG7 Q==;
X-CSE-ConnectionGUID: lvux8C7pRECDA+wu7zZB7w==
X-CSE-MsgGUID: RwMba8YYQBGm7EbfrcaP7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052396"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052396"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:24 -0800
X-CSE-ConnectionGUID: YemLm8YnRmOYb7aFU6rYNA==
X-CSE-MsgGUID: IBbnaZrMRbWnP+6C93VNfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762679"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:22 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/23] drm/i915/vrr: Introduce VRR mode Fixed RR
Date: Mon, 11 Nov 2024 14:42:13 +0530
Message-ID: <20241111091221.2992818-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

VRR timing generator can be used even with fixed refresh rate.
With this the legacy timing generator can be phased out and VRR timing
generator can be used for all cases, whether panels support VRR or not.

Add the enum value for representing the VRR timing generator with fixed
refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2ff75d70ccda..f2fd2ddb4472 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -917,6 +917,7 @@ enum intel_vrrtg_mode {
 	INTEL_VRRTG_MODE_NONE,
 	INTEL_VRRTG_MODE_VRR,
 	INTEL_VRRTG_MODE_CMRR,
+	INTEL_VRRTG_MODE_FIXED_RR,
 };
 
 struct intel_crtc_state {
-- 
2.45.2

