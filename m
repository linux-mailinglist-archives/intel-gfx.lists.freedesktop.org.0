Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED668565C08
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20AB2112165;
	Mon,  4 Jul 2022 16:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E9610F388
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 16:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656951368; x=1688487368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uIFSoI+LKjB/TFA4joTZwkkvlJCk/OJkGdVdzvFHC7I=;
 b=DaBvAoXqOmykvsW51z+inwpPIeVtraVFQ8PdoIJmyfyqSvBsB739XK2G
 rNIIl/CcALQH4xakHm8L2DtNFyGFm+6p7L0qw6sVinoM4KZCMAHahW7TW
 uuv8yEicIqds6qv/ph4nykG8iO6qjIrzJ+kdxw6xFvtxMKErq4HT6wy8R
 mYNJ9gLfbbdv1jqin9giKXHwHgy+79ZMHqCYble9FsuSeScLy5TFzlwP+
 yTHKbmM1wH2QlGqfmOROEnfPIDtEfPNdieHh/tsxQAFevqfCGovR8uYaJ
 +1i3sJ8laRXsZRto9O8xVS3DUxc8R+TyMUyg3iQFioLY3OiTbCU+lYi9n w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369487097"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="369487097"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 09:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="838854598"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jul 2022 09:16:05 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jul 2022 21:45:48 +0530
Message-Id: <20220704161548.1343042-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426120407.1334318-1-arun.r.murthy@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear buffers
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

Intel Gen do support Async Flip is supported on linear buffers. Since we
didn't had a use case, it was not enabled. Now that as part of hybrid
graphics for unsupported hardware pixel formats, its being converted to
linear memory and then flipped, hence enabling!
This patch enables support for async on linear buffer.

v2: added use case
v3: enabled async on linear for pre Gen 12 as well

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0f84cbe974f..99ad67af74e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6614,6 +6614,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * this selectively if required.
 		 */
 		switch (new_plane_state->hw.fb->modifier) {
+		case DRM_FORMAT_MOD_LINEAR:
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.25.1

