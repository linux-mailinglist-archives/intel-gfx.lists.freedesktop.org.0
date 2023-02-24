Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEBD6A19D2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD4410E87E;
	Fri, 24 Feb 2023 10:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF3510E852
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233945; x=1708769945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1dyXp3a5gHKgoh8VeEBCUTKdqpGYUg9bv/3D6X0WQAw=;
 b=fdVhoiyWhBRWuKP2Qagn/DJYBQR/xsE6DQbuLi39d1dW24dJ4Snsg4kF
 0NQQIdgMSR2W+gAWYZhpjs29k6SvCbwxw5TojSBrap/5GPuMp22MRx/Iv
 xIUnxglxX5z44Ne4JKyWtM2ep1ISEIpQInnbJdXNGSQwq8ssxBQ6aVTgv
 SUbeunIwL06rPk8jHgTj+QwJv7P0FsOSHeOrODo8Pr8QC+trtBJMDgLvx
 PhUE+Ck0nEGGbesY+L+2onAkbksqCYVNtFlB9jlZ2kh7Qiqf0M0Cyfoa0
 3SXacb0Jy4Gcms+rWLGCwQ+2kemD63sFN3lDYM8T192Ue3Orv2QBEbT3W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129820"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129820"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846504"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846504"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:04 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:35 +0200
Message-Id: <20230224101356.2390838-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 01/22] drm/i915/mtl: Initial DDI port setup
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

Initialize c10 combo phy ports. TODO Type-C ports.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fbdf32bd21..8030968e7008 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7830,7 +7830,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

