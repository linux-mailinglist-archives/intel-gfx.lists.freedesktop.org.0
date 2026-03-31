Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGRmAxy7y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F18736956E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C846B10E265;
	Tue, 31 Mar 2026 12:16:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XSfdGgZP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B6510E067;
 Tue, 31 Mar 2026 12:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774959384; x=1806495384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ky8KG3LZvxGDe25fwnEvsMvLvF2gyEsEG0pGgl9+PfY=;
 b=XSfdGgZPx2r9ZB85t9HH3eQS/1Ml1egU+/JY9JbFn0TbJgZUkdr5lXTg
 CASS+mWUMGmQkNg6H4vGCxUGfwfnymacOlOT/PYKXcMlV1LzfjiYPzq8p
 OnZ7aeZst2ZpMimvW4WV/UmiF280Afmto+vy3ka1NMRIg2a2hcYN627mh
 Xcoka2oSzK7JxOIM+RtqXKFIJItLZzK72j31OiRwiXiasJYLn5tfc4O7N
 WZjuPVIHJywAekGcEoSrWVG16oQNp5FbQ+0ekr010U+Wzk7e1HBVqwjIr
 F87tAL0NZFGfgny58KMGXm8lKKII+ppLdvcGlFDTqVpnR33uI7twyYtze Q==;
X-CSE-ConnectionGUID: Bq9jEPhYQc6gUghvtfSAyQ==
X-CSE-MsgGUID: dMw9PSM3RK683y45zb4pCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87361400"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87361400"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:23 -0700
X-CSE-ConnectionGUID: XjmzwFNVQ6CTqYeYAZ9pPQ==
X-CSE-MsgGUID: dBWbWyICTx2gkyclPkIlqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223468931"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.244])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:21 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/8] drm/i915: move more display dependencies from i915
Date: Tue, 31 Mar 2026 15:07:11 +0300
Message-ID: <20260331121608.1016333-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 6F18736956E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This series continues my work of refactoring the clock gating
initialization, so that i915 doesn't do display-specific stuff.

With this, all register dependencies should be gone.

Changes in v2:
	* Removed #ifdef I915 from the header (Jani);
	* Removed BDW/HSW common function, keeping separate functions
          for each platform (Ville);
	* Handled WaKVMNotificationOnConfigChange:bdw as well (Ville);
	* Now we have 3 separate functions for BDW, we may want to
          combine them later (ignoring the order with non-display
          workarounds);

Please review.

Cheers,
Luca.


Luca Coelho (8):
  drm/i915: move SKL clock gating init to display
  drm/i915: move KBL clock gating init to display
  drm/i915/display: move CFL clock gating init to display
  drm/i915/display: move BXT clock gating init to display
  drm/i915/display: move GLK clock gating init to display
  drm/i915/display: move HSW and BDW clock gating init to display
  drm/i915/display: move pre-HSW clock gating init to display
  drm/i915: remove HAS_PCH_NOP() dependency from clock gating

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../i915/display/intel_display_clock_gating.c | 264 ++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  27 ++
 .../gpu/drm/i915/display/intel_display_regs.h |   3 +
 drivers/gpu/drm/i915/intel_clock_gating.c     | 226 ++-------------
 5 files changed, 312 insertions(+), 209 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h

-- 
2.53.0

