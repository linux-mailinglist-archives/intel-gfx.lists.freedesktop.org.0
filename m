Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOLSIyYnxmnQGwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 07:43:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D1833FF50
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 07:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E3410ECB0;
	Fri, 27 Mar 2026 06:43:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mddef8yg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B90E10ECB0;
 Fri, 27 Mar 2026 06:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774593821; x=1806129821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Na9Jw6O92e7pjim6EkjpR4Gt/6but0+vGj0eZmOD6jA=;
 b=mddef8ygC2DFT+o1UA6wDuZO3D2Ji+Nr85TRC4F938y2Rey8EiIPzI3J
 y9KRk+BZERaYJ4TgcufQdXkUUxI1lxUwCfADRswtOFe8B+giJJ3ergXqd
 jFRTdqSa6OwUlIGxGZhR60C9W6+FlBE4HbzvAtaj9Cgq4NuC9IwSELG2i
 r+Kli7BJcvV3u44iI3Ay4eq1Axkiel2UBexzsVup91FKUtKe+HaikVRAb
 ESu0fyxQlESmP194XbenkjnjUHQl2Ymt/eqPCq9dDobPtEDvzwvyU/u8R
 sNk7hSgkkaNpTtnAvrrGUfdcdUcBSR20XaCu6HYXQkilV8QnzDjjk4oYL Q==;
X-CSE-ConnectionGUID: AwWHk4gvRbyKshcHZvHRrA==
X-CSE-MsgGUID: OdoLo35qT9Kl40tHE2Rk8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75684249"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75684249"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 23:43:41 -0700
X-CSE-ConnectionGUID: r2/XiO1JT2SGEfdM52pI+w==
X-CSE-MsgGUID: /FZeL1CTRrOLAUAz4MyvYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="222313846"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 23:43:39 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH v5 0/2] drm/i915/dmc: Update PIPEDMC interrupt mask
Date: Fri, 27 Mar 2026 12:14:51 +0530
Message-ID: <20260327064453.2241523-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 49D1833FF50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On display version 35+ the PIPEDMC_ATS_FAULT and
PIPEDMC_GTT_FAULT interrupt bits are no longer defined.
Update the interrupt mask accordingly and enable the
PIPEDMC_ERROR interrupt.

Changes in v2:
- Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
Changes in v3:
- Add Bspec reference (Suraj Kandpal)
Changes in v4:
- Add TODO to check the enablement of PIPEDMC_ERROR on PTL (Suraj Kandpal)
Changes in v5:
- Move TODO to the beginning of pipedmc_interrupt_mask() (Suraj Kandpal)

Dibin Moolakadan Subrahmanian (2):
  drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
  drm/i915/dmc: Enable PIPEDMC_ERROR interrupt

 drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

-- 
2.43.0

