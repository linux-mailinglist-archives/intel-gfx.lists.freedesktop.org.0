Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A963285561
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 02:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F21A6E840;
	Wed,  7 Oct 2020 00:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 073896E83A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 00:22:31 +0000 (UTC)
IronPort-SDR: YOfOxoGj0nmu57eYQ1oYlCObg2qHoJff5F3tEVjqca2GpGwm4LDUvUhcg+3FvRnJ8tlDt7rAJL
 RkHy7J730g0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="162142903"
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="162142903"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 17:22:28 -0700
IronPort-SDR: ZY3mheB8e5TpdkrcxmQK8uWh6awjWORLMQs8uGdbZQmeFewXxjC5TtT7KgRg38bHBIBnuSm/RI
 Xd+0qF30dQ5g==
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="527687767"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 17:22:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:22:03 -0700
Message-Id: <20201007002210.3678024-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/8] drm/i915/dg1: add more PCI ids
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Synchronize with the current list of DG1 PCI IDs.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 include/drm/i915_pciids.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 7eeecb07c9a1..095463ff7cb9 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -624,6 +624,9 @@
 
 /* DG1 */
 #define INTEL_DG1_IDS(info) \
-	INTEL_VGA_DEVICE(0x4905, info)
+	INTEL_VGA_DEVICE(0x4905, info), \
+	INTEL_VGA_DEVICE(0x4906, info), \
+	INTEL_VGA_DEVICE(0x4907, info), \
+	INTEL_VGA_DEVICE(0x4908, info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
