Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKFvGBId+WlB5wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:26:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32EE4C45DA
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6966C10E0D3;
	Mon,  4 May 2026 22:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GjGidqkT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AFC10E0D3;
 Mon,  4 May 2026 22:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777933581; x=1809469581;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XV0PitfFltDWY+xShSuyD0HO6T0Z34hQ9KXt1BxVt9M=;
 b=GjGidqkTLXtlJ/53vjWVn5o00op4jGhW+qtUaGjA/lAiq5LSutBvqK7Y
 7P5HlvBXPB+BpeO+W7sEs5YUzi7nf9tqStd8E8XWvjEowLmU/l9zSF2VZ
 eLiPE9XN6a2wTZpnadih4UjvTAqZdM5pvtVxEokAGvQ9XVdkAGJQBhK1a
 EDL27Xuuu+araTY0NYSblHuXlfFURdP39LtK4KabCselhbhQBlx/a66bw
 SA4cebgfq8mp6RJ72XagssItOSdRonJ7g7yZ907Gb0dc/2whf+VAsuFSu
 H5a6+PlyVir+Yn+nZqi0rpaIhXfUzQFhRH9A0rW+Eie0NYtrEke0VlABs Q==;
X-CSE-ConnectionGUID: /62093BuStekoVgrnAJtDQ==
X-CSE-MsgGUID: gIx2bLbxSCOmXcmMs/fjOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77820264"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="77820264"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:26:20 -0700
X-CSE-ConnectionGUID: AxxE0bCeTdCYRb6hUKl0rA==
X-CSE-MsgGUID: hBv1BAhaTemF2p+tBfnQqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="235509322"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.157])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:26:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/6] drm/i915: add display irq hooks
Date: Tue,  5 May 2026 01:26:07 +0300
Message-ID: <cover.1777933454.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: D32EE4C45DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

v2 of [1], with the initial refactors merged, and review comments
addressed.


[1] https://lore.kernel.org/r/cover.1777458161.git.jani.nikula@intel.com


Jani Nikula (6):
  drm/i915/irq: deduplicate dg1_de_irq_postinstall() and
    gen11_de_irq_postinstall()
  drm/i915/irq: constify pipe stats parameters
  drm/i915/irq: add display irq funcs, start with
    intel_display_irq_reset()
  drm/i915/irq: add intel_display_irq_postinstall() to irq funcs
  drm/i915/irq: add intel_display_irq_ack() to irq funcs
  drm/i915/irq: add intel_display_irq_handler() to irq funcs

 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 225 +++++++++++++++---
 .../gpu/drm/i915/display/intel_display_irq.h  |  37 +--
 drivers/gpu/drm/i915/i915_irq.c               | 182 +++++---------
 drivers/gpu/drm/xe/display/xe_display.c       |   6 +-
 5 files changed, 271 insertions(+), 182 deletions(-)

-- 
2.47.3

