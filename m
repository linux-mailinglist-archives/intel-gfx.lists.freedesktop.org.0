Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAC48690D5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECAD10E4DE;
	Tue, 27 Feb 2024 12:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ya25hyXk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C9B10E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037883; x=1740573883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bMrzh8632OLbvHBgW7d0HthGidwFf3H0dKEAUlfXjgw=;
 b=Ya25hyXkIyUI3BvyL5dIkM+bSMg89EzLVTpwsadAGxUGYFFtsDPKfhI9
 6NQ/71sahGofixAeM/zZoOJHgzz4gl1yMiLZrltXvaGMVFroHEmyRPCYE
 8C+/zcyCXhm4VX/TAkl9xzsY0arP6n9oZDLfFAvMwc8h+bLnsU1sc3IPc
 pEhERytTG83P0eIHWLHMBkOgBtjHidaiGABA2moAfxqqCt1agviQ2hbAa
 vR35cHJCo+ZPZ27eKf50MUft9fgVHg431NirB9MK2EkjhvSyvXmDg6Ubc
 m3PetmNiPFQvixrvNGCTH1UwqMRAIM9l/3IEWyTQ04IayNwODEtytfEGd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3294934"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3294934"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:44:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6995616"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:44:40 -0800
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 2/2] drm/i915/display/debugfs: Fix duplicate checks in
 i915_drrs_status
Date: Tue, 27 Feb 2024 18:08:33 +0530
Message-ID: <20240227123833.2799647-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
References: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
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

Remove duplicate checks for debugfs entry "DRRS capable:".

Fixes: (20af10845864) drm/i915/display/debugfs: New entry "DRRS capable" to i915_drrs_status
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 169ef38ff188..e1b2a0e20e05 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -312,9 +312,8 @@ static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 	mutex_lock(&crtc->drrs.mutex);
 
 	seq_printf(m, "DRRS capable: %s\n",
-		   str_yes_no(crtc_state->has_drrs ||
-			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
-			      intel_cpu_transcoder_has_m2_n2(i915, crtc_state->cpu_transcoder)));
+		   str_yes_no(intel_cpu_transcoder_has_drrs(i915,
+						crtc_state->cpu_transcoder)));
 
 	seq_printf(m, "DRRS enabled: %s\n",
 		   str_yes_no(crtc_state->has_drrs));
-- 
2.43.0

