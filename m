Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Y9gWIekenWnQMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 441DF181784
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF05B10E4A9;
	Tue, 24 Feb 2026 03:45:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDj3I9j/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BEDB10E4A2;
 Tue, 24 Feb 2026 03:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771904739; x=1803440739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kXH0FNbz+/Mh7fUinAPVLG24+YXfHl2cWk0ZsZABYgk=;
 b=MDj3I9j/PBbtiKxahrfzzOmEdXiXOq5JKo/rCdSNWZVcBLO5u72QvXLS
 eC5pBxGKU5rD6vKn7OCV4tRMOv6kbLMaTJcatSJVR2IZPSwFd+BEi7ulf
 rGywQ0GNtza/SuDo+l2O68ZENiVRgu1vy3i4gw84af5kd+ufGPs2KVGfm
 QEbFchn6hhfi8AJhlJLDK/8SKfng8Otcm+cWA25Vd3l1rblFx5+Mnr0oE
 cXmfl2BbN2803sfQYnx972tZEf/akPGvvUxSb0DCEIz6Vuyo9o3N9rTuD
 Y39YVtq4uL7OnKNQJtIE4elazFpjX6EcWPY7AdKh6USd5dWjEuRNyPQTp A==;
X-CSE-ConnectionGUID: ALNK9r+jR+CI03IQJcVmRw==
X-CSE-MsgGUID: netHP40WS4mzFKofYUEYdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72817865"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72817865"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:45:38 -0800
X-CSE-ConnectionGUID: pFGgfmxIQmKu9FmbcS486Q==
X-CSE-MsgGUID: /0DfYrn/Tc6hkkd4wLX8kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215010633"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 23 Feb 2026 19:45:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 5/8] drm/i915/backlight: Short circuit
 intel_dp_aux_supports_hdr_backlight
Date: Tue, 24 Feb 2026 09:15:23 +0530
Message-Id: <20260224034526.2730130-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224034526.2730130-1-suraj.kandpal@intel.com>
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 441DF181784
X-Rspamd-Action: no action

intel_dp_aux_supports_hdr_backlight() prints debug message for
intel HDR backlight version. This is fine when dealing with eDP 1.4b
and lower. When we are talking about eDP 1.5 it causes confusion in
logs since we need to use VESA AUX backlight functions but this
print causes confusion as to which path code take.
Short circuit this function with a eDP version check. Make sure this
is only called if eDP <= 1.4b

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a921bb4ccacf..c7143869bafd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -701,8 +701,8 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * backlight interface at all. This means that the only sensible way for us to detect both
 	 * interfaces is to probe for Intel's first, and VESA's second.
 	 */
-	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
-	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
+	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
+	    intel_dp_aux_supports_hdr_backlight(connector)) {
 		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using Intel proprietary eDP backlight controls\n",
 			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_hdr_bl_funcs;
-- 
2.34.1

