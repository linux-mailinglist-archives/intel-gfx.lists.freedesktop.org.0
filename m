Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D65827B01CC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C97E10E4BB;
	Wed, 27 Sep 2023 10:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3014010E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 10:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695810446; x=1727346446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1nd5dwQSWcN8gxpgkptB3e/FSYseyYZvcPNDoX3M850=;
 b=EV6zoJb5xbvjqeVLKDKEACQ+7EUiGo1tVphc/z6bjatU48g5titmfFEJ
 uhP/EDKDsmPDZzRFSvM38klBSMKiOSaWESc39qG3CnEXkFFdduz6IYi9w
 J35dZh3HDT6GD996QoS694BJcLZwOXd3v+CX7MEp5CAUkxxn/HUODdN9k
 gIqR+UxEjEMJouIEbVS+AdqoFEYaUYuoRxrMs4OFaYYZDGVqdR+BtrewL
 eg7XuBpt2Io/B3+aKovzgEAHQpTs7hX0QyioWr/ocREgnNL9sFM75m76s
 0oti2vYx2CaXM7afe6mrefLZqFnk7zu71R1J964sFpd6cbalbK//Xe9mg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="384580242"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="384580242"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:27:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="1080095984"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="1080095984"
Received: from petrovam-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.220.182])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:27:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 13:27:07 +0300
Message-Id: <20230927102707.3935596-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Ignore set frontbuffer return value
 on release
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

i915_gem_object_set_frontbuffer returns set frontbuffer pointer.
When we are releasing frontbuffer we are clearing the pointer from
the object and the value can be ignored.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index d5540c739404..8ef0538813da 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -259,7 +259,7 @@ static void frontbuffer_release(struct kref *ref)
 
 	i915_ggtt_clear_scanout(obj);
 
-	i915_gem_object_set_frontbuffer(obj, NULL);
+	(void)i915_gem_object_set_frontbuffer(obj, NULL);
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
-- 
2.34.1

