Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aINJNC2jb2l7DgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:45:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BCE46969
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD6010E0AD;
	Tue, 20 Jan 2026 15:45:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fn24uLuo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEFE10E0AD;
 Tue, 20 Jan 2026 15:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768923947; x=1800459947;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=coaVUw5a2J36+nJkGkKo6+WKeYVRAlZmUu3UHoPw2VM=;
 b=fn24uLuoHB2O+dRnOC0a28OwF3JOWA1gu3Q5JOPlMli2t14m5VD8J3UF
 k88+5rS4PFCPmR3YzZlAwH3nXHGPLMzZ40PZxPzPy4sXCXFeQV0J0YDw+
 gikynJN0KzG+nI61eK7XCgGU6qa1Yunlm30FB+LW8UcNZMiaiB3ihuQX4
 L4gjL+VTGks2znPk5Gk0MaqaX2mYFn6TFaSQO2MT4VnCROTOrQEivWTVs
 NldzbZjTbkkBiQ43KljZ9Kl9hQfq1BRAuBnKhVp1GxkT+N9sWc+OSzhbW
 aiIElp4lXDjIt5eHBcfDOndjTWRC3SJ10qqMbNeobrVCHWPE7PGQ98L0g g==;
X-CSE-ConnectionGUID: CWrRpDhTSIKXbsojuKid8A==
X-CSE-MsgGUID: OgNxcuwyQwufzaKrJ4WLtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70040626"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70040626"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:45:46 -0800
X-CSE-ConnectionGUID: 9BLQI0fKSGmyUtd1w55MRQ==
X-CSE-MsgGUID: 86xuowU4SEGBSdRcx2Iy0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="211004140"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:45:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/2] drm/{i915,
 xe}/dsb: move DSB buffer calls to parent interface
Date: Tue, 20 Jan 2026 17:45:39 +0200
Message-ID: <cover.1768923917.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 63BCE46969
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Jani Nikula (2):
  drm/i915/dsb: move i915 specific DSB buffer implementation to i915
  drm/{i915,xe}/dsb: move DSB buffer to parent interface

 drivers/gpu/drm/i915/Makefile                 |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 92 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 22 -----
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 .../intel_dsb_buffer.c => i915_dsb_buffer.c}  | 28 ++++--
 drivers/gpu/drm/i915/i915_dsb_buffer.h        |  9 ++
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 28 ++++--
 drivers/gpu/drm/xe/display/xe_dsb_buffer.h    |  9 ++
 include/drm/intel/display_parent_interface.h  | 14 +++
 10 files changed, 147 insertions(+), 61 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
 rename drivers/gpu/drm/i915/{display/intel_dsb_buffer.c => i915_dsb_buffer.c} (63%)
 create mode 100644 drivers/gpu/drm/i915/i915_dsb_buffer.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_dsb_buffer.h

-- 
2.47.3

