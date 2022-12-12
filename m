Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE29D64A9F7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 23:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A1689EFF;
	Mon, 12 Dec 2022 22:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF9810E0C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 22:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670882950; x=1702418950;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+yAuMLoj75qiuZMhj7Q6QxeQgAEwM45eXYYDHzpUgjg=;
 b=ntZuWztVOn8Ri4rMCKnhVovlZOk7P6DboapDHXXaMkTIncIpAlh0Fvyy
 gfrAZ2N1AiKywVpeiQxjg3dTOWRkXOpqO59Va/p2ZaFToeEIw7r84dmHG
 7AkqG+8WoE5PnH9d8NSocCwWXwzDpVjGngt9ysBt+3TKXTNWhFzidHQiB
 LyC8lluFXMArLh/cXnuNG8wndo3YpxM+dO23OClq3kIQT+2BK+VRkjIoo
 NGORZ9DckUZxbISMpbZZpDXecFdo1zgnIEGx38RQRKYa8W1ErObYvdfir
 z38cg8xvAKxaFsj8TbPGgqmdvhU5SpNruCi/ug6UwAnzCncg4ERgF3lrS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="345031092"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="345031092"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:09:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="641882376"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="641882376"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:09:07 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 14:09:00 -0800
Message-Id: <20221212220902.1819159-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
References: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/mtl: Add Wa_14015846243 to fix
 OA vs CS timestamp mismatch
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Similar to ACM, OA timestamp that is part of the OA report is shifted
when compared to the CS timestamp. Add MTL to the WA.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a8b34460d36f..1a8618a787d6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3140,8 +3140,11 @@ get_sseu_config(struct intel_sseu *out_sseu,
  */
 u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
 {
-	/* Wa_18013179988:dg2 */
-	if (IS_DG2(i915)) {
+	/*
+	 * Wa_18013179988:dg2
+	 * Wa_14015846243:mtl
+	 */
+	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
 		intel_wakeref_t wakeref;
 		u32 reg, shift;
 
-- 
2.38.1

