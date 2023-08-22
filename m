Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC78778486A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 19:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB96A10E3B9;
	Tue, 22 Aug 2023 17:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0A110E3B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 17:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692725317; x=1724261317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ce7R9pe8Zyd0bhvcitE4O0osGK4/UY+PvQOeZjQYjvg=;
 b=lTfW6lLAcJ0JtE3/SweCsnXMcK9GZOUCd72HfjCdRaHn+ntaIjyNGwdr
 /9ASfwKdsXN2ylDR27axX3+WK9hd5RGgCKxSO4JMwmcfnd2SdvOe7BbSO
 lpTj4RpuQjtT5/I6Sg7+7/ljvB1ROpwCZ9RlA3ZRdd7QB1g9OrZW20R+z
 n2j94GM3IjkOUBRGpXo2raZT4iilaJv6JZef308EgFog4pcW3hY1BFzow
 jBve3+ZpRkKAk8IfAcAnODBUk7paCVTBjskuhB4PRDZ5tB29izlyZU4Ui
 eKFYgBwhkv+dc2n/3mskUDb0lYdgt2p2SigUJq6wSjknH90vHmiWuJEcd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="371364840"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="371364840"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 10:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739408555"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="739408555"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmsmga007.fm.intel.com with ESMTP; 22 Aug 2023 10:28:35 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 22:57:43 +0530
Message-Id: <20230822172743.2113377-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Adding DeviceID for Arrowlake-S
 under MTL
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

Arrowlake-S graphics is similar enough to Meteorlake
that we can treat them as the same platform

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 include/drm/i915_pciids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 38dae757d1a8..1661f9e552d2 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -745,6 +745,7 @@
 	INTEL_VGA_DEVICE(0x7D45, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
 	INTEL_VGA_DEVICE(0x7D60, info), \
+	INTEL_VGA_DEVICE(0x7D67, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

