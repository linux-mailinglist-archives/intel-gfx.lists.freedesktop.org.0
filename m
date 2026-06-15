Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OwaHJe5IMGpwQwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB0689490
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=n1uykYWx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0655610E528;
	Mon, 15 Jun 2026 18:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A9210E1BD;
 Mon, 15 Jun 2026 18:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781549290; x=1813085290;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FHVqlD8oJyNk3ZNQE/w6rN5fB+A/5nVj5DFgl8lg8JU=;
 b=n1uykYWxhTZjyBKgbvxzUpkJc+b7wcB4RQfv1lcnQrVGSJiwTDM2U6yL
 Tkyt2MJRqRn34wUjCXZxY0MQZijq3/2Y7JCWOg/e7bH3UJUGKVWaQlPKW
 h04KBJvRi5NzbFdSIGE2ca0aehMPLwaYZIOItePJFc1BGpC5oyHGB0Gw2
 THVKBuGCGkGRNYaF3x/7XdbgjA8f0nSIRd8bDCgzMW81u4pOP5V1Oh/Ch
 Inso/piez0J6vIHHa7IVYMNG7hSyYzSWJupAkWoXfeNL1/rVsReZkY5oH
 MQLkF0Vk+jyeZSjxi8p4/006YzFvEpz9/awewDwMXtYYoZPPQQQA7Z2OX w==;
X-CSE-ConnectionGUID: hi2rUe/cRs22aZjaqBVE/Q==
X-CSE-MsgGUID: pQj0Mi/8TNaENiGzZfu7og==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81438578"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="81438578"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:09 -0700
X-CSE-ConnectionGUID: oLXvBbUbTteJ2A/qktMIQw==
X-CSE-MsgGUID: EcYXha4pQY6gvdnxwk4Rng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="247628538"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/{i915,
 xe}: display probe/remove cleanup and unification
Date: Mon, 15 Jun 2026 21:47:57 +0300
Message-ID: <cover.1781549229.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9ECB0689490

Small incremental steps towards unifying i915 and xe display probe and
remove.

Jani Nikula (6):
  drm/i915: move intel_display_device_probe() call a level higher
  drm/i915: remove superfluous checks for pdev->msi_enabled
  drm/{i915,xe}: move opregion/dram/bw init to
    intel_display_driver_probe_noirq()
  drm/xe/display: change order of
    intel_display_driver_remove_{nogem,noirq}() calls
  drm/{i915,xe}: move opregion cleanup to
    intel_display_driver_remove_nogem()
  drm/{i915,xe}: move intel_hpd_cancel_work() to
    intel_display_driver_remove_noirq()

 .../drm/i915/display/intel_display_driver.c   | 21 +++++++-
 drivers/gpu/drm/i915/i915_driver.c            | 49 +++++--------------
 drivers/gpu/drm/xe/display/xe_display.c       | 24 ++-------
 3 files changed, 36 insertions(+), 58 deletions(-)

-- 
2.47.3

