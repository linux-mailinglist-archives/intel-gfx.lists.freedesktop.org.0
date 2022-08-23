Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC355A02E3
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60809C7EFA;
	Wed, 24 Aug 2022 20:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDE210E783
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287326; x=1692823326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UuL0xMHOIbnF5k3Ipb6WuQgYTBV7LXDGDJij/qh4Vkg=;
 b=MvODgypC69a/YGesxOzhEnjgVSfn+tWLo+1xrS8bAyYAZn0tnDDx/XXK
 jqqGc3QK/6fhihp2UdjWvW7+J++M2ry5sMUpRWXR+0RnQv6q5GXgwWpj+
 YI0QKORdVrkTtr9swPb72KJaGVQgceaOmlQIdZOuRCgAB16J5rByIDMQv
 FKWtiB9RGSc3zgyAr107oRxOLhBNHAjafUq9o8TJOOFUbEFQYbjJu4+hP
 dUqIns7qG+RlaeEtwx5hQWASCUGaG9wNJxKGU1jI+UVkTMgkmnF8UctFE
 zmQYearcRhH/W+Phyktt2Ihl3IoPhr2n/VJ9y1hY9VrKJy8ScSPDpTEWW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294579400"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="294579400"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815693"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:55 +0000
Message-Id: <20220823204155.8178-20-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/19] drm/i915/perf: Enable OA for DG2
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

OA was disabled for DG2 as support was missing. Enable it back now.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index ce1b6ad4d107..f109aeeece8d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4877,12 +4877,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
 
-	/* XXX const struct i915_perf_ops! */
-
-	/* i915_perf is not enabled for DG2 yet */
-	if (IS_DG2(i915))
-		return;
-
 	perf->oa_formats = oa_formats;
 	if (IS_HASWELL(i915)) {
 		perf->ops.is_valid_b_counter_reg = gen7_is_valid_b_counter_addr;
-- 
2.25.1

