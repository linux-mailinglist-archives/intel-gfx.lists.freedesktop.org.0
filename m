Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6683725D845
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 14:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C536EB87;
	Fri,  4 Sep 2020 12:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2F76E26C;
 Fri,  4 Sep 2020 12:01:18 +0000 (UTC)
IronPort-SDR: NN5FF0L9yO2GVMisYc+AGViglfPfRt2P02JHr0i5rOMLVTGdyApGF16oMhjl0meOi55sri9ekv
 5S8zStKc4ZWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="156992832"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="156992832"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 05:01:18 -0700
IronPort-SDR: QbaHj78TTLS1QUgTp+rb/SfP+oWuy25RRLcMY+/l8OHasmIHs5Xv0mAyP2Eue/YkrJ+d5A3wDt
 kTeOpRhutDuA==
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="298390126"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 04 Sep 2020 05:01:14 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Sep 2020 17:03:29 +0530
Message-Id: <20200904113330.19815-7-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200904113330.19815-1-karthik.b.s@intel.com>
References: <20200904113330.19815-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 6/7] Documentation/gpu: Add asynchronous flip
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
