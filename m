Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y6O8Ky2OT2pcjgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:03:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1888730C98
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:03:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MRJ7jO4N;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A7F10F570;
	Thu,  9 Jul 2026 12:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF83210F56D;
 Thu,  9 Jul 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783598634; x=1815134634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oUN6f8AQcg79mdk4hWVhS7a7NM5OxxHsbIRwubZWlEA=;
 b=MRJ7jO4NfqcvJrUUuxgg/XajKibXs/L+hogxKxxJ8BGncKNRPjlyrd9z
 yZi5bhOxSY7ida2mvvhGFoCGh+p4GfnxgRiidWyC5vrBSvnNM3zLfSN7k
 foIlTWt0uwTEUNBBfxJNorgVOphPgC4OZo8LshpdbONUJj9svgstGgDR9
 yzX3bkMENG3nC5wTKbP6z/s9xlu1tr3EGxLdN23lJJkqVP0UAFPh2rjzn
 EZ3OEwIbgVEzTbWhtrdV07qi1jIjJo7Z6IIlTHa2tNpcZ16myzob3Yw52
 nJA1D1AnXV/h6g6F709XHhAoqmZ+7ZG6HUD7Yz+of6RFqABO0UPby70RS g==;
X-CSE-ConnectionGUID: 4YqQE7CcSh2IhGtlT6r28Q==
X-CSE-MsgGUID: 6kdiv0y3TdSLbah3GJaodQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84468976"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84468976"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 05:03:54 -0700
X-CSE-ConnectionGUID: cXW4rpUTTuaWrTnmTZChyA==
X-CSE-MsgGUID: myLUazLlSnODH0GDitn5vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254686955"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa007.jf.intel.com with ESMTP; 09 Jul 2026 05:03:52 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] drm/i915/dp: fix MSA VSC_SDP delegation for colorimetry
Date: Thu,  9 Jul 2026 17:09:49 +0530
Message-Id: <20260709113951.3557968-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1888730C98

When a eDP/DP sink does not advertise DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED,
intel_ddi_set_dp_msa() still sets DP_MSA_MISC_COLOR_VSC_SDP, telling the
sink to defer colorimetry to a VSC SDP that will never be sent. A second bug
allows the has_psr bypass in intel_dp_compute_vsc_sdp() to send a colorimetry
payload to incapable sinks when PSR is active.

Both are fixed by folding the colorimetry_support check into
intel_dp_needs_vsc_colorimetry() so all call sites share a consistent gate.

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>

Chaitanya Kumar Borah (2):
  drm/i915/dp: s/intel_dp_needs_vsc_sdp/intel_dp_needs_vsc_colorimetry
  drm/i915/dp: set VSC_SDP MSA delegation only for capable sinks

 drivers/gpu/drm/i915/display/intel_ddi.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_dp.c  | 20 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h  |  4 ++--
 3 files changed, 18 insertions(+), 10 deletions(-)

-- 
2.25.1

