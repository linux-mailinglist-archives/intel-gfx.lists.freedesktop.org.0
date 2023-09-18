Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E71737A505D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC4A10E29C;
	Mon, 18 Sep 2023 17:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9064E10E034
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056639; x=1726592639;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JFV9sHVTY+uJ8j3lKbM2shfYKjGukZNoZi/LvaED6fs=;
 b=J+qHaKEfGqpnwuJuyQC/sA7Cc9+E9Of5yQhvEY4iTAGySiZv52W1Be0/
 TQ54W8w6uDZog8P+RzUfmK3w0KAWp4gG+SraPgFUk6n+6eayTznQ3Y/oV
 qEJJbQfHtnW5dYppJ9A6yiSrSyV53peOTprjuv1qLyeno0LecT006+crX
 2yWl+JzBQZmMAtGdJt4qYX2iRqZpVkUPVYkSXDj1vrJsrv/IzkDcqTqNm
 2be9KcBSvbuTvLsMngZOnpwwjGnnGxq/GUKDP2NMKyNkh6ySiUNQhF0uS
 xXAvcZtT4EPQoNZ298Aoo9S6A0KCs6OXPRHJTWKkk44xxVR64noecyezR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="378626176"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="378626176"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="816109818"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="816109818"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:19 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 19:02:57 +0200
Message-ID: <20230918170257.8586-8-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Enable GGTT updates with binder
 in MTL
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL can hang because of a HW bug while parallel reading/writing
from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
related pci transactions with blitter command as recommended
for Wa_13010847436 and Wa_14019519902.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4c89eb8d9af7..4fbed27ef0ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -23,7 +23,8 @@
 
 bool i915_ggtt_require_binder(struct drm_i915_private *i915)
 {
-	return false;
+	/* Wa_13010847436 & Wa_14019519902 */
+	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
 }
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-- 
2.41.0

