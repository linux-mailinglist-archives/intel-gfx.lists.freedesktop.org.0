Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4F13450B8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 21:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C379B89E35;
	Mon, 22 Mar 2021 20:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7856E89CA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 20:27:41 +0000 (UTC)
IronPort-SDR: Isqhji0Q9bzNCuStKPLOJjh/DX7LslcQAzLx8UnRl1Uh1xLmbSgvUdMt9ZSm/viy6qW6tXj7iA
 +mvrAdeyz2dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254341144"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254341144"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:27:40 -0700
IronPort-SDR: mJkxG/zY9hlPVVFf6ACZfAvtDWzg224++r+nTmfXlIGS/Mv7wqTmhYP51lfJE4JWKRcClFsO4T
 TejXlg0LqLhQ==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="451858849"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:27:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 13:27:30 -0700
Message-Id: <20210322202730.1066559-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210322202730.1066559-1-lucas.demarchi@intel.com>
References: <20210322202730.1066559-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: add missing PCI IDs
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

Synchronize our PCI IDs with the list in Bspec 53655.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 include/drm/i915_pciids.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index ebd0dd1c35b3..3be25768321d 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -640,6 +640,8 @@
 	INTEL_VGA_DEVICE(0x4681, info), \
 	INTEL_VGA_DEVICE(0x4682, info), \
 	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4688, info), \
+	INTEL_VGA_DEVICE(0x4689, info), \
 	INTEL_VGA_DEVICE(0x4690, info), \
 	INTEL_VGA_DEVICE(0x4691, info), \
 	INTEL_VGA_DEVICE(0x4692, info), \
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
