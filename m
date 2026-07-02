Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WNWgOEpiRmpvSQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:06:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAD56F81CD
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:06:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fzYOzEtg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C0A10F381;
	Thu,  2 Jul 2026 13:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 868AA10F389;
 Thu,  2 Jul 2026 13:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782997574; x=1814533574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XI6sZtE1N+VvmNRtYJ+mzhfcmqL0TttJgeD3UfddJjI=;
 b=fzYOzEtg8OvuWfeOUhiOfzsEqO6Lv9CfKWR5F3IPZrDcmlawDylWUp9H
 MSXlfpFHyIhS96dox/V45Ry0de5VTiq9516hiN919jeDsYStzhTYA/Arx
 wDvCg4zXLgD2BAN5ZdhLROp1bleRb1Rdh3ZUnRdFyTdbH0HtMRhqpe30j
 3IYGGuWUWabljs3l8HwYWvH6UpvGso7FoLDitWRzmaPaZ7DWinGhLgGta
 ivjR5Adp27WibIpzhkheRVoSRg1fEZKI2ho8/bqnt7+wUVWDELJXyKNOR
 bLqGoartp1dCq1DSoenDp7W6MQxeL2VEXizleLFqptDKvYwe7BSJV/3OJ w==;
X-CSE-ConnectionGUID: P6/cnOYETyS8q8gNa7Lmmw==
X-CSE-MsgGUID: 0qN9tI5UTR+E5YDASXfBFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83621203"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83621203"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:06:14 -0700
X-CSE-ConnectionGUID: PYFJYHrXR3mnlH5+Pk3geg==
X-CSE-MsgGUID: jhydkSOdSiS8FhwBGhtKzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="257748944"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 02 Jul 2026 06:06:11 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 0/2] drm/i915/audio: Add HDMI TMDS audio bandwidth check
Date: Thu,  2 Jul 2026 18:12:06 +0530
Message-Id: <20260702124208.2401160-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBAD56F81CD

This series adds audio bandwidth validation for HDMI TMDS mode.
When the available hblank period cannot carry the required
audio packets for a given sample rate and channel count, the
corresponding frequencies are pruned from the ELD SADs before they reach
the audio driver.

Sample rates are pruned rather than channel counts because compressed
audio formats like Dolby Digital (AC-3) and DTS require a fixed channel
configuration to decode.

This improves on an earlier attempt which can be seen in [1]

[1] https://lore.kernel.org/intel-gfx/20230615063137.2219870-3-mitulkumar.ajitkumar.golani@intel.com/

Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Chaitanya Kumar Borah (2):
  drm/i915/hdmi: Move audio compute config after format selection
  drm/i915/audio: Prune ELD SADs based on HDMI audio bandwidth

 drivers/gpu/drm/i915/display/intel_audio.c | 144 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c  |   8 +-
 2 files changed, 148 insertions(+), 4 deletions(-)

-- 
2.25.1

