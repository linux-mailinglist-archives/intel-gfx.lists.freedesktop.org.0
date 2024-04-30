Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D49398B7E86
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27011112D7B;
	Tue, 30 Apr 2024 17:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mPEv53l9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E54112D77;
 Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498222; x=1746034222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=shPQJaO9/KURCj0ZVJLjXTFD7lHOMtV483tA46Qv7rM=;
 b=mPEv53l9LMWrYzD26deQlQBqqFILNL5fk9CsIKyCcCR0aWT+ARrYDQXq
 gUA4igiO2EvW6lZLo07YQ51oOrOzsW2XntMmCn1DN1bzVZMcUUij0evlp
 L3nRA8SUHUz7mZSN+AxcIDvHEpRsAn84nC3WeXfbUSmoXwm+vQyYN3W1R
 g0Rs8GQxwkM1KmqSjkWXNe1wTTzqRjtPwKTdsMSLBoDeY98XgeqYIFwhJ
 2pkRmGCsxOlzALwlkdKOCbtL64MnPk7eB9kL3XDs3N43Nb6ikSd3BPEug
 FOXysp4xTIspRa4mFffeAlARfRw0Hrg4ZIdtA2h2NbaBnNaVeQRAbQREi w==;
X-CSE-ConnectionGUID: CzeJO0+gQAuRRptRWTw00Q==
X-CSE-MsgGUID: 7rqG98AnQCyAyGfuqP9wug==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27742003"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27742003"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
X-CSE-ConnectionGUID: MjQV/H/mQCuyKQpU5mpr0A==
X-CSE-MsgGUID: 8W7VwWg0TRiZmCf77dSsug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617859"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 16/19] drm/xe/gt_print: add xe_gt_err_once()
Date: Tue, 30 Apr 2024 10:28:47 -0700
Message-Id: <20240430172850.1881525-17-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Matthew Auld <matthew.auld@intel.com>

Needed in an upcoming patch, where we want GT level print, but only
which to trigger once to avoid flooding dmesg.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_printk.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_gt_printk.h b/drivers/gpu/drm/xe/xe_gt_printk.h
index c2b004d3f48e..d6228baaff1e 100644
--- a/drivers/gpu/drm/xe/xe_gt_printk.h
+++ b/drivers/gpu/drm/xe/xe_gt_printk.h
@@ -13,6 +13,9 @@
 #define xe_gt_printk(_gt, _level, _fmt, ...) \
 	drm_##_level(&gt_to_xe(_gt)->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
 
+#define xe_gt_err_once(_gt, _fmt, ...) \
+	xe_gt_printk((_gt), err_once, _fmt, ##__VA_ARGS__)
+
 #define xe_gt_err(_gt, _fmt, ...) \
 	xe_gt_printk((_gt), err, _fmt, ##__VA_ARGS__)
 
-- 
2.34.1

