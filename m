Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AcaHBfRw2lLuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:12:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E06B43248EB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ACE810E842;
	Wed, 25 Mar 2026 12:12:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QLnMzNpf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F6C610E214;
 Wed, 25 Mar 2026 12:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774440723; x=1805976723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SXywwCMFgM3yw7auptvPLHy/jGENUcibq6MpFA7KLNE=;
 b=QLnMzNpf7OCKYjvhl9/zRn06+Uz9QTUoulNtu6g0UOWhZY234R2Oko8k
 JYVTg5tBwV5YFLaui7Dt46P8TW0plncEetJ8XZigJ+D03wTVw1LFLRPBu
 E9cwU+1tBQ85pXyKegz2nrtpfHt0NG9vR7LcVuLotC/OLQgDvtE+ARi83
 i5GpMtVvDpj9GRHby5s6+j/4Fg//FWD/rIl5KwDfbC51+8soC5eM1n1sV
 fr76D6uL5nZXCzhXxuS9RKJMljy3bL1sxeqFdethlRxDEs56Jm19kpi/d
 +L48c/T0WTQYB7j8LAPmF3HRrOhcIA/EAVyZJRBNvmrbNaSWibEMKglmx w==;
X-CSE-ConnectionGUID: hhHWkhl8Quq5infuILGSPw==
X-CSE-MsgGUID: PiC1VCI9TSSna6KSA127mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="63022379"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="63022379"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:12:03 -0700
X-CSE-ConnectionGUID: LhfjEGwKTqOmBOhsSiU4xg==
X-CSE-MsgGUID: J5QvM1TvQe6JMdnshLuwuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="224673427"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 25 Mar 2026 05:12:01 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 0/3] Panel Replay BW optimization
Date: Wed, 25 Mar 2026 17:11:51 +0530
Message-Id: <20260325114154.3688550-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E06B43248EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Unused bandwidth can be used by external display agents for Panel Replay
enabled DP panel during idleness with link on. This patch series
enabling the same.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (3):
  drm/i915/display: Add drm helper to check pr optimization support
  drm/i915/display: Add hook to check optimization support for Intel
    platforms
  drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling

 drivers/gpu/drm/display/drm_dp_tunnel.c       | 17 +++++++++++++
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 18 +++++++++++++
 .../gpu/drm/i915/display/intel_dp_tunnel.h    |  6 +++++
 drivers/gpu/drm/i915/display/intel_psr.c      | 25 +++++++++++++++++--
 include/drm/display/drm_dp_tunnel.h           |  6 +++++
 6 files changed, 71 insertions(+), 2 deletions(-)

-- 
2.29.0

