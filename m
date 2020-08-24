Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 541AE24FBBA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 12:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE316E1D7;
	Mon, 24 Aug 2020 10:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262FC6E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 10:41:57 +0000 (UTC)
IronPort-SDR: 4u4cqHx+DPUtcDOV9jF81QTQpu711TBkUUvI6cNdWOD/jEpCSRKClVMjk5YQInjiRnovBM9klg
 FjyKfIo1BI3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="153285906"
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="153285906"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 03:41:56 -0700
IronPort-SDR: 9q3POlV+9xgOJ4O9ZPCatKcaytEE3vJlIf+RpIklQmuhXYZ2Yi3ea7dfahqd620hIeg9a2bpaU
 RTql7V7710Eg==
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="473869531"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Aug 2020 03:41:55 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Mon, 24 Aug 2020 09:15:54 +0530
Message-Id: <20200824034556.26626-3-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200824034556.26626-1-nischal.varide@intel.com>
References: <20200824034556.26626-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] Fixing a Possible Null Pointer Dereference.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This Patch addresses a Possible Null Pointer Dereference of variables
new_stae, new_conn_state and old_state, old_conn_state in intel_sdvo.c

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2da4388e1540..186a2d695bb6 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2505,6 +2505,9 @@ static int intel_sdvo_atomic_check(struct drm_connector *conn,
 	struct intel_sdvo_connector_state *new_state =
 		to_intel_sdvo_connector_state(new_conn_state);
 
+	if (!(new_conn_state && old_conn_state && old_state && new_state))
+		return 0;
+
 	if (new_conn_state->crtc &&
 	    (memcmp(&old_state->tv, &new_state->tv, sizeof(old_state->tv)) ||
 	     memcmp(&old_conn_state->tv, &new_conn_state->tv, sizeof(old_conn_state->tv)))) {
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
