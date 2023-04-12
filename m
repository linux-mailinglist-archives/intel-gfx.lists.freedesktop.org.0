Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C6F6E0227
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 00:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB6310E9E3;
	Wed, 12 Apr 2023 22:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2B410E9D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 22:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681339847; x=1712875847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2J3Vvr47lP2wK5ynVcQfKePnsJeyIbdVXi17srxrtPA=;
 b=PT8V8aH8CMMfz5OmLvxUeCsQN2S9lU5GQSFSYkXaEf4dvDvGKTzW/cId
 uuDu7aHwoZ8xIKSAWe3pD7Lb2SN886/gTF+wuDm8WH5JH3F0o651ONCGO
 UHlVobgd8DTDdWNbSfNdIriNEcJk7czAQ/thg3id34McBJF7cM+z9j/Rj
 EiYRrdW8ZmL3L5r3dwiCdYRyK1XsKcTU9jIQWpV0zzRCAMDHXDO3IFb5A
 Xv+x6jQNQRlT/otRFjLrIuo5NLPkbrn7i3CnupptrYeLKRqH6AWAeCuxj
 2bBFFPFDSCMAm7J6vTWBntibO5awXPnQRaGleAbe4haNjjsuz4UqwuVkT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371890360"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="371890360"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="1018906857"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="1018906857"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:50:45 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Apr 2023 15:49:23 -0700
Message-Id: <20230412224925.1309815-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/mtl: Initial DDI port setup
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Initialization sequences and C10 phy are in place to be able to enable
the first 2 ports of MTL. The other ports use C20 phy that still need
to be properly added. Enable the first ports for now, keeping a TODO
comment about the others.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 27b47680573a..1fec49c5d23a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7791,7 +7791,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		/* TODO: initialize TC ports as well */
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+	} else if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
-- 
2.34.1

