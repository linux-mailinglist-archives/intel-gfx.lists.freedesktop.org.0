Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB49A736ABE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 13:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B3210E2CE;
	Tue, 20 Jun 2023 11:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E70110E2CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 11:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687259889; x=1718795889;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+jcL3xROgCwZgdCAh3tg/8VskAtASf82pXWWmwWYMKQ=;
 b=AETofC5f1/R4HBrJscXjB3N3aAiav1ASlLC3/9WESGuFaW4FbZvv5Gjp
 qRu5irRnjEfTFfCA2EhaXqG5i1WIRmiM2cAdCcKAmEsiZ4R0gXT7cqDkr
 nGT/TIoYFxFrGmNg0Q/H/xVfOfdl3AoQOpY45K4HmP+xez6YDidRhqnQn
 ndR9mAqyCswWN8/a26n4ucsYkHS9iymdojoMgKVxOdo/bXQ6UfYM61XZ2
 UQQY32RflrQA834pks7I+rYdkIcLSpK4kD2Z+Rw38YLZAmJt2mLc3kZM9
 3O+OVG6XkI+S4I7aYCaTEHqrd/Uqen1iqIIf9P0NRsPe2xHbbY4K2qrex A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="357319961"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="357319961"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 04:18:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="838171802"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="838171802"
Received: from andreyfe-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.61.87])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 04:18:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 14:17:45 +0300
Message-Id: <20230620111745.2870706-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Use hw.adjusted mode when
 calculating io/fast wake times
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

Encoder compute config is changing hw.adjusted mode. Uapi.adjusted mode
doesn't get updated before psr compute config gets called. This causes io
and fast wake line calculation using adjusted mode containing values before
encoder adjustments. Fix this by using hw.adjusted mode instead of
uapi.adjusted mode.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8475
Fixes: cb42e8ede5b4 ("drm/i915/psr: Use calculated io and fast wake lines")
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index df517c395da7..04ab034a8d57 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1044,9 +1044,9 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 	}
 
 	io_wake_lines = intel_usecs_to_scanlines(
-		&crtc_state->uapi.adjusted_mode, io_wake_time);
+		&crtc_state->hw.adjusted_mode, io_wake_time);
 	fast_wake_lines = intel_usecs_to_scanlines(
-		&crtc_state->uapi.adjusted_mode, fast_wake_time);
+		&crtc_state->hw.adjusted_mode, fast_wake_time);
 
 	if (io_wake_lines > max_wake_lines ||
 	    fast_wake_lines > max_wake_lines)
-- 
2.34.1

