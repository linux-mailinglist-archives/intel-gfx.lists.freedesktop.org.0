Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLqRGpPr+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4199B4E1F83
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF48110EF3F;
	Thu,  7 May 2026 01:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bziLuEuL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1238210EF3C;
 Thu,  7 May 2026 01:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117521; x=1809653521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BjRtgV7GUoS5z+AF2rFh1DtjUzVdt3h3jCi05Ks4sm4=;
 b=bziLuEuLKh03iURfxRuX3LZ0mWBKZGY2Z0+9bnJutyvXMF5x2VJN0HZi
 bh8rGe1vcdD+JRmnNHBDIKkuLtKA+7Rjg9FBqDVBc/Cv7cZ3gjvQlTO1d
 NB4Qj7jWDLDPMsaJDwvJPttuh+bGQknqV3IHJMhCdXylaZTpCo/YAukIz
 CpfpBCA1hYFKUnh9T9gTwEu6nZhO/fPt1Pv0KVz6AWKpvL/ap5eBxNUyC
 FoG9s2JNfBPuGSEllBCNtrVcjoo2J3AKf814z6TXMViIVsjMhvro35MaX
 VzLvslxMFa2byFb760X3hK/2mVV9PJUlAOg+WwlpkIjvBYW0PfJ3de8xD Q==;
X-CSE-ConnectionGUID: 4RVRVbmjRoyE/0pbfjeIhQ==
X-CSE-MsgGUID: 6SX9Vg3mQ/+/pxDuDjLOSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089024"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089024"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:01 -0700
X-CSE-ConnectionGUID: A851g/UgRTObuxOT/uhc1w==
X-CSE-MsgGUID: VQEf50lIQACi/GCNHqwitw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692765"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:00 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 08/31] drm/i915/bios: de/allocate buf_trans for each port
Date: Thu,  7 May 2026 03:31:14 +0200
Message-ID: <20260507013137.527510-9-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: 4199B4E1F83
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Allocate intel_ddi_buf_trans buffer per port if requested. Request is
considered invalid if .use_vbt_vswing field is unset and VBT version is
less than 218. Do not allocate buffer if not requested or request is
invalid.

Deallocate buffer for each requesting port on driver removal.

v2->v3
- change kzalloc() into kzalloc_obj()
- remove null pointer check before kfree()

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a3f0334c3a582..fa9f21c5c6134 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2659,7 +2659,15 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 
 static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 {
+	struct intel_ddi_buf_trans *buf_trans;
+
 	devdata->buf_trans = NULL;
+
+	if (devdata->display->vbt.version < 218 || !devdata->child.use_vbt_vswing)
+		return;
+
+	buf_trans = kzalloc_obj(*buf_trans);
+	devdata->buf_trans = buf_trans;
 }
 
 static bool
@@ -3398,6 +3406,8 @@ void intel_bios_driver_remove(struct intel_display *display)
 				 node) {
 		list_del(&devdata->node);
 		kfree(devdata->dsc);
+		kfree(devdata->buf_trans);
+
 		kfree(devdata);
 	}
 
-- 
2.45.2

