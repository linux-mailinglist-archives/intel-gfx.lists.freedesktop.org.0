Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FE126C450
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 17:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D5C6EA4A;
	Wed, 16 Sep 2020 15:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377386EA4A;
 Wed, 16 Sep 2020 15:35:35 +0000 (UTC)
IronPort-SDR: OSVZqzPKgQl7gWBdgzbyPKifu4g9SJxTIgBSUyxN1xbYHKREYhZb7eMh0B8bnMzV1P9RXW/BSM
 tolZ837+RA5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="221048290"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="221048290"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 08:35:33 -0700
IronPort-SDR: +4QsQuT2IKBKSC/wBUATfcUUqevlzOOrv5pzOg149Tib1Bjco50AKV8a8D6nKdNSYakNdQmAbZ
 KoyRMaieer/A==
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="307081820"
Received: from karthik-2012-client-platform.iind.intel.com ([10.223.74.217])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 16 Sep 2020 08:35:29 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 20:38:23 +0530
Message-Id: <20200916150824.15749-8-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200916150824.15749-1-karthik.b.s@intel.com>
References: <20200916150824.15749-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 7/8] Documentation/gpu: Add asynchronous flip
 documentation for i915
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
Cc: paulo.r.zanoni@intel.com, michel@daenzer.net,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com,
 harry.wentland@amd.com, nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the details of the implementation of asynchronous flips for i915.

v7: -Rebased.

v8: -Rebased.

v9: -Rebased.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 Documentation/gpu/i915.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 33cc6ddf8f64..84ead508f7ad 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -118,6 +118,12 @@ Atomic Plane Helpers
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic_plane.c
    :internal:
 
+Asynchronous Page Flip
+----------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
+   :doc: asynchronous flip implementation
+
 Output Probing
 --------------
 
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
