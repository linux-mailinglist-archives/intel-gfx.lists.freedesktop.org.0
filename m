Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F25C5BB14C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 18:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4EDE10E4C7;
	Fri, 16 Sep 2022 16:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2EB110E4C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 16:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663347133; x=1694883133;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1OtDcn+twBJbkrmULRM8NwzxVWcXaiWNG7Yow1mBvJ8=;
 b=Zo60eS6B5JgzSQ+T5xF6WpZQK7fz3fYVub6N8e1Pd1lzHjaVwEYAVauW
 qZEqON8RPmOSWxh6I/ASCkeFY1hLJyGtewY/bk8/P/EKIg4KbHdiTL7oj
 4uO/agLRAlpgejeZsQiTFaDMzIWIgqlCCHjsAvSNmdvNfHwiomXPJpWdw
 cnmFJKtQeIj+VTJfrllxpoGCcECHs0c9mfXsIdzvpjVl+xR72HRlACT/h
 B5ux+njha/Pz1VCgKOqpMMZfl7VYkZPJnCpXpXTrZDdHLE/v8y0atzJu1
 BnPXUC5D5ZPJfqlBc+Be39u3nKaOwlKND33AV1mEOX+BRKkt8Qoz2MxOx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="279415662"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="279415662"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 09:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="650932296"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 16 Sep 2022 09:52:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 19:52:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 19:52:05 +0300
Message-Id: <20220916165206.1499-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/fbc: Remove stale FIXME
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

Remove the old tales about 90/270 degree rotation
effectively preventing FBC. That hasn't been true since
we stopped demanding the fence is present in
commit 691f7ba58d52 ("drm/i915/display/fbc: Make fences
a nice-to-have for GEN9+")

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f38175304928..e97083ea1059 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1009,7 +1009,8 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 
-	/* The use of a CPU fence is one of two ways to detect writes by the
+	/*
+	 * The use of a CPU fence is one of two ways to detect writes by the
 	 * CPU to the scanout and trigger updates to the FBC.
 	 *
 	 * The other method is by software tracking (see
@@ -1019,12 +1020,6 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 	 * Note that is possible for a tiled surface to be unmappable (and
 	 * so have no fence associated with it) due to aperture constraints
 	 * at the time of pinning.
-	 *
-	 * FIXME with 90/270 degree rotation we should use the fence on
-	 * the normal GTT view (the rotated view doesn't even have a
-	 * fence). Would need changes to the FBC fence Y offset as well.
-	 * For now this will effectively disable FBC with 90/270 degree
-	 * rotation.
 	 */
 	return DISPLAY_VER(i915) >= 9 ||
 		(plane_state->flags & PLANE_HAS_FENCE &&
-- 
2.35.1

