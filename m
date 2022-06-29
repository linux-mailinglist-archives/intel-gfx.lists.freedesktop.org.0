Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111FE5601A9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 15:47:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238DB10F648;
	Wed, 29 Jun 2022 13:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428A410F648
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 13:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656510451; x=1688046451;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4+lopXei3VfmcwhQU35LAe0UD3vbWVzDJPh5FLrCTlA=;
 b=kypKUhOF1eMGeslvIQD5zIw6DqC0tk6YzDjoXvOraSqDbV+ZKsrUBBOd
 BRk3vOTkrYYKGM8CK2vT9afZ+ZILMelS5i2S0rCywZR7Za3yYCr5qM3NM
 PnJgpoH66Mj5fdXjwhdhwq5peh9rud+JeRBBhKHjkU9RWPTUANoq+Wk9G
 mqlyvcXRIEH5vrliTjfBkKzJPE7lIdM5v+3KlPNzLVWKbId1l9do6oA59
 auHIKmBWJh68sS0AZnQ6brRFknUFsbsuCvhb54ObyEqkxHuRd+VUSpcGm
 zNjaJ8S9T00QJdfcXBVph4OzLHY5VVpugy2lrGPGR+kXbs/8LbeXLLt07 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="368346456"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368346456"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 06:47:30 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733184312"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 06:47:29 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 06:47:21 -0700
Message-Id: <20220629134721.48375-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Drain freed object after suspend
 display
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

Display is turned off by i915_drm_suspend() during the suspend
procedure, removing the last reference of some gem objects that were
used by display.

The issue is that those objects are only actually freed when
mm.free_work executed and that can happen very late in the suspend
process causing issues.
So here draining all freed objects released by display fixing suspend
issues.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6e5849c1086f6..aa2a5ea30c7bb 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1186,6 +1186,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
+	i915_gem_drain_freed_objects(dev_priv);
+
 	return 0;
 }
 
-- 
2.37.0

