Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE44903D82
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE45910E656;
	Tue, 11 Jun 2024 13:34:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYbfhGT+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9892410E64D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112854; x=1749648854;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ra7aSyiq3clf7at0XaiCmvtZUqIe7t5yZbN2oxGLqHc=;
 b=LYbfhGT+xzNMhVRsxB+WSpKSCCQEInzXb0qy6YlX5X2MGkAptaOosZAv
 5K0/JU0eX8M6eLnuZCkFTAEBI64LQd4je+GH+VUMFnaZyfPx2qOhs9+uX
 Pm4Rck/Nv83Z4FK2mtEVJhTlnZImpvjZ9V+fGp2Wpl+YELMHK3Qw4GxYH
 GfYBi9O0C3OpmE/DXY6MXuQ4NZEYq9k/vR4B4S3cocjaQ8BJLOwueVFry
 foXeNHOCuZ/ON+wqJT4Zu9cSxEd60uIzSemI0w5ySi8GgmJj5bM6oWHkZ
 cFhLt7tM8YSJv2BaUjqV8ztMBSETm7FHYpw+/WCQE+DbpRdU3l+RbLKoV g==;
X-CSE-ConnectionGUID: /w9smXOSTPuN9acmqjhUOg==
X-CSE-MsgGUID: vrfa6IozRdKYSMkRIiJ9Tg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018244"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018244"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:14 -0700
X-CSE-ConnectionGUID: SWZNw52USTiq40e1aUHL0Q==
X-CSE-MsgGUID: 8wg9skZCRrGoiXgKywIjLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421460"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:34:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:34:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/11] drm/i915/dsb: Document that the ATS fault bits are for
 mtl+
Date: Tue, 11 Jun 2024 16:33:43 +0300
Message-ID: <20240611133344.30673-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

The ATS faults have something to do with some new iommu stuff
on mtl+. Document that the relevant DSB interrupt bits aren't
valid for earlier platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
index 210e2665441d..9c2664ff519a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
@@ -51,12 +51,12 @@
 #define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
 #define   DSB_RUN_SM_STATE_MASK		REG_GENMASK(2, 0)
 #define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
-#define   DSB_ATS_FAULT_INT_EN		REG_BIT(20)
+#define   DSB_ATS_FAULT_INT_EN		REG_BIT(20) /* mtl+ */
 #define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
 #define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
 #define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
 #define   DSB_PROG_INT_EN		REG_BIT(16)
-#define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4)
+#define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4) /* mtl+ */
 #define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
 #define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
 #define   DSB_POLL_ERR_INT_STATUS	REG_BIT(1)
-- 
2.44.2

