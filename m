Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LJ4dJnRkJmo4VwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:43:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3C9653352
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:42:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=k1wUqfj9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA4410ED9E;
	Mon,  8 Jun 2026 06:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6585210ED99;
 Mon,  8 Jun 2026 06:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780900978; x=1812436978;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kh9NutqJA9YrD761QzCDC/bsOahZ6lKpL8mlNTmX8Gs=;
 b=k1wUqfj9HzTtLSYb2Z8elRWZqf548qbSXvLToTj9Yg6xU2yxHkh8WPbl
 3hrCNIhtpiq+5eYSGEw46w9wjXlBsl6y7CKz+w7uYkvZvHyXYECV2Ed5L
 /pZggET63TkneKqyK1HbsE+UiuaQPsQAcqAFLd4cqLUSNHrioBqABb4oF
 yerWrUMdlHxn9ohkUrjKmw8Eyo98C+uqjOHXo1ufVPE7MZ88IP6S3PK+i
 5RBxFuglw45Y/kKwj8CVJXYvGeRdupCQhMGs8jG67vI9EQHX0oOcv1ACp
 MyvhSbN7cwVY3O+kjV15BxUgdS/XjWHXqrZtWecZz/W563kpDyXtSxS46 Q==;
X-CSE-ConnectionGUID: w0nudX4YRwe9m8pqa0//aA==
X-CSE-MsgGUID: G27Wz7ofTJ+G9JUEgH9nxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="92309258"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92309258"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:42:57 -0700
X-CSE-ConnectionGUID: 7PSclGGUS5+OJSBdbeb4fA==
X-CSE-MsgGUID: fELobZNyTzO0zAF/CpfWYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244348195"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.213])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:42:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/psr: Flush on cursor update also when not using
 Selective Fetch
Date: Mon,  8 Jun 2026 09:42:35 +0300
Message-ID: <20260608064235.20053-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA3C9653352

Currently we are not doing flush on cursor update if Selective Fetch is not
in use. This doesn't cause problems in PSR cases as enabling VBI is
triggering PSR exit which triggers sending update to panel. In case of
Panel Replay this doesn't happen. This causes legacy cursor update not
working if using Panel Replay without Selective Updates.

Fixes: 129a4da11707 ("drm/i915/psr: Use TRANS_PUSH to trigger frame change event")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5047e3fdc9ff0..d9fcf52328eab 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3767,9 +3767,7 @@ void intel_psr_flush(struct intel_display *display,
 		if (intel_dp->psr.pause_counter)
 			goto unlock;
 
-		if (origin == ORIGIN_FLIP ||
-		    (origin == ORIGIN_CURSOR_UPDATE &&
-		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
+		if (origin == ORIGIN_FLIP) {
 			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
-- 
2.43.0

