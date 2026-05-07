Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KH4nMofr+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:31:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A34E1F4A
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC3B10E231;
	Thu,  7 May 2026 01:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VfAvng3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F0A10E231;
 Thu,  7 May 2026 01:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117509; x=1809653509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eoXuOnJRQOYAQr7C7o2m/JXzpSRrXdSrzkE8X/qgvxM=;
 b=VfAvng3TQlfCkjQ06onxdRZ5Kgyx+W65b6sGusjv30fgkedeMT8nUm2d
 mSFJzQXqPsI3hN3SdXqj7nqxrLOu53sIhvdOOsqCncFFWESaIyb2TV8gm
 bES5P9Musuog0nvPMP/dAF7MLoDp0WyNUVOHV9g1NJnDRA2+x/ZtJ4OQJ
 FDyRUx9UAyCxxf9xmXmDjO+pv+775JJgg97TOvs+j8NPocYjdUF1lsX0W
 ei7AcXT+4KJ2W2lsMEhh5aM/T24nPJagAlvzlWebPImjqk07i/ZrPY4Nq
 AU4t186RAdxIh5OeMzLtpFK4dIXWVAoz/gg9CPRcs3uk9HXnU6Q8Kjeyr w==;
X-CSE-ConnectionGUID: 3z9tyQkoSHmkNFBKxN75zA==
X-CSE-MsgGUID: swSe1lORQX2fEfBaN2tLig==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089011"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089011"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:31:48 -0700
X-CSE-ConnectionGUID: eF6ddCWZRNm/XocAWHMsew==
X-CSE-MsgGUID: 9Iogyd8VQYmJlOP3dPsHOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692720"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:31:48 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 00/31] Vswing/Preemphasis Override
Date: Thu,  7 May 2026 03:31:06 +0200
Message-ID: <20260507013137.527510-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 318A34E1F4A
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Next version of [1]. IGT series for decoding is available at [2].

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/20260415234639.3577774-1-michal.grzelak@intel.com/
[2] https://lore.kernel.org/igt-dev/20260507012821.527453-1-michal.grzelak@intel.com/

---
v2->v3
- remove braces from if blocks (Suraj)
- return -EINVAL instead of -1 (Suraj)
- break logging into two lines
- remove null pointer check before kfree()
- switch from kzalloc() into kzalloc_obj() and kzalloc_objs()
- resolve conflict from rebase

Michał Grzelak (31):
  drm/i915/buf_trans: align xe3plpd with VS/PE-O layout
  drm/i915/bios: search for VBT #57 by default
  drm/i915/bios: log unsupported VS/PE-O parsing
  drm/i915/bios: store VBT #57's metadata in intel_vbt_data
  drm/i915/bios: de/allocate VS/PE-O buffers' matrix
  drm/i915/bios: structurize VS/PE-O metadata
  drm/i915/bios: add buf_trans for each bios_encoder
  drm/i915/bios: de/allocate buf_trans for each port
  drm/i915/bios: check VS/PE-O in helper func
  drm/i915/bios: print VS/PE-O port info
  drm/i915/bios: remove VS/PE-O warning
  drm/i915/ddi: expose VS/PE-O buffers to intel_encoder
  drm/i915/buf_trans: override VS/PE-O when requested
  drm/i915/buf_trans: abstract VS/PE-O index computation
  drm/i915/bios: parse LT's VS/PE-O tables
  drm/i915/bios: shrink all LT's VS/PE tables
  drm/i915/buf_trans: compute LT's VS/PE-O index
  drm/i915/buf_trans: enumerate LT's VS/PE-O indices
  drm/i915/bios: parse Snps's VS/PE-O tables
  drm/i915/bios: shrink all Snps's VS/PE tables
  drm/i915/buf_trans: compute C20's VS/PE-O index
  drm/i915/buf_trans: enumerate C20's VS/PE-O indices
  drm/i915/buf_trans: compute C10's VS/PE-O index
  drm/i915/buf_trans: enumerate C10's VS/PE-O indices
  drm/i915/bios: parse EHL's VS/PE-O tables
  drm/i915/bios: shrink all ICL's VS/PE tables
  drm/i915/buf_trans: compute EHL's VS/PE-O index
  drm/i915/buf_trans: enumerate EHL's VS/PE-O indices
  drm/i915/bios: parse JSL's VS/PE-O tables
  drm/i915/buf_trans: compute JSL's VS/PE-O index
  drm/i915/buf_trans: enumerate JSL's VS/PE-O indices

 drivers/gpu/drm/i915/display/intel_bios.c     | 193 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |   3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../drm/i915/display/intel_ddi_buf_trans.c    | 228 +++++++++++++++---
 .../drm/i915/display/intel_ddi_buf_trans.h    |  55 ++++-
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 7 files changed, 438 insertions(+), 49 deletions(-)

-- 
2.45.2

