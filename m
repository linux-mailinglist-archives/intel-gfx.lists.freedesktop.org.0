Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKWmCOgB5mkvqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 12:37:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF9A429627
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 12:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B99510E4BF;
	Mon, 20 Apr 2026 10:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtSrq+vo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BAE10E4D8;
 Mon, 20 Apr 2026 10:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776681443; x=1808217443;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/wJwPyff9tbc2/ZFYEIXSwRumi7Y931UbJviRE8cGHI=;
 b=HtSrq+voALkhZ7Q98unENjHu2zQGKzfSIwmyP5gKnIRSd6AYE+mCHVNI
 u4QFLr1bR3Q5Us+iYyjRW69Atvul8SCr2bEeZsvuRdevhKtiyK+TRHlbl
 zdxH8x3sGjkVDm67YZeGDxjENmyxWrPhzjRQd2qUWd+2dE0e3jClw3eId
 h/f/eYIoYpYidx4I5U33ShNPZd2fqyUKO+ZMYW+5+RpZ33S3R9sVEpKiy
 +ifAmh2tN0mQT5wHKTN3CvPyvg1awjjUohcqBmgleUTKWXJe0eQgrY90J
 1G8wJlnObYONxfjJr0DHxgvhavzpS4+1QFsxmwxp5ptWTvR44DHesw3tf g==;
X-CSE-ConnectionGUID: zE2OmpGUR8ebgTOO6WDvBg==
X-CSE-MsgGUID: l9DbcCAKTGq2Dk6iz7D56g==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81464749"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="81464749"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 03:37:23 -0700
X-CSE-ConnectionGUID: XWH/iejgQ3+UoEWMXwUG8A==
X-CSE-MsgGUID: 4+R99/pDRcmdN96UDJ2Alw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="231554559"
Received: from vpanait-mobl.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.99])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 03:37:20 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 0/8] drm/i915: move more display dependencies from i915
Date: Mon, 20 Apr 2026 13:30:42 +0300
Message-ID: <20260420103705.3453499-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3EF9A429627
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series continues my work of refactoring the clock gating
initialization, so that i915 doesn't do display-specific stuff.

With this, all register dependencies should be gone.

Changes in v3, mostly addressing Jani's comments:

	* Changed the shared Gen9 display clock gating helper not to
          include i915_drv.h, to_i915() and HAS_LLC();
	* Kept SKL_DE_COMPRESSED_HASH_MODE out of the shared Gen9
          helper and programmed it only from the SKL/KBL wrappers;
	* Moved the remaining ILK display register definitions from
          i915_reg.h to intel_display_regs.h;
	* Removed i915_reg.h from intel_display_clock_gating.c;
	* Replaced i915-only platform checks in display code with
          display->platform.* checks;

Please review.

Cheers,
Luca.


Luca Coelho (8):
  drm/i915: move SKL clock gating init to display
  drm/i915: move KBL clock gating init to display
  drm/i915/display: move CFL clock gating init to display
  drm/i915/display: move BXT clock gating init to display
  drm/i915/display: move GLK clock gating init to display
  drm/i915/display: move HSW and BDW clock gating init to display
  drm/i915/display: move pre-HSW clock gating init to display
  drm/i915: remove HAS_PCH_NOP() dependency from clock gating

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../i915/display/intel_display_clock_gating.c | 255 ++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  27 ++
 .../gpu/drm/i915/display/intel_display_regs.h |  31 +++
 drivers/gpu/drm/i915/i915_reg.h               |  31 ---
 drivers/gpu/drm/i915/intel_clock_gating.c     | 226 ++--------------
 6 files changed, 331 insertions(+), 240 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h

-- 
2.53.0

