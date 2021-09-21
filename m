Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 310CA4129FF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEFF6E8C0;
	Tue, 21 Sep 2021 00:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF306E8C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:35:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="286937029"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="286937029"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:35:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="473842612"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:35:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Mon, 20 Sep 2021 17:41:13 -0700
Message-Id: <20210921004113.261827-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210921004113.261827-1-jose.souza@intel.com>
References: <20210921004113.261827-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch when
 handling biplanar formats
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

We are still missing the PSR2 selective fetch handling of biplanar
formats but until proper handle is added we can workaround it by
doing full frames fetch when state has biplanar formats.

We need the second check because an update in a regular format could
intersect with a biplanar plane that was not initialy part of the
atomic commit.

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8ceb22c5a1a6b..e6a4c27975d8c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1601,9 +1601,13 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		 * TODO: Not clear how to handle planes with negative position,
 		 * also planes are not updated if they have a negative X
 		 * position so for now doing a full update in this cases
+		 *
+		 * TODO: We are missing biplanar formats handling, until it is
+		 * implemented it will send full frame updates.
 		 */
 		if (new_plane_state->uapi.dst.y1 < 0 ||
-		    new_plane_state->uapi.dst.x1 < 0) {
+		    new_plane_state->uapi.dst.x1 < 0 ||
+		    new_plane_state->hw.fb->format->is_yuv) {
 			full_update = true;
 			break;
 		}
@@ -1682,6 +1686,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
 			continue;
 
+		if (new_plane_state->hw.fb->format->is_yuv) {
+			full_update = true;
+			break;
+		}
+
 		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
 		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
-- 
2.33.0

