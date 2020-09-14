Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342902684CC
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 08:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29816E1B2;
	Mon, 14 Sep 2020 06:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27886E1A7;
 Mon, 14 Sep 2020 06:23:42 +0000 (UTC)
IronPort-SDR: OicRE/F4eMofmE4VV2Hy+kvo8pwsnGwMh1Z0/gUrZO7f2IOh44R48yuvfXySWr8TrAfHsNaMg6
 l4HeAwCn5VUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="146769845"
X-IronPort-AV: E=Sophos;i="5.76,425,1592895600"; d="scan'208";a="146769845"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2020 23:23:42 -0700
IronPort-SDR: K2ZVnhaYbni2jhy220Ux06euoDDXOXTpHESOb3GHomtmL28Fe4YJtwryCASH15q+QVaqyLeunp
 iUZwVM01XN/Q==
X-IronPort-AV: E=Sophos;i="5.76,425,1592895600"; d="scan'208";a="287536714"
Received: from karthik-2012-client-platform.iind.intel.com ([10.223.74.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Sep 2020 23:23:38 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Sep 2020 11:26:32 +0530
Message-Id: <20200914055633.21109-8-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200914055633.21109-1-karthik.b.s@intel.com>
References: <20200914055633.21109-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 7/8] Documentation/gpu: Add asynchronous flip
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
