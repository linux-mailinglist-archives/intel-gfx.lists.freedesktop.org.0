Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAFEAFD007
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 18:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356EE10E6AD;
	Tue,  8 Jul 2025 16:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZbk7QiD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C0D910E6AB;
 Tue,  8 Jul 2025 16:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751990635; x=1783526635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uNEtzMeuix2Z9vV5PckaqhqfKjmIixNxSDmDhmjQbGA=;
 b=LZbk7QiDBUvx+Rucl1JzW9ofST+rjVZY5UIvEVrCHla6R5t4OnePe9Y7
 DKaFt9OJu8BpKqwTVSxDyPIl3LQ29oO73dr9v7fNWduLDhh1Sbqk4LheQ
 MdMxjrc/j9tyDqgfqro+KUG8s3HKGGhuWvw7pTkYgTviJZm/5WCItCagv
 kRAY5ZUOo1qNsZ8exA3fdq4b0gTDXdsc/jbehiZCCjEciJ4IxAJsSR2Hm
 pGU/f1KfsjWc4ZOuf1YEH+lrzjv9d/XTpMkov3lrm6VP8hEhfnoNCEW3Z
 U0Q5GeL1WWvD0FJhTVOIrqRTM73BkFxu1M4Ef682NN+KqKxkfi1w6fQ8v Q==;
X-CSE-ConnectionGUID: vtYaeZatTY+iq2HFRzo3UA==
X-CSE-MsgGUID: IF4W8c3dQF2NCnf3f9/3pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="58039065"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="58039065"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 09:03:42 -0700
X-CSE-ConnectionGUID: UID3ui/jTaezyKcKGKaKNw==
X-CSE-MsgGUID: qEexugEhRbivuoBlv7oCpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161179641"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 09:03:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 19:03:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/opregion: Flush asle_work during runtime suspend
Date: Tue,  8 Jul 2025 19:03:20 +0300
Message-ID: <20250708160320.5653-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
References: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For good measure make sure asle_work has finished whatever it
was doing before we runtime suspend the device.

This probably isn't really necessary as long asle_work only
pokes at the mailbox as it should remain accessible even if
the device has been suspended. But seems better to play it
safe in case there is ever any need to do more stuff in
asle_work.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index e99616ea2ae6..08d36411668d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1294,6 +1294,8 @@ void intel_opregion_runtime_suspend(struct intel_display *display)
 		 */
 		intel_opregion_notify_adapter(display, PCI_D1);
 	}
+
+	flush_work(&opregion->asle_work);
 }
 
 void intel_opregion_unregister(struct intel_display *display)
-- 
2.49.0

