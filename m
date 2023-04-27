Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E96B6F0E79
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 00:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E189B10E19D;
	Thu, 27 Apr 2023 22:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CDB10E19D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 22:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682635640; x=1714171640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JO28IFPmKB4unt+Zp5sefMIorDK6hs1INNArO9rnWuk=;
 b=ZH/qbhVWdUT6veFxPjtU5xSQZNn2BlnRHWXsK/ddrSUwgoJwSRu5aPWm
 Eu+XTZVNNOGkkarKQGBwJDNYkVDzZmdyo92amqX0n70qNKs4dut4+Vjnn
 geceZGinHYsSDgyUXM7wZ4HSszr8EIcqH5JzaO11iEhzB9e+1WmO/JX8s
 CoA21Kyk6HS9dohKv/QZVIqLgDcSE0cHXESw802HCxesfI+j01yfmvtOR
 BK9eMahZVHSplgbO34bC/w9w81oqmt3HFIA7QFPhBPAN5nGEvUHqN4J+G
 0aOJeu6l5kUfLmqEbO4dav2yIorQ4bynqoaPPquIJrseZxVRb6iATly8g g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="412954947"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="412954947"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="727318016"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="727318016"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:47:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 15:47:05 -0700
Message-Id: <20230427224705.2785566-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230427224705.2785566-1-umesh.nerlige.ramappa@intel.com>
References: <20230427224705.2785566-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/fdinfo: Enable fdinfo for GuC
 backends
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

Enable fdinfo for GuC based platforms with the exception that long
running contexts will not provide reliable busyness data unless they
switch out at some reasonable point in time.

Link: https://gitlab.freedesktop.org/drm/intel/issues/8303
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e8fa172ebe5e..d18d0a3ed905 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	/*
-	 * Temporarily skip showing client engine information with GuC submission till
-	 * fetching engine busyness is implemented in the GuC submission backend
-	 */
-	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
+	if (GRAPHICS_VER(i915) < 8)
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.36.1

