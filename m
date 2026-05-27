Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Bo4E6nRFmowsgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFF25E32D7
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C939210E673;
	Wed, 27 May 2026 11:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fDGLHJPf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26AC010E152;
 Wed, 27 May 2026 11:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779880356; x=1811416356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1SgRiBg7cwUrr3CnzQdg8ztHpnIbw5xFcKA1QkSscQM=;
 b=fDGLHJPfgrACQBiMW+2AwY3jDzh29kDkO0EgLpkwk1K5U1k3fWUdWoSK
 /Eli2NrefBm+HgeFicGwlt2OmfC30jLAIni9KTkjazgqQlSnS7jw/SvaV
 QLW2ChPct2NpIjrb8BrkfS90MiNqoDoXSVAH6wGU8rt7vUWGppHPuEqQE
 0xkOg3SBVrzTx1BbEslgLNUdJU+ChrKUjhIJhnSoHX3rHlLP3aBIFBjYO
 lFrGZI86CQbUIfXyuaFp+mJSLSuxvT2orCzKwQOh5MljdLpbknGNqDRyD
 erCBqmVu4uOByrggklVx5MR66TZdbaZnIwjciKkuii5nQ/OS+lacXXq07 w==;
X-CSE-ConnectionGUID: lPnFHBS1Q/KDki23CmEzDg==
X-CSE-MsgGUID: 7IhejN1mRF2fzfVMwuegjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80818507"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80818507"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 04:12:35 -0700
X-CSE-ConnectionGUID: SlcG4pg0THuQupOCVg1/Uw==
X-CSE-MsgGUID: s+Tt5ySdSmCZZHk8gDc27A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="265803129"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 27 May 2026 04:12:34 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/4]  DSC max delta bpp support
Date: Wed, 27 May 2026 16:38:45 +0530
Message-Id: <20260527110849.3943338-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 7AFF25E32D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

 Some sinks exposes DSC max bpp through delta based
DPCD fields. To support those sinks, add DP DPCD field
field and logic to decode the delta value in bppx16
format.

Nemesa Garg (4):
  drm/dp: Add DP_DSC_MAX_BPP_DELTA register
  drm/dp: Rename YCbCr420 bpp delta mask to native
  drm/dp: Add max bpp delta computation constants
  drm/i915/dp: Decode dsc max delta bpp from sink dpcd

 drivers/gpu/drm/i915/display/intel_dp.c | 41 +++++++++++++++++++++++--
 include/drm/display/drm_dp.h            | 12 ++++++--
 2 files changed, 49 insertions(+), 4 deletions(-)

-- 
2.25.1

