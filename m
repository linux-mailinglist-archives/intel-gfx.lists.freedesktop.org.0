Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLfhLOvql2lz+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:02:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B26164B8E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C9E10E785;
	Fri, 20 Feb 2026 05:02:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EokXdhCD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D8810E786;
 Fri, 20 Feb 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771563753; x=1803099753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qbDVUCDeFeyZjTkrmRc//AKzCN1EhWo6gdre8okuTRs=;
 b=EokXdhCDhYWKaR/vzkCoAptsMMDHbmRNgVM8i3baslPshRngsCr2JbxP
 vxKz83aAJUmnlJEStPX2KtLed9Uqcp3AqflLZGPySQbkqqhOtr0T2ZN6h
 22kI172mUpIDVmNwUBNjdVcfl5I/gdvLH9G0ryvRoUTv41y8V0tWNCKlB
 gfmL0ousZJYghAo4XJQ5r20EGEFYyvXNTICZSHnZLvaEUTQESPteiP0e1
 4Zvgx9YppMqrBIOH8vIFdE5mzqZOlXEFNTPR6PvH1APUNdbrWMtGYAG+f
 QqVk+aRXWyUmLJ2csYYo0xCEoLN2vFVJWPwRASzc0Qba0HX/YyPRW49N5 g==;
X-CSE-ConnectionGUID: UPYwZ1+CQG+jd0W2zqvyrQ==
X-CSE-MsgGUID: h8nYnUlFTeSca4+PkLqrcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72758235"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72758235"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 21:02:33 -0800
X-CSE-ConnectionGUID: PJFBb6rETxapDtcqcs3uMQ==
X-CSE-MsgGUID: nJ5dql9YRxOgirhUhKCUbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="218894644"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 19 Feb 2026 21:02:31 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/8] drm/i915/backlight: Check luminance_set when disabling
 PWM via AUX VESA backlight
Date: Fri, 20 Feb 2026 10:32:13 +0530
Message-Id: <20260220050217.2453681-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260220050217.2453681-1-suraj.kandpal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 89B26164B8E
X-Rspamd-Action: no action

When deciding what if PWM funcs need to be disabled take into account
luminance_set too. We do this since it is also used to decide if
we are enabling PWM backlight funcs or not.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index cb39696491a1..a921bb4ccacf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -511,7 +511,8 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 
 	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
 
-	if (!panel->backlight.edp.vesa.info.aux_enable)
+	if (!(panel->backlight.edp.vesa.info.aux_enable ||
+	      panel->backlight.edp.vesa.info.luminance_set))
 		panel->backlight.pwm_funcs->disable(old_conn_state,
 						    intel_backlight_invert_pwm_level(connector, 0));
 }
-- 
2.34.1

