Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFFJDjWjBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:13:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B700F536D78
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4927610EF38;
	Wed, 13 May 2026 16:13:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVcTqEci";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F07B10EF69;
 Wed, 13 May 2026 16:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688817; x=1810224817;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gj0f4i27u2rXS/pj6+vTwFzGKJREIGDDdAROuya0Qts=;
 b=BVcTqEci+iVRFvQlE6lKk3yCnfWHiwaOgXFQU9YDjCtw41oxLCWfbn5K
 vBKfzM5IrLHo2xIbyitReIX5P+c5VuWnemvJMzEdDYVi4GIgYDb1rMT5h
 cVtqM5lswFGYelYDGA64frVpgliTuDYTx7oUOc4mkMq6wrAynbj7sbSTm
 AaKiHFL5ZEs7Sf2mDcMDa1aGZT9LnztJX0g+Z+RI1s5Q0FY1Dy9g1mhrO
 C0mJaxBAuOqcnEk5BseQZDGUbrWUU/AcnJy5PAJKNnGcvVASO6trFyF6X
 aQNiy5aQJ1QA3QIch1cSOxP3+WHoLwoHWABRDeoOztL+zcv/boMNeaOPY g==;
X-CSE-ConnectionGUID: nLdRF8myQDaYxXwIQ+hvHQ==
X-CSE-MsgGUID: sKqrEupPSDyu9gcN54uCEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79517149"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="79517149"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:36 -0700
X-CSE-ConnectionGUID: F2aDSXItT52eJMQd8e6Ycw==
X-CSE-MsgGUID: if1l0/yJSDeShhBwGwrI6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="261631579"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v4 0/8] drm/i915: add display irq hooks
Date: Wed, 13 May 2026 19:13:23 +0300
Message-ID: <cover.1778688699.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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
X-Rspamd-Queue-Id: B700F536D78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

v4 of [1], splitting patches 5-6 into two, resulting in patches 5-8
here. There's no diff between the end results of v3 and v4, just the
intermediate steps are there.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1778666967.git.jani.nikula@intel.com

Jani Nikula (8):
  drm/i915/irq: deduplicate dg1_de_irq_postinstall() and
    gen11_de_irq_postinstall()
  drm/i915/irq: constify pipe stats parameters
  drm/i915/irq: add display irq funcs, start with
    intel_display_irq_reset()
  drm/i915/irq: add intel_display_irq_postinstall() to irq funcs
  drm/i915/irq: add platform specific display irq ack functions
  drm/i915/irq: add platform specific display irq handler functions
  drm/i915/irq: add intel_display_irq_ack() to irq funcs
  drm/i915/irq: add intel_display_irq_handler() to irq funcs

 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 238 +++++++++++++++---
 .../gpu/drm/i915/display/intel_display_irq.h  |  37 +--
 drivers/gpu/drm/i915/i915_irq.c               | 182 +++++---------
 drivers/gpu/drm/xe/display/xe_display.c       |   6 +-
 5 files changed, 277 insertions(+), 189 deletions(-)

-- 
2.47.3

