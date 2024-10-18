Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D8D9A487C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F047710E9A6;
	Fri, 18 Oct 2024 20:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxlmty6m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C41310E9A0;
 Fri, 18 Oct 2024 20:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284594; x=1760820594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kWP9a087hI8Eeqb1wQYHUK9EKqH5asYaOe0Za0WgqTU=;
 b=jxlmty6mF2M4NO/5XUgGYsEEiGqppCfpTaQqHY/OMcG9ocJaBeTXjWRU
 akmlvijQnBA5w7yGfsnDLkGkUZ+7Wt4NmLgC0r1Sj0HSrsEMNMWxPOxic
 HOUXbeyDYcvlMwXQAVnYI46wA8MbuE1pnF6WQzlFQ3PYS6VU1Gw7uNFPc
 q5i/n1jZrYeCttGIs08Vngr3TO5RkxR9jB3PJR6goeY76cApa6S4fq/iv
 35OP/1R6NnoMEMb4tWK+VA3URDUtT0maNAskha3VnEoZW31pJvqN+JKX4
 ZxVHciT0vz0wM6MoibA2ouZL124KnzkltU3AhF1pmqVqFSvhKqVq1l1ww w==;
X-CSE-ConnectionGUID: 3MVZanfQSzOO5TFVOu/Pgw==
X-CSE-MsgGUID: RV9f6z3+SqqQ1miISoYEPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240191"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240191"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:54 -0700
X-CSE-ConnectionGUID: u9UqMPeuTjGEHKLsvo6crQ==
X-CSE-MsgGUID: dx2N6h1ZSZm8UsGVqmvBqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798956"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:51 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>,
	Heikkila@freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 06/12] drm/i915/display/xe3: disable x-tiled framebuffers
Date: Fri, 18 Oct 2024 13:49:35 -0700
Message-ID: <20241018204941.73473-7-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>

Xe3 has no more support for x-tile on display.

Signed-off-by: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a7b4cf8b6d50..2075541bcdf4 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -349,7 +349,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.plane_caps = INTEL_PLANE_CAP_TILING_Y,
 	}, {
 		.modifier = I915_FORMAT_MOD_X_TILED,
-		.display_ver = DISPLAY_VER_ALL,
+		.display_ver = { 0, 20 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_X,
 	}, {
 		.modifier = DRM_FORMAT_MOD_LINEAR,
-- 
2.45.0

