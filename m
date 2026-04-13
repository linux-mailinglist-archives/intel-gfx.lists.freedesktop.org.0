Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLiEF1Bs3GnVQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC50C3E7238
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DD910E2FE;
	Mon, 13 Apr 2026 04:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYPZNwOT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7661610E2FD;
 Mon, 13 Apr 2026 04:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053324; x=1807589324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A8Y2Unw556thwbV2anK2SIWZ/13o/RG5/yzuyWS4KZk=;
 b=hYPZNwOTJ2H7amyf9RXBfQ3S9l5riDuMuoWrvfesUIcIot2CP47Q00dL
 RzlaEhX5+4UN5tQW249L6QIZxxN6qQDJY2hoYtD4wrAi4WEqVAFoIvXhZ
 7QRPcopivI00Audg1xanSr+KiW3pyd3x+Kc/TQ6ftkFv/ohpuTaoa8Zws
 urrFAELnDHUXGr8T71PCGzStWbk81e8Iwg3iA9Z9b6wju0knk1uG7wVam
 eT5oowQSOZcricdtrrjfIwSfDltHh/y82dUIMv+cTYZRBocprMjBk2J/L
 6fRXc7B7Su6hgcaGfEiMfV069qy8Q/1nN4x2qCH/XElYd6UjKUL9R6vtt A==;
X-CSE-ConnectionGUID: 4+UVnj2BSI+/Zl0A3frkBw==
X-CSE-MsgGUID: oZovnUtgSkCxLZ2RsQkxDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568732"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568732"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:44 -0700
X-CSE-ConnectionGUID: 7Pu5ZEU6SZaUAMW67r056g==
X-CSE-MsgGUID: B6qjkf7jSra/PFwEX6SfXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546590"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/12] Add support for Common SDP Transmission Line
Date: Mon, 13 Apr 2026 09:23:37 +0530
Message-ID: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: DC50C3E7238
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Xe3p_lpd introduces new register bits to program a common SDP
Transmission line that will be used by the Hardware to position the
SDPs. Along with this, another new register is also added to stagger
the different SDPs.

This series adds support for programming the Common SDP Transmission Line
(CMN_SDP_TL) and its stagger control registers.

Rev2:
 - Add tracking for AS SDP Transmission line first. Instead of directly
   programming it in the register, compute the state during
   compute_config_late() and write the value from crtc_state.
   Readout from the register through a vrr helper, since the register is
   defined in context of VRR and will be used for both DP and HDMI VRR
   packets.
 - Add support to track other SDP transmission lines, instead of stagger
   values.
 - Compute the transmission lines in compute_config_late path and add
   readout.
 - Always write the Common SDP Transmission line and other stagger
   values, whether the packets are sent or not.
 - Dump SDP transmission lines in crtc_state.

Ankit Nautiyal (11):
  drm/i915/vrr: Add HAS_EMP_AS_SDP_TL macro
  drm/i915/vrr: Add helper to readback EMP_AS_SDP_TL
  drm/i915/vrr: Separate out helper to write EMP_AS_SDP_TL
  drm/i915/dp: Add helper to get AS SDP Transmission Line
  drm/i915/dp: Add crtc state for AS SDP transmission line
  drm/i915/dp: Store and use AS SDP transmission line from crtc state
  drm/i915/display: Add HAS_CMN_SDP_TL macro
  drm/i915/dp: Store SDP transmission lines in crtc_state
  drm/i915/dp: Introduce helpers to enable/disable CMN SDP Transmission
    line
  drm/i915/dp: Enable Common SDP Transmission line
  drm/i915/display: Dump SDP Transmission lines

Arun R Murthy (1):
  drm/i915/nvl: Add register definitions for common SDP Transmission
    Line

 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +
 .../drm/i915/display/intel_display_device.h   |   2 +
 .../gpu/drm/i915/display/intel_display_regs.h |  19 ++
 .../drm/i915/display/intel_display_types.h    |  14 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 177 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  48 +++--
 drivers/gpu/drm/i915/display/intel_vrr.h      |   1 +
 10 files changed, 274 insertions(+), 11 deletions(-)

-- 
2.45.2

