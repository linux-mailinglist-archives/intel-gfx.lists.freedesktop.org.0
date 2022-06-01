Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80308539C0E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 06:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44AFC112DB9;
	Wed,  1 Jun 2022 04:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E22112DBC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 04:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654057480; x=1685593480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8zFT8whs4oyUc/TAzEz0tSWi8qQm+vK31SO6ZTa61hY=;
 b=j4nYfVkqmkXrMBsVwi/vjectpPVLuJCYxq7xAUbhexAmeYaAuSjgh3yc
 dMFjNg8zFJ6JmXjTAEf3ydPs7xFE4VJTdp191jTgJWl9/w+B2IWHV49Zy
 GajzIuJZfDwdrp/MAmMs0nHdFdR8A/xKPB4hO3dihSogxFVv5xJ1KOIRi
 e5DNG4EfwBaaM8XQP+j6Vgzp+LgAkC/3KD7ZCPmF3UetQ9SIRYxXCnvrb
 IDTp0V5Z4BNAUYufF7CiAdQb5hPwrgAl14nHpnxvhmup54MfmU9pNr9pw
 oPjdu40JugGve7GtpMvm2xC9N3CxbU1ghauFDfulcvF1huaC86ry3Gz8h A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="338512661"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="338512661"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 21:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="645321911"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga004.fm.intel.com with ESMTP; 31 May 2022 21:24:38 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 09:54:11 +0530
Message-Id: <20220601042411.3299122-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426120407.1334318-1-arun.r.murthy@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Support Async Flip on Linear
 buffers
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

Starting from Gen12 Async Flip is supported on linear buffers.
This patch enables support for async on linear buffer.

UseCase: In Hybrid graphics, for harware unsupported pixel formats it
will be converted to linear memory and then composed.

v2: Added use case

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e71b69425309..da2df7239353 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7524,6 +7524,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * this selectively if required.
 		 */
 		switch (new_plane_state->hw.fb->modifier) {
+		case DRM_FORMAT_MOD_LINEAR:
+			if (DISPLAY_VER(i915) < 12) {
+				drm_dbg_kms(&i915->drm,
+					"[PLANE:%d:%s] Modifier does not support async flips\n",
+					plane->base.base.id, plane->base.name);
+				return -EINVAL;
+			}
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.25.1

