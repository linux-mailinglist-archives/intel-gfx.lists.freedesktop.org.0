Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4K9QOLkTzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD8B37002D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF3810EAC3;
	Tue, 31 Mar 2026 18:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QGhGD+9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8443C10EABC;
 Tue, 31 Mar 2026 18:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982069; x=1806518069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hHc8/akZA8Fw2PBVXXj7GMdzwjaAFKKXxfAPWVliGIA=;
 b=QGhGD+9ivePldacn1sp217poRZtvZh7FSl23osesVSHKMFhhlPt+byrp
 cuImqgMANjcXmm7a+oZnCoDWcOZqD88DyHsEi1rl6uovrCC0Ny0ITJ2rG
 6EI5yC90DAeaU7VhfS6IWWo2297pFduwjuCEK3sP4012ZjdfbhCUkPhoZ
 Piz6OiTfJw0FzrPLT1rhVGmtHVsYR6uwICthNnku7DQd93YYi1363zvOd
 OEC+BvoAJ8Of70LNvyUUVfIxAUL40dnfATvG6YWZw5Iyx8l0bDwnvPW5M
 ATnNigkeM6ldnyCKY44ZPzUyC5stGEXtLZrKIObTPnFouxXXxVhkpGPII Q==;
X-CSE-ConnectionGUID: tvL6RbTuQ82WNIGo18Z7Dw==
X-CSE-MsgGUID: Z0QfqcBYTz2nBjEr+Z4fcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705145"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705145"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:28 -0700
X-CSE-ConnectionGUID: fPBI/QqER5e0+HvfU1hdZA==
X-CSE-MsgGUID: fv01SXEBQCSSUIBAvmBzFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944425"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:27 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 00/16] VS/PE Override support
Date: Tue, 31 Mar 2026 20:33:16 +0200
Message-ID: <20260331183332.1773886-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6CD8B37002D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

First version the series with RFC tag being removed [1]. No changelog at
commit-level since the series transformed vastly.

Already pointed out issue with the series is that I still haven't came
up yet with better platform-depedent checks than just doing a never-
ending if-ladder. It seems especially unnecessary in case of
intel_ddi_buf_trans.c where it repeats the work that has already been
done.

Thanks for all the feedback regarding the RFC.

Booted & successfully loaded i915/xe on MTL+ and EHL. 

[1] https://lore.kernel.org/intel-gfx/20260308132446.3320848-1-michal.grzelak@intel.com

BR,
Michał


Michał Grzelak (16):
  drm/i915/lt: align xe3plpd with VS/PE Override layout
  drm/i915/buf_trans: switch from u8 to u32
  drm/i915/buf_trans: describe VS/PE Override layout
  drm/i915/bios: prepare for parsing VBT #57
  drm/i915/bios: parse LT's VS/PE Override Block #57
  drm/i915/bios: parse Snps's VS/PE Override Block #57
  drm/i915/bios: parse EHL's VS/PE Override Block #57
  drm/i915/bios: support VS/PE Override per each ddi port
  drm/i915/bios: print VS/PE Override port info
  drm/i915/ddi: cache VS/PE struct pointer into intel_encoder
  drm/i915/buf_trans: override encoder->get_buf_trans when asked
  drm/i915/buf_trans: compute LT's VS/PE Override index
  drm/i915/buf_trans: compute Snps's VS/PE Override index
  drm/i915/buf_trans: compute EHL's VS/PE Override index
  drm/i915/bios: search for VBT #57 by default
  drm/i915/bios: remove VS/PE Override warning

 drivers/gpu/drm/i915/display/intel_bios.c     | 197 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |   3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../drm/i915/display/intel_ddi_buf_trans.c    | 201 ++++++++++++++----
 .../drm/i915/display/intel_ddi_buf_trans.h    |  51 ++++-
 .../gpu/drm/i915/display/intel_display_core.h |   9 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 7 files changed, 410 insertions(+), 53 deletions(-)

-- 
2.45.2

