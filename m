Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2805353F2EB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 02:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B32911BEEC;
	Tue,  7 Jun 2022 00:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093D411BEEC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 00:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654561369; x=1686097369;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/w8IQaiu6I3zn4xYFI/1AmUrzE+4Xno1hOkm3+tXdgU=;
 b=j82RXEqqWY3urlqqCBtaP+8BRIfjxfoMPZGW/TIRha7KaTmAjjhIADAq
 AVAOWN/IkuZEdkLsrFiEY4bkJvAw8HDht99TOty51lvRdVZA9s+TkWZVL
 CvMpPdh0B6O6dXempFzSCTC10ECENu0pK9bWRMqJRgSJ68n22SODMOLdF
 egRijlP6FkqpGP6mOv/ZcnCmHYnIvvG6ccrTBP89NUTiHBGZZO+OgnWzS
 89/UNGRDA2zbMHZOSSBigLeB8+NcTgptLoUxG618LRWP70MMNMjcPDhPc
 Xi/hvOrqAQaiKYIIwQ/3H8qrlpWZovzJbKAf8wKOkumj9UL6eTdBGo+ku w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="274237671"
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="274237671"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 17:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="682504243"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2022 17:22:48 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jun 2022 17:23:14 -0700
Message-Id: <20220607002314.1451656-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607002314.1451656-1-alan.previn.teres.alexis@intel.com>
References: <20220607002314.1451656-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Asynchronous flush of GuC
 log regions
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

Both error-capture and relay-logging mechanism use the GuC
log infrastructure. That means the KMD must send a log flush
complete notification back to GuC after reading the data out.
This call is currently being sent synchronously.
However, synchronous H2Gs cause problems when the system is
backed up. There is no need for this to be synchronous. The
KMD wasn't even looking at the return status from it. So make
it asynchronous and then there is no issue about time outs.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c     | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 97a32e610c30..ffcd7a35f8df 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -1261,7 +1261,8 @@ static int __guc_capture_flushlog_complete(struct intel_guc *guc)
 		GUC_CAPTURE_LOG_BUFFER
 	};
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_nb(guc, action, ARRAY_SIZE(action), 0);
+
 }
 
 static void __guc_capture_process_output(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 02311ad90264..25b2d7ce6640 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -31,7 +31,7 @@ static int guc_action_flush_log_complete(struct intel_guc *guc)
 		GUC_DEBUG_LOG_BUFFER
 	};
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_nb(guc, action, ARRAY_SIZE(action), 0);
 }
 
 static int guc_action_flush_log(struct intel_guc *guc)
-- 
2.25.1

