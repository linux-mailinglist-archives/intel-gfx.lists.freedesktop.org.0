Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZO2rA5PrO2p6fQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E1B6BF2C9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GAJ1UKkD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785A710E0C5;
	Wed, 24 Jun 2026 14:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4174D10E0B5;
 Wed, 24 Jun 2026 14:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782311822; x=1813847822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iWYlX6dOIDWpAffql5w+OuL+aWRQG8aIL0i60v/Atmw=;
 b=GAJ1UKkD5MZ/l3Q4gdk1PqGAHnor266fX+dEt1LXlK0FWOBvuO8hBL99
 NpNOqkOPtySxZurQeF84XGHnnabQ+Kc2Ge21Pk09uxzIkdU8GfZzVP2KZ
 i3QA+/b9x3KGr1GcyniSp01YC0VyInxkfYlv1/cak+3c5X83hbspJUKhD
 Yo0JZWqbCf9sgjz3KB0BCxKnV+iP6y3tdNaCkgsYreKzbATm4sakRshuR
 r5cpwAwXLuSdWjN+NRDi8tc6zDGN0TwO9slfbfhR8hOX2YQuQa3WuU1Ks
 jc1PGPhz6g6s7S8v00AYJmtdUZvOaKF8GFo40YTzW3ZlUMBv2eUwJajWq A==;
X-CSE-ConnectionGUID: vm8azhl+QYWI3Obo0ax4Tg==
X-CSE-MsgGUID: 2MUW4D8qReqpr9aU9nnFqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="86920286"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86920286"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 07:37:02 -0700
X-CSE-ConnectionGUID: 2m9sR5IsRhGzn5ZIGCMzJA==
X-CSE-MsgGUID: q9hFESk+SJCpP2PB+IpuSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="253798923"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by ORVIESA003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 07:37:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/8] drm/{i915,xe}: unify runtime pm calls
Date: Wed, 24 Jun 2026 17:36:47 +0300
Message-ID: <cover.1782311749.git.jani.nikula@intel.com>
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
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81E1B6BF2C9

Another stab at unifying the i915/xe runtime pm calls for display.

v1 at [1].

I dropped some R-b's due to the changes from v1.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1781527161.git.jani.nikula@intel.com


Jani Nikula (8):
  drm/i915: call intel_uncore_runtime_resume() for each gt
  drm/i915: call intel_display_power_runtime_resume() on suspend error
    path
  drm/i915: move some display runtime suspend operations earlier
  drm/i915: add intel_display_driver_pm_runtime*() functions
  drm/{i915,xe}: add new
    intel_display_driver_runtime_pm_{enable,disable}()
  drm/xe/display: separate d3cold handling from
    xe_display_pm_runtime_suspend_late()
  drm/xe/display: add xe_display_pm_runtime_resume_early()
  drm/xe/display: unify runtime suspend/resume with i915 for non-d3cold

 .../drm/i915/display/intel_display_driver.c   | 71 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  8 +++
 drivers/gpu/drm/i915/i915_driver.c            | 58 ++++-----------
 drivers/gpu/drm/xe/display/xe_display.c       | 44 ++++++++----
 drivers/gpu/drm/xe/display/xe_display.h       |  1 +
 drivers/gpu/drm/xe/xe_pm.c                    |  2 +
 6 files changed, 125 insertions(+), 59 deletions(-)

-- 
2.47.3

