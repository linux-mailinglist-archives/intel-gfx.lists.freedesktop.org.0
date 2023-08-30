Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0929E78D3D4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0820810E4D6;
	Wed, 30 Aug 2023 08:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5448410E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382672; x=1724918672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+aaR7GuMknDpFLUIZ0PrAT5/0EfU92UjSaRDN4Hw1ew=;
 b=fT0dKxr42ZwanZEkkHCJKNBJtg1CHo/nI8VeNw+59NBErllYTzQsZSEw
 wjCh3Z9oTPwbYPeFOtjxGwdBlnwC1i8vZYLdUTCLAPkluam9+f4/ovPa1
 pRb8AHiYxWVWemuluUy3BfW7LL0p/Uss7ibzSFCrRO8AwCJazmqDeIkjn
 6WLaCJAQoq6H5msE9QZWb1O+hg57NkuBMRqDLjT2ZR0/t/5hIla5fcj3K
 K/RDcGPIMk+/ILx8N5ECY9fEt0ag6hJXW54TvlfFzS5YOE55b3ZVgiJRM
 CuB5PBfKuYQZKKls0DHw/c58XfOge90CjLltx21zTwbkRK3Q5a2xtYxVy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439526918"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="439526918"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882646703"
Received: from alorinti-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.33.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 11:02:16 +0300
Message-Id: <20230830080219.2529281-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230830080219.2529281-1-jouni.hogander@intel.com>
References: <20230830080219.2529281-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/fbc: Clear frontbuffer busy
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

