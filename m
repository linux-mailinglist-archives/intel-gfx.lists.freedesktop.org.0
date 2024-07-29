Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE9C93F7F2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A209E10E384;
	Mon, 29 Jul 2024 14:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUvY6T6/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4530210E384;
 Mon, 29 Jul 2024 14:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263436; x=1753799436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ipjAbuQDvurRKaLMkm14L35O+NGL+D0pgnhAop8P2Cw=;
 b=iUvY6T6/Oovpgg624E63UoflcrJbIdNPgtO+a7uLav4Lp2C8FFYeBOCD
 j/MMJ2XgNT0iMzj8IkWnDNmTzUoGy8tjLivLM5ieZeSDOwYgsPE0ZJJiF
 +eh49T/fTFLNb3/czYDjtoMu8o1X4oalltH00oWxp+wSh3TrEjc159b/Y
 SMSxXDiGtHN0nYbUL/pYf4VIXBgdhV3hd2R3v5QojG5/4FSr1aSeu51qI
 ND4SU+RpjMtn8NK0Rg2s3wb+Kn3YB0UxRkMB+ofgVMkNMbsghJG2SMETA
 7veWQQKJ957X0gDxuL0varVPxSvHj8YbUSMu5gHafZBI939Rk51GJhRvb g==;
X-CSE-ConnectionGUID: 35aIG/weRG+ERq2BnC9g4A==
X-CSE-MsgGUID: Xd6ufd72SkOcLNtkCqxc4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823099"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823099"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:36 -0700
X-CSE-ConnectionGUID: b7i9a8wsQUygXWYqR8Lkqg==
X-CSE-MsgGUID: 8ze3BBAkTqmmtnTXLmd2gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651624"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/10] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
Date: Mon, 29 Jul 2024 17:30:05 +0300
Message-Id: <313a3cb44e81f067deb9ec03d7e0d13ff6e461b0.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

We have a helper for converting pci device to i915 device, use it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index ce4dfd65fafa..b2e1fd22520b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915;
 
-	i915 = pci_get_drvdata(pdev);
+	i915 = pdev_to_i915(pdev);
 	if (!i915) /* driver load aborted, nothing to cleanup */
 		return;
 
@@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 static void i915_pci_shutdown(struct pci_dev *pdev)
 {
-	struct drm_i915_private *i915 = pci_get_drvdata(pdev);
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 
 	i915_driver_shutdown(i915);
 }
-- 
2.39.2

