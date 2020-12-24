Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A362E27CF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 15:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4572389BA1;
	Thu, 24 Dec 2020 14:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41AEC89B67
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 14:48:46 +0000 (UTC)
IronPort-SDR: PvYgngTom2ICyWWFTY7zXxKB0N/59WZckMoXA/BTzP2KBT7wNoEOUNCsl/ixe6hnpHWxfS+nRn
 V1r6LmaQh2pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="173578491"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="173578491"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 06:48:42 -0800
IronPort-SDR: SHvJcpwqN8CYYnsjxR9FDnhu6LIIVY/PLNjnoT8Z6y+LvY/lEbgx2hFVLFadyQbnAMpB2vPpAX
 ENcdzZygf69A==
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="374428235"
Received: from vmangan-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.26.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 06:48:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 14:48:34 +0000
Message-Id: <20201224144835.391775-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: clear the shadow batch
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

The shadow batch is an internal object, which doesn't have any page
clearing, and since the batch_len can be smaller than the object, we
should take care to clear it.

Testcase: igt/gen9_exec_parse/shadow-peek
Fixes: 4f7af1948abc ("drm/i915: Support ro ppgtt mapped cmdparser shadow buffers")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 8d88402387bd..ff3a0b8ccdd5 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1147,6 +1147,13 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	if (IS_ERR(dst))
 		return dst;
 
+	if (length < dst_obj->base.size) {
+		memset32(dst + length, 0,
+			 (dst_obj->base.size - length) / sizeof(u32));
+		__i915_gem_object_flush_map(dst_obj, length,
+					    dst_obj->base.size - length);
+	}
+
 	ret = i915_gem_object_pin_pages(src_obj);
 	if (ret) {
 		i915_gem_object_unpin_map(dst_obj);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
