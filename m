Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8CB7B373A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 17:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC67B10E15E;
	Fri, 29 Sep 2023 15:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65DD10E172
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 15:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696002548; x=1727538548;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yf9s5dEOw3hXoioOXZHbUQ9pQ47lBQakBul/81I64c0=;
 b=Abr+9ycz0FDAEx5GWqE27xFRSgn/BlfHKYCGmUDe+ewIrVa0vKsyvsoC
 iK/tTfPOWUIHA9M603MYA9wfk/fFBKAqm9HfHaHdVn4SoAgaG5ho8/3r3
 Qq65QUXtd8paK+Am5qMwVfLe/DX4tXeH9Yh4sHfh7YNpvjYdofuZPKJOZ
 8H6pnA6IAjO1bpCR9OWUqYmfVwGL7QLl2dRSv2yl+/5F922V2uJpkC8zI
 lY4bPBv7QHzIu1GFeE60f+KOC7zz7MTRBg56ohbQUV7LXO2aUtXI3FFF6
 wEkv/PhblaGH+V05sE9n1VlNm9rZWEFw26+W2Ic21VAZTdzotFUdWRiHN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="379598786"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="379598786"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 08:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="785131034"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="785131034"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 08:49:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 18:49:29 +0300
Message-Id: <20230929154929.343947-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp_mst: Make sure pbn_div is
 up-to-date after sink reconnect
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

Atm the MST encoder config computation may use an out-of-date pbn_div
value, if the sink is unplugged and a sink is replugged with different
link rate/lane count capabilities. The current way of reinitializing
pbn_div depends on pbn_div getting cleared via intel_atomic_check() ->
drm_dp_mst_atomic_check() ->
drm_dp_mst_atomic_check_payload_alloc_limits(), however the clearing
won't happen if the sink got unplugged (and hence
drm_dp_mst_topology_mgr::mst_state being false).

To fix the above, simply update pbn_div unconditionally during config
computation, making pbn_div always match the link rate and lane count.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 648cf37e02a87..42ddfc85d72d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -94,12 +94,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
-	// TODO: Handle pbn_div changes by adding a new MST helper
-	if (!mst_state->pbn_div) {
-		mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
-							      crtc_state->port_clock,
-							      crtc_state->lane_count);
-	}
+	mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
+						      crtc_state->port_clock,
+						      crtc_state->lane_count);
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
-- 
2.39.2

