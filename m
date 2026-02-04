Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCGVB6Zxg2mFmwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 17:19:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A02EA193
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 17:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF98B10E366;
	Wed,  4 Feb 2026 16:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HY9JViox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C9BF10E366
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Feb 2026 16:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770221986; x=1801757986;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=krWf8C6cI0KqrUZwEPjnXWfP0mK3NBfGXouQ4gzwC6A=;
 b=HY9JVioxtWyVUL8+Nhc7QgjzrQm33aALrQlGx80Woj8snyh3j8Rh/ZP3
 wW0gxMNfcqM5HH55IOGG8CqqaoZB8pdolYN43tthlxgrUtdAK4VR1MqmQ
 +bPD5lv8CAbRv6KHXzGq9ZRdymSgh90Yi8Y7fwYspdrikJx4sVcNqyJPj
 5jH5C5Mdo49EOmLwzjoy5lU4f/89vLjAnZVAJBI16B8n0RRNkMNSUIjwl
 anQjhoakvvNPAW4Hw0d44wjLoXmIWkIu9+pd74D7AzWXdjXUNHTqAFN4f
 J+Gibpkb7WuocwB2DtlyPlZntcOGnoAnOTFRbQ3fW8TKzchM5wCNanlHH Q==;
X-CSE-ConnectionGUID: HqXevy55QRSBD6NEV4B7QA==
X-CSE-MsgGUID: en0XaA1CScKTwQLHwh8rEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="58986904"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="58986904"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 08:19:46 -0800
X-CSE-ConnectionGUID: +CTUKTMRQ9GJzhZKSVw0MQ==
X-CSE-MsgGUID: amjiVpR5SgGAIoZufLIDQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210212818"
Received: from live-gta-imageloader.fm.intel.com (HELO
 DUT4086LNL.fm.intel.com) ([10.105.10.169])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 08:19:46 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 jani.nikula@intel.com
Subject: [PATCH] drm/i915/gvt: Swap read and write checks
Date: Wed,  4 Feb 2026 16:19:46 +0000
Message-ID: <20260204161945.8127-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 89A02EA193
X-Rspamd-Action: no action

The function intel_gvt_i2c_handle_aux_ch_write currently does not
support the DP_AUX_I2C_WRITE operation.  Notably, we check if
op & 0x1 == DP_AUX_I2C_WRITE (one), and if it does not, assert that
op & 0x1 == DP_AUX_I2C_READ (zero).  This is unnecessary because if
op & 0x1 != 1, then op & 0x1 == 0.  But beyond that, it probably makes
more sense to check for the condition that is implemented, rather than
check for the condition that is not.

Swap the conditions.  We can also get rid of the unnecessary drm_WARN_ON
while we're here.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gvt/edid.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 021afff1cd5d..ca5b54466a65 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -535,16 +535,7 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
 					i2c_edid->edid_available = true;
 			}
 		}
-	} else if ((op & 0x1) == DP_AUX_I2C_WRITE) {
-		/* TODO
-		 * We only support EDID reading from I2C_over_AUX. And
-		 * we do not expect the index mode to be used. Right now
-		 * the WRITE operation is ignored. It is good enough to
-		 * support the gfx driver to do EDID access.
-		 */
-	} else {
-		if (drm_WARN_ON(&i915->drm, (op & 0x1) != DP_AUX_I2C_READ))
-			return;
+	} else if ((op & 0x1) == DP_AUX_I2C_READ) {
 		if (drm_WARN_ON(&i915->drm, msg_length != 4))
 			return;
 		if (i2c_edid->edid_available && i2c_edid->target_selected) {
@@ -553,6 +544,13 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
 			aux_data_for_write = (val << 16);
 		} else
 			aux_data_for_write = (0xff << 16);
+	} else {
+		/* TODO
+		 * We only support EDID reading from I2C_over_AUX. And
+		 * we do not expect the index mode to be used. Right now
+		 * the WRITE operation is ignored. It is good enough to
+		 * support the gfx driver to do EDID access.
+		 */
 	}
 	/* write the return value in AUX_CH_DATA reg which includes:
 	 * ACK of I2C_WRITE
-- 
2.43.0

