Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36022782DBC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 18:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F41710E1E0;
	Mon, 21 Aug 2023 16:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662E710E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 16:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692633863; x=1724169863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=15hoCvusIIaXzA3jeOiurz2XPiODnqRorNMn47IzM8c=;
 b=BV8cTi5YwfPzoUDne8+6/PY1YJaHIm/0k5rhvrjPKsyi/wsHkkyfSo/v
 aWh7sOmvwlSIi7ehDY7ioIBRueoT4FpogF3+f660PtJxzh1FaWNpFVodC
 FKPK2L0/TjGSi69SJAl2tXRQTEt851eLYX6bgiR007zUXzG0opPiOKBmX
 pP8D5zEvEGdhFaTfGfwo3eIu/bzQtmo3BqWh1OPZwJd4ZBfJeOsrm25Wq
 oZjCxiGLqBqVckzqrBE/psVkLL7+ovVca46mgRq1ZOdAiePhRUZ2+mawP
 4jJmktxYDRWt32dCyNBhthUE2QP4QvmepGY/0g2n1kCb0ean0QCb37I02 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="363799482"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="363799482"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 09:04:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771012441"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="771012441"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2023 09:04:21 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 21:30:03 +0530
Message-Id: <20230821160004.2821445-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm: Add Wrapper Functions for ELD SAD
 Extraction
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

Add wrapper functions to facilitate extracting Short Audio
Descriptor (SAD) information from EDID-Like Data (ELD) pointers
with different constness requirements.

1. `drm_eld_sad`: This function returns a constant `uint8_t`
pointer and wraps the main extraction function, allowing access
to SAD information while maintaining const correctness.

2. `drm_extract_sad_from_eld`: This function returns a mutable
`uint8_t` pointer and implements the core logic for extracting
SAD from the provided ELD pointer. It performs version and
maximum channel checks to ensure proper extraction.

These wrapper functions provide flexibility to the codebase,
allowing users to access SAD information while adhering to
const correctness when needed and modifying the pointer when
required.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 include/drm/drm_edid.h | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 48e93f909ef6..626bc0d542eb 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -418,11 +418,7 @@ static inline int drm_eld_mnl(const uint8_t *eld)
 	return (eld[DRM_ELD_CEA_EDID_VER_MNL] & DRM_ELD_MNL_MASK) >> DRM_ELD_MNL_SHIFT;
 }
 
-/**
- * drm_eld_sad - Get ELD SAD structures.
- * @eld: pointer to an eld memory structure with sad_count set
- */
-static inline const uint8_t *drm_eld_sad(const uint8_t *eld)
+static uint8_t *drm_extract_sad_from_eld(uint8_t *eld)
 {
 	unsigned int ver, mnl;
 
@@ -437,6 +433,15 @@ static inline const uint8_t *drm_eld_sad(const uint8_t *eld)
 	return eld + DRM_ELD_CEA_SAD(mnl, 0);
 }
 
+/**
+ * drm_eld_sad - Get ELD SAD structures.
+ * @eld: pointer to an eld memory structure with sad_count set
+ */
+static inline const uint8_t *drm_eld_sad(const uint8_t *eld)
+{
+	return drm_extract_sad_from_eld((uint8_t *)eld);
+}
+
 /**
  * drm_eld_sad_count - Get ELD SAD count.
  * @eld: pointer to an eld memory structure with sad_count set
-- 
2.25.1

