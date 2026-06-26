Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QHGIB4YOP2oaOgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DDA6D08D9
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Sf6VrFyN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E628410E3DB;
	Fri, 26 Jun 2026 23:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9956610E0E6;
 Fri, 26 Jun 2026 23:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782517378; x=1814053378;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AwwvZzlIOBLX3B+cIbfGTnXcG+Ib4GOprV/v0P3W60U=;
 b=Sf6VrFyNH2ouiobmn62jWE1jew8sBmg0TVR7of4gVpQqJVeryR56k1GK
 o45BRdUiDCxlRsUCLK0pZHeeKULt9ZR8nFQeE9QigBgpR1zkaq+I/KXlY
 /JACTAZXbntSyQ9TL2F7v4O/5WJ9tzROJvi9DpQKvVN+WEsQ2flhSPt5F
 cYD9AyW+D1BF6+5Vk7Wo0IZsdvUUT3YkmeiqWAxLEM/R0GXsms93wIAS4
 Hf8tY/K7yQSBSsNK81P7OhQRDxohS99Xi38Aj1J0cisD6AwInfg0EFW7T
 CH9tiq8wzyAczhk2XreXwiLkQ0Yel16LW/R57RBgCfB51BesxnYLsMc7+ g==;
X-CSE-ConnectionGUID: JmPyqdnwT3GWJFMDeluwHA==
X-CSE-MsgGUID: YW/pAfetSGirFitV0GIOCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="85861082"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="85861082"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 16:42:57 -0700
X-CSE-ConnectionGUID: Iw+VRdpNSrW2V2SgX8wX0Q==
X-CSE-MsgGUID: Pab5YIdPTTOF3hB5Xbur3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="248073721"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2026 16:42:55 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v9 0/7] Vswing / Pre-emphasis Override
Date: Sat, 27 Jun 2026 01:42:38 +0200
Message-ID: <20260626234246.2446451-1-michal.grzelak@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22DDA6D08D9

Next version of [1]. Corresponding IGT v4 is at [2].

This series still has LT disabled.

Loaded custom VBT#57 on PTL. VBT#57 decoded by [2]:

Block 57 min size 2 less than block size 1154
BDB block 57 (1154 bytes, min 2 bytes) - Vswing Preemph:
        Number of vswing tables: 6
        Number of columns: 3
        Number of rows: 16
        PHY type: Cx0
        Vswing Table #1 (C10: DP 1.4 RBR/HBR; C20: UNUSED):
                Preset #01: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #03: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #04: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #05: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #07: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #08: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #10: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #2 (C10: DP 1.4 HBR2/HBR3; C20: UNUSED):
                Preset #01: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #03: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #04: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #05: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #07: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #08: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #10: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #3 (C10: eDP non-HBR3; C20: UNUSED):
                Preset #01: vswing: 0x0000001a, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000021, pre-cursor: 0x00000000, post-cursor: 0x00000006
                Preset #03: vswing: 0x00000026, pre-cursor: 0x00000000, post-cursor: 0x0000000b
                Preset #04: vswing: 0x0000002b, pre-cursor: 0x00000000, post-cursor: 0x00000013
                Preset #05: vswing: 0x00000027, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x0000002d, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #07: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x0000000d
                Preset #08: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000037, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #10: vswing: 0x0000003e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #4 (C10: eDP HBR3; C20: UNUSED):
                Preset #01: vswing: 0x0000001a, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000021, pre-cursor: 0x00000000, post-cursor: 0x00000006
                Preset #03: vswing: 0x00000026, pre-cursor: 0x00000000, post-cursor: 0x0000000b
                Preset #04: vswing: 0x0000002b, pre-cursor: 0x00000000, post-cursor: 0x00000013
                Preset #05: vswing: 0x00000027, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x0000002d, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #07: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x0000000d
                Preset #08: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000037, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #10: vswing: 0x0000003e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #5 (C10: UNUSED; C20: DP 1.4):
                Preset #01: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #03: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #04: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #05: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #07: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #08: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #10: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #6 (C10: UNUSED; C20: DP 2.X):
                Preset #01: vswing: 0x00000030, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x0000002b, pre-cursor: 0x00000000, post-cursor: 0x00000005
                Preset #03: vswing: 0x00000028, pre-cursor: 0x00000000, post-cursor: 0x00000008
                Preset #04: vswing: 0x00000025, pre-cursor: 0x00000000, post-cursor: 0x0000000b
                Preset #05: vswing: 0x00000021, pre-cursor: 0x00000000, post-cursor: 0x0000000f
                Preset #06: vswing: 0x0000002e, pre-cursor: 0x00000002, post-cursor: 0x00000000
                Preset #07: vswing: 0x0000002a, pre-cursor: 0x00000002, post-cursor: 0x00000004
                Preset #08: vswing: 0x00000026, pre-cursor: 0x00000002, post-cursor: 0x00000008
                Preset #09: vswing: 0x00000023, pre-cursor: 0x00000002, post-cursor: 0x0000000b
                Preset #10: vswing: 0x00000021, pre-cursor: 0x00000002, post-cursor: 0x0000000d
                Preset #11: vswing: 0x0000002c, pre-cursor: 0x00000004, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000028, pre-cursor: 0x00000004, post-cursor: 0x00000004
                Preset #13: vswing: 0x00000025, pre-cursor: 0x00000004, post-cursor: 0x00000007
                Preset #14: vswing: 0x00000021, pre-cursor: 0x00000004, post-cursor: 0x0000000b
                Preset #15: vswing: 0x00000028, pre-cursor: 0x00000008, post-cursor: 0x00000000
                Preset #16: vswing: 0x0000001e, pre-cursor: 0x00000002, post-cursor: 0x00000002

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/20260615181207.1033389-1-michal.grzelak@intel.com/
[2] https://lore.kernel.org/igt-dev/20260616111202.1254067-1-michal.grzelak@intel.com/

