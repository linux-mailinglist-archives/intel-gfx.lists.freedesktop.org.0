Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kq6qOccClGkX+gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:55:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EFF148E48
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEF110E440;
	Tue, 17 Feb 2026 05:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UGIgzkj4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E2610E1E9;
 Tue, 17 Feb 2026 05:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771307715; x=1802843715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZJolwOohIGuEpTCS8hg3yVk9Roa/lTw7g+uHKmlSyU0=;
 b=UGIgzkj4Uzt5RAvcm2WMsMFH1cfnp8rb40Vw/6ZggBIpvzxs6PRVxiXy
 arVSh0Gb+hr2SxegVdHCldglfhE/5hoN2oO9PPPsx08zz5KHob0KvAvRc
 EhIIVXGc2ZzwHfSI2vBXBuq8geZDjPv1jhI74DFzuYMTlcT7vm5Ebk2Tx
 MFohnw3T7DMaJxijIzRVSlJdFJ5C3FpNbQd+vc/sxrCLrIg0fnqzCJHUl
 txzBSFWYhKRZdZfovaiCMHmYvx8cOlFC7kfoE5HP/hGj/MR/kJbWM5W1N
 +EUFP/jhwI6jQugDwhtpXqczZX6B4wR7Mw/QnqN1ANjfB53NnLNT8lTq3 A==;
X-CSE-ConnectionGUID: XAv/YvisRWebA5JHdZEpUg==
X-CSE-MsgGUID: ELS+ujXjTUyaZwvWyehLTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="83473757"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="83473757"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:55:14 -0800
X-CSE-ConnectionGUID: VSGu/7y9R6+hrVusPUjnEA==
X-CSE-MsgGUID: +KypM3gnTLGRp77nDGyPXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="218321290"
Received: from vsrini4-xps-8920.iind.intel.com ([10.223.167.75])
 by orviesa004.jf.intel.com with ESMTP; 16 Feb 2026 21:55:12 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@intel.com,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH] drm/displayid: reduce DisplayID checksum error logging to
 debug
Date: Tue, 17 Feb 2026 11:20:01 +0530
Message-ID: <20260217055002.245099-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.45.2
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 53EFF148E48
X-Rspamd-Action: no action

The patch "drm/displayid: add quirk to ignore DisplayID
checksum errors" introduced a mechanism to bypass checksum validation
for certain panels. However, even when ignoring the error, the code
continues to log a DRM_NOTE.

On affected hardware, this results in persistent "DisplayID checksum
invalid" messages in the system log. This noise often misleads users
into thinking there is a critical hardware failure or a functional
regression, despite the quirk successfully handling the issue.

Downgrade the log level from DRM_NOTE to DRM_DEBUG_KMS. This keeps
the diagnostic information available for kernel developers while
silencing the unnecessary warning for end-users.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/drm_displayid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_displayid.c b/drivers/gpu/drm/drm_displayid.c
index 58d0bb6d2676..1f6d78fe29f2 100644
--- a/drivers/gpu/drm/drm_displayid.c
+++ b/drivers/gpu/drm/drm_displayid.c
@@ -69,7 +69,7 @@ validate_displayid(const u8 *displayid, int length, int idx, bool ignore_checksu
 	for (i = 0; i < dispid_length; i++)
 		csum += displayid[idx + i];
 	if (csum) {
-		DRM_NOTE("DisplayID checksum invalid, remainder is %d%s\n", csum,
+		DRM_DEBUG_KMS("DisplayID checksum invalid, remainder is %d%s\n", csum,
 			 ignore_checksum ? " (ignoring)" : "");
 
 		if (!ignore_checksum)
-- 
2.45.2

