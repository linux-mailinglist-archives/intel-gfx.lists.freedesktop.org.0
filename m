Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFBnD3/cymkQAwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 22:26:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9A0360F0C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 22:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A51610E7EA;
	Mon, 30 Mar 2026 20:26:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZw+smJ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9088F10E7D1;
 Mon, 30 Mar 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774902394; x=1806438394;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+3rRmguGDVisQVaKYZSkg6kHocX/gt3E9RBRhHHPPMY=;
 b=mZw+smJ9P/Et5Z14c6ctgnC42M/Ae/IMUuUyM2VcRoJjOOSyEeeV1Bvt
 RNoN2/C87cqHyUiWMpV2IYKqLhHxdZywYvZ8gmuBJYJDIXgc9Ce+siVdH
 zCVM+Jn0liGJiucSFG48eEx/Jxy7J7h+eVjm0Bx/BpYfkdEv9jfISLSay
 8oTk+tgoUTdLTbuITKatveTdNv1UWBIo6cI+Sl2uc8Exz2KxTu2snylSd
 NH6sGRprwIUQ52lYg/kX9q8ZhSaEB3u0wLFFPK5AaBPY/U/Up36Q77eDE
 XIB5pSiw2ULrGE+HD5/6VO0ZAfFdie03DL/x3Qt1MTRMvhzS0v0Btljxm Q==;
X-CSE-ConnectionGUID: nMZGtF7pQw6ZNQqXmmL/GQ==
X-CSE-MsgGUID: J+DP9XwbQJm57XgxwTHRiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75922230"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75922230"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:26:34 -0700
X-CSE-ConnectionGUID: zvgCj8RbR4eZInHOcm9e9A==
X-CSE-MsgGUID: qJY6C3frQweqN7HSo90h5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="226132415"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:26:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 0/2] drm/i915/dp: Implement POST_LT_ADJ_REQ
Date: Mon, 30 Mar 2026 23:26:27 +0300
Message-ID: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 3C9A0360F0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Implement the POST_LT_ADJ_REQ sequence, which is supposed
to be used to further tune the link vswing/pre-emphasis
when TPS4 is not supported.

Unfortunately I don't have any displays/dongles that support
this so I wasn't able to test anything. Imre has tested this
with a DP tester though.

v2: rebase after all the prep stuff got merged
v3: all the drm/dp stuff got merged as well, just the final
    driver patch left (+ the test hack)

Ville Syrjälä (2):
  drm/i915/dp: Implement the POST_LT_ADJ_REQ sequence
  hax: drm/i915: Disable TPS4 support to force POST_LT_ADJ_REQ usage

 .../drm/i915/display/intel_dp_link_training.c | 131 +++++++++++++++++-
 .../drm/i915/display/intel_dp_link_training.h |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 3 files changed, 131 insertions(+), 4 deletions(-)

-- 
2.52.0

