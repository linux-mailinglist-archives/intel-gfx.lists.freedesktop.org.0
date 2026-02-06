Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDkfA680hmneKQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D23101FCE
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F04E10E8A1;
	Fri,  6 Feb 2026 18:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WdhMRbz6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF2710E89C;
 Fri,  6 Feb 2026 18:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770402987; x=1801938987;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=ARrxUjq7Pqy1KHsjldcFllZKRjX6O+CRDO8E1l8Xf6s=;
 b=WdhMRbz6g0PVjVLWZ3HF85uB6fHSPEy7R2+dq2Ub0d5MU5FfWePHoCbe
 SU90nX9g231MJm9j9yU1bcgCD1rbXbGcChMSasqcTOZMAffDqu9VH8I77
 +wEOMftoYaVvWWjpscmwhWSqZ23IsldaA+u6BPZJ17Qad6Br0FNQgvpvF
 sTTIbczdF2A6NupQjJQzNH7I+VIZiuwqVsyoQR8RJMunp8e2cF4Vyj5+E
 yDys9+zaUNyiJr+vLFdnJLvU3Lrmhr2fwVcMBZ9a7MqbiHKXgbBW4qOL3
 WdItTMD++8whbB+0fd6yGABi81U7yW36TpBvEFovdZCQSfdJeqb5zCxfs Q==;
X-CSE-ConnectionGUID: XCUXLS0oS5S2tugTZFnD8A==
X-CSE-MsgGUID: DnedJdTtSaS9AQff9tF8kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71516921"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71516921"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:26 -0800
X-CSE-ConnectionGUID: J8MfI4zARx2W8k7OiDCOQA==
X-CSE-MsgGUID: Zsqcc3vyRb+FYdEYuztfXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210224675"
Received: from vverma7-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.159])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:23 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 00/15] Basic enabling patches for Xe3p_LPG and NVL-P
Date: Fri, 06 Feb 2026 15:35:56 -0300
Message-Id: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23NwQqDMAyA4VeRnteRVC24095j7OBqqgGt0rqyI
 b77qrts4CXwB/JlEYE8UxCXbBGeIgceXYr8lAnT1a4lyU1qoUBpwByki72c5HMKs6d6YNdK0hX
 Z2mLzqFCku8mT5ddu3u6pOw7z6N/7i4jb9qulcaBFlCB1mVNhLULZmCu7mfqzGQexaVH9CuWRo
 JJQkcHCAhij/4R1XT9p5iwd9AAAAA==
X-Change-ID: 20260130-nvl-p-upstreaming-e69efaf1db91
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, Nitin Gote <nitin.r.gote@intel.com>, 
 Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>, 
 Mallesh Koujalagi <mallesh.koujalagi@intel.com>, 
 Tejas Upadhyay <tejas.upadhyay@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Aradhya Bhatia <aradhya.bhatia@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 56D23101FCE
X-Rspamd-Action: no action

NVL-P is a new Intel platform that comes with the following IPs:

- Xe3p_LPG graphics;
- Xe3p_LPM media;
- Xe3p_LPD display.

Enabling patches for Xe3p_LPM and Xe3p_LPD are already integrated in our
driver.  In this series we add patches enabling Xe3p_LPG and then follow
up with patches enabling NVL-P as a platform in our driver.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v3:
- Adapt "drm/xe/xe3p_lpg: Add support for graphics IP 35.10" to latest
  upstream changes.
- Incorporate review feedback from v1 in "drm/xe/xe3p_lpg: Add MCR
  steering".
- Link to v2: https://patch.msgid.link/20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com

Changes in v2:
- Added patch "drm/xe/nvlp: Bump maximum WOPCM size", which was missing
  in v1.
- Incorporated review feedback.  Please see the changelog in the
  individual patches for details.
- Dropped patch "drm/xe/nvlp: Define GuC firmware for NVL-P".  I'll
  apply this separately to topic/xe-for-CI and decided to drop from v2
  to avoid accidentally applying it to drm-xe-next.
- Link to v1: https://patch.msgid.link/20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com

---
Aradhya Bhatia (1):
      drm/xe/xe3p_lpg: Set STLB bank hash mode to 4KB

Dnyaneshwar Bhadane (1):
      drm/xe/nvlp: Attach MOCS table for nvlp

Gustavo Sousa (3):
      drm/xe/pat: Differentiate between primary and media for PTA
      drm/xe/xe3p_lpg: Update LRC sizes
      drm/xe/nvlp: Bump maximum WOPCM size

Matt Roper (7):
      drm/xe/xe3p_lpg: Add new PAT table
      drm/xe/xe3p_lpg: Add MCR steering
      drm/xe/xe3p_lpg: Add LRC parsing for additional RCS engine state
      drm/xe/xe3p_lpg: Disable reporting of context switch status to GHWSP
      drm/xe/xe3p_lpg: Drop unnecessary tuning settings
      drm/xe/xe3p_lpg: Extend 'group ID' mask size
      drm/i915/nvlp: Hook up display support

Shekhar Chauhan (3):
      drm/xe/xe3p_lpg: Add support for graphics IP 35.10
      drm/xe/xe3p_lpg: Add initial workarounds for graphics version 35.10
      drm/xe/nvlp: Add NVL-P platform definition

 .../gpu/drm/i915/display/intel_display_device.c    |  1 +
 .../gpu/drm/xe/instructions/xe_gfxpipe_commands.h  | 10 +++
 drivers/gpu/drm/xe/regs/xe_gt_regs.h               | 20 +++++-
 drivers/gpu/drm/xe/xe_bo.c                         |  4 +-
 drivers/gpu/drm/xe/xe_device_types.h               |  8 ++-
 drivers/gpu/drm/xe/xe_gt_mcr.c                     | 18 ++++-
 drivers/gpu/drm/xe/xe_lrc.c                        | 18 ++++-
 drivers/gpu/drm/xe/xe_mocs.c                       |  1 +
 drivers/gpu/drm/xe/xe_pat.c                        | 82 +++++++++++++++++++---
 drivers/gpu/drm/xe/xe_pci.c                        | 23 ++++++
 drivers/gpu/drm/xe/xe_platform_types.h             |  1 +
 drivers/gpu/drm/xe/xe_reg_whitelist.c              |  8 +++
 drivers/gpu/drm/xe/xe_tuning.c                     | 22 +++++-
 drivers/gpu/drm/xe/xe_wa.c                         | 43 ++++++++++++
 drivers/gpu/drm/xe/xe_wopcm.c                      | 15 +++-
 include/drm/intel/pciids.h                         | 12 ++++
 16 files changed, 261 insertions(+), 25 deletions(-)
---
base-commit: ab5b6da7d4879640bce3197597e0bc707bd60ab5
change-id: 20260130-nvl-p-upstreaming-e69efaf1db91

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

