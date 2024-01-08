Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2C2826DCF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61FFC10E221;
	Mon,  8 Jan 2024 12:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58BA310E230
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704716889; x=1736252889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OWEMgrR8yGPyiNoObLe7pV/D4bFVGz+/brpaGR8NcwI=;
 b=JRYSfmWW8ZT7+WRmhhNYfqIlQSw5JgvwiU4Hm4YqMYlIVLmZCiBv8hOH
 X0FW829U2kFc8/18330aRjC6hvntGfZtpFMYhA5WN+vsdVonaYavN+TiZ
 kGLiqkiRlM9ewYmfH0qy3T4FdXkhD8E3ij6uChmgUu3Y2hcv3ruhJ727M
 CQoUk4XRmZbBmwSPblRl0/ie0VSmj6mlUft8DHYJ9sZBsoLzjDvMXb8Fy
 8xdnIOhsOd81vo4a6VHXItUl8G/KUrbcXUGa2SSXWMFamFRewJ3oxzXHZ
 /yLrjIOITeULuzo7QWF4dvT1Rf10PbuWHdHU3c65QLwKzzgd1bkQGXigP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="395032562"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="395032562"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="731093811"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="731093811"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:28:07 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 1/3] drm/i915: Add additional ARL PCI IDs
Date: Mon,  8 Jan 2024 17:57:36 +0530
Message-Id: <20240108122738.14399-2-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240108122738.14399-1-haridhar.kalvala@intel.com>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Our existing MTL driver handling is also sufficient to handle ARL, so
these IDs are simply added to the MTL ID list.

Bspec: 55420
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 include/drm/i915_pciids.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index fcf1849aa47c..07779a11758e 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -751,10 +751,13 @@
 /* MTL */
 #define INTEL_MTL_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D40, info), \
+	INTEL_VGA_DEVICE(0x7D41, info), \
 	INTEL_VGA_DEVICE(0x7D45, info), \
+	INTEL_VGA_DEVICE(0x7D51, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
 	INTEL_VGA_DEVICE(0x7D60, info), \
 	INTEL_VGA_DEVICE(0x7D67, info), \
+	INTEL_VGA_DEVICE(0x7DD1, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

