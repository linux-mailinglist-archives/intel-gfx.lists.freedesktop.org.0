Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFBD6CA1C0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 12:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6874110E087;
	Mon, 27 Mar 2023 10:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA29C10E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 10:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679914418; x=1711450418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nk6efYCosf1NCXIBKPgLTfCej2yGSrCLpLgfoS3CPiI=;
 b=DqO+CxA61h8h4MTGd8O1PgZHeOND1rKDfUV3p7zoEO/WQE4jSkt0/hJW
 e4pHkCcKjiinc4b02fVLTMI88wsBJ95SZp4yXI13e733jjB5nKNsW7FWZ
 4hlPcOsIpCsMGDipWJNrC6sffwa5eKkH/B1arvahBfm8dpo4NJ5w8QF5v
 PvS5SlFeWxi2DqG3SUWcblzR41iOLknYIB2wIuEPT/S8bX3FqoDOyL5ud
 2QL6xAll/wL7N2JtcTSUfU8+KXepBr9Hl98dreb6XahES36fFupsHY5RJ
 vm3lW1J9tHg8TX4AIUnTK1jNcMktwyiiIA6CCBFzH+YwusHcZK+v5a96t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="338955249"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="338955249"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 03:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="1013068066"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="1013068066"
Received: from mstancu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.49.51])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 03:53:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 13:53:29 +0300
Message-Id: <20230327105330.312131-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] [core-for-CI] Revert "Revert "drm/i915:
 Don't select BROKEN""
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 211c4b0aba30d2eab9690ad61944c7bf20b33c16.

Drop the commit from the topic/core-for-CI branch. We no longer need to
select BROKEN to enable DRM_I915_UNSTABLE.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 93dfb7ed9705..47e845353ffa 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -40,7 +40,6 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
-	select BROKEN # for prototype uAPI
 	default n
 	help
 	  Choose this option to turn on extra driver debugging that may affect
-- 
2.39.2

