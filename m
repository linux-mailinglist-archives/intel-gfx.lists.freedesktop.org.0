Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB33A975359
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3007D10EA25;
	Wed, 11 Sep 2024 13:12:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GduxP+ZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726C210EA24
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060359; x=1757596359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pyZdX4UmWX1zdAtEPaD0Gp+KvJ+baq2ZzhpkE7PDA44=;
 b=GduxP+ZOj+0q+vfF0OwpiTUbaHgsuGD/frwlMn7Dm85lXm/byomvO3r3
 0owEcKxtD6qhM0xh8eLU/i87OoABqEwPiDrjWK+XVcVKrrgfkWn1rzdsS
 wR6QYTi/gbB2tWHkmVJthaTHobFH62wARcNc2tKy2DtYViWztjSMWmS66
 0QQrqeytKqT/DdyMc3LFe5CFi1shUaeu1AfVdueXIefs3+hxVOh8Py4F9
 dFpd2M4+ACFwN+xRFN1+LC1Hj/XH2aFvQItmLPkdznyfVmMAcWlFx2cLM
 /ZbZEy0QdHjUOWjW5IWpip6w9WQ8Cq3JBsCL8bt987nVYfn8S8AemD4L2 Q==;
X-CSE-ConnectionGUID: 38Vjaq/GTQ2ymC20EaJq/w==
X-CSE-MsgGUID: BNwOrELmQZy+sOY1CUQKeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244434"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244434"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:39 -0700
X-CSE-ConnectionGUID: AAuD0cJtT+KbwgllZ9pb7w==
X-CSE-MsgGUID: /tw29E33Sd+lf3DErsJXtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381132"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 18/19] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Wed, 11 Sep 2024 18:43:48 +0530
Message-ID: <20240911131349.933814-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Use the check for ultrajoiner while computing maxdotclock.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bab336d8702f..709b55fc0e07 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8267,6 +8267,9 @@ static int max_dotclock(struct drm_i915_private *i915)
 	if (intel_display_can_use_joiner(display))
 		max_dotclock *= 2;
 
+	if (intel_display_can_use_ultrajoiner(display))
+		max_dotclock *= 2;
+
 	return max_dotclock;
 }
 
-- 
2.45.2

