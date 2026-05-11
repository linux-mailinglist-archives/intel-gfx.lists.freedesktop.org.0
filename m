Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ms+I2sEAmrknAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 18:31:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCCA5122E8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 18:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BD010E807;
	Mon, 11 May 2026 16:31:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHhdLN7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB1810E807;
 Mon, 11 May 2026 16:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778517096; x=1810053096;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=yg3A8w6BBjuIgNLhGRRpnoDqlg3P8FOI6ZEPVf7TpHw=;
 b=gHhdLN7E5VMjj3VfVRCaMlacY6Tv1ngJvMoO4T0QCDAqj47ASzlgh3Ub
 Nmfi85euH1PMPEcZnjeoJTrXUcXkwKAL5FvRFowyewFAO3z0pSItgDe9a
 jSmRpHK/zYoVt2/3cI0/hbTyaKQTSHjyWsDdja+0oPOEQHviB70TJiYD8
 4JxW/zJ49Nbb6H0ThuQ0g1f0e3M3HDcBnzSAoT5zMW1wNuoglRx+2tTaB
 dzED7h8h/TqhfhJGiBzAxPrJemBwfD3I0qw8EFKthzYjhvbd/O799SHoy
 44XT90aGYkEMCz54qLBA4n1wurtqNkCU24/5qMPWTAT2RsFY2/8dbSV4c w==;
X-CSE-ConnectionGUID: WHGjZyhETvy/7C28hImaAA==
X-CSE-MsgGUID: PUMl8RmMRaaDBhY4XKzn8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="83024159"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="83024159"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 09:31:35 -0700
X-CSE-ConnectionGUID: AM4zFfzpRK6ypEAhKyGmzQ==
X-CSE-MsgGUID: LXaGlciZRkuO+V3+3cue4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="267858139"
Received: from khuang2-desk.gar.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.192])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 09:31:34 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 0/4] drm/i915/bw: Split bandwidth params into platform-
 and display-IP-specific structs
Date: Mon, 11 May 2026 13:30:55 -0300
Message-Id: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6WOQQ6CMBBFr0K6dkwtgsaV9zAs2jKVSShtpg1KC
 He3cAWX7+fnv7+KhEyYxKNaBeNMicJUQJ0qYQc9vRGoLyyUVK28yjskjJp1Roijzi6wB8fBQ0+
 FF6AIKaIlRxbMB/aqT9A2xhktW1kbFGU5Mjr6HtZXV3iglAMvx4n5sqf/+eYLSFC1bWrt9K038
 klTxvFsgxfdtm0/jrq+AvYAAAA=
X-Change-ID: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Queue-Id: 0FCCA5122E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,msgid.link:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Some of the parameters of used in display bandwidth calculations are
tied to the platform and are orthogonal to the display IP.  After talking
with the hardware team, we now have the information (and Bspec has been
updated) that the members deprogbwlimit and derating of struct
intel_sa_info are such platform-specific ones.

With that, we are now able to make the driver code more aligned with the
hardware by splitting structs intel_sa_info into two different structs:
one that is platform-specific and another that is display-IP-specific.

That change also allows us to simplify how we select the parameters for
the calculation.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v2:
- Incorporated review feedback; see each individual patch for details.
- Link to v1: https://patch.msgid.link/20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com

---
Gustavo Sousa (4):
      drm/i915/bw: Extract platform-specific parameters
      drm/i915/bw: Deduplicate intel_sa_info instances
      drm/i915/bw: Rename struct intel_sa_info to intel_display_bw_params
      drm/i915/bw: Extract get_display_bw_params()

 drivers/gpu/drm/i915/display/intel_bw.c | 208 ++++++++++++++++++++------------
 1 file changed, 132 insertions(+), 76 deletions(-)
---
base-commit: 0a6c4b1478138dae3ff979b9e95879c6a4def444
change-id: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

