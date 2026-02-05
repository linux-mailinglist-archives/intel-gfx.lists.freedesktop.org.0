Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLjkKG4qhWmT9QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC5BF8622
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8264910E16A;
	Thu,  5 Feb 2026 23:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hmCLHEaQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6044D10E164;
 Thu,  5 Feb 2026 23:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770334826; x=1801870826;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=FOPlRYrZfnHjGSHJ2vbhHl8AEcdjsKmk8Tz/HgW24CI=;
 b=hmCLHEaQNvjR02mBolbd4rxcwJqWDfR3Cm73oVw/hx05svL6YokheWUz
 DXkoKV6nydr4/f2z8U/yIkYsaCRN4PjUeVor7Anf2oNqLHezQgEl88uM7
 7rDNE02ILj43V7sAjFf/cgi2fDrZWt6gdBIanwVjFVqBC0crkuO89f8UO
 w/oGhA5r5Gz8lbXpqHB1zMJ/tp01t9BCPjIDTt/EAi5/Iuqj2WkTM+3JJ
 YqfUd3i6hGKdfoL+eqKroHA2Nk90zafTRdnczF+QcEKIQ65Z0Fz2y9nOC
 ghlZXfAyF5y7N13l7g87NkAsyqJEaO+FDrFxhiNKpaK9r2PRBFOiVTski Q==;
X-CSE-ConnectionGUID: RGhgcc6yS5q1Q7Nfq7SXAg==
X-CSE-MsgGUID: z5QifuCiTOOeaZJtjAO5xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82658672"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82658672"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:25 -0800
X-CSE-ConnectionGUID: F56NVMJQQ6KCyPd2x+hB6g==
X-CSE-MsgGUID: 21bp/I6hQHGabEJkIxcy0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210499993"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.82])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 00/15] Basic enabling patches for Xe3p_LPG and NVL-P
Date: Thu, 05 Feb 2026 20:39:28 -0300
Message-Id: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NwQqDMBBEf0X23C1JrAF76n8UDzbZ6IJGSWxok
 fx7U3vtZeANzJsdIgWmCNdqh0CJIy++gDpVYMbeD4RsC4MSSgtZC/RpwhWfa9wC9TP7AUm35Ho
 n7aOVUHZrIMevw3nvCo8ctyW8j4skv+3PVuKPLUkUqJuaLs5J0VhzY7/RdDbLDF3O+QOdv2Dos
 gAAAA==
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CCC5BF8622
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
 drivers/gpu/drm/xe/xe_pci.c                        | 21 ++++++
 drivers/gpu/drm/xe/xe_platform_types.h             |  1 +
 drivers/gpu/drm/xe/xe_reg_whitelist.c              |  8 +++
 drivers/gpu/drm/xe/xe_tuning.c                     | 22 +++++-
 drivers/gpu/drm/xe/xe_wa.c                         | 43 ++++++++++++
 drivers/gpu/drm/xe/xe_wopcm.c                      | 15 +++-
 include/drm/intel/pciids.h                         | 12 ++++
 16 files changed, 259 insertions(+), 25 deletions(-)
---
base-commit: 75acb0a8b6f69c6429941e6845df2af94ed15939
change-id: 20260130-nvl-p-upstreaming-e69efaf1db91

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

