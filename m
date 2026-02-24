Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AI5jMekenWnQMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCF918178D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137A910E4AB;
	Tue, 24 Feb 2026 03:45:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dc5+APrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBAF10E4A6;
 Tue, 24 Feb 2026 03:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771904740; x=1803440740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iyMM09Bl4Syx1VSYEVKmJt75bprmqjOfS2Y/w9cmAfM=;
 b=Dc5+APrDyQBgTNYt+RlMMr2IqnITPjIeTFPod8q1uxXSxGofDK4Y2YTU
 SqjwTYAwHBNirsZp4hjm2hVUQdvIvKIXyq48Pbr8g5DpU3ciyoENu214c
 A13qIacO07AHbm5RRoCjc1J/8AsO/wXwGYu9HUkEuK73A4JgcCr63C0u0
 v6vlXA/z/FoDEYO+mEJeQ2eqB0fnhNii26eIejT2gUf8IYvR6i0VH6IO2
 YcrOiBK1MefQ05/jvhslspVius9A65n/Tywfnd87o75FCXkE/Tod3c6DG
 Bro0If4nbWvRbtGcfgsPIPAh6yWcIXTTMF3kTsyMLzuivHXz7B2ocDezS g==;
X-CSE-ConnectionGUID: 0yB6Vn0eQDW9ZvZRLTlQTA==
X-CSE-MsgGUID: 0X4Gi4o5SPOSgjIaZM4SAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72817866"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72817866"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:45:40 -0800
X-CSE-ConnectionGUID: pAGkeReNT3WBrgB+7/c2Lw==
X-CSE-MsgGUID: jz1fgPZ1Qf2o20ybaGkodw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215010636"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 23 Feb 2026 19:45:38 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 6/8] drm/i915/backlight: Update debug log during backlight
 setup
Date: Tue, 24 Feb 2026 09:15:24 +0530
Message-Id: <20260224034526.2730130-7-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 9BCF918178D
X-Rspamd-Action: no action

With luminance_set which represents PANEL_LUMINANCE_OVERRIDE, we
have another variable to decide if we use PWM or DPCD.
Make drm_dbg_kms log represent that.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
v1 -> v3:
- Make commit message simpler (Arun/Nemesa)

 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index c7143869bafd..043c9aef2ea6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -539,7 +539,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
-		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable));
+		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable ||
+				    panel->backlight.edp.vesa.info.luminance_set));
 	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
-- 
2.34.1

