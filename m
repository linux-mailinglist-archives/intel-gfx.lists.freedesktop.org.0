Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBvMI5hy1ml2FQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:22:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FE33BE1D0
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2AF110E4AA;
	Wed,  8 Apr 2026 15:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQABDlnd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF7210E2E7;
 Wed,  8 Apr 2026 15:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775661716; x=1807197716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r/uavIWRpy7OaiQtgt3YT84oGwMU9Qi6Cis6khYIL5E=;
 b=MQABDlndkLIhnUc19KTPRK7jqQN5nk8/sGxBnBgmIJItcp5gKEd639DL
 UPKuOr9/P6yYX5bK8JIEGB52LiqxQbAEsdRgOWj7x2J9117WVBLKPa8iU
 Lnvi0PyJoLpDuXVBoY3VrF5zi5mPn7Rh7A5aExMk2gqE8X6QZrnBOP8ZK
 VejFMdeqIMAN3y7KjR8q3fdiexcOILiAgOtRfhtfuxurpuVmIMmkxYejN
 dXt7DwI/ETQe9i6n5L7ETcLFlzl/WDwehWNENEUR0c+bdukkDnCujxtx0
 MdYtuN46fCOM5pVobz/9sabbMe8AvmBRouaKFNFDf5lScYkCgScKscv+h A==;
X-CSE-ConnectionGUID: NBMl34KBQFmtXv6qlE5fYw==
X-CSE-MsgGUID: pDens0EZQjKhWoSOnAUy+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94035756"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="94035756"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:21:55 -0700
X-CSE-ConnectionGUID: +tr/qztoRa2onRPk0MGRJg==
X-CSE-MsgGUID: Nhyt5FKrRLy0t/ozSlyptw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228745376"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:21:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH 0/2] drm/i915: move fence timeout to parent interface
Date: Wed,  8 Apr 2026 18:21:47 +0300
Message-ID: <cover.1775661609.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: F1FE33BE1D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is not really something I like to do, but I'm not sure how to make
forward progress otherwise. This removes one of the few remaining direct
display to i915 or xe calls, and we can reconsider this later.

Jani Nikula (2):
  drm/i915: convert i915_fence_timeout() into a proper function
  drm/i915: move fence timeout to display parent interface

 drivers/gpu/drm/i915/display/intel_display.c     |  8 ++++++--
 drivers/gpu/drm/i915/display/intel_parent.c      |  6 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h      |  3 ++-
 drivers/gpu/drm/i915/i915_config.c               |  5 +++++
 drivers/gpu/drm/i915/i915_config.h               |  7 +------
 drivers/gpu/drm/i915/i915_driver.c               |  2 ++
 .../gpu/drm/xe/compat-i915-headers/i915_config.h | 16 ----------------
 include/drm/intel/display_parent_interface.h     |  3 +++
 8 files changed, 25 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_config.h

-- 
2.47.3

