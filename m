Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JxeNeEvuWn4uAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6025A2A8214
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F7D10E4DC;
	Tue, 17 Mar 2026 10:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aaALP3b7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A2510E1ED;
 Tue, 17 Mar 2026 10:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773744094; x=1805280094;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eXfcoFuMBRNi4wRBdRjV2uz5b/WwGJGR35sQWGBbzLM=;
 b=aaALP3b7IT2W84rjDu/DnTDn327Qm7Plq4BodjjRWPLLKZRkyyMJ9nzR
 7JvQQV2o2tPocMBFue4AmavyZfM+l1ILmtaWWHjLbTcHviX0/9qmxBZ5/
 WyvQPNaPF8wmSldbXVY03AU8fWfsC1BQ4FW5uzEwXgMnz4mTvubWIRwQZ
 g2xdYUrDsn8uv2NiOmt3yxuGv76VsTaj5a9O/GY9P9fZwrfoQC8obb7uX
 4pDytdk4hJmRedNmX3GLagXH9BBvPGzzljJRr+UolJ/gpQHp2uU8S3ao1
 yNuYpapfDa9j3hfG0fk1PELkbjG72VX1C30eLM05UqRTIcb1X4N793DVv Q==;
X-CSE-ConnectionGUID: ltuulqfGQk64u4L3Thxijw==
X-CSE-MsgGUID: lRx9CIB9R+GU1SrrFH9iqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="77381972"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="77381972"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:33 -0700
X-CSE-ConnectionGUID: TAH5+9qnT/SEA4Rpy+0zgQ==
X-CSE-MsgGUID: 1hMjdiNBSEaw9kiU3GnqmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221455814"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.118])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:32 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 0/4] drm/i915/display: don't access display PCH registers in
 non-display code
Date: Tue, 17 Mar 2026 12:40:47 +0200
Message-ID: <20260317104119.1690065-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
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
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6025A2A8214
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This change moves the display PCH register accesses from the i915 code
to the display code.  I created a small "framework" to do this, which
relies on the PCH_TYPE to figure out which initialization needs to be
done.

The callpoints are still on very specific points in the generic
clock-gating initialization, but there's no way around this without
overcomplicating things.

I have another, more direct and less "generic" way implemented,
without the mini-framework, but I think the current approach is
cleaner.

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/display: move clock-gating init for IBX to display
  drm/i915: move CPT clock gating init into intel_pch
  drm/i915: move LPT clock gating init into intel_pch
  drm/i915: move CNP clock gating init into intel_pch

 drivers/gpu/drm/i915/display/intel_pch.c  | 93 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pch.h  |  1 +
 drivers/gpu/drm/i915/intel_clock_gating.c | 86 ++-------------------
 3 files changed, 101 insertions(+), 79 deletions(-)

-- 
2.51.0

