Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFDE41D07C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFA56EB15;
	Thu, 30 Sep 2021 00:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8476EB0B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148099"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148099"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658491"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Date: Wed, 29 Sep 2021 17:14:02 -0700
Message-Id: <20210930001409.254817-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915/display/psr: Do full fetch when
 handling multi-planar formats
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

From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

We are still missing the PSR2 selective fetch handling of multi-planar
formats but until proper handle is added we can workaround it by
doing full frames fetch when state has such formats.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e3af1dc358bd2..8534cbb0d5144 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1573,6 +1573,9 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
  * also planes are not updated if they have a negative X
  * position so for now doing a full update in this cases
  *
+ * TODO: We are missing multi-planar formats handling, until it is
+ * implemented it will send full frame updates.
+ *
  * Plane scaling and rotation is not supported by selective fetch and both
  * properties can change without a modeset, so need to be check at every
  * atomic commmit.
@@ -1582,6 +1585,7 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
 	if (plane_state->uapi.dst.y1 < 0 ||
 	    plane_state->uapi.dst.x1 < 0 ||
 	    plane_state->scaler_id >= 0 ||
+	    plane_state->hw.fb->format->num_planes > 1 ||
 	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
 		return false;
 
-- 
2.33.0

