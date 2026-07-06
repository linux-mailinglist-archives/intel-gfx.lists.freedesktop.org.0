Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ltuJHvfjS2q4cAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:20:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE680713CC6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:20:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ePxDBImn;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7547E10E9FD;
	Mon,  6 Jul 2026 17:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E673D10E9FD;
 Mon,  6 Jul 2026 17:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783358452; x=1814894452;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J8U0CB7/YDuDjPYQRhjIjSgq9opovH2ISKY5vmzVir4=;
 b=ePxDBImn7DxpuVPVr5iRi+hbBoBsNbH8U7tF7a5opreUlSW5ykYPg2/t
 eDiP339DLxmVnGnEJTmVJRWUB5iLMYgWMBlSU2dr9euYlM2R7sMgCm8VG
 XQV5m+NVWCix5BLdNAglybJxF16a8tIhw5PZJvDn2kdhUA4+eIIuqgB9U
 ypdWH5J812l8wN1Hsi5JelD4wh71tc87DPfZNxjYaVnfvcI7bMhifPOJ0
 Ow71j8NSdHQOtu45//WWBL4JGRzKXr3rJ6XlRF/bxaxUDiEtDrbd7vBGv
 j+U8AEq1JuJvdNH2/7+qZYtBpNTdckU2yB18JZbMOo3WGe/WVaLgftJ8E Q==;
X-CSE-ConnectionGUID: 6ji7Te/EQsm/rc3HBqtY7Q==
X-CSE-MsgGUID: P4CouFAkRsqvo+Cva64SMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="101417672"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="101417672"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 10:20:51 -0700
X-CSE-ConnectionGUID: 7zxkbQvkRCqvGqbeQ7juRQ==
X-CSE-MsgGUID: h+x24hecRWCW1YSpxe64Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="255704355"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa004.fm.intel.com with ESMTP; 06 Jul 2026 10:20:48 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [v2 0/2] drm/i915/audio: Add HDMI TMDS audio bandwidth check
Date: Mon,  6 Jul 2026 22:26:44 +0530
Message-Id: <20260706165646.2731978-1-chaitanya.kumar.borah@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE680713CC6

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

v2:
 - Use DIV64_U64_ROUND_UP() instead of DIV_ROUND_UP_ULL() to avoid
   do_div() truncating the 64-bit divisor to 32-bit, which caused
   audio_packets_line to be wildly inflated and all SADs to be pruned.
 - Guard intel_audio_hdmi_eld_compute_config() against HDMI FRL modes.

Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Chaitanya Kumar Borah (2):
  drm/i915/hdmi: Move audio compute config after format selection
  drm/i915/audio: Prune ELD SADs based on HDMI audio bandwidth

 drivers/gpu/drm/i915/display/intel_audio.c | 149 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c  |   8 +-
 2 files changed, 153 insertions(+), 4 deletions(-)

-- 
2.25.1

