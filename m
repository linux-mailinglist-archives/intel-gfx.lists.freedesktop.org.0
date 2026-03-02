Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JdAG03UpWmvHAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:17:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EB41DE562
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3176610E581;
	Mon,  2 Mar 2026 18:17:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aR+jVvA8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9E210E57B;
 Mon,  2 Mar 2026 18:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772475465; x=1804011465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3NxunpgEDA6wEdvRbWGfKO+SHG7j5DiLz1uRjZx02Pc=;
 b=aR+jVvA85OmGT8CX9tjNdCoBFRZ1YobU8A9TiOEHkI2WSCFDrHTCMbYP
 lBHvx7Vkbmy2XhPKSdkwMCd+TkfF79eD95AKBRKecPEtMsfqoewx0N4PY
 A3Ki/06F69eQ/9chFHlgTqht4DDiJrscUBVmL/xqvaomdP6HYHLfiUxDK
 T6V/uM6WhHrMag/SmVeAUE6mc4OUg2iReRuQSFzLA2JksDtQDg8LT2UAf
 PnHAed2485aj5LNwCRkwb8BTzd+uDwe8pbBeWANboRpqGHM8lRKAnLkF0
 S3psqYJ4oQJ27WQDZTBB4CbIRtmk1cy/VBKfm5sGpmphFZtD2a31O3Mie w==;
X-CSE-ConnectionGUID: tx1ECQgvQz2EnaFSxJO4mQ==
X-CSE-MsgGUID: 4di9EErwRROq362zpDfVZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73561019"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73561019"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:17:45 -0800
X-CSE-ConnectionGUID: tEj3RyP4SOirCCRC5Fp1sw==
X-CSE-MsgGUID: 76yea8+FRNeRvQpOj6XMKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217741153"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:17:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/7] drm/{i915, xe}/frontbuffer: refactor,
 move calls to parent interface
Date: Mon,  2 Mar 2026 20:17:32 +0200
Message-ID: <cover.1772475391.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 24EB41DE562
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.988];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid]
X-Rspamd-Action: no action

Cleanups in frontbuffer code, and move the get/put/ref/flush_if_display
calls to the parent interface.

Jani Nikula (7):
  drm/i915/gem: relocate
    __i915_gem_object_{flush,invalidate}_frontbuffer()
  drm/i915/gem: unify i915 gem object frontbuffer function names
  drm/i915/overlay: convert from struct intel_frontbuffer to
    i915_frontbuffer
  drm/intel: fix @dpt kernel-doc for parent interface
  drm/{i915,xe}/frontbuffer: move frontbuffer handling to parent
    interface
  drm/i915/frontbuffer: call parent interface directly
  drm/i915/frontbuffer: reduce fb for frontbuffer abbreviation usage

 drivers/gpu/drm/i915/display/intel_bo.c       | 36 ----------
 drivers/gpu/drm/i915/display/intel_bo.h       |  5 --
 drivers/gpu/drm/i915/display/intel_fb.c       |  8 +--
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 37 +++-------
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 21 +++---
 drivers/gpu/drm/i915/display/intel_parent.c   | 21 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  7 ++
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 24 -------
 .../i915/gem/i915_gem_object_frontbuffer.c    | 69 ++++++++++++++++++
 .../i915/gem/i915_gem_object_frontbuffer.h    | 24 +++++--
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  4 +-
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_gem.c               |  6 +-
 drivers/gpu/drm/i915/i915_overlay.c           | 12 ++--
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/intel_bo.c         | 56 ---------------
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_frontbuffer.c   | 71 +++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_frontbuffer.h   |  9 +++
 include/drm/intel/display_parent_interface.h  | 13 +++-
 22 files changed, 250 insertions(+), 186 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_frontbuffer.c
 create mode 100644 drivers/gpu/drm/xe/display/xe_frontbuffer.h

-- 
2.47.3

