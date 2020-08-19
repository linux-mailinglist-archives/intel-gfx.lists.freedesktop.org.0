Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9610E249BCC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A6689BA5;
	Wed, 19 Aug 2020 11:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB2C89C13
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 11:30:49 +0000 (UTC)
IronPort-SDR: JCCj8GqpXY8feFImC/kFXVQH0zN7m64KJGCD43z50kpGe8wN7maU4GVR6d4/9I4Q7GrbmRMgzf
 opxYfcywFqPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="135157582"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="135157582"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 04:30:49 -0700
IronPort-SDR: r5+QGHnHwLsGQuNu+s4OXdWKHGBpkJE7XutC1N2HsscAHtrrVL9eCidOuTXEOnv2O4yvAQC/dd
 emUZWxcniJOg==
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="472206443"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 19 Aug 2020 04:30:48 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed, 19 Aug 2020 10:04:07 +0530
Message-Id: <20200819043409.26010-3-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200819043409.26010-1-nischal.varide@intel.com>
References: <20200819043409.26010-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5]
 Critical-KlockWorks-Fix-intel_sdvo.c-Possible-Null
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

This patch fixes Critical Klockwork errors and in this case a Possible
Null Pointer Dereferencing is addressed with a Check before
Dereferencing

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
