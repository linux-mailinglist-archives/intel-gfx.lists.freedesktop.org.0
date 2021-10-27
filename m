Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0C443D4B8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 23:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 253536E922;
	Wed, 27 Oct 2021 21:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8846E91A;
 Wed, 27 Oct 2021 21:21:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="229020888"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="229020888"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 14:21:23 -0700
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="665154243"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 14:21:20 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, Matthew Auld <matthew.auld@intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Ramalingam C <ramalingam.c@intel.com>
Date: Thu, 28 Oct 2021 02:53:33 +0530
Message-Id: <20211027212339.29259-12-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211027212339.29259-1-ramalingam.c@intel.com>
References: <20211027212339.29259-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/17] drm/i915/dg2: Prune the Y Tiling
 modifiers
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

Remove the Y Tiling modifiers for DG2.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juha-pekka.heikkila@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9ce1d273dc7e..9ff52dde1683 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -315,6 +315,9 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
 		return false;
 
+	if (IS_DG2(i915) && md->tiling == I915_TILING_Y)
+		return false;
+
 	if (!md->is_linear &&
 	    !(plane_caps & PLANE_HAS_TILING))
 		return false;
-- 
2.20.1

