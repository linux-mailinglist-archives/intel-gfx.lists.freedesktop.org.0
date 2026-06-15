Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pjQ1HtryL2pZJgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:40:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 931976864D8
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:40:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dXCBm3K3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0AB10E3E2;
	Mon, 15 Jun 2026 12:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C255B10E3DE;
 Mon, 15 Jun 2026 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781527255; x=1813063255;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GGyWrx5vGYdyRMD5ExKSWz6WmXjgEPZvXzaIyrDCM7Y=;
 b=dXCBm3K3Dw8EQdO75aWB1cGDY7HP6UNu/2KIw9BrpjUkIWETnLSHNIE2
 2FdeoQA+jp2V3S8uFy9W4NPJxUe7Z/kdh7L8vhxYme34MawXErJ4HPurw
 cHEDWy8IK1VLHJRrXfYSl9L+ZZm5h6LFWiFNeNh6EVA3T3n/Ehc/yrxz9
 zuY7FpHCps2jyRF6XKsJz1xAchoRPAifhEwNtA1wMnLGvgwwUVOHfC6KV
 szU1alNtbRZqkQUQHhSnS0V41a8S4MGWytnFOk0ZihDJkJTmFj7ptkRNV
 BJGdQ0amShCaQD9NlcL/keX4ET5e4K3pMMSK6lbuPLEmvbJb3VOd3SE/y A==;
X-CSE-ConnectionGUID: XDDTgfbBTMOlUES9SU5PLw==
X-CSE-MsgGUID: pJDusWwpTca9YI2/R2SKQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="104934997"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="104934997"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:40:54 -0700
X-CSE-ConnectionGUID: RMHfAhB1S7uJv3lDFKgn6A==
X-CSE-MsgGUID: qjJMFvbyRWuPx8Jg0+M4gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="246349730"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:40:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] drm/{i915,xe}: unify runtime pm calls
Date: Mon, 15 Jun 2026 15:40:44 +0300
Message-ID: <cover.1781527161.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 931976864D8

Unify the runtime pm hooks for i915 and xe, apart from the xe special
d3cold handling, which gets separated from the rest.

Jani Nikula (4):
  drm/i915: add intel_display_driver_pm_runtime*() functions
  drm/{i915,xe}: add new
    intel_display_driver_runtime_pm_{enable,disable}()
  drm/xe/display: separate d3cold handling from
    xe_display_pm_runtime_suspend_late()
  drm/xe/display: unify runtime suspend/resume with i915 for non-d3cold

 .../drm/i915/display/intel_display_driver.c   | 66 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  8 +++
 drivers/gpu/drm/i915/i915_driver.c            | 48 ++------------
 drivers/gpu/drm/xe/display/xe_display.c       | 28 ++++----
 4 files changed, 93 insertions(+), 57 deletions(-)

-- 
2.47.3

