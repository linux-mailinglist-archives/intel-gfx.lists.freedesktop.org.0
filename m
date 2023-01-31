Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C71682096
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 01:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B526810E297;
	Tue, 31 Jan 2023 00:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946D110E297
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 00:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675124510; x=1706660510;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a/OSd+rZbs+9WWhZV34vrUU7DXTIuCZBtPvCml5ws2U=;
 b=CnPG7UKCnFN8HFetLvuaTHhcscVFakeFFLnEFZZgzHCLhwQbfI/9tVKA
 pWBnM0dB/XvftHHlfbY/8oGoeCm1ivLMTdIU05dWl3YcNfcBI72MoPWa1
 krQZVLuQQ7al/j9H7DfNQthr1i3/bWAl8QGbhDfk7cJwzxyasnO3kdg55
 kCXzB9y1GsPNgNSRVJI8tVNhLadQLSRvyucQk9Ms7h17AhP+djAtOsMYn
 3Pgx9vv9YXYwzO1c4lSXvjI6HdmYNiyMbqduv3Rpwv84u0omp8M962MV3
 YXmBrXF1F/m0IxnKSYBPqQTurTlnhT6dSxtzvUpnAY4Px04J2aaLsZVkY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326376773"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="326376773"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 16:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="657648749"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="657648749"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 30 Jan 2023 16:21:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Jan 2023 02:21:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 02:21:24 +0200
Message-Id: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Don't do the WM0->WM1 copy w/a if
 WM1 is already enabled
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Due to a workaround we have to make sure the WM1 watermarks block/lines
values are sensible even when WM1 is disabled. To that end we copy those
values from WM0.

However since we now keep each wm level enabled on a per-plane basis
it doesn't seem necessary to do that copy when we already have an
enabled WM1 on the current plane. That is, we might be in a situation
where another plane can only do WM0 (and thus needs the copy) but
the current plane's WM1 is still perfectly valid (ie. fits into the
current DDB allocation).

Skipping the copy could avoid reprogramming the plane's registers
needlessly in some cases.

Fixes: a301cb0fca2d ("drm/i915: Keep plane watermarks enabled more aggressively")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 261cdab390b4..0c605034356f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1586,7 +1586,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 				skl_check_wm_level(&wm->wm[level], ddb);
 
 			if (icl_need_wm1_wa(i915, plane_id) &&
-			    level == 1 && wm->wm[0].enable) {
+			    level == 1 && !wm->wm[level].enable &&
+			    wm->wm[0].enable) {
 				wm->wm[level].blocks = wm->wm[0].blocks;
 				wm->wm[level].lines = wm->wm[0].lines;
 				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;
-- 
2.39.1

