Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPMTI9Nc82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:44:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D4F4A3A39
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD76D10E190;
	Thu, 30 Apr 2026 13:44:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CoviMaIy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10BF10E190;
 Thu, 30 Apr 2026 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777556686; x=1809092686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zzsgp36L/MWQp/P+AMRtC/is9wETM7o/N2pMdLetLyk=;
 b=CoviMaIyuSba9asAo1aySv4gUDEzPSFxWP4jd+Tar2YC4k9qzkxlIO8E
 C+rajmz/4v95KK4SMSEG6oxdnUbnmGPAW+xYXAmReYGUmlIyjEAs/D6Oe
 twlUdttVdXCWp5uXkpOQN/e2D4chUlM0ZyikO7llkfY2Nje7oPwIkim0t
 eu4gk7DcHTiX1q0664NjSm6Rump7u4C9skEGeenNTr1dG2S5Aa1+yY2GW
 LqsnvFHpJwnRP+ZikboUMdwHAKSJpSPhEfCsN/k/QxALt8DsblVcaEtXV
 n1rzerJUudAPvG01U+wyGlULZYS5YeRHoDue2gZk6hxxzwJFMPtNZ3ZtC A==;
X-CSE-ConnectionGUID: 5lYOF0cGT/Sy4okYSW/NVA==
X-CSE-MsgGUID: BtwIsFeDSxCvniCLzofwOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77532390"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="77532390"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:44:46 -0700
X-CSE-ConnectionGUID: 865STTp5Qiu1bUbzCpRTjQ==
X-CSE-MsgGUID: +Z+deB2vTQSQx2Q/dusyAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="236371545"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:44:45 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, gustavo.sousa@intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH v2 0/3] drm/i915/psr: DC entry prevention during active vblank
Date: Thu, 30 Apr 2026 19:15:02 +0530
Message-ID: <20260430134505.1728443-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: E1D4F4A3A39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

Unify PSR DC state disable for both PSR and Panel Replay, and use DMC
wakelock get/put on wakelock supported platforms
instead of set_target_dc_state().

v2:
 - Add intermediate patch to expose intel_dmc_wl_supported() and use
   it instead of open-coded DISPLAY_VER check (Gustavo Sousa)

Dibin Moolakadan Subrahmanian (3):
  drm/i915/psr: Unify DC state handling for PSR and Panel Replay on VBI
    enable
  drm/i915/dmc_wl: Expose intel_dmc_wl_supported()
  drm/i915/psr: Use DMC wakelock instead of DC state for VBI

 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 +++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c    | 37 +++++++++++----------
 3 files changed, 27 insertions(+), 23 deletions(-)

-- 
2.43.0

