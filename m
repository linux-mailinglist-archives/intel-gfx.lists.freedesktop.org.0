Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dqpVHZmVV2rsXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 16:13:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF45475F382
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 16:13:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="eCaAl/36";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF27A10F0D2;
	Wed, 15 Jul 2026 14:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E166110F0CE;
 Wed, 15 Jul 2026 14:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784124821; x=1815660821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z4u7U8dLopoo3psAhxternNFY8nvM+qeDWpUqndjhmE=;
 b=eCaAl/36LXOvaLrynSaMc1LlvIDkMXfZjJe0v18enldy0eBXi4JkZxuq
 WlP0Y9Wu1V1zhOPKvGb/C6CrBYkRaX0U97+VlH88H8xlsy+BDTkZ4svAa
 NG0u7Jg4a7aFWkVR3rPFIOphQUArl1c+JmpZU/4alJKIGnFpsqbMGK0n2
 hrGpA59YAQl8iBupdKy35fJWxfO0y5uaq/pgDRcd1w0vJUliOYeEcYuj9
 hQtPcf49YgFbTeJ3vXRJ2UMMPkUSWknXrlxBx3pyXTHtUaABwtxc3s0Ks
 /rJ4PfPrOgvS0VPJUSyNF4d4aLUP/av4nFNZoBRou+d8ceJvitE/NRlRP Q==;
X-CSE-ConnectionGUID: Q+Tm1q+sT1mTemNV6s7MmQ==
X-CSE-MsgGUID: UXqsX4HGSMOVmJQ5tTg1Lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="110310297"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="110310297"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 07:13:40 -0700
X-CSE-ConnectionGUID: tik82MJlQhSg5KUEEoRsPw==
X-CSE-MsgGUID: VPDYcbPoTma1PsvWOEhRTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="260008528"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa004.jf.intel.com with ESMTP; 15 Jul 2026 07:13:39 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, suraj.kandpal@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 0/2] drm/i915/display: Implement Display Wa_16030862157
Date: Wed, 15 Jul 2026 20:02:41 +0530
Message-ID: <20260715143243.4141208-1-uma.shankar@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF45475F382
X-Rspamd-Action: no action

Interpret 0xF populated-channel count as 16. For 16-channel
configuration, BIOS programs 1111b. A programmed value of 1111b
must be interpreted as 16 channels for memory bandwidth calculations.
This series implements the workaround in driver.

v2:
  - Logical separation of changes
  - Limit WA to NVL

Uma Shankar (2):
  drm/i915/xe3p/dram: Interpret 0xF populated-channel count as 16
  drm/i915/xe3p/bw: Update bw calculation to account for 16 channels

 drivers/gpu/drm/i915/display/intel_bw.c       | 20 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_display_wa.c   |  2 ++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dram.c     | 14 ++++++++++++-
 4 files changed, 33 insertions(+), 4 deletions(-)

-- 
2.50.1

