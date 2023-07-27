Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9B97645A4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 07:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E7D010E0D6;
	Thu, 27 Jul 2023 05:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA84110E0DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 05:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690436145; x=1721972145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B2pizgxUB3tgHhP8MPP2Ke++Kh9SFrI8NFJneIFSu0Y=;
 b=a9UqmMKxDklQ1fb3MsaI7uJkaU9bYViYSZgc7h/5rTJsjxaOH18o4gI3
 X87X0wQAQ4p4tsdZaAvlvOxVdXKUPbzyUUV1U6pdz2y5bfDuWoyPewFrY
 AhIOQTPQKBlMJW0qiRj2vHt+/pE3lWefdC7LyiH6ymJXeh/Xiwnz+Atun
 6VXARhfjhfF5sEuAK28ACwLKXD/CTvLBb6ieqk5dbLApHLkuF565KEjmY
 cZYJ+bDBUGV97kT8kWa54WehHGeJW9T0dvrgROfVr059WK/BKa/zmDe49
 Yg7N+kcEDQRvq5P6QzVp3dFiAauAXJqlCzYqqBdFKw463w2v1Pgxf7NmP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="368227199"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="368227199"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="676978327"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="676978327"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.8])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 08:35:15 +0300
Message-Id: <20230727053518.709345-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727053518.709345-1-jouni.hogander@intel.com>
References: <20230727053518.709345-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Clear frontbuffer busy
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
index 7f8b2d7713c7..3c0a143264d2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1299,11 +1299,9 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
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

