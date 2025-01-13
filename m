Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB23A0BFDB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 19:33:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF9E10E0A7;
	Mon, 13 Jan 2025 18:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHiKopNK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC1710E0A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 18:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736793231; x=1768329231;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oiiV1YY+JWsEvJd5E3IwTUPWE/a9vV/nYGJZ/oL7qBE=;
 b=dHiKopNKLf9IzxjQBDBepcyKm4mxNDqpfAFcd5u7uJ2kojLrmbqgnGVg
 xV8kiRoZGBGU+1HatGz/RzE3TzDk6TUBHwgu1ZH1QeJRSv7J1QK3wP6Oa
 cpWMmu1Uz4xhGcfdkHKsY2SIjQg7qkfqu+hnTazfhDu3wcUa8L6Iml2gH
 GIa7zYKAQ+GZXHcm1VmEyeZwO4IguvoUStf+5BoG2EUbdQeu41FWs3R/E
 HyUuGRoTsP/ik2wpOx0rPXFPnI2yGTun3RlFF7MHNEGYOm9LO+fbhLqiI
 yUqJz0mgdsK3wmZF9rMdmMXkHHG6Ajxsx9HxxOeHEJvIOkmwiE0+xQ3aB g==;
X-CSE-ConnectionGUID: ojJto4W9TeajGBpqGoMLxA==
X-CSE-MsgGUID: LJiODKvoTnewvYicnk9T3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="59556035"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="59556035"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 10:33:51 -0800
X-CSE-ConnectionGUID: UZ6H9EFZRuq6YdL/K8R9wQ==
X-CSE-MsgGUID: bVxsScmIQAWXpU5VAA3YaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104523649"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 10:33:51 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] drm/i915/pmu: Remove i915_pmu_event_event_idx()
Date: Mon, 13 Jan 2025 10:33:29 -0800
Message-ID: <20250113183329.3138138-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.48.0
MIME-Version: 1.0
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

perf event already has a default function that returns 0, no need to
override with the same thing.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index e55db036be1bb..2eecd42f61ba1 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -891,11 +891,6 @@ static void i915_pmu_event_del(struct perf_event *event, int flags)
 	i915_pmu_event_stop(event, PERF_EF_UPDATE);
 }
 
-static int i915_pmu_event_event_idx(struct perf_event *event)
-{
-	return 0;
-}
-
 struct i915_str_attribute {
 	struct device_attribute attr;
 	const char *str;
@@ -1301,7 +1296,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	pmu->base.start		= i915_pmu_event_start;
 	pmu->base.stop		= i915_pmu_event_stop;
 	pmu->base.read		= i915_pmu_event_read;
-	pmu->base.event_idx	= i915_pmu_event_event_idx;
 
 	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
 	if (ret)
-- 
2.48.0

