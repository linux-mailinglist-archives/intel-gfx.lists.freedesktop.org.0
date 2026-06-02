Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBKoNM2rHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ABC62C30B
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7270710EE4D;
	Tue,  2 Jun 2026 10:09:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4PuQfKe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3445C10EE4F;
 Tue,  2 Jun 2026 10:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394954; x=1811930954;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z009C9N5EKvtyfqu/VTXT9lHMe1S3/7lViNbMcWNOx8=;
 b=V4PuQfKeplbhb/6slBnSf7Fo23gsGHAubnx4QPFlLsdMVELhedS7YCv+
 QB+ZLqklqKE1eVrq4+BQGnPK9oKKrCGZwNH5AZQv9iOl1CWyCexoNuXIh
 7aihDB5Glg2bb3uZiMekdwt74NtCYSIzKGKtLcIrdn5sBLTfVvnkVWJXN
 h/FSawVqQ0Ey+udBvdrnGx+i707Q2iFKZwS/sa1wsWGKCpOW2z1PE4goE
 a/Jhctwu9HCtYJIELYIlEvvrnU/XlaLuEdU2/draoKP3/MYwLgliH0tF/
 T1YGaUsA0q1EqyAS6sk0k0UP/tHsEXlU82uGInR7CdDsSZ75BelUzDAzU A==;
X-CSE-ConnectionGUID: 2ULL8qNyQhaechNkl0Ng3Q==
X-CSE-MsgGUID: BBLa07n0SWy3xoVNpC7/fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81038231"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81038231"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:14 -0700
X-CSE-ConnectionGUID: nwl/BcvKQjO6U85Rj9fKcA==
X-CSE-MsgGUID: v0M+LzUmQOGxv3xhrS/nkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="245669976"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 0/6] drm/{i915,
 xe}/panic: drop dependency on struct intel_framebuffer
Date: Tue,  2 Jun 2026 13:09:03 +0300
Message-ID: <cover.1780394867.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: E0ABC62C30B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Having i915 and xe panic code depend on struct intel_framebuffer is a
bit annoying. Break that dependency by storing the tiling function
pointer in struct intel_panic, and storing intel_panic pointer in struct
drm_scanout_buffer .private member. Do a bunch of cleanups first to make
it easier.


Cc: Jocelyn Falempe <jfalempe@redhat.com>

Jani Nikula (6):
  drm/i915/panic: split out i915_gem_panic.[ch]
  drm/i915/panic: squash i915_panic.c into i915_gem_panic.c
  drm/i915/panic: remove the extra layer from panic hooks
  drm/{i915,xe}/panic: pass obj to panic setup
  drm/xe/panic: store fb bo in struct intel_panic
  drm/{i915,xe}/panic: drop dependency on struct intel_framebuffer

 drivers/gpu/drm/i915/Makefile                 |   4 +-
 .../drm/i915/display/intel_display_types.h    |   1 -
 drivers/gpu/drm/i915/display/intel_parent.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_parent.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_plane.c    |   8 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   7 -
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 128 ---------------
 drivers/gpu/drm/i915/gem/i915_gem_panic.c     | 147 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_panic.h     |  11 ++
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_panic.c             |  35 -----
 drivers/gpu/drm/i915/i915_panic.h             |   9 --
 drivers/gpu/drm/xe/display/xe_panic.c         |  26 ++--
 include/drm/intel/display_parent_interface.h  |   4 +-
 14 files changed, 191 insertions(+), 201 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.h
 delete mode 100644 drivers/gpu/drm/i915/i915_panic.c
 delete mode 100644 drivers/gpu/drm/i915/i915_panic.h

-- 
2.47.3

