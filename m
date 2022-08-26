Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC995A233C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 10:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2657310E766;
	Fri, 26 Aug 2022 08:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA32210E766
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 08:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661503120; x=1693039120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B8SNqxS0FapT0EVSig9oPBzzEX+gubo5azyk1yJzUEU=;
 b=cw8CGEA0TwtPBbTkRUQIcokOUTTRlLbwK+rRLvMu7hqB5p4tBqgMZKtg
 ETEBZLj4uLLtRGcoX9zjjdv2GYTUOzj2Dv5HWZRCi8wRKUjQd7yRDJ5Y2
 TTUlDdEC6CLkuLy8hn9+PWwIHMPq98v6eR15LHgyIkqZpP9KulRp3TY+s
 Tf0Hes90OvlZmD/QyzOKH1SVvRydFo6VfbY9+s1H8lKx8BVajdv44wQj+
 tJdhDv0mMewMOEfdzfySvICAiQ3GUF/l1+mUL3hxzjSDhA1iYtT2rFijG
 swKK+HBmHwPrC3e2Fd+e32/y2TcH2pKYV3d2I1LNmuUdft3Vz3bkhTJFX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274853960"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="274853960"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="587226217"
Received: from plomuzio-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.203])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:38:16 +0300
Message-Id: <26667d124d79986901c3749471cfe7df8ae5f686.1661503049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661503049.git.jani.nikula@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/perf: replace BUG_ON() with
 WARN_ON()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid BUG_ON(). Replace with WARN_ON() and early return.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index f3c23fe9ad9c..0defbb43ceea 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1376,7 +1376,8 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
 
-	BUG_ON(stream != perf->exclusive_stream);
+	if (WARN_ON(stream != perf->exclusive_stream))
+		return;
 
 	/*
 	 * Unset exclusive_stream first, it will be checked while disabling
-- 
2.34.1

