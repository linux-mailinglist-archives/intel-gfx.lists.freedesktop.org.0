Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F38A5D00F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8887610E1B9;
	Tue, 11 Mar 2025 19:56:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nW5UGi+B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961FE10E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741722990; x=1773258990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uHrI6YEWgQ4aWaf9f79q2MiD8kxneVhidZILtrsXBoQ=;
 b=nW5UGi+BfW+/nehOvtnF1VJGkB72ZALl5vrrr94zaTQRarM+Su7DB18X
 07dEUV9qRMeVA2vt0YaF8ybfppcFSR0qISdRSG0M0wuCC12uS4CH+Bm8d
 3kbk6SvhvtQEswvcR3EHxRRuoehcNG8jb0IBfevvQ1MVjP/hGji4QjcFD
 feze5LgkSlrbmtThf6byMgHCQo++8/V6/UlaAf4znJcfOXrj9caIw+2KX
 jLDFEiTUR24H9hJrnVZ+N86SM+qnY3/sPsmQ/n+GurUOz2u5RU1KeYkSR
 UcYt86hY9RDeA5iTwJ2bW1QM9xgybWDMe5E+KF7rkj0eVNe9ioUmdn9UO A==;
X-CSE-ConnectionGUID: /irdYRsRSsGH0t/lZbEtrw==
X-CSE-MsgGUID: EVA0Qu7eRdWaSU9sJIiFkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183851"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183851"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:30 -0700
X-CSE-ConnectionGUID: +ee3yOddSC++kENEFR+e2g==
X-CSE-MsgGUID: Eahs+5kGRzORzKjDWKelVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617190"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 1/6] drm/i915/pm: Simplify pm hook documentation
Date: Tue, 11 Mar 2025 21:56:19 +0200
Message-ID: <20250311195624.22420-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
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

Stop spelling out each variant of the hook ("" vs. "_late" vs.
"_early") and just say eg. "@thaw*" to indicate all of them.
Avoids having to update the docs whenever we start/stop using
one of the variants.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ce3cc93ea211..be232caef9df 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1664,18 +1664,18 @@ const struct dev_pm_ops i915_pm_ops = {
 
 	/*
 	 * S4 event handlers
-	 * @freeze, @freeze_late    : called (1) before creating the
-	 *                            hibernation image [PMSG_FREEZE] and
-	 *                            (2) after rebooting, before restoring
-	 *                            the image [PMSG_QUIESCE]
-	 * @thaw, @thaw_early       : called (1) after creating the hibernation
-	 *                            image, before writing it [PMSG_THAW]
-	 *                            and (2) after failing to create or
-	 *                            restore the image [PMSG_RECOVER]
-	 * @poweroff, @poweroff_late: called after writing the hibernation
-	 *                            image, before rebooting [PMSG_HIBERNATE]
-	 * @restore, @restore_early : called after rebooting and restoring the
-	 *                            hibernation image [PMSG_RESTORE]
+	 * @freeze*   : called (1) before creating the
+	 *              hibernation image [PMSG_FREEZE] and
+	 *              (2) after rebooting, before restoring
+	 *              the image [PMSG_QUIESCE]
+	 * @thaw*     : called (1) after creating the hibernation
+	 *              image, before writing it [PMSG_THAW]
+	 *              and (2) after failing to create or
+	 *              restore the image [PMSG_RECOVER]
+	 * @poweroff* : called after writing the hibernation
+	 *              image, before rebooting [PMSG_HIBERNATE]
+	 * @restore*  : called after rebooting and restoring the
+	 *              hibernation image [PMSG_RESTORE]
 	 */
 	.freeze = i915_pm_freeze,
 	.freeze_late = i915_pm_freeze_late,
-- 
2.45.3

