Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C37A34FC3D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Mar 2021 11:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63436EA0E;
	Wed, 31 Mar 2021 09:12:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1576EA0C;
 Wed, 31 Mar 2021 09:12:53 +0000 (UTC)
IronPort-SDR: KKy74OoWlklbRrAcz5IJnuqXjWthOGCGdczMlWFPUl9FdS1dUoCBigI/AsnfbBq5dlWFej/cIF
 JrBS7nK8zrlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="191988106"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="191988106"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 02:12:52 -0700
IronPort-SDR: LH7Bamurd0cCXe5wd6anhEquhl2dTjZLRggx9uh/kBoI8aNxu5eyHwi5nUIfVXc1ispCX9hyiN
 S77fbb4kkVyw==
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="418578459"
Received: from jlowe-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.201.218])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 02:12:49 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 31 Mar 2021 10:12:41 +0100
Message-Id: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Document how to use JSON
 output
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Put a note on how to use JSON output into the man page.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/100
---
 man/intel_gpu_top.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index f6d74852558b..94fdc6520fd3 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -81,6 +81,11 @@ Filter types: ::
     pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
              vendor is hex number or vendor name
 
+JSON OUTPUT
+===========
+
+To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point an JSON array element and will avoid "Multiple root elements" JSON validation error.
+
 LIMITATIONS
 ===========
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
