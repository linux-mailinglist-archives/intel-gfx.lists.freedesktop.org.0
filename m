Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFs9AOsenWnQMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FC918179B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F8D710E49B;
	Tue, 24 Feb 2026 03:45:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OLK5X4dB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8326210E4A9;
 Tue, 24 Feb 2026 03:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771904744; x=1803440744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FNL5GpEFF3IWd8vsecUluyK1p6kZ2nrv2YqjHeH2h3Q=;
 b=OLK5X4dBBTZ73PA5csOBwMyIQZe5EnTtgoT+xUpMDvkU7qhynRVqCnJT
 yVZNo1wV9wJM/kFMQIJ8895fUzFoB46fVLzeR6op+VKL+Enj5whVPNtzg
 TerG0CcqDtvHi2MbHZOgrygPrFta24ik2poAJUPzQzL4pBs6EXTi/DgTF
 Wcwng8ze7XLVkdDWqVECpeCG5PWkvXv5kVEvV8MYVVrrDWHTi43Fkqdwe
 qiy8R5Nw7nvWTe39Qi5UjVSXDmExM9jHnbuxzShrI0jwb7ty4A5EeLD6G
 0EfGnSlTgCthmsDe0HItdUcWRUgHLdCjkeo1KsvzKyp9PVXMzKgc3hISS A==;
X-CSE-ConnectionGUID: mkV2kp1MRcCCG8j5X5ycQg==
X-CSE-MsgGUID: amvW5MjUScCXBLdJAQ20tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72817869"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72817869"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:45:43 -0800
X-CSE-ConnectionGUID: CGzO2Ti3Q5+M2OK4pWfXfQ==
X-CSE-MsgGUID: 8XTrj1+PS3eSPAU9wxxHYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215010647"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 23 Feb 2026 19:45:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 8/8] drm/i915/backlight: Use default/max brightness for
 INTEL AUX HDR backlight init
Date: Tue, 24 Feb 2026 09:15:26 +0530
Message-Id: <20260224034526.2730130-9-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: C6FC918179B
X-Rspamd-Action: no action

If the brightness fetched from VBT/previous state is 0 on backlight
initialization, then set the brightness to a default/max value.
Whenever the minimum brightness is reported as 0 there are chances
we maybe sometimes end up with blank screen. This confuses the user
into thinking the display is acting weird. This occurs in eDP 1.4b
when we use proprietary INTEL AUX HDR DPCD registers to manipulate
brightness via luminance values.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
v1 -> v2:
- Let users set brightness to 0, make it so that it's just not
done by default (Arun)

v1 -> v2:
- Update commit header & message (Arun)

 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index aac6cdb5b69b..725370bcfa3b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -442,6 +442,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 
 	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
 	panel->backlight.enabled = panel->backlight.level != 0;
+	if (!panel->backlight.level)
+		panel->backlight.level = panel->backlight.max;
 
 	return 0;
 }
-- 
2.34.1

