Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588639AF511
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDBA10E9A3;
	Thu, 24 Oct 2024 22:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b57cjkxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D219010E3CE;
 Thu, 24 Oct 2024 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807679; x=1761343679;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=43DqmJgU+m9sfObrfw+M8LExqh73gr26cjVASPwlEsw=;
 b=b57cjkxVAi8e3XdT7Thr4b/I9u8oD5+VulcD7UfC/sa9v17PEa9Go8Jf
 G82jh0iDQ3pDxaAdCNrJea735aCXmJFdKxnkR5lNhMJlQ9GKPGzy3hNJv
 YW7xnJbAroFXdO0U0TP6LQ458niPd2FcqJCf434mp1n8LqgAwjw58fMwc
 kYkrIRc9rLBWN/KkzEWKlev5EN54lK7pMxETaKRFSB85gwSoEF9Il6Hnu
 IYKexEWyY5rZDXxlzPcXLOtotwuSemOGG0DQ2O62ktq5/e75YKyQ9cg/r
 rkd5RCqBbfl8ziy8lZAwXth/rR8gZcETD1gMs/ND0gYyT8K+qAeeTkQv7 A==;
X-CSE-ConnectionGUID: +V181zhMTaybQRaTpanU3w==
X-CSE-MsgGUID: /pBxhdpjR0m/32DUoRnLMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367641"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367641"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
X-CSE-ConnectionGUID: EsbxM8T4QgGKOvaUb7PUxw==
X-CSE-MsgGUID: fSlHP4esTK2pIqJaExqoFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687968"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 09/11] drm/i915/display/xe3: disable x-tiled framebuffers
Date: Thu, 24 Oct 2024 15:07:50 -0700
Message-Id: <20241024220752.714457-10-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
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

v2: Include up to display 29 for X-tiled support. (Gustavo)

Signed-off-by: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a7b4cf8b6d50..6a7060889f40 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -349,7 +349,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.plane_caps = INTEL_PLANE_CAP_TILING_Y,
 	}, {
 		.modifier = I915_FORMAT_MOD_X_TILED,
-		.display_ver = DISPLAY_VER_ALL,
+		.display_ver = { 0, 29 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_X,
 	}, {
 		.modifier = DRM_FORMAT_MOD_LINEAR,
-- 
2.25.1

