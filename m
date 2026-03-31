Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODxJEIrry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A5736BECA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECAF210EA2A;
	Tue, 31 Mar 2026 15:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXSnIz3Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87CEB10EA2A;
 Tue, 31 Mar 2026 15:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971783; x=1806507783;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8ShdPhyG9HtFLOJ8fSf2ggMCAZB/nSr8rkTDH6wuxEU=;
 b=ZXSnIz3Y883B/qNKAR49Nue4/lPcZvLyww+UQaqim7qW4/q5Tv4KYM/i
 z9AMsCJxGqjwlq76o9zfPShgrOu42W4YxHdWydATj1F6L7vlwoq1jsHlb
 c7E66X7Nyl0S058XabB0p76i9KhXDmgtwfGtnDXCnPLqKm+MMj3da4SF0
 Nmd/AuY8V3SrWvmrQ3Z10mLrW1Qc8QWU1dRxW15AbMQPE7eyeDfvKvM8Z
 VxrGiM7yD3rvcJr0hrFaw8sNESTjXEOeDqsyLsuIhLka647LqF6sLU3FU
 nrmdYqOafjXP8e0JvKbb1vbnOya4ph6mziCLXnN/La4RDaBr/bBpWRqKx g==;
X-CSE-ConnectionGUID: 5WHchRnESZG3pdF8FDAsqQ==
X-CSE-MsgGUID: 8+T7hSteRjictUEl+FVqww==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75884100"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75884100"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:03 -0700
X-CSE-ConnectionGUID: +V6oe0W1SYOkygjsK3jqfQ==
X-CSE-MsgGUID: V68cXimWQcCKQpWIUUDJeg==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:02 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/12] drm/i915: More uncore nukage from display code
Date: Tue, 31 Mar 2026 18:42:47 +0300
Message-ID: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: B8A5736BECA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Ggt rid of more intel_uncore stuff from the display code:
- new intel_mchbar_read*() abstraction for MCHBAR registers
- some direct replacement of intel_uncore_{read,write}()
  with intel_de_{read,write}()

v2: Fix bisection on xe (nop intel_uncore_read64())
    Deal with review comments

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
 drivers/gpu/drm/i915/display/intel_bw.c       | 17 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_de.c       |  8 ++
 drivers/gpu/drm/i915/display/intel_de.h       | 17 +++-
 .../drm/i915/display/intel_display_power.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_dram.c     | 33 +++-----
 drivers/gpu/drm/i915/display/intel_mchbar.c   | 79 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_mchbar.h   | 19 +++++
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

