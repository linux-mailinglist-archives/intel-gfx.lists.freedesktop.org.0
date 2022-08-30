Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CBF5A5F82
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 11:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FDBA10E035;
	Tue, 30 Aug 2022 09:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5970510E035
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 09:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661852074; x=1693388074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DfNuiNPNUjN5HGtGFuP5IdIknTModHq9xd/3VtKfTlY=;
 b=i4I6fPgZrCrqaYPLPf4lJ/BxFvyLwrEgSepZ1tMrMZselSHkKs20iAuj
 mHq5zGbRFBuCPGcPU9otQNQKG7cXcJ/FbkPPMdDUBQKrffLgkTDxsgRKg
 tMUvrEStspxwpvVmKqLMsdNWEPstPTH8Mk8vN3ugDkPml4Bm2cAWT3zmT
 o82elOYeu3ZwhNEc0QjEzgpfsdaLw3U5AdPm9mWPeJdEGTZ5Z3+Lc8cV2
 v+tWZD948585hONBIJphqmuoLcx02QRv8EZYnmcIL92J6RWLCoDIgCrjt
 9I75jR9RNqaAQgy48VPziexKIEQdv6GbxLctI5brJ28hFgULlYu2N6yUo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381427677"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="381427677"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="562575766"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 12:34:10 +0300
Message-Id: <20220830093411.1511040-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220830093411.1511040-1-jani.nikula@intel.com>
References: <20220830093411.1511040-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/perf: replace BUG_ON() with
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

