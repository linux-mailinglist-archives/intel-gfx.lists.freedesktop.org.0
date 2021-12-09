Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3072446EEA0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 552B210E8C1;
	Thu,  9 Dec 2021 16:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB5210E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057902; x=1670593902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cRsq+ZsoY/0V9GnI1n/f9hfANqwUcDccv0p9+0INBSA=;
 b=jZtcnkZOf++/vThdUMkLaAxffbYV0bncbSPtPmRMfCXzmQ8oRLQDQCh5
 b9Rcc9jHfGziBt2szPUmio3yjx60L9I4gs4Q8DLfEDkNyf7PKj4cZ7+oQ
 iZvmcEU0ukr3YM2gIZeGM0ZNq9Kp33TXk3xI+3UeGHtqlPD/hj2qbXDzK
 /EcQXf7h7lVvdU5Hx2MvK3ccNY6yk2SYmw8bb+7+SA/frj+1PX2Yzzocy
 Uucmxowky13MZpKFEzF7O+Ak6pIHBnJMjlkk3xAg3q76DpCam9qNuWIN0
 LQIhQsyeMonjwuMcT8+smKcOaQKwnf3kqXr0zkuMnKJ+U6R5Wk4dho58m w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="225365272"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="225365272"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="601556459"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:51:02 +0200
Message-Id: <b183150f832c177522a663f8bc13e5c0e89d6a51.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/pxp: remove useless includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 73ef7d1754e1..7ce5f37ee12e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -7,9 +7,7 @@
 #define __INTEL_PXP_TYPES_H__
 
 #include <linux/completion.h>
-#include <linux/list.h>
 #include <linux/mutex.h>
-#include <linux/spinlock.h>
 #include <linux/types.h>
 #include <linux/workqueue.h>
 
-- 
2.30.2

