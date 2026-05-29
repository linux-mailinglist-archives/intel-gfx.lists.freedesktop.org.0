Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL3xMMtyGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:04:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A5B60142C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB2810FD12;
	Fri, 29 May 2026 11:04:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNepKXUu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922FA10FD12;
 Fri, 29 May 2026 11:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052680; x=1811588680;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g1OIxA7frGFKYOo6rSp2mfdOamRJ5GagUwM8JswMSoA=;
 b=XNepKXUup9zIJNE8kf24N1MgWcD+F9hIUfpA0nw/HN9awBeamWnwFgio
 7FtjFD+s1EOQ0I0IkIzMGYQTT9graklL5AkN7KXzRtvN4bQNZrW+Thqvc
 7gmFTQ9MpFiEkR6fQPLib7IYOzmPjlecdwyuOnSVstIIX6uP0qH8iDH82
 W3KojFQKq+Q8CPaYD84n9c1eC/Q34whuEzXO/QNGVUl+hJ+FvE4ybfRV1
 2RuV94HnzSXtTs5Ds9iJlh6l7fxdJmWNzmbKf37emcvEGczexxURETpQa
 Fw8RQYF75yLSyMy5SLOd1x/ejh/7P0lU/FG3c0XsrkaQuQmzpIokoBbdg A==;
X-CSE-ConnectionGUID: B1t26fDLRVKrPmiLDmWirQ==
X-CSE-MsgGUID: ljgYguEGQZmS0a0q/fsibQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92377754"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92377754"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:04:40 -0700
X-CSE-ConnectionGUID: zsF3hfV6TImfNK/NMXjGQw==
X-CSE-MsgGUID: psEqt/c8ReeJTmWyeZuxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="246840867"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:04:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 00/24] drm/{i915,
 xe}: display (runtime) suspend/resume/shutdown unification
Date: Fri, 29 May 2026 14:03:44 +0300
Message-ID: <cover.1780051905.git.jani.nikula@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid]
X-Rspamd-Queue-Id: 32A5B60142C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Start unifying the i915 and xe display suspend/resume/shutdown and
runtime pm hooks. This completely superseeds the series [1] which was
opposed by Ville. I presume this is the path of least resistance.

Patches 1-3 are functional fixes from Imre and me. They'll also help the
refactoring.

Patches 4-18 are mostly non-functional refactoring, deduplication,
unification, and cleanups. There are minor functional changes that
shouldn't have any impact. The changes are intentionally chopped up
small for ease of review and to pinpoint any regressions immediately.

Patches 19-21 are also intended to be non-functioal
refactoring. However, there are bigger changes in the sequences, and
might be more suspect.

Patches 22-24 refactor runtime pm, which should be non-functional
changes for i915, but will be functional changes for xe.

I'm sending the entire thing for review, but I think I'll want to send
smaller batches for CI before merging.


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1779887154.git.jani.nikula@intel.com


Imre Deak (2):
  drm/i915: Keep display IRQs enabled for encoder suspend/shutdown
  drm/i915/xe: Enable HPD polling later during system resume

Jani Nikula (22):
  drm/i915: add flush_workqueue(display->wq.cleanup) on shutdown
  drm/xe/display: remove intel_display_flush_cleanup_work() calls on
    suspend/shutdown
  drm/xe/display: drop duplicate intel_dp_mst_suspend() call
  drm/i915/display: add "pm" to intel_display_driver_{suspend,resume}()
    names
  drm/xe/display: rename xe_display_pm_shutdown*() to
    xe_display_shutdown*()
  drm/xe/display: relocate the xe_display_shutdown*() functions
  drm/xe/display: relocate the xe_display_pm_runtime_*() functions
  drm/{i915,xe}: move more calls inside
    intel_display_driver_pm_suspend()
  drm/{i915,xe}: move more calls inside intel_display_driver_pm_resume()
  drm/{i915,xe}: add
    intel_display_driver_pm_{suspend_late,resume_early}()
  drm/{i915,xe}: move more calls inside
    intel_display_driver_{register,unregister}()
  drm/{i915,xe}: add intel_display_driver_shutdown_late()
  drm/i915: add intel_display_driver_shutdown()
  drm/i915/display: deduplicate suspend and shutdown a bit
  drm/xe/display: use intel_display_driver_pm_shutdown()
  drm/{i915,xe}: move more stuff to __intel_display_driver_pm_suspend()
  drm/{i915,xe}: make intel_dmc_suspend() part of display
    suspend/shutdown calls
  drm/{i915,xe}: move intel_opregion_suspend() to
    intel_display_driver_pm_suspend_late()
  drm/{i915,xe}: keep moving stuff to intel_display_driver_pm_resume()
  drm/i915: add intel_display_driver_pm_runtime*() functions
  drm/xe/display: separate d3cold handling from
    xe_display_pm_runtime_suspend_late()
  drm/xe/display: unify runtime suspend/resume with i915 for non-d3cold

 .../drm/i915/display/intel_display_driver.c   | 182 ++++++++++++++-
 .../drm/i915/display/intel_display_driver.h   |  14 +-
 drivers/gpu/drm/i915/i915_driver.c            | 138 ++----------
 drivers/gpu/drm/xe/display/xe_display.c       | 209 ++++++------------
 drivers/gpu/drm/xe/display/xe_display.h       |  10 +-
 drivers/gpu/drm/xe/xe_device.c                |   4 +-
 6 files changed, 269 insertions(+), 288 deletions(-)

-- 
2.47.3

