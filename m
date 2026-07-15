Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0fKcLlxfV2p0KgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 12:22:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8AC75CEE1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 12:22:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ChTVFa9p;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E8010EF7E;
	Wed, 15 Jul 2026 10:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE03110E034;
 Wed, 15 Jul 2026 10:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784110937; x=1815646937;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pMsBAcE9t2lrmaGqeLfILPI4txNhrrw45YdJODQi7pI=;
 b=ChTVFa9pn9jJPX7Wv4cufzzrN9vAhkPUk8csvmk7l0gOqSpkIyAInIIS
 tgNiOVKIOFY20msAJiVSj2GYyqCAAU0RSF5n+xMqFrTiYwsQQTKs8P3M0
 FkKFXzgceTGjO5bgj8WoZzb7GaA9d8D6R07oCQ4zpb7hC6BTWZMOFKwST
 R4bVVkjtLCpSqDAA8ZRrhQyhp0O3kXSEn1044Mm9vebpIO7s9bzGtp0WF
 1YtinFMxB0rNjmoGpsQni1MGWvH7RO2tTRemf9Ztn0lx/ChDGlayvY+fX
 6Q8DTs2pwInX/+fYC9uKGWNMvZwFQGoHNAUBITnf+TGDLyskMOy5L10TL g==;
X-CSE-ConnectionGUID: vahqP/QLTI60W0ubbsOP9Q==
X-CSE-MsgGUID: T/0rWKLjQyumgYR8hCGDZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="102299909"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="102299909"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 03:22:16 -0700
X-CSE-ConnectionGUID: KXuwBTlHR1Gpw0yXPmUkJA==
X-CSE-MsgGUID: QUgyYBEfTG+HmyN0zKwJCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="252743628"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 15 Jul 2026 03:22:14 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, suraj.kandpal@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 0/2] drm/i915/display: Implement Display Wa_16030862157
Date: Wed, 15 Jul 2026 16:11:17 +0530
Message-ID: <20260715104119.4128662-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B8AC75CEE1

Interpret 0xF populated-channel count as 16. For 16-channel
configuration, BIOS programs 1111b. A programmed value of 1111b
must be interpreted as 16 channels for memory bandwidth calculations.
This series implements the workaround in driver.

Uma Shankar (2):
  drm/i915/display: Add Wa_16030862157 to the display workaround list
  drm/i915/dram: Interpret 0xF populated-channel count as 16

 drivers/gpu/drm/i915/display/intel_bw.c       | 20 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_display_wa.c   |  2 ++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dram.c     | 12 +++++++++++
 4 files changed, 32 insertions(+), 3 deletions(-)

-- 
2.50.1

