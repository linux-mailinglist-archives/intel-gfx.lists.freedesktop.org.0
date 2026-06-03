Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Opa9GOREIGqAzgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:14:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C0463902B
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:14:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=K78eWkmV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAE610FFB5;
	Wed,  3 Jun 2026 15:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300D310FF82;
 Wed,  3 Jun 2026 15:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780499681; x=1812035681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BLqCl781aGMSIvLHXopftwVefnFeWECJZ8M+NSHVfO8=;
 b=K78eWkmVYp1oXhF4FDPH5eDJybtNg1IH5MoFATTxeqd0Y38mpZufQsWW
 YrvXgcXa5kPICDVQL96zPgSrJawvIOqV01Ul8alIxDbO9GlodBQde+Fqo
 tvM6B9CKU0CqMnoj7l8ycP/RygEtrlxkp693apAk7YGHOkjPdGiXCSL0t
 Jqy4uljUEQa9C18dH/oUYMpZXefd5MIwMYIngcTHoj5hFbTK6C080jkVP
 uAPf/IsQOcpHolGxPbupv7YOzKGlpdT7CHXXr3WOcPnSGC5wTLI96KTK6
 SrKw8ml0hkgtJ3ZjI45W9lER3GYr8IoCdjQEfb1Ca47AT45Hv2m+TOx+K w==;
X-CSE-ConnectionGUID: AQJaaPNfRrKbNM6mGk0gsA==
X-CSE-MsgGUID: AR0lQmcpRwCYCEJBbO8H9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="92421172"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="92421172"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:14:40 -0700
X-CSE-ConnectionGUID: 9ZQMnV8eTRiDe6178zXzFg==
X-CSE-MsgGUID: lfoXHvXNS/i921lMquiquw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244380730"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:14:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/8] drm/i915/color: cleanup plane pre/post csc lut code
Date: Wed,  3 Jun 2026 18:14:27 +0300
Message-ID: <cover.1780499355.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 10C0463902B

While reviewing some patches I noticed the
xelpd_program_plane_pre_csc_lut() and xelpd_program_plane_post_csc_lut()
functions were a bit convoluted. Reduce the number of loops in each from
four to one, among other things.

BR,
Jani.


Jani Nikula (8):
  drm/i915/color: clean up variables in
    xelpd_program_plane_pre_csc_lut()
  drm/i915/color: clean up variables in
    xelpd_program_plane_post_csc_lut()
  drm/i915/color: reduce indent in xelpd_program_plane_pre_csc_lut()
  drm/i915/color: reduce indent in xelpd_program_plane_post_csc_lut()
  drm/i915/color: join loops in xelpd_program_plane_pre_csc_lut()
  drm/i915/color: join loops in xelpd_program_plane_post_csc_lut()
  drm/i915/color: deduplicate loops in xelpd_program_plane_pre_csc_lut()
  drm/i915/color: deduplicate loops in
    xelpd_program_plane_post_csc_lut()

 drivers/gpu/drm/i915/display/intel_color.c | 117 ++++++++-------------
 1 file changed, 45 insertions(+), 72 deletions(-)

-- 
2.47.3

