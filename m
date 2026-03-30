Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHIUAHl0ymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:02:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7020535B91E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF90910E765;
	Mon, 30 Mar 2026 13:02:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvLHbDyq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5213E10E765;
 Mon, 30 Mar 2026 13:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774875765; x=1806411765;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GizUeGuhOI6xqg7Gi5GFQac9an3uswH4AB9nvvujSkM=;
 b=HvLHbDyqZUPGcp9G2RmXfBTO7EkUhHNQzmFWqUWQOuUzQSVILco0Ua0W
 Az5nF9W9lQNKl4pTW6mjh93gESr6a1x60wLfOFPF0fb7Gx2myGzeMbxNH
 KfGk3ykMJagC+gHzBwGOxWHrWxLKj3EPN+2Ti1JMarf+sDQKrxVTu/Zm8
 amO5bQKTV79jkNrcse+E87/g6+Ofd/X7lcaBbRKnp6fFFulFVht/hrWXw
 rxdsnQCihI60V8RHAJFRIs6NyY8CV/b3ZlGxZsIWjCqLZsY+GCO3hpD3j
 Oo7Ng0ueVV0sQdFxzRoV0DTdn0xASQZv/vpXm/QxaAJKoo1EKRFOo/jzI w==;
X-CSE-ConnectionGUID: UQaJvIKNSlCKmPszM+HQuA==
X-CSE-MsgGUID: KmGY9/foSnmmiuWV6UZvWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="78462862"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="78462862"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:44 -0700
X-CSE-ConnectionGUID: O7VNdxBgSyCNn3lUdpfmEw==
X-CSE-MsgGUID: z0+omlpkRQCGcB8hFius/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="263988591"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/{i915,xe}: finish switching to common step.h header
Date: Mon, 30 Mar 2026 16:02:33 +0300
Message-ID: <cover.1774875688.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7020535B91E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The remaining ones from the step.h conversion which were pending some
merges and backmerges.

Jani Nikula (3):
  drm/xe/step: switch to the shared step definitions with i915
  drm/xe/step: switch from enum xe_step to intel_step naming
  drm/i915/display: switch to including common step file directly

 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 .../gpu/drm/i915/display/intel_display_wa.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 .../drm/xe/compat-i915-headers/intel_step.h   | 13 ----
 drivers/gpu/drm/xe/tests/xe_pci.c             |  4 +-
 drivers/gpu/drm/xe/xe_step.c                  |  2 +-
 drivers/gpu/drm/xe/xe_step.h                  |  4 +-
 drivers/gpu/drm/xe/xe_step_types.h            | 61 +------------------
 18 files changed, 20 insertions(+), 90 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h

-- 
2.47.3

