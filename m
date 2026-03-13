Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aD9DJP6Zs2kIYwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 06:00:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057B027D529
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 06:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E01C10EADC;
	Fri, 13 Mar 2026 05:00:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hy5wDLaK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF11E10E02F;
 Fri, 13 Mar 2026 05:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773378042; x=1804914042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VgnGAFkg/VpIPU+otyJZypQoXBFvBMZYI240UkF15hU=;
 b=hy5wDLaKFAjygPib6XlSeJzlGT/Ca6rhFYGyTtZKBeTWH0he/CQd+0+8
 soS7qNeOZcISaY6dnS5W0I4IJTwiiUXOP1JXNaenIA1YI5z5ISo61ORu2
 Z/WpZoQjIsMF9YmzJPfmJB2q6UC18oht8YKVxPjegGeWyzEFDMMMuSb0d
 eJNqwBDcgID2XWcAx68Qw3ruA+tLNnxQg7q6ZXpd/N/uiUG/3cn7f/C83
 kI/SKbqGh8LcgPfQ4eBwyYhzKecmGBbTMy3GhnhJH6D3egwLM5Opr3FHx
 szxrKukPwngOisrHrDMiDQsyXqwwN2mzwOyahJMVDk1kKIoWe+EG6u7lb Q==;
X-CSE-ConnectionGUID: X9f0vW7vRKqEcjehjv88Gw==
X-CSE-MsgGUID: dYJwgdOOQo+3H5AacBbFFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="73500270"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="73500270"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 22:00:42 -0700
X-CSE-ConnectionGUID: MQBB1+TgQyGj3WO/ra/maA==
X-CSE-MsgGUID: o+HRqCs7Rd6hZMD9LEoxSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="246286014"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by fmviesa001.fm.intel.com with ESMTP; 12 Mar 2026 22:00:41 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/display: Increase DP_RECEIVER_CAP_SIZE from 15 to 16
 bytes
Date: Thu, 12 Mar 2026 22:00:38 -0700
Message-ID: <20260313050038.2980027-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250702223903.3801654-1-khaled.almahallawy@intel.com>
References: <20250702223903.3801654-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khaled.almahallawy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 057B027D529
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Several Link Layer tests (4.2.2.1-2, 4.2.2.7-9) fail because DPTX doesn't
read DPCD ADAPTER_CAP addresses (0x000F and 0x220F).

4.2.2.1 test states [1]:
"Fail1: Source DUT failed to read the DPCD Receiver Capability field
(DPCD:00000h:0000Fh) through AUX_CH before link training."

4.2.2.2 test states [1]:
"Fail2: Source DUT failed to read the DPCD Extended Receiver Capability
field (DPCD:02200h:0220Fh) through AUX_CH before link training."

Additionally, the spec [2] states:
"The Source device shall respond to Hot Plug event/Hot Re-plug event by
first reading DPCD Link/Sink Device Status registers at DPCD 00200h
through 00205h –or– DPCD 02002h through 0200Fh. If the link is unstable
or lost, the Source device then reads the DPCD Receiver Capabilities
registers at DPCD 00000h through 0000Fh to determine the appropriate
information needed to train the link. The Source device shall then
initiate link training."

Increasing DP_RECEIVER_CAP_SIZE by 1 byte ensures passing the test
conditions for these link layer tests.

[1]: DisplayPort v2.1 Link Layer Compliance Test Specification
sections 4.2.2.1 & 4.2.2.2
[2]: DisplayPort Standard v2.1 - Sec 5.1.4 Source Device Behavior
upon HPD Pulse Detection

v2: Rebase

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 include/drm/display/drm_dp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 8b15d3eeb716..6512883647ce 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -1688,7 +1688,7 @@ enum drm_dp_phy {
 #define DP_LINK_STATUS_SIZE	   6
 
 #define DP_BRANCH_OUI_HEADER_SIZE	0xc
-#define DP_RECEIVER_CAP_SIZE		0xf
+#define DP_RECEIVER_CAP_SIZE		0x10
 #define DP_DSC_RECEIVER_CAP_SIZE        0x10 /* DSC Capabilities 0x60 through 0x6F */
 #define DP_DSC_BRANCH_CAP_SIZE		3
 #define EDP_PSR_RECEIVER_CAP_SIZE	2
-- 
2.43.0