---
Changelog:
v8->v9 
- init vspeo before using it
- deconstify intel_ddi_buf_trans_entry in separate commit

v7->v8
- remove comments (Suraj)
- add check for LT (Suraj)

v6->v7
- parse VBT#57 before blocks dependant on child device list (Jani)
- expand VS/PE-O acronym in debug logging (Jani)
- handle VS/PE-O's VBT details in intel_bios_* functions (Jani)
- remove vspeo's cast to (void *) (Jani)
- check devdata->vspeo if VS/PE-O was requested
- call encoder->get_buf_trans() once (Jani)
- return NULL from intel_bios_get_* when using default (Jani)
- validate VS/PE-O in intel_bios.c (Jani)
- inline *_get_vspeo_buf_trans()
- remove temporarily LT

v5->v6
- check if devdata is not NULL
- add Bspec (Suraj)
- remove drm_WARN_ONCE (Suraj)
- pass default VS/PE tables to LT's BIOS accessor (Suraj)
- set txswing & _level from default VS/PE tables (Suraj)
- add helper checking if VS/PE-O has been allocated (Suraj)

v4->v5
- set devdata->vspeo->num_entries in intel_bios.c
- add if-ladder instead of function pointer
- blend index computation with table parsing
- remove WARN and debug messages
- remove enums entirely
- add spaces around operators (Suraj)
- remove spaces after type casting (Suraj)
- remove INTEL_DISPLAY_STATE_WARN (Suraj)
- change funcs prefix from snps_ to mtl_ (Suraj)

v3->v4
- add Bspec (Suraj)
- remove unnecessary init of VS/PE-O metadata (Suraj)
- add helper for computing number of rows (Suraj)
- fix num_rows's type (Jani, Suraj)
- declare num_rows (Suraj)
- change debug message when requesting VS/PE-O (Suraj)
- stick to solely changing VBT data into current structures (Jani)
- move iterator declaration to declaration block (Suraj)

v2->v3
- remove unnecessary braces from if block (Suraj)
- return -EINVAL instead of -1 (Suraj)

Michał Grzelak (8):
  drm/i915/bios: search for VBT #57 by default
  drm/i915/bios: store VBT #57's metadata in intel_vbt_data
  drm/i915/bios: print VS/PE-O port info
  drm/i915/bios: de/allocate VS/PE-O buffer for each port
  drm/i915/buf_trans: deconstify intel_ddi_buf_trans_entry
  drm/i915: override Snps's VS/PE when requested
  drm/i915: override Combo's VS/PE when requested
  drm/i915/bios: remove VS/PE-O warning

 drivers/gpu/drm/i915/display/intel_bios.c     | 276 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  14 +
 .../drm/i915/display/intel_ddi_buf_trans.c    | 147 ++++++----
 .../drm/i915/display/intel_ddi_buf_trans.h    |   2 +-
 .../gpu/drm/i915/display/intel_display_core.h |   7 +
 5 files changed, 376 insertions(+), 70 deletions(-)

-- 
2.45.2

