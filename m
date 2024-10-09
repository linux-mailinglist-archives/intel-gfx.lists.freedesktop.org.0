Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3729975DC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119D110E7F2;
	Wed,  9 Oct 2024 19:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uv8eiGpJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBE810E7E5;
 Wed,  9 Oct 2024 19:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728503017; x=1760039017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gDsePqyzRM7JzGKr6vlRCFbFdZj6RQDl6u8Ly9CvtbI=;
 b=Uv8eiGpJ3V17DogqaummgBCbc+x48IwO1tnm/6J+xQyCxU2l1bky2kHs
 RuSTLWbTxewVP6UEHT/R7zIDzP/jIFPLxji+bY+/e4wG1n8aomPcyd5BW
 wOSNOgsdKMIPABQ6GONJYR61T3pzRve3FvQZgfG92ZpTaha859fA0yXDh
 v4h7fXGgkcnKPG1VtSeuvAS8uGz3C1B1jb/Te1+WeEI3DsHz38LyL/iHL
 Amjm3ER3heqkXgiIyA2CkN82tlQhmT3TAaj40k3UKGUuzlVWGP/sos23v
 jccmUqu7uWSodLdMHeE+Nv4pFB0Uk9QCpaAtHyw8GBtczdAwXE2EkXfOg A==;
X-CSE-ConnectionGUID: ApF1poUcQFOrTOYvf7g3XQ==
X-CSE-MsgGUID: zSwjhfCqRYe3m1ia6ipZwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27947107"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27947107"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:37 -0700
X-CSE-ConnectionGUID: FmEUtDWiRzKa+lbiQlz4wg==
X-CSE-MsgGUID: zLp859QeTzegSCFNCgrweg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81371485"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH v2 4/4] drm/xe/display: Add missing HPD interrupt enabling
 during non-d3cold RPM resume
Date: Wed,  9 Oct 2024 22:43:58 +0300
Message-ID: <20241009194358.1321200-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241009194358.1321200-1-imre.deak@intel.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
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
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
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

