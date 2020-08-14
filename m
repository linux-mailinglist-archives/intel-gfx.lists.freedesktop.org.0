Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E4C24474B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37086EB1B;
	Fri, 14 Aug 2020 09:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490E16EB1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:13 +0000 (UTC)
IronPort-SDR: CyHzvmZOU9JpZSvfWF7gEGDyPN5x3J2rnEwwFf5sACaCZPfo+DtXox3c4M6Ljq4rLQPd8f1HGM
 Rm98lGqo5wKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026593"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026593"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:13 -0700
IronPort-SDR: C9ucOHqHNi1zwJjYxmAP/3uSSmsDTGPTRg1v/7e5JVE25fO3iMk0sGw474sxYqp2IpXBmY0zHP
 eknj640X7BbQ==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068624"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:11 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:47 +0530
Message-Id: <20200814024950.26830-5-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] Critical KlockWork Error - Fixes -
 intel_sdvo.c - Possible NullPointerDereference1
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
Cc: Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2da4388e1540..279b2be958bb 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2505,6 +2505,9 @@ static int intel_sdvo_atomic_check(struct drm_connector *conn,
 	struct intel_sdvo_connector_state *new_state =
 		to_intel_sdvo_connector_state(new_conn_state);
 
+	if (!(new_conn_state && old_conn_state && old_state && new_state))
+	    return 0;
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
