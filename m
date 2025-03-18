Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0889A66C82
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA0610E446;
	Tue, 18 Mar 2025 07:48:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3T35JaR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470C210E447;
 Tue, 18 Mar 2025 07:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284085; x=1773820085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DwasAqJmmxSqa9zsA+vfJGT+Cn+YhNcH/jjhdbpaglU=;
 b=D3T35JaRGP+B9fu3nsrF9Bh5jrClBg6ht1sjUCiEqOhklx/CH1EACq+D
 GuZoUqUC4WZGoB/5Vs2UVScATvMXqijI+bWJZnn2M0Ea2bx8jLDFrlEa8
 a3RC/Rv62gTTTu1eo6Ej7Pd0UUzEMDvNa1htCPZd4Z6PrwM21WCqpYmA0
 0xHxwmHo7/duQAcylnnn5BBmdR7APiHsY/h9ssAatdCgQl7/7CgCMfo7B
 PIBZgCFUS1v5cskvlKPWA/gRKigIde44JkOzSjEvr5u1fojpQ6+wk0mDR
 wGcxK7Don3xLiBLCLiH99aul4pJjb6wu40Eo3kVq/8fi5T+kmXuPE9Tgf A==;
X-CSE-ConnectionGUID: vAQ3VaoUTnua+d4+AtGAog==
X-CSE-MsgGUID: g3OALHcBRDu2K3Evj6Uz5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173846"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173846"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:48:05 -0700
X-CSE-ConnectionGUID: 28xXWuDtQ+auWU/Ck+k4Zw==
X-CSE-MsgGUID: 5LALhZ50QESW47Kf1HwF5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681747"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:48:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/16] drm/i915/vrr: Always use VRR timing generator for PTL+
Date: Tue, 18 Mar 2025 13:05:39 +0530
Message-ID: <20250318073540.2773890-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
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

Currently, the VRR timing generator is used only when VRR is enabled by
userspace for sinks that support VRR. Starting with PTL+, gradually move
away from the legacy timing generator and use the VRR timing generator
for both variable and fixed timings.

Note: For platforms where we always enable the VRR timing generator,
the LRR fastset is not allowed to avoid live programming of vrr.guardband
with VRR TG enabled. This effectively breaks the LRR fastset functionality
for these platforms and needs to be addressed.

v2: Use this for PTL for now to avoid losing LRR fastset for older
platforms. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c1cdd1918c19..6c6bb868381c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -553,7 +553,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 30)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

