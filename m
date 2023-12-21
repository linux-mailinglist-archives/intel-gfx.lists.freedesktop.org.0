Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728AB81B9AA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 15:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBC510E6CA;
	Thu, 21 Dec 2023 14:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA50E10E6C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 14:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703169460; x=1734705460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OWEMgrR8yGPyiNoObLe7pV/D4bFVGz+/brpaGR8NcwI=;
 b=lFj6FkEaY6LLRCjOsG02L+r6/p7btag+B1OxucmvqbVxCfrCdzeEA9/5
 FMuB7XyZYaK2/hCu4Yljt3neOmUwMdTBY14o+rAd2xm928RZZwuN15/qj
 sm5fEldFcewxQ8KMGTbTZyTrpaDYLxk3f4V1lBXcVPT6CYb5Twxb9O6by
 GwWZwkv7qnL6vSrPrdZhIUuWeJwfmay8JvQBY7dVWPcL2URCFwdpkinXh
 yTNXTSJl/7EIXXHAPbbHisAC0/fNZGMyB9Yy9kpAOrUR6YHs9lqJ7RL5c
 J9OVhFVvfVVjKrkKQRyzovxfumTGHavOBvaAzvX+N5/OQn4qQYDwAts6T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="375470060"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="375470060"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 06:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="895120277"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="895120277"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.53])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 06:37:39 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 1/3] drm/i915: Add additional ARL PCI IDs
Date: Thu, 21 Dec 2023 20:02:20 +0530
Message-Id: <20231221143222.1729450-2-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231221143222.1729450-1-haridhar.kalvala@intel.com>
References: <20231221143222.1729450-1-haridhar.kalvala@intel.com>
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

