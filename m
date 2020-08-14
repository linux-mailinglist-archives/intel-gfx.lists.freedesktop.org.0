Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E04244748
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549216E2F2;
	Fri, 14 Aug 2020 09:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB3B6E2EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:09 +0000 (UTC)
IronPort-SDR: V/lX4zea3TbDM6A5PY8qDfxnCByF15uj9k7Ta6S+3Z3BpCd7+NLulNYeARg58q7KLQpoeMUA+Y
 tf5LcXJP52ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026586"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026586"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:08 -0700
IronPort-SDR: VZYWOQ0KAQFsVEnl5mkciuc42xbXQGAxt4pXCtUM1H2hrtIdXtzHOobOhpWMKvqnlQrKH7ixsG
 vlKfbw0PLCPw==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068599"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:07 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:44 +0530
Message-Id: <20200814024950.26830-2-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] Critical KlockWork Error - Fixes -
 intel_atomic.c - Possible NullPointerDereference1
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
 drivers/gpu/drm/i915/display/intel_atomic.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 630f49b7aa01..49ca65b207df 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -192,6 +192,8 @@ intel_connector_needs_modeset(struct intel_atomic_state *state,
 
 	old_conn_state = drm_atomic_get_old_connector_state(&state->base, connector);
 	new_conn_state = drm_atomic_get_new_connector_state(&state->base, connector);
+	if (!(old_conn_state && new_conn_state))
+		return 0;
 
 	return old_conn_state->crtc != new_conn_state->crtc ||
 	       (new_conn_state->crtc &&
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
