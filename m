Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB7628C967
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 09:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 161296E8AA;
	Tue, 13 Oct 2020 07:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3B9C6E8AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 07:31:27 +0000 (UTC)
IronPort-SDR: BCBxtaqJPaMz2UavdVj/oxnsGXC+y6USIc+rZm+u+ZsupVSzXdhiD5ZE0P7FjYaz4dJtwXMEaX
 QeEo9S9KXnyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165927658"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="165927658"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 00:31:27 -0700
IronPort-SDR: 9Pk2qn7xRhlUWSiZoFkefNESgQFIoqykq8byteuaIvhh63qr7Cw3ukFdEaz3bY9SYAUFYXDWgc
 D0wAyM9Ni1RA==
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="313712146"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 00:31:15 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 12:50:43 +0530
Message-Id: <20201013072044.7278-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201013072044.7278-1-anshuman.gupta@intel.com>
References: <20201013072044.7278-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Update CP property in
 update_pipe
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When crtc state need_modeset is true it is not necessary
it is going to be a real modeset, it can turns to be a
update_pipe instead of modeset.
This turns content protection property to be DESIRED and hdcp
update_pipe left with property to be in DESIRED state but
actually hdcp->value was ENABLED.
This caught with DP MST setup, when disabling HDCP on a connector
sets the crtc state need_modeset to true for all crtc driving
the other DP-MST topology connectors.

Fixes: 33f9a623bfc6 ("drm/i915/hdcp: Update CP as per the kernel internal state")
Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b2a4bbcfdcd2..cbe3ee661bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2220,6 +2220,10 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		/* Avoid enabling hdcp, if it already ENABLED */
 		desired_and_not_enabled =
 			hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
+
+		if (!desired_and_not_enabled && !content_protection_type_changed)
+			schedule_work(&hdcp->prop_work);
+
 		mutex_unlock(&hdcp->mutex);
 	}
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
