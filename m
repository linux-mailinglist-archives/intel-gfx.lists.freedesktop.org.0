Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AXAMcJ5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1682653C3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6110210E25B;
	Wed, 11 Mar 2026 14:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GwGlhpSN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553A710E205;
 Wed, 11 Mar 2026 14:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238709; x=1804774709;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i0rBPNByCVLTUnUdjlHI6tfVEPx9owbGAo6Uz9lcP4w=;
 b=GwGlhpSNww8rWrzGLd6ycjYuG2GKUUoOWKuy6Tf8GD5qqRRUmyMA6QhE
 QNlc5TapMFS8NGCuC3ZH6wqkxqNpSA1MnH1IWdLMw5enb5aInyKaj45SC
 tNBHC9KhCg3qvsXdxwj8nZ5qbvD8YefjtSYbVKe3MuH5aK/wiN2H05vqO
 iekj3Fac3Tytqy4iGIUZeoS4S5MwkY+myhTq6a5NabpPmqtq6Qaxux1k8
 GJOWkFcb6yFofKL5tmqkDR/8kC/lShGDEHU8X0WK45xQKN6GcMjLbLWQv
 biOr5XmS8+cSErgpsgcKpNUEYUYwnQSLX83eQ1JtkgQqjMV1HlBz4SUxd Q==;
X-CSE-ConnectionGUID: zZmsIW79RYi6G+OUFUCGbQ==
X-CSE-MsgGUID: wf6IOZ+9Tmy9JSCqoOPtRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74427358"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74427358"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:24 -0700
X-CSE-ConnectionGUID: q7DMtjNWRCSLGZGdkSvTiw==
X-CSE-MsgGUID: tuWkjyqiS72lL/Udd0OuJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219729342"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/{i915,xe}: move bo stuff to parent interface
Date: Wed, 11 Mar 2026 16:18:13 +0200
Message-ID: <cover.1773238670.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: CD1682653C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action


Jani Nikula (5):
  drm/i915: move i915 specific bo implementation to i915
  drm/xe: rename intel_bo.c to xe_display_bo.c
  drm/{i915,xe}/bo: move display bo calls to parent interface
  drm/i915/fb: make intel_fb_bo.c less dependent on display
  drm/{i915,xe}: move framebuffer bo to parent interface

 drivers/gpu/drm/i915/Makefile                 |   2 +-
 drivers/gpu/drm/i915/display/intel_bo.c       |  66 ++++++--
 drivers/gpu/drm/i915/display/intel_bo.h       |   9 +
 drivers/gpu/drm/i915/display/intel_fb.c       |  12 +-
 drivers/gpu/drm/i915/display/intel_fb_bo.c    | 101 ------------
 drivers/gpu/drm/i915/display/intel_fb_bo.h    |  25 ---
 drivers/gpu/drm/i915/i915_bo.c                | 156 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_bo.h                |   9 +
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/xe/Makefile                   |   4 +-
 drivers/gpu/drm/xe/display/intel_bo.c         |  53 ------
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +
 .../{intel_fb_bo.c => xe_display_bo.c}        |  63 ++++---
 drivers/gpu/drm/xe/display/xe_display_bo.h    |   9 +
 include/drm/intel/display_parent_interface.h  |  22 +++
 15 files changed, 311 insertions(+), 224 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h
 create mode 100644 drivers/gpu/drm/i915/i915_bo.c
 create mode 100644 drivers/gpu/drm/i915/i915_bo.h
 delete mode 100644 drivers/gpu/drm/xe/display/intel_bo.c
 rename drivers/gpu/drm/xe/display/{intel_fb_bo.c => xe_display_bo.c} (57%)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_bo.h

-- 
2.47.3

