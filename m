Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LlLDEpWbK2oKAQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:39:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A30676C8E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:39:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jGpPLnCN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A2710E940;
	Fri, 12 Jun 2026 05:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299CE10E932;
 Fri, 12 Jun 2026 05:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781242769; x=1812778769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NTMYRLGOnhlZda0PWvAF1h4vYt6Pne6nod1mMMhI+zY=;
 b=jGpPLnCNhOumNRcXugtpYZxBDH9gFVcWQspYumTLkkMV6cq654wEtmw+
 FswJxbgokAgqnDLxgqOpvLveGN5RWq5l4DNTTl2nytFkuydxhrdTUIWxj
 cnM/L7rFub0A+EjOL9Sc+PV3IcAS+/JAA+elx/sIRBzDJyMTGLQqnp9Qu
 XMMNfgRI+chmfvumIUroOMFHvGrfhPza7L8eBbzyVg6Crd6LlUrRkozD4
 A8w8bUp2zzraa2x3KNb+uDZj2YL5+5aLr+CoUGYnQWgkxUnWkowyccjqv
 oMmkMBM7b/BzXD2mVTwLEBiC+X0go8o2vw7JWU3vQVKbpwzN5o4RgwHtD g==;
X-CSE-ConnectionGUID: rfarA8N/SSWZbUXTYWwUPQ==
X-CSE-MsgGUID: oZLKDAVPSSCSsf0xVNSiDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85699613"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="85699613"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:39:29 -0700
X-CSE-ConnectionGUID: hCNmWx87QU6koPuFoWgSsA==
X-CSE-MsgGUID: TP/9GXy4TSW5sQvhfmtmmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="251814072"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.89])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:39:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/3] Deactive/Reactivate Panel replay on errors
Date: Fri, 12 Jun 2026 08:38:53 +0300
Message-ID: <20260612053853.247705-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612053249.246878-1-jouni.hogander@intel.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
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
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4A30676C8E

DP2.1 specification says:

"The DP Source device shall retransmit an active video image after
detecting any PR error status bits set in the PANEL REPLAY ERROR STATUS
register (DPCD 02020h) unless the DP Source device is already updating an
entire active video image."

This patch set is implementing deactivation/activation of Panel Replay
on errors. Also ALPM error handling for eDP Panel Replay is added.

Jouni Högander (3):
  drm/i915/psr: Split intel_psr_short_pulse
  drm/i915/psr: Detect possible ALPM errors on Panel Replay as well
  drm/i915/psr: Perform Panel Replay exit/activate on errors reported by
    sink

 drivers/gpu/drm/i915/display/intel_psr.c | 99 +++++++++++++++++-------
 1 file changed, 69 insertions(+), 30 deletions(-)

-- 
2.43.0

