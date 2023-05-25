Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4319471092C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 11:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1FB10E06B;
	Thu, 25 May 2023 09:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76CDC10E06B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 09:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685008190; x=1716544190;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V7KzJ9K/4vXmbtp705pq0BU3U1xnvt71648cWG4DmO0=;
 b=fS0ur82Bz1cYPvWfcAMorlhdU243meRHfH19ogTI/EUR6ekwWJ11zMaK
 32ZUa/HBMOa9lhLiECRycqWMItOQpPJqvWAYBsGGiKxPO0F5jk/EesEyn
 gOAkL0dqF/pTPy/3142Iw/gbt+RapqmWCCM0IB9bDvrN3dP5zRgashbqP
 1W3vqav5eBQ9Yg5PSgPT51VNthuMgtV4lzLzcpwQi8BgkIlpHizqt78kA
 u/ko8mNiAMyVHAeLmYSMVahv5p+XI1mwkVUHUddUo2I5gE/JHPLGCCelH
 eeUDs/qKcK53hCig8evVdP0Cb/zsNcckIIpSTdnSCljDcTDge31Yxupzn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="353864945"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="353864945"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 02:49:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="698913242"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="698913242"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.42.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 02:49:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 May 2023 12:49:42 +0300
Message-Id: <20230525094942.941123-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gsc: use system include style for drm
 headers
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
Cc: jani.nikula@intel.com, Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use <> instead of "" for including headers from include/.

Fixes: 8a9bf29546a1 ("drm/i915/gsc: add initial support for GSC proxy")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
index ebee0b5a2c1d..5f138de3c14f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -5,8 +5,8 @@
 
 #include <linux/component.h>
 
-#include "drm/i915_component.h"
-#include "drm/i915_gsc_proxy_mei_interface.h"
+#include <drm/i915_component.h>
+#include <drm/i915_gsc_proxy_mei_interface.h>
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_print.h"
-- 
2.39.2

