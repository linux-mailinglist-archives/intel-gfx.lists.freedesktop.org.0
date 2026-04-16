Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDvrJK9Q4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 04:59:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE22409CB6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 04:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2D110E0F0;
	Thu, 16 Apr 2026 02:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XR3FGOeW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3525F10E0F0;
 Thu, 16 Apr 2026 02:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308395; x=1807844395;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xqgMJ0gyVUViyQoUQOOUGgMSePUyTTje+QS6DqL+sTM=;
 b=XR3FGOeWS7DD8EtCzCxWsyTDcBp2pWPCw4oRtrVLRyxd0BLYgUJ3VzA8
 /w/lFJcvjMEICvDXCyC3Gii4UAYtmtjoELbtgFK9IUuqj56VIqBShSpfm
 hOV9KDOmTW+w5KLvn8QRiZ11DCxBNYMrFdaLmfC4cZE1Qxh1EcGYHEoi6
 RlAt7mqSh4OcoSM0ZCOsAGecR+3VUkMe1iV+cS5cEQxZrci0PqTGvKGI1
 eKEeaJ4JKsMn9xNjghWVqiC6lRMmzZ/gYdILHlkhwbeh3l+wa7TNOGPuR
 ykKyQE1e09qVU1pqD59Ik9bRdzps3GQO9zc22eSyaxFfeV1S6fiUxXGv4 Q==;
X-CSE-ConnectionGUID: 4eWbvX59RnuUI2TOYnY/TQ==
X-CSE-MsgGUID: iXpgmam9SLm4y8bShTq4ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997521"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997521"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:54 -0700
X-CSE-ConnectionGUID: +DQ8p0ZXSkKU/gicOx9yJA==
X-CSE-MsgGUID: Og1Esfj0SYqHizQIbSkEwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755019"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/12] Add support for Common SDP Transmission Line
Date: Thu, 16 Apr 2026 08:14:50 +0530
Message-ID: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 4EE22409CB6
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

Rev3:
 - Introduce new files for handling the Data Island Packets (DIPs)
   programming in one place. (Ville)
 - Extract the Transmission Line programming for
   HDMI Extended Metadata Packet (EMP) and Adaptive Sync SDP (AS SDP)
   i.e. EMP_AS_SDP_TL in the new file.
 - Add programming for Common Base SDP Transmission lines and other
   stagger offsets in the new file.
 - Add a #TODO to extract other helpers that deal with Data Island Packets
   and VIDEO_DIP registers.
 - Place the HAS_* Macros related to DIP in the intel_dip.h file
   instead of intel_display_devices.h (Jani) 
 - Make function names more descriptive and avoid overuse of multiple
   acronyms. (Jani)

Note:
 - Though I have fixed the naming as suggested in most places, I
   have retained HAS_EMP_AS_SDP_TL for the following reasons:
   1) Lack of an apt name that avoids the acronym for
      'Extended Metadata Packet Adaptive Sync Secondary Packet Transmission
      Line'.
   2) Keeping this name makes it easier to find and map with the exact name
      for such a complex register name.

   However, I am open to suggestions for a better name.

Ankit Nautiyal (11):
  drm/i915/dip: Add new file to handle Data Island Packet hardware
  drm/i915/vrr: Use the helper to write EMP_AS_SDP_TL register
  drm/i915/intel_dip: Add check for DP encoder
  drm/i915/dp: Add helper to get AS SDP Transmission Line
  drm/i915/display: Add crtc state for DIP transmission lines
  drm/i915/dip: Store and use AS SDP transmission line from crtc state
  drm/i915/display: Add HAS_COMMON_SDP_TL macro
  drm/i915/dp: Store SDP transmission lines in crtc_state
  drm/i915/dp: Introduce helpers to enable/disable CMN SDP Transmission
    line
  drm/i915/dip: Enable Common SDP Transmission line
  drm/i915/display: Dump DIP Transmission lines

Arun R Murthy (1):
  drm/i915/nvl: Add register definitions for common SDP Transmission
    Line

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   9 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   5 +
 drivers/gpu/drm/i915/display/intel_dip.c      | 197 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dip.h      |  67 ++++++
 drivers/gpu/drm/i915/display/intel_dip_regs.h |  36 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  23 ++
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  13 +-
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |   6 -
 drivers/gpu/drm/xe/Makefile                   |   1 +
 13 files changed, 353 insertions(+), 17 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dip.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dip.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dip_regs.h

-- 
2.45.2

