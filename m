Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 218696D9A71
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6CF10EC0E;
	Thu,  6 Apr 2023 14:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1176910EC09;
 Thu,  6 Apr 2023 14:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680791651; x=1712327651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kfVgsl0sH/QBcjbYimquAEwJBTDIavRZJjfHxjkzRic=;
 b=cgFik+ZtL8HDPZFqipoOol1F9qlUYvrZ+5EgYLpgW39VFchBjtUQB4WB
 M/1O4rDZexONDbm91mzR9fniFoUhZ0olN6xXbWLH8PlOWmkQ1tBk1gF4I
 mc4+yIhppcrHf1bxjx9Zu3D/I4f46ncK8yiVjAXe6bMVbuGDSjUVmbY//
 Oxw939MS6WCKwHXECgwB99u5NPCbcdeyhueDzBRonaWDaaKUccH4mgKy+
 iIKvGM/ejOelJ+AGwUQRL93mWdF+3wqhJoSRVSoXbUhass5NQeHTXYyTd
 wEUKFFfOqTYj6O/L1tg4VkavfH3lX2weZRUZfMUKYQ7xZO3gvujFvUD+D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331384549"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331384549"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="664488464"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="664488464"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.148])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:31:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu,  6 Apr 2023 07:31:30 -0700
Message-Id: <20230406143133.29474-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230406143133.29474-1-jose.souza@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 rebased 3/6] drm/i915: Only initialize dlk
 phy lock in display 12 and newer
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This spin lock will not be used in older display versions, so no need
to initialize it.

Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dkl_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 5bce7b5b27bc7..1c5d410b74e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -108,5 +108,6 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
 void
 intel_dkl_phy_init(struct drm_i915_private *i915)
 {
-	spin_lock_init(&i915->display.dkl.phy_lock);
+	if (DISPLAY_VER(i915) >= 12)
+		spin_lock_init(&i915->display.dkl.phy_lock);
 }
-- 
2.40.0

