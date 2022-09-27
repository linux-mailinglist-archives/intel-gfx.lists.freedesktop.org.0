Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC0D5ECA4E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 19:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD5C10E096;
	Tue, 27 Sep 2022 17:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 483FA10E05C;
 Tue, 27 Sep 2022 17:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664298014; x=1695834014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FhJMM87k0x5zG3sXLdlJ9nnD79G+3grLJBKMOo94wRA=;
 b=YrsNFxSlQvllGgp2ogys7VIhyX+pcfyZammA4zDPaKcFKkN2vYZColHk
 Ghnf0TED9dhx+X3RAWNYH63zSZc6v0tjb0WyWiT/bSjYa4M7+8Xt1zzwb
 LY6wj3u2QW5RNtfrFhv9d7kgI6DmBYH9vZZmpMMNd5VrkgdMfUUjvFHoK
 BGDHT3JfCjmYVI8Bf8FloFjJGk5NV3uf9lncsxOBYXjg4F+KAQIy9IFZq
 kjHV9cunAQJKWr/YtJc7IvZnw8XhSYKp+KfNEPKHHEEiNxjzZqDmtuP9k
 C2xTu3x0+9kW0c47Wng1byhPHiIhtUwkNq4K0DVXmvHbXFw9b7+5vX2vm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363208133"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="363208133"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="623821484"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="623821484"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 27 Sep 2022 10:00:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 20:00:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 27 Sep 2022 19:59:58 +0300
Message-Id: <20220927170006.27855-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927170006.27855-1-ville.syrjala@linux.intel.com>
References: <20220927170006.27855-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/edid: Clarify why we only accept the
 "range limits only" descriptor
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
Cc: Leo Li <sunpeng.li@amd.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, amd-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The current comment fails to clarify why we only accept
the "range limits only" variant of the range descriptor.
Reword it to make some actual sense.

Cc: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Leo Li <sunpeng.li@amd.com>
Cc: Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
Cc: amd-gfx@lists.freedesktop.org
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 4005dab6147d..ac662495635c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6033,10 +6033,13 @@ void get_monitor_range(const struct detailed_timing *timing, void *c)
 		return;
 
 	/*
-	 * Check for flag range limits only. If flag == 1 then
-	 * no additional timing information provided.
-	 * Default GTF, GTF Secondary curve and CVT are not
-	 * supported
+	 * These limits are used to determine the VRR refresh
+	 * rate range. Only the "range limits only" variant
+	 * of the range descriptor seems to guarantee that
+	 * any and all timings are accepted by the sink, as
+	 * opposed to just timings conforming to the indicated
+	 * formula (GTF/GTF2/CVT). Thus other variants of the
+	 * range descriptor are not accepted here.
 	 */
 	if (range->flags != DRM_EDID_RANGE_LIMITS_ONLY_FLAG)
 		return;
-- 
2.35.1

