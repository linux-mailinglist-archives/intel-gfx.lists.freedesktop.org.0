Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDybAqxihGkM2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B8AF0B33
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2776310E82A;
	Thu,  5 Feb 2026 09:28:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tjf3P33T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EAEE10E829;
 Thu,  5 Feb 2026 09:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283689; x=1801819689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F8YNYpYlBJr76i7Gwy2+F+vIHIVyDniNkhxu8Wp8swM=;
 b=Tjf3P33T80KkSVC4sOxQEP5LZ7+mCCju45HHHhOXbLllxnL1sEtCe4tL
 uW+H1tJY/TldPtNmKtTUZV2B1ZSVroD5080zUdLKYRcLv1rk5vA63rZSy
 5XGIe4Ezdl8gZEykpyS+8NYFeepaYt9kZnfOrU65tkuBT9ywZeJrYSfdh
 GYBTi9KWAwiTA8+PTRPhuv8LgZednim/KxlQ8j6cTNR8zH/ox5QcQStmL
 hqcJp6uuL5Cw7GGlL62GGQKBLHWzQlKbYygi4fKs90DQc2iDVEcXwQxde
 uqH338K+563Nkty7hMggnLpPOlCvA2VFkn02wlWVk547N6oJcWkOmvFiF A==;
X-CSE-ConnectionGUID: pO6kY91hT1ySNooAiFl5gw==
X-CSE-MsgGUID: jUsG92TzQkinCgadwGxqQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060108"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060108"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:09 -0800
X-CSE-ConnectionGUID: 29P+bIB0QWq6WPRWpQzVHw==
X-CSE-MsgGUID: 8eSXuzMqSPO3tf1PnYpp+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807775"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:07 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 07/20] drm/i915: Move GMD_ID and mask to intel_gt header
Date: Thu,  5 Feb 2026 15:13:28 +0530
Message-ID: <20260205094341.1882816-8-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D0B8AF0B33
X-Rspamd-Action: no action

GMD_ID* is relevant only for GT, hence moving the same
together in gt/intel_gt_regs.h

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +++
 drivers/gpu/drm/i915/i915_reg.h         | 4 ----
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7421ed18d8d1..14d31882e9e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -61,6 +61,9 @@
 
 #define GMD_ID_GRAPHICS				_MMIO(0xd8c)
 #define GMD_ID_MEDIA				_MMIO(MTL_MEDIA_GSI_BASE + 0xd8c)
+#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
+#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
+#define   GMD_ID_STEP				REG_GENMASK(5, 0)
 
 #define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
 #define MTL_STEER_SEMAPHORE			_MMIO(0xfd0)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 90a5c60e7667..b12c6bf68a2c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -922,10 +922,6 @@
 #define   MASK_WAKEMEM				REG_BIT(13)
 #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
 
-#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
-#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
-#define   GMD_ID_STEP				REG_GENMASK(5, 0)
-
 /* PCH */
 
 #define SDEISR  _MMIO(0xc4000)
-- 
2.50.1

