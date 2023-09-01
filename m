Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026BE78FAEE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 11:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EB710E759;
	Fri,  1 Sep 2023 09:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB29B10E758
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 09:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693560913; x=1725096913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+aaR7GuMknDpFLUIZ0PrAT5/0EfU92UjSaRDN4Hw1ew=;
 b=ijxakUEE9jRRF+93EPetM57V6jKKcDmviPo3lFCTOu1/1w5auoybiMoH
 v5gNKyDAzH/XcFNr+mYqV8KT8jR4FDWtlmw4pNAPPiJbDwWjx0O/0hC04
 NT3inoMr8mMP3U12ES6tZXLV0B+gsKxuCKylkKTS435N63Q5TMG0AbEeR
 aU8wjRefLV+r+MN33GP53bT01tuZrQKSJH3zgf+SXe/DhynGvwJrxzCUH
 7K0AFc7fFaTNcgUB8NQ6NeA2A5tgP1BP9WRmvHHYJRsevMewU9jPoh4DZ
 F7gdnqxLu3yEQ8qCs3hzQ0+PcO2NDOxkjWGAqG5Uv+qvowUEkPx9OugDt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="378906674"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="378906674"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689709240"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="689709240"
Received: from haslam-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.58.201])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 12:34:57 +0300
Message-Id: <20230901093500.3463046-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901093500.3463046-1-jouni.hogander@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
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

We are planning to move flush performed from work queue. This
means it is possible to have invalidate -> flip -> flush sequence.
Handle this by clearing possible busy bits on flip.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1c6d467cec26..817e5784660b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1307,11 +1307,9 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 	lockdep_assert_held(&fbc->lock);
 
 	fbc->flip_pending = false;
+	fbc->busy_bits = 0;
 
-	if (!fbc->busy_bits)
-		intel_fbc_activate(fbc);
-	else
-		intel_fbc_deactivate(fbc, "frontbuffer write");
+	intel_fbc_activate(fbc);
 }
 
 void intel_fbc_post_update(struct intel_atomic_state *state,
-- 
2.34.1

