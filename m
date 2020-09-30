Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE4527E16D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC896E4F8;
	Wed, 30 Sep 2020 06:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F1E6E4FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:44 +0000 (UTC)
IronPort-SDR: GlashoSRYOPrnMrzwxJAg5t+aye8y6NgL0HxsnnvjkmjcTYULeMC43Gr+5M+5Vg9sl6EAGl6aQ
 gjQbh+VEcjXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387746"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387746"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:43 -0700
IronPort-SDR: RXmi13gj+v6Ty1UpFR+RZi2g9UeA32tE9kdUY4TQNDt5jtf2n8jCp5HF5rTDpxlamOZsSlsnm5
 JwT9BN4lNFNw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487675"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:11 -0700
Message-Id: <20200930064234.85769-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 01/24] drm/i915/dg1: add more PCI ids
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
