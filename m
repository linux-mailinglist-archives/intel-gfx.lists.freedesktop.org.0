Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AE5C5405B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 19:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E06910E0D7;
	Wed, 12 Nov 2025 18:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f0XgOrm5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B61B10E0D7;
 Wed, 12 Nov 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762973753; x=1794509753;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RwVUAjIdQ0064YbwrphOm0R2Wc9lUUlj6XVmArpBMTQ=;
 b=f0XgOrm5ZXO5RX5d3bPuB793WbYf/7pqXwbnnZMfXI64D16XIe/jVrIw
 ZNHO1lgAK3QS3pKjpUEXHMojKLM6JnbZvwz3QJ62lD1+GWHbExMviziNe
 H5mwA9VklkDE8JXQUaSlX+iu0sdRPwPkSmXIv+Ao6BRZywL6syx3dpYZM
 mrVwxksFaLRUQo4JOG3YZBw/j+RRw2hJMxamxkILkMKHuMb8SL9BZ1pYu
 0bOJ3lyUR9BxB2wKev4ROFrTGqqaQUg5jCH6LEahrSuvvoBrLYisqrD3L
 fp+uRDOhhRQ6g3z6/UUeo7bmzj9q1t9elAxsfa2KFN0SPADWl1T40tCP7 g==;
X-CSE-ConnectionGUID: xkT0hDw0RtyrRPUM0cDe8A==
X-CSE-MsgGUID: PswPg8gRQUea2HhmJKd9lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64931065"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="64931065"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:55:53 -0800
X-CSE-ConnectionGUID: CG5lMeXSRHObrJjRVFDQ1A==
X-CSE-MsgGUID: z20lD1UwS1S1G6NPpnxRkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="188583981"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:55:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/xe: remove stale runtime_pm member
Date: Wed, 12 Nov 2025 20:55:47 +0200
Message-ID: <20251112185547.172113-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

This has become unused and unnecessary. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_device_types.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 7baf15f51575..0b2fa7c56d38 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -656,9 +656,6 @@ struct xe_device {
 	 */
 	u32 edram_size_mb;
 
-	/* To shut up runtime pm macros.. */
-	struct xe_runtime_pm {} runtime_pm;
-
 	struct intel_uncore {
 		spinlock_t lock;
 	} uncore;
-- 
2.47.3

