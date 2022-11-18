Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D3862FD7C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 19:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04E310E235;
	Fri, 18 Nov 2022 18:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E38B10E235
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 18:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668797985; x=1700333985;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qVeIyFjI3DselZTk+L58zUPBCE1ugQ49NG11j9sj+bM=;
 b=RzBAO0ERmYYw7pEASB34IXQV954rWeu2FYGnubPilrBtf3LpEB6L9yaL
 qItzWK2lxGqUw7fjFLXdO1yH+8nBlRljr1RKD6ZWOvd5eTlfmyFWUqVFE
 aeyEjKP50Xr4M8gHK84rV04YvgRWz/diumVT5HvjVu5yi86tmziKV/49v
 8nM89dSkyvLvJHLMCSg1jnkVNPUg4Deqkfzvl+RoUvL7zwU2ousxjdWVf
 0ESl3Id9pc9VBcmng9gpfBc9kpDH3Ckeq/m4U0rUv9PcpP/0FF3jye3ir
 1o+0qJKu1WIA+EFuu33kC/bd1C50wvBudlxirX5GW7wOaZdJ0OxXHdrDD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="311911749"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="311911749"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 10:59:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="709131099"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="709131099"
Received: from gwmcmull-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.209.85.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 10:59:44 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 11:00:08 -0800
Message-Id: <20221118190008.824412-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add missing CDCLK Squash
 support for MTL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL supports both squash and crawl.

Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index cf3b28d71d2b..d82f118809e9 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1118,6 +1118,7 @@ static const struct intel_device_info pvc_info = {
 	XE_LPD_FEATURES,	\
 	.__runtime.display.ip.ver = 14,	\
 	.display.has_cdclk_crawl = 1, \
+	.display.has_cdclk_squash = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
 
 static const struct intel_gt_definition xelpmp_extra_gt[] = {
-- 
2.25.1

