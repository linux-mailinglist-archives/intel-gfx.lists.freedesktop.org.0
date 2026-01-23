Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0D0qNqpTc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:55:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6309B74A30
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4177C10EAB2;
	Fri, 23 Jan 2026 10:55:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="df20JBfd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBF5610E20E;
 Fri, 23 Jan 2026 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165735; x=1800701735;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oPaXnnHm/o3j9HT7RcM6ckPBzrhrkswW95xk2H7lKiI=;
 b=df20JBfdcOvcau69NtjtP5AAQPdt7XtfBJan6bOm/R4Ag+HUZrFDTTzA
 RL0AD68S6vhLjLhBIHnbkDtO3/Xse0BFwo6ehTjq+HVlWkpjsjo7IXNl3
 flJnaAXlFlhPTgk9EN0g72kbqep+xIR80W/qV/uocZSQd3jbo660Pla8p
 kHGWe8GiVBv5q61qIzyJ8Q8rR5BAfRYeRvyroNoybnnQtT/lQhNfE2EBT
 9e0ZC9/sP/mrLJP4L4viyR9DTB0qBQYCL3LBDwAR+l+Dm+ggDWGuIKHxp
 tHVTWqNOP++pn48iEaYlaRfojfaqdjDaJpizpworeGtKr8GB3+rhx9WH2 w==;
X-CSE-ConnectionGUID: mVdO160ORV6mjmRicoy7qg==
X-CSE-MsgGUID: 2cNIUnJ1Rw+GLU2sQuHQ/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="81529990"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81529990"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:55:35 -0800
X-CSE-ConnectionGUID: LtlqJDbTREGXdeB20LqyAA==
X-CSE-MsgGUID: 2h6bV1R5TLKimzh/+WTgLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211461466"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 23 Jan 2026 02:55:33 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 0/1] rename GEN6_PCODE_DATA to match spec
Date: Fri, 23 Jan 2026 11:55:24 +0100
Message-ID: <20260123105525.572035-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 6309B74A30
X-Rspamd-Action: no action

This patch should be applied on top of [1].

[1] https://lore.kernel.org/intel-gfx/20260115113337.4079184-1-jani.nikula@intel.com

BR,
Michał

Michał Grzelak (1):
  drm/{i915,xe}/pcode: rename GEN6_PCODE_DATA to match spec

 drivers/gpu/drm/i915/display/intel_parent.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_parent.h   |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
 drivers/gpu/drm/i915/intel_pcode.c            | 14 +++++++-------
 drivers/gpu/drm/i915/intel_pcode.h            |  2 +-
 drivers/gpu/drm/xe/display/xe_display_pcode.c |  4 ++--
 drivers/gpu/drm/xe/xe_pcode.c                 |  4 ++--
 drivers/gpu/drm/xe/xe_pcode.h                 |  2 +-
 10 files changed, 19 insertions(+), 19 deletions(-)

-- 
2.45.2

