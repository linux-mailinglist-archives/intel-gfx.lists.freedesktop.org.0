Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BaDIM+IGGpnkwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 20:26:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6E65F6403
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 20:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D15E10F523;
	Thu, 28 May 2026 18:26:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EYS6U2/H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9272B10F523;
 Thu, 28 May 2026 18:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779992780; x=1811528780;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dFBARpaCKGy3VnudxsBCR8m/OvKCOPEufulZ4gXYsYs=;
 b=EYS6U2/Hcw6h8F2drzStIcgPkTQV+8u9JrsaN+s8ZxScXOJObrv1nCV6
 WH1LqIr6iFj3EiXIAAH/yXShv0v+amBD0sOlqEAY+wL8p30vTMAprfQjs
 apDZb0tv4yhH5IHZqheA16WxSmx+XLRArnZXXkG60m4K7kw1reIwkMfiQ
 ILMRfvQum8sXaeqiCFWHWUHc/ws031mNkUPZHxJsmcWPBGXwfF+TxigUG
 z6CayO7idY8ao/nBgwjLHfZiZHyUhoSbOJ57QJgfYBSjKXSZcDLk5NeaV
 8GR4grgnOphvkxbbcJ3F1zs62EGEk3MLu1jHpZVkV4zzHCNgeEpU11FYC g==;
X-CSE-ConnectionGUID: eSG5qkc6SBKzc0I4uDv/0Q==
X-CSE-MsgGUID: ISasLs6OSoKGUSbNoTmP+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="91531551"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="91531551"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 11:26:19 -0700
X-CSE-ConnectionGUID: 9XGZkhmNR+Cw92G+16CGug==
X-CSE-MsgGUID: 6uvLocUOQPWVIT62q9IVhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247574226"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.79])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 11:26:17 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 matthew.d.roper@intel.com, shawn.c.lee@intel.com
Subject: [PATCH] drm/i915/display: update BW buddy initialization for LPDDR4
 and LPDDR5
Date: Thu, 28 May 2026 21:26:00 +0300
Message-ID: <20260528182601.205595-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 0F6E65F6403
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pcode reports the number of subchannels for LPDDR4 and LPDDR5.
But the page mask selection table is based on the channels. So
adjust the number of channels for LPDDR4 and LPDDR5 so that the
correct page mask can be picked. There are two subchannels per
channel.

Bspec: 68871
Suggested-by: Ville Syrjala <ville.syrjala@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2e51dfcd5dce..758ce1287cac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1614,12 +1614,18 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 	const struct dram_info *dram_info = intel_dram_info(display);
 	const struct buddy_page_mask *table;
 	unsigned long abox_mask = DISPLAY_INFO(display)->abox_mask;
+	u8 channels = dram_info->num_channels;
 	int config, i;
 
 	/* BW_BUDDY registers are not used on dgpu's beyond DG1 */
 	if (display->platform.dgfx && !display->platform.dg1)
 		return;
 
+	/* For LPDDR4 / LPDDR5, pcode reports subchannels. */
+	if (dram_info->type == INTEL_DRAM_LPDDR4 ||
+	    dram_info->type == INTEL_DRAM_LPDDR5)
+		channels /= 2;
+
 	if (intel_display_wa(display, INTEL_DISPLAY_WA_1409767108))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
@@ -1627,7 +1633,7 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 		table = tgl_buddy_page_masks;
 
 	for (config = 0; table[config].page_mask != 0; config++)
-		if (table[config].num_channels == dram_info->num_channels &&
+		if (table[config].num_channels == channels &&
 		    table[config].type == dram_info->type)
 			break;
 
-- 
2.43.0

