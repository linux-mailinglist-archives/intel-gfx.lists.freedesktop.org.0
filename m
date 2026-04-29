Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDH0B7vk8WlZlAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:00:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D21493489
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0205210EF13;
	Wed, 29 Apr 2026 11:00:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLeeXyzg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321A310E072;
 Wed, 29 Apr 2026 11:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777460406; x=1808996406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GHjgXNB7eAadQqa9quL6Ysw1JKMMKM3Xzvhd7Ok720I=;
 b=aLeeXyzgsSzP70MOlaPGYpdW97MGjO0QnuKjElY8o+DwDAF3yPNbhEYx
 HUP7l3DtOPCYOk98EZoFP3TsHoUe9XR+aeD6QPq+IFM2BN/jXqj8cx3u5
 rbMrLrhLQqeCdBaPyeYf0eC8mNShXn3DlelR1GC1UVqZE4YaclDgwCNT1
 ONOt/PX/QTIXcX4KdCOlvQvNvzObIj7VANpj6ULC/2rWFowcHpWQPBHpE
 UALd+xIXqQNnMFq78Yhtq/vJ4Jhti7zUgTHPgADRdgRJMQznBq+ORUF3x
 +NYPUeo8qHqzXOLpgAFWtKCNsZ25Rzm9vU7FL3F01+qlEslGMgbp6o8Gq A==;
X-CSE-ConnectionGUID: wqfuPsRQTfyE2z0rjR/HBQ==
X-CSE-MsgGUID: TkB/TjXTTD2ChH9pf5Ey/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78280000"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="78280000"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:00:06 -0700
X-CSE-ConnectionGUID: 6UZuw0DHQySqU40bvndkjw==
X-CSE-MsgGUID: TcsAcSyqRhSQdgRoi51x9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="264614291"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:00:04 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com
Subject: [PATCH 0/2] drm/i915/psr: DC entry prevention during active vblank
Date: Wed, 29 Apr 2026 16:30:21 +0530
Message-ID: <20260429110023.611664-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: E6D21493489
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

Unify PSR DC state disable for both PSR and Panel Replay, and use DMC
wakelock on display version 30+ instead of set_target_dc_state().

Dibin Moolakadan Subrahmanian (2):
  drm/i915/psr: Unify DC state handling for PSR and Panel Replay on VBI
    enable
  drm/i915/psr: Use DMC wakelock instead of DC state for VBI

 drivers/gpu/drm/i915/display/intel_psr.c | 37 +++++++++++++-----------
 1 file changed, 20 insertions(+), 17 deletions(-)

-- 
2.43.0

