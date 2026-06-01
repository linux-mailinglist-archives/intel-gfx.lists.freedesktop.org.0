Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E9vHGRgHWojZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:35:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B77361D928
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0BC1130BE;
	Mon,  1 Jun 2026 10:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHYEeLNY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4626E1130B9;
 Mon,  1 Jun 2026 10:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780310113; x=1811846113;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vYy48uZL6sjrl3CGhJvmogVknACGqMQCeRHEwwwkfy8=;
 b=cHYEeLNYk/QvGuFzsLvvd+0izGGWyGH0syC3lHD1oQdxXPRaTA4C3TNj
 ODoZ0caZSPopnmk5k5TZRzEIqgsZXoBN1jVrsGXpu6CHo19IQY3Cza5C3
 lHefjamoWBcDeXiqKinv01nAGYB+1o+lNI3PMyWqXeZeUQ5iAHECt5Mlg
 y3YyRF+6ZbKMIt47e105RlpiYRDRHe0WIY1lm67fRQnTRanJfPss6zkFi
 8xrDas5GGE2Py9RWbhXEm+VspLkpTNe64RYHYc9u52kA3mvjXWAs6MXxb
 WCT9kg0GSUtAfQnI1ID503FDA38U9f+w0rXRyO9KyphucpXBUZ4rYuAT3 w==;
X-CSE-ConnectionGUID: lvSetwNsR9Oa/ogJCVmLCQ==
X-CSE-MsgGUID: rr2DefYBQsmMhwLHD+dJ7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80797230"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80797230"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 03:35:12 -0700
X-CSE-ConnectionGUID: yLFEWXOYQLO5z0ZWOoG86w==
X-CSE-MsgGUID: nBqIQUOhQWm95cnr4blLqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="242728390"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.121])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 03:35:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [CI 0/5] drm/{i915,
 xe}: display (runtime) suspend/resume/shutdown unification, part 1
Date: Mon,  1 Jun 2026 13:34:55 +0300
Message-ID: <cover.1780310011.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[0.837];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 7B77361D928
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is the first part of [1] for CI and merging.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1780051905.git.jani.nikula@intel.com

Imre Deak (2):
  drm/i915: Keep display IRQs enabled for encoder suspend/shutdown
  drm/i915/xe: Enable HPD polling later during system resume

Jani Nikula (3):
  drm/i915: add flush_workqueue(display->wq.cleanup) on shutdown
  drm/xe/display: remove intel_display_flush_cleanup_work() calls on
    suspend/shutdown
  drm/xe/display: drop duplicate intel_dp_mst_suspend() call

 drivers/gpu/drm/i915/i915_driver.c      | 15 +++++++++++++--
 drivers/gpu/drm/xe/display/xe_display.c |  6 +-----
 2 files changed, 14 insertions(+), 7 deletions(-)

-- 
2.47.3

