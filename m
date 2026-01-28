Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDeiDkgkemmv2wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93F5A3635
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360E810E6E2;
	Wed, 28 Jan 2026 14:59:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wr0d1Vqa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27D410E6E0;
 Wed, 28 Jan 2026 14:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769612358; x=1801148358;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4CJVyf3Si1egSIzCE5wJkF5qaRO4qdy6wv5dnpfqrYY=;
 b=Wr0d1VqaV71btjNt8TMGU6PUWppTiDQ+BxlC7TLS7tPO0l1LVNGdWnBh
 Y5PNkebWmH03M6dayJKCal6XfwrgsFWtPUVB70h6bOFLst63ateVlFnjA
 RgQkojtdlmFIHenMBddnWyHpLclwGk+4Siaw5IUaNNb8TujPi51swQNNv
 W27lK3QNUJWM5dKbzQR1Hm7c4E5UnoDgV5lauMdqsyB10mk4lwOLY/p25
 AL++CS8P8OtDAk40jLrHKRh04+5MyoiDKmkvju2B64aCqThRAmWY0+Ol7
 D5ALGZTD3da6pcWCt41sCxcy8JWtUSySbPv8wkYGwufTOjptA9n2/+gSh Q==;
X-CSE-ConnectionGUID: mdN6q9PhSMqub6L5aEFg1Q==
X-CSE-MsgGUID: O9jE0vtCR56yfeLGQp21Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81935608"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81935608"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:17 -0800
X-CSE-ConnectionGUID: 2TKELJm/QaWSJCchj/tFJA==
X-CSE-MsgGUID: DCqR8lGhR7GRJ3w2VL2tfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208354068"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/4] drm/i915/gvt: further reduce dependency on display
Date: Wed, 28 Jan 2026 16:59:06 +0200
Message-ID: <cover.1769612208.git.jani.nikula@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: D93F5A3635
X-Rspamd-Action: no action

GVT still includes a handful of core display headers, and uses struct
dpll. Migrate away from them, reducing the include "surface" to avoid
even accidental usages of display functions or types.

With this, GVT should only use 1) register macros, 2) some enums, 3) the
handful of APIs to support register macros.

BR,
Jani.

Jani Nikula (4):
  drm/i915/display: move enum aux_ch to intel_display_limits.h
  drm/i915/gvt: drop dependency on display struct dpll
  drm/i915/gvt: drop dependency on intel_display_types.h
  drm/i915/gvt: drop unnecessary include of intel_display.h

 drivers/gpu/drm/i915/display/intel_display.h  | 26 -------------
 .../drm/i915/display/intel_display_limits.h   | 26 +++++++++++++
 drivers/gpu/drm/i915/gvt/display.c            |  1 -
 drivers/gpu/drm/i915/gvt/handlers.c           | 38 +++++++++----------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
 5 files changed, 45 insertions(+), 48 deletions(-)

-- 
2.47.3

