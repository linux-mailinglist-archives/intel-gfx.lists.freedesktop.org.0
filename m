Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 787BB60A9C6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4CF810E6F2;
	Mon, 24 Oct 2022 13:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bg4.exmail.qq.com (bg4.exmail.qq.com [43.155.65.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCEBA10E317;
 Sat, 22 Oct 2022 06:11:38 +0000 (UTC)
X-QQ-mid: bizesmtp72t1666419090t2pfz62r
Received: from localhost.localdomain ( [182.148.15.254])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Sat, 22 Oct 2022 14:11:28 +0800 (CST)
X-QQ-SSF: 01000000000000C0E000000A0000000
X-QQ-FEAT: +iNLrXnFj0k+EbC2myCFz75BvZWKEuI3WDsoOZH31qWz0vux+iFscYL/VtzGg
 6TJ0wSBAkDHTwxX6PR3ryd/4coCkgEUPCBp1EDvFJrvOCdtb6mzKQOW4G5hMGo4QYCKda9E
 pbSt+Br0px3u0ISxaCbeWF491ljJUieECaEXky/rtLDe80451R5PR2AJ0DVcRccJ4ND1etK
 gw4PxF77S3x/K6Xf+oMxuxeOY2ytZ0nfH/3yIhaEUG8MF19X01xuJ+lYdngeEKqatcEXGQW
 4oY69IfaD789mydiSl81oWPU2Hr3DMRHUIaNdcrOF9PGUva17IRetjysUy5GFq80gwvFJ/D
 adN44RZjkcmN2qqACFJ6++UvvVWRJaDbgt/RRJSGXK6f4HFV54=
X-QQ-GoodBg: 0
From: wangjianli <wangjianli@cdjrlc.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch
Date: Sat, 22 Oct 2022 14:11:22 +0800
Message-Id: <20221022061122.62990-1-wangjianli@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr7
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: fix repeated words in comments
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
Cc: wangjianli <wangjianli@cdjrlc.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Delete the redundant word 'the'.

Signed-off-by: wangjianli <wangjianli@cdjrlc.com>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 73d5195146b0..9caf99a13c61 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1735,7 +1735,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 }
 
 /*
- * NB: This function is not allowed to fail. Doing so would mean the the
+ * NB: This function is not allowed to fail. Doing so would mean the
  * request is not being tracked for completion but the work itself is
  * going to happen on the hardware. This would be a Bad Thing(tm).
  */
-- 
2.36.1

