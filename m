Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36325992E3E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 16:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B8710E358;
	Mon,  7 Oct 2024 14:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8YLC4MO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB1B10E34C;
 Mon,  7 Oct 2024 14:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728309908; x=1759845908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C4Wmdi2c7F9qK0dxw1qoUYQ52TqvmBBdAppeS70N2XE=;
 b=l8YLC4MOmBbYUK0LGzWGSU2xDR8s2rCXQnj6vBybO5FI2UgEbvTZEdo0
 6eGR9FipU9rq9myFYElKWBXmNroqsUjEpzWdNMhq6L+6qKtfTFTEUQQJH
 6n+m1dweJ7KNklPDmFragMkV/DRxUWUu2vpE6bzAr3qm1Wp4DQuhXNbuN
 JV6FyAs1+D1Th9uFyNOK9cl4HvB8PDF15qly8PlsrcHl1ASnXq7CXQu96
 r3EwSMDALVjyfiiCH98cuBch+Ha27HLcgEkALHQLF6f+IjYR82KBhAozD
 dngzOUpifYiT4mXWnweyyN2gfTBSl7VB6bwdbDv3tPoTB+KZCFLPQzrN2 Q==;
X-CSE-ConnectionGUID: kXDghJfCRd6do2hE9r7n/Q==
X-CSE-MsgGUID: 1opu6qSLRlq0Ph+O8NqSpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27336871"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27336871"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 07:05:07 -0700
X-CSE-ConnectionGUID: aTWUxERLTZmy0HB4moNd0g==
X-CSE-MsgGUID: dbGIERwtRBSVa78Z6O8vew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80461600"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 07:05:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Date: Mon,  7 Oct 2024 17:05:31 +0300
Message-ID: <20241007140531.1044630-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241007140531.1044630-1-imre.deak@intel.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
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

Atm the display HPD interrupts that got disabled during runtime
suspend, are re-enabled only if d3cold is enabled. Fix things by
also re-enabling the interrupts if d3cold is disabled.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index cb2449b7921ac..695c27ac6b0f8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -486,6 +486,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 		return;
 	}
 
+	intel_hpd_init(xe);
 	intel_hpd_poll_disable(xe);
 }
 
-- 
2.44.2

