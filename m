Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFk9J1D0t2mLXgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8712994B5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABAC110E500;
	Mon, 16 Mar 2026 12:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpZes0EO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE5F910E4F9;
 Mon, 16 Mar 2026 12:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663309; x=1805199309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TxRfFa7sd5bbposQI7M2qGZ1sze3zgjY+j0fvJzmCg8=;
 b=mpZes0EOfdb2F7H9DyCMu5Gu/zpGSbTtQX2JZczSZYLKn5Tw6aenpDP0
 IhD21X0OgdPKXtYR+SDGQ1TJP6jhs6Tb56cChRT0qQE0PzbECu3fVhFQq
 cZfkAd9t88HUs9p9pq4HqiFxArqhnJvV5EXgs2Jmfe3IZ2HLw8bJjyf/Y
 CnE0i6hGd7HIdG1pm8+ZWyjymL2z3d1b+qooZJ22JwXd9rzyQPeVscChe
 4IrAPBeB9+jaE7CZ35YjOFCjRfGahhjsd7tpW51QY+cad5Vf5O7GBFaun
 zVFkOevXuwkw2FyQII3ptCzR7vGPV7P/qEF6sN7BE2QhFcnXz9yIJL094 g==;
X-CSE-ConnectionGUID: E7C3Db87QAeNDWq4w8T7sw==
X-CSE-MsgGUID: 9QsHIxNtRh2OnDUr6tpisw==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="62244376"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="62244376"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:08 -0700
X-CSE-ConnectionGUID: j+sIBW68SYabXp5kVWTtSA==
X-CSE-MsgGUID: jgg5BoZoQje49QtflyWNiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="259802182"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 0/5] drm/{i915,
 xe}: prep for sorting out step enums between the drivers
Date: Mon, 16 Mar 2026 14:14:57 +0200
Message-ID: <cover.1773663208.git.jani.nikula@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.970];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: 2C8712994B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The full series [1] conflicts with xe a bit too much right now. Get the
first five patches moving in the mean time.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1772635152.git.jani.nikula@intel.com

Jani Nikula (5):
  drm/i915/dmc: simplify stepping info initialization
  drm/i915/display: add step name in display runtime info
  drm/i915/dmc: use step name from runtime info
  drm/xe/compat: remove intel_step_name macro
  drm/intel: add shared step.h and switch i915 to use it

 .../drm/i915/display/intel_display_device.c   | 28 ++++++++-
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 19 +++---
 drivers/gpu/drm/i915/intel_step.h             | 57 +----------------
 .../drm/xe/compat-i915-headers/intel_step.h   |  3 +-
 include/drm/intel/step.h                      | 62 +++++++++++++++++++
 6 files changed, 99 insertions(+), 71 deletions(-)
 create mode 100644 include/drm/intel/step.h

-- 
2.47.3

