Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id la40MY/alWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC7A15762D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0894610E2F6;
	Wed, 18 Feb 2026 15:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yse2d71K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9494110E0F8;
 Wed, 18 Feb 2026 15:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428491; x=1802964491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aEOPKcYceOkY3P0UI3fDpZA26VpXWiqTOPgXT8DXaEg=;
 b=Yse2d71K6j1tyhHj0LqONII6AtDsdizcVBg8eQBL9K72awDxmsTTAuZi
 29E0qk2VSF/RDP89zgUqmOhOKqaVMQTzuANVRR60c+TIG9QzERV8ythOZ
 D7Sk6KI62TmQfYv15Q/MTcXQ4U0Kn82TKWm9dxofhXGReZ8GtbpwAIMY2
 bN2wROH+bA4ilpl0r/NSM9pS6DK0sExT3Bc1m5BR3l6hrkV43/kEoXNYg
 7US0KkF/14N7aqeSoQxXDwwkK10SJoa4LksKFOUZnyC69EQnddRw6c3cZ
 3C5W0mc45qrZ9EupNdkfpf19K2eVKIsHzD3vR/FX4w9ppnhM8gOiFYra2 g==;
X-CSE-ConnectionGUID: Uk0uu1EUQwuw0OtlWd+GOA==
X-CSE-MsgGUID: zdhRSoUdSnuOHHQVjps/QA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72420142"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="72420142"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:11 -0800
X-CSE-ConnectionGUID: WwdoTs4uTM2QQyEL2j03XQ==
X-CSE-MsgGUID: dBpQFWsTTcOcn43oF6PVHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="214335047"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:10 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/19] drm/i915/overlay: Convert to parent interface
Date: Wed, 18 Feb 2026 17:27:47 +0200
Message-ID: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0AC7A15762D
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Split the overlay code into i915 vs. display parts and introduce
and new parent interface for the display->i915 calls.

The interface is rather verbose due to the interruptible ioctl
design of the overlay code. Ideally we'd implement the overlay
as a drm plane and tell it to flip via MMIO writes to OVADD,
at which point the parent interface could be limited to just
two functions to repartition the render cache as needed.
Maybe one day...

Smoke tested on i830 and i965gm.

Ville Syrjälä (19):
  drm/i915/overlay: Remove GPU hang snapshot stuff
  drm/i915/overlay: Track current frontbuffer_bits
  drm/i915/overlay: Extract i915_overlay_is_active()
  drm/i915/overlay: Remove redundant overlay->active
  drm/i915/overlay: Relocate the underrun check
  drm/i915/overlay: Introduce i915_overlay_obj_lookup()
  drm/i915/overlay: Use struct drm_gem_object as the type
  drm/i915/overlay: Extract i915_overlay_reset()
  drm/i915/overlay: Extract i915_overlay_setup()
  drm/i915/overlay: Extract i915_overlay_cleanup()
  drm/i915/overlay: Abstract buffer (un)pinning
  drm/i915/overlay: Rename low level i915 specific functions
  drm/i915/overlay: Adjust i915 specific interfaces
  drm/i915/overlay: Make i830_overlay_clock_gating() i915 specific
  drm/i915/overlay: s/dev_priv/i915/
  drm/i915/overlay: Split 'struct intel_overlay'
  drm/i915/overlay: Don't use fetch_and_zero() in display code
  drm/i915/overlay: Move i915 specific code into i915_overlay.c
  drm/i915/overlay: Convert overlay to parent interface

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |   2 -
 .../drm/i915/display/intel_display_snapshot.c |   4 -
 drivers/gpu/drm/i915/display/intel_overlay.c  | 584 ++----------------
 drivers/gpu/drm/i915/display/intel_overlay.h  |  48 --
 drivers/gpu/drm/i915/display/intel_parent.c   |  76 +++
 drivers/gpu/drm/i915/display/intel_parent.h   |  26 +
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 drivers/gpu/drm/i915/i915_overlay.c           | 517 ++++++++++++++++
 drivers/gpu/drm/i915/i915_overlay.h           |  11 +
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 include/drm/intel/display_parent_interface.h  |  33 +
 14 files changed, 726 insertions(+), 586 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_overlay.c
 create mode 100644 drivers/gpu/drm/i915/i915_overlay.h

-- 
2.52.0

