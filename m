Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB696BCDEF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E989E10E0A3;
	Thu, 16 Mar 2023 11:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7132210E09E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965533; x=1710501533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0n3YwP0XY5IW9RZ4d/xIdtpNSsXOmtfbTMco5sqOq9A=;
 b=VawlfcJqlna8Dxx8eVsjE/Ht7+NI+0tF6i5XLwOP8H6lecjAziyl8D8B
 O1snL5cG2cx+F/WhvuIu1aImUeZzlN6vJtfhMIAfYE0kAL9f3L3hZ7WG1
 a3neqbnkgw/5X3PutL1h3O3EtFwERDCUOHe6u7w7uNV4p6F6DrQC8o7FT
 ETp7yhDS0AJkwnc1y7CJWFwX5nkCgx4DBdC9DvZziglOOjKYvOFZJOgox
 TxWObt+l8VOTbCJnBuMakn4cJlwP15c3fQmlhTFh2TI8Mw3fOtAk7I0IE
 ZfCeWi51okEfrKI9qRb1GvWzZdW4jDzZvlUzvF6EWkLEBCBHc8+Z0TZ9O g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485815"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485815"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083082"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083082"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:18:51 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:14 +0200
Message-Id: <20230316111335.66915-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 01/22] drm/i915/mtl: Initial DDI port setup
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
index 410c84fd905c..1ac05dc68db5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7832,7 +7832,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

