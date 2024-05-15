Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFEC8C64AD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881EA10E5C4;
	Wed, 15 May 2024 10:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktDy9hCQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477AF10E5C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767473; x=1747303473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=teT9co7uEocafe8v+AY/ehYlKi1SBkHiTLT32mBAg5c=;
 b=ktDy9hCQYLB8yNIUQSlaeAWkudyLP2fOR7SIPm1/yr9aOCRXV0wTh8VS
 yy60eddQ7p0awqVbzYHEi/IDa7JZwjZxFKbu971c9R+zwf86iHgtEr58v
 DkLAe+5rz1S5lKVJtMc8BxzoCl/NuDh2OBa3/YVWZTAXVsG0PazWjsC0W
 xcTY+f9u9+nkU4biYfMNLl7Iy+p9DFnyrHIynnWjI2PUO0bBDgeTDVypv
 u1yl1HJ8aW/3VB70aJqv6rkT9eXCvvT3yG9vW4fA293MuQhOXdK1US1fo
 x7phKcQuXWUQJH4fZ9PwzmcE2GK9MzjDNv+DFCJSn0z4E2C3bD9CVZDd7 g==;
X-CSE-ConnectionGUID: uYsRNE4/RtKSOQ+6/U+78g==
X-CSE-MsgGUID: gLe/a89LSBW8a5sOxVc3uQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11936999"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11936999"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:33 -0700
X-CSE-ConnectionGUID: LsjUeJYiTgyhgKH6XFmbrw==
X-CSE-MsgGUID: ZO1TRH/VR/CStXOamcssxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584220"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/8] drm/i915/psr: Get Early Transport status in
 intel_psr_pipe_get_config
Date: Wed, 15 May 2024 13:04:06 +0300
Message-Id: <20240515100411.691203-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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

We are currently not getting Early Transport status information in
intel_psr_pipe_get_config. Fix this.

Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 79f81524119b..71fa3dfd5b71 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1760,6 +1760,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 			pipe_config->enable_psr2_sel_fetch = true;
 	}
 
+	pipe_config->enable_psr2_su_region_et = intel_dp->psr.su_region_et_enabled;
+
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = intel_de_read(dev_priv,
 				    TRANS_EXITLINE(dev_priv, cpu_transcoder));
-- 
2.34.1

