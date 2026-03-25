Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDs2Ej4vxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:53:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FFE32AD10
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D3910E147;
	Wed, 25 Mar 2026 18:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKG5YHPu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B17810E147;
 Wed, 25 Mar 2026 18:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464826; x=1806000826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GVae3CTSrtH+Kc1Oj64bSKKZEc8k5NYkyZXX1QvIwXQ=;
 b=ZKG5YHPuVVAK/jgJB6GfyPyvrDcAupVI7oxKlqq548S+Kzvfmf2k2QhU
 TafNy8tPMoeoj/1FmqxEW3762HrOhfdpSmplnhxvlVqwGV/TrEqRM5ons
 qj4LJDuWXUq6Idv7S3Kd2oh5C1X52POUnpNfiiAn9oaxigp03UlUMh4U0
 q4AGOBr5l7rjTOXmwspuMRpwkHMRv+6EAXDu3iv9al0j3y6N8VDY0C518
 jTt9p11CiHWEjVzHrjwY339VqFx9Dm0cpAz4RNawtWhd6tZTBqFu+3C4B
 nCeOaHZm2pyofb9vC047b+yJGm4OhBBvVTK/D5jrXbeDmzEb6drNoBJxv A==;
X-CSE-ConnectionGUID: 4/ZMZp0mSEmghzFbTKmD5g==
X-CSE-MsgGUID: cUcgDRyBTt+3/clFhAfa2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75399905"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75399905"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:53:46 -0700
X-CSE-ConnectionGUID: Gv9DMtunQ5qwGGUepGYgNA==
X-CSE-MsgGUID: urp2luB1Qr63ZSU2DxWftA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221872387"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:53:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915: More uncore nukage from display code
Date: Wed, 25 Mar 2026 20:53:29 +0200
Message-ID: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C9FFE32AD10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Ggt rid of more intel_uncore stuff from the display code:
- new intel_mchbar_read*() abstraction for MCHBAR registers
- some direct replacement of intel_uncore_{read,write}()
  with intel_de_{read,write}()

Ville Syrjälä (12):
  drm/i915/qgv: Use intel_de_read() for MTL_MEM_SS_INFO* reads
  drm/i915/mchbar: Provide intel_mchbar_read*() abstraction
  drm/i915/mchbar: Define the end of the MCHBAR mirror
  drm/i915/mchbar: WARN when accessing non-MCHBAR registers via
    intel_mchbar_read*()
  drm/i915/mchbar: Use intel_mchbar_read() instead of intel_de_read()
  drm/i915/mchbar: Use intel_mchbar_read*() instead of
    intel_uncore_read*()
  drm/i915/de: Add intel_de_read16()
  drm/i915/de: s/intel_de_read64_2x32()/intel_de_read64_2x32_volatile()/
  drm/i915/de: Add a simple intel_de_read64_2x32()
  drm/i915/vrr: Use intel_de_read64_2x32()
  drm/i915/mchbar: Use intel_de_read*() for MCHBAR register accesses
  drm/i915/rom: Use intel_de for SPI ROM register access

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 10 +--
 drivers/gpu/drm/i915/display/intel_bw.c       | 17 ++---
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_de.c       |  8 ++
 drivers/gpu/drm/i915/display/intel_de.h       | 18 ++++-
 .../drm/i915/display/intel_display_power.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_dram.c     | 33 +++-----
 drivers/gpu/drm/i915/display/intel_mchbar.c   | 75 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_mchbar.h   | 22 ++++++
 drivers/gpu/drm/i915/display/intel_rom.c      | 19 ++---
 drivers/gpu/drm/i915/display/intel_vblank.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |  6 +-
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |  7 +-
 drivers/gpu/drm/xe/Makefile                   |  1 +
 15 files changed, 172 insertions(+), 57 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h

-- 
2.52.0

