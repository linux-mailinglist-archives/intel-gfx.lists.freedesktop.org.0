Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKsELjXuBmrOowIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 11:58:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD1D54CE04
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 11:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D08110F4DE;
	Fri, 15 May 2026 09:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T/kEsN0V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A001710E0F3;
 Fri, 15 May 2026 09:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778839089; x=1810375089;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T+yHUO7WVfxoQVY5CdQsCD5439j0m53pXLBNoct6L4s=;
 b=T/kEsN0VpewcSefoe2lNjlGtyVmXqb98GpyRISximRJljJVdxGW1REbj
 65fzv/ms+gZ0DP82J+6ORJlguN9W8kvjlyFoKc8ywaYyBnqjA5P9n54jt
 tm0fch2GLoAqu5bAwu1gDyMM79VPcMYDzzvbfLFegZjtpA2e3JgyGR1F/
 QGd7f/Ts4ui6lxUZrgJcgVDHTZzYd6vN5R+jLl+N+HZ2/spMcwi0miDW9
 wr1dKPY2T3QZ/5MdJUMRm7NkGQjqOLmgTsInQ57xI0vqPY4ZwvaUlDZld
 vobsznr98XHZ2ktIBdfSbpE/d52CJ5k5EpZImdsRxz4gmN/XBaTWQDrKU Q==;
X-CSE-ConnectionGUID: dqoM6/JvSKOFNHuci3ydPg==
X-CSE-MsgGUID: xGRv4oOqSmuwDYkV9GWIuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="82360377"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="82360377"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 02:58:09 -0700
X-CSE-ConnectionGUID: UWxX8XcHSWmyU58ZAmWQnA==
X-CSE-MsgGUID: jirng/1UQziFlxn1E7g5Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="235601801"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 02:58:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] PSR2 SDP on Prior Scanline workarounds
Date: Fri, 15 May 2026 12:57:52 +0300
Message-ID: <20260515095756.2799483-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Rspamd-Queue-Id: 3AD1D54CE04
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

This patch set implements two workarounds:

1. There are problem in PSR2 SDP on Prior Scanline implementation in
   several panels due to eDP1.4b spec ambiguity. Two tackle this there is
   Intel specific DPCD register for panel to indicate implementation
   compatibility with Intel source implementation. eDP1.5 doesn't have
   this problem.

2. In NVL there is an HW optimization done. When there is an SU triggered in
   Capture state, Link will be kept ON post Capture CRC SDP. Before valid SU
   pixels Intel source will transmit dummy pixels. Some TCONS are improperly
   considering these dummy pixels as a valid pixel data. Prior NVL link was
   was turned of even if there was SU triggered in Capture state and no dummy
   pixels were transmitted. These dummy pixels are problem only if SDP on
   prior scanline is used and Early Transport is not in use. The workaround is
   to start SU area always at scanline 0.

v2:
  - add INTEL_DPCD_ prefix to definitions
  - use intel_display_wa

Jouni Högander (4):
  drm/i915/psr: Add defininitions for INTEL_WA_REGISTER_CAPS DPCD
    register
  drm/i915/psr: Read Intel DPCD workaround register
  drm/i915/psr: Apply Intel DPCD workaround when SDP on prior line used
  drm/i915/psr: Apply SDP on prior scanline workaround for Xe3p

 .../drm/i915/display/intel_display_types.h    |  1 +
 .../gpu/drm/i915/display/intel_display_wa.c   |  2 +
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dpcd.h     | 15 ++++++
 drivers/gpu/drm/i915/display/intel_psr.c      | 49 +++++++++++++++++--
 5 files changed, 63 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpcd.h

-- 
2.43.0

