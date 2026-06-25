Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id La/lJGwyPWpYywgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:51:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF1E6C642F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:51:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EQGkW3aw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8164A10F10A;
	Thu, 25 Jun 2026 13:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9956E10F10A;
 Thu, 25 Jun 2026 13:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782395497; x=1813931497;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Ms9ZwlXGgSC+ZWp84GBwMd0ABoFw1BjQCGie0NcqNY=;
 b=EQGkW3awGToTL5uguL1DNw451msCl8KwI9Y4EwHUA3IUoeuSrItZkuCf
 Di6PojLkLlGDqMhrDwPWqTD1vUnsRGsjcHX/nXl2EmMDGYtfrNqbQxGhn
 5Tz1THeqSQPhn206bQ4XJBQKXBwnmD3Nvc1+PmwsOpb9PDMx0ZFTm4alK
 fK8ylfjxqstT/AQuEcJ2liYFLT2n5sVUpi9OVW1aAKVVdkIwTSW0tvJWC
 TDDHelB4sNY7WrfFzrhVt1P7f7UP2KY3qAkzBoPiZ2jXZwDhcbeLRNeE4
 +WFdfdrvJeu0qoRGs4po+zQ/ELCFT2jcqOY2JuiczwYVDZ6rQ3iGFYMyI A==;
X-CSE-ConnectionGUID: c/SieaNrQ6GsM628klk6Bw==
X-CSE-MsgGUID: xCtntpGfS1aLCnSyfUm1GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="87015663"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="87015663"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:51:37 -0700
X-CSE-ConnectionGUID: U3GQvWICS3ajz5HL+lqFGQ==
X-CSE-MsgGUID: L7WyAELvQX+xnhT9VnN6eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="250901072"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.126])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:51:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Martin Hodo <martin.hodo@intel.com>,
 stable@vger.kernel.org, Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@intel.com>
Subject: [PATCH] drm/i915/bios: range check LFP Data Block panel_type2
Date: Thu, 25 Jun 2026 16:51:30 +0300
Message-ID: <20260625135130.1067872-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECF1E6C642F

While the panel_type from LFP Data Block is range checked, panel_type2
is not. Add a few helpers for range checking, and use them to not only
check panel_type2, but also imrove clarity and correctness in the panel
type selection.

Discovered using AI-assisted static analysis confirmed by Intel Product
Security.

Reported-by: Martin Hodo <martin.hodo@intel.com>
Fixes: 6434cf630086 ("drm/i915/bios: calculate panel type as per child device index in VBT")
Cc: <stable@vger.kernel.org> # v6.0+
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Ville Syrjälä <ville.syrjala@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 29 +++++++++++++++++------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 15ebadc72b88..0c420019e46a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -623,6 +623,16 @@ get_lfp_data_tail(const struct bdb_lfp_data *data,
 		return NULL;
 }
 
+static bool is_panel_type_valid(int panel_type)
+{
+	return panel_type >= 0 && panel_type < 16;
+}
+
+static bool is_panel_type_valid_or_pnp(int panel_type)
+{
+	return is_panel_type_valid(panel_type) || panel_type == 0xff;
+}
+
 static int opregion_get_panel_type(struct intel_display *display,
 				   const struct intel_bios_encoder_data *devdata,
 				   const struct drm_edid *drm_edid, bool use_fallback)
@@ -640,15 +650,21 @@ static int vbt_get_panel_type(struct intel_display *display,
 	if (!lfp_options)
 		return -1;
 
-	if (lfp_options->panel_type > 0xf &&
-	    lfp_options->panel_type != 0xff) {
+	if (!is_panel_type_valid_or_pnp(lfp_options->panel_type)) {
 		drm_dbg_kms(display->drm, "Invalid VBT panel type 0x%x\n",
 			    lfp_options->panel_type);
 		return -1;
 	}
 
-	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
+	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2) {
+		if (!is_panel_type_valid_or_pnp(lfp_options->panel_type2)) {
+			drm_dbg_kms(display->drm, "Invalid VBT panel type 2 0x%x\n",
+				    lfp_options->panel_type2);
+			return -1;
+		}
+
 		return lfp_options->panel_type2;
+	}
 
 	drm_WARN_ON(display->drm,
 		    devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
@@ -762,13 +778,12 @@ static int get_panel_type(struct intel_display *display,
 				    panel_types[i].name, panel_types[i].panel_type);
 	}
 
-	if (panel_types[PANEL_TYPE_OPREGION].panel_type >= 0)
+	if (is_panel_type_valid(panel_types[PANEL_TYPE_OPREGION].panel_type))
 		i = PANEL_TYPE_OPREGION;
 	else if (panel_types[PANEL_TYPE_VBT].panel_type == 0xff &&
-		 panel_types[PANEL_TYPE_PNPID].panel_type >= 0)
+		 is_panel_type_valid(panel_types[PANEL_TYPE_PNPID].panel_type))
 		i = PANEL_TYPE_PNPID;
-	else if (panel_types[PANEL_TYPE_VBT].panel_type != 0xff &&
-		 panel_types[PANEL_TYPE_VBT].panel_type >= 0)
+	else if (is_panel_type_valid(panel_types[PANEL_TYPE_VBT].panel_type))
 		i = PANEL_TYPE_VBT;
 	else
 		i = PANEL_TYPE_FALLBACK;
-- 
2.47.3

