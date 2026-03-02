Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDToCssMpWn60QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F311D2DEF
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 05:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F3A210E429;
	Mon,  2 Mar 2026 04:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SXGUvNrC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8181510E428;
 Mon,  2 Mar 2026 04:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772424388; x=1803960388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ky6Eh57VmT9JuJyhmh3RLC3H+RO2/nB3WtiI3899s48=;
 b=SXGUvNrCbW43K8LYok06+TSb9/oiHGLgUUPuJo2FOhGRSQRJnxSS4Nv0
 XP5zvqawCYvWAGsCl5L8DjVIZygi0+2EugWwFIBPx4ETvWnCo2jXKLwJm
 0dlFXUaFQZO11YMOnjaBlnX3tD5WiLC7dfzqufU3/RlPsiR3V2tHkC/i4
 an3/Mwni84yVq+85NlPqWCHSe4Z8BcPRctRHNY4IUGeQZ/PyJjLAL11NJ
 rZypcUiUI8x7gZPAtvWMLHsTRvexn6MO9O75atl9+X6ERCaELRO+2BmKy
 QbEcZvhn514AV7hUJ6pibL+xB6Khz89jF7KmPgdrKJ2YMCKT97oH3/74L w==;
X-CSE-ConnectionGUID: RrrHLngqR2+zVBXZF8eu1w==
X-CSE-MsgGUID: U8scwePYT4yl6vj73H/vPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77294444"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77294444"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 20:06:28 -0800
X-CSE-ConnectionGUID: Bfe+LiVMQY2T34/ntg5uOQ==
X-CSE-MsgGUID: CYASz1krSYOsS2wFZKEkig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217541020"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 01 Mar 2026 20:06:27 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RESEND 6/8] drm/i915/backlight: Update debug log during backlight
 setup
Date: Mon,  2 Mar 2026 09:36:11 +0530
Message-Id: <20260302040613.3324049-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260302040613.3324049-1-suraj.kandpal@intel.com>
References: <20260302040613.3324049-1-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 26F311D2DEF
X-Rspamd-Action: no action

With luminance_set which represents PANEL_LUMINANCE_OVERRIDE, we
have another variable to decide if we use PWM or DPCD.
Make drm_dbg_kms log represent that.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 6b321c384588..af05b30a0a7a 100644
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

