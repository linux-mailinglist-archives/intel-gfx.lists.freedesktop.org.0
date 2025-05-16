Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4377AB9BC6
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D10F10EA8C;
	Fri, 16 May 2025 12:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K1Nozavw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CE410EA89;
 Fri, 16 May 2025 12:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397836; x=1778933836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pwGuHv+hRFX5nm0ApclnW4O9d19VtWMgregfZ4U9lL0=;
 b=K1NozavwCyW0UYV4RDvAOc5aSTfI64ud4OFHCEX3ws28udmUU7mEzSBL
 DeWOFo2WRKitA/cPMqt7mJv/1g0deeyVxxewv0Ne4a7SxfvnyM6C+6N78
 efi7kXW1d+hCsmVGiASl+LoYE/ISoGQ3E6+N+h2ZsJnuv+XurOrrsCa0x
 9UyTSXHlc0Y7Zh8/7ITTXPSeIq77+JXL07D4U6sOzmFPHV+1h3oesXbvU
 UKdx7+TBvDpbYNFc6MAKMng5grk4Tba+Ki2qGbjBzwtABwXTMJLF3/92M
 InjbncY8hNcm8PcDXoBqcJUcQArOu0T6zmKpTcpfBN/zmMrCCAuNh0A7w w==;
X-CSE-ConnectionGUID: 5tSgFUg+Srqlfyiww5CCfA==
X-CSE-MsgGUID: 2Xs7s3v/QXOGyc2v2XLoqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766530"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766530"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:16 -0700
X-CSE-ConnectionGUID: Vad9O9/gQ3GKYiuXkNhZ8w==
X-CSE-MsgGUID: SeAN8osURcCjFm9zt2VA9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568560"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Haoxiang Li <haoxiang_li2024@163.com>,
 stable@vger.kernel.org
Subject: [PATCH 2/7] drm/xe/display: Add check for alloc_ordered_workqueue()
Date: Fri, 16 May 2025 15:16:55 +0300
Message-Id: <4ee1b0e5d1626ce1dde2e82af05c2edaed50c3aa.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747397638.git.jani.nikula@intel.com>
References: <cover.1747397638.git.jani.nikula@intel.com>
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

From: Haoxiang Li <haoxiang_li2024@163.com>

Add check for the return value of alloc_ordered_workqueue()
in xe_display_create() to catch potential exception.

Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
Cc: stable@vger.kernel.org
Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 699f401eff10..df897d08255c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -112,6 +112,8 @@ int xe_display_create(struct xe_device *xe)
 	spin_lock_init(&display->fb_tracking.lock);
 
 	display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
+	if (!display->hotplug.dp_wq)
+		return -ENOMEM;
 
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
-- 
2.39.5

