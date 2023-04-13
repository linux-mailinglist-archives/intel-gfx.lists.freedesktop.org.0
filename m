Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BB96E1642
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:03:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C96B10E3BF;
	Thu, 13 Apr 2023 21:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E4A10E2FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681419773; x=1712955773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OSYmKBrmeNK/KW41PZLJsJ4AbK6iPhoIaDtGcWhhKHw=;
 b=JbF997beNCIgeXc9SGCHar8P7600v5n19uYYZ8BOEsNzFN6j1phrGKfq
 D7fxx/0eVlvmbOpTTJ3qm4PyhV2uTXmU2JQFOZPctU5+3uVPp/RdX4TWQ
 lszZNVVLQW6JHthM5LoBhtP7W7FWDjwHav+1xKp/t9aDBQEXhtPW/3DYO
 adD9ATbU3iIqD1otU06e1ezNvT2wwJ5+q6+Lt1Q6Q3LB8+xdpmMyoYn1M
 Mf6QWMHs4EUbiQDbKeDkLtS6ZLe+WKj/uhxK0k+PHTHJuopMwuLwE4cLP
 vn3ZsyCKD4U7k3ju1iIa5dss7w4E32Z6E9E0wPINmKXFK3CSbjmVKyzyM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409493095"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="409493095"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935749090"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="935749090"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:35 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:01:22 -0700
Message-Id: <20230413210122.1496865-13-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
References: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/mtl: Initial DDI port setup
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
index 0334565cec82..2d4215862ed3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7801,7 +7801,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

