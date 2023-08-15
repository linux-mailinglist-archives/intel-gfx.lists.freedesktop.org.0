Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5B977D3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 22:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 831BB10E28D;
	Tue, 15 Aug 2023 20:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F5210E28D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 20:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692130444; x=1723666444;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nyoB3hKPItg/bLlcPPXUGTLWPEkdt05UhzrZME4sls8=;
 b=jtuK+9xgr/H/+lbzAahUhGCrNJmZLSJcZ93oyS2CxwHhrsO0MgEbJlBj
 2MvT4L2ZgYlblDeVXpUrmUyS/4sxrSp19BEzHRC20kjS26w3O0mnFMeI/
 Gl9TCj91Z6B9WK1im6jcZCMZY7V5QKUPAEmsz5kZrsK3uEW0u5FKk4fZI
 6BCCfBy3Nf+larjC6yFu+RghOAHT5n0/q8g4PFrin9SRUPd8AtO0jYjnj
 44GKz72sA1YfEsQ3DwaW9j8yMIJ/9QxjhONtshwJJQERYzb7HPlxqz0pB
 iXuw8skuf9btEZavrU2n7jcRlLI/q+MPby5kT1VjALhuLnC7/TXqo1j5G w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352691708"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352691708"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 13:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877478384"
Received: from ipadilla-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.213.174.234])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 13:13:56 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 17:13:44 -0300
Message-ID: <20230815201344.298573-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Remove unused
 POWER_DOMAIN_MASK
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

That macro became unused with commit 323286c81245 ("drm/i915: Move the
power domain->well mappings to intel_display_power_map.c").

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9e01054c2430..71d70bd9fd82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -338,8 +338,6 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	mutex_unlock(&power_domains->lock);
 }
 
-#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
-
 static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 				     struct intel_power_domain_mask *mask)
 {
-- 
2.41.0

