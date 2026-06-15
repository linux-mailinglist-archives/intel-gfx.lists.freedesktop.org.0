Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Mq9SEOdNMGqBRAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 21:09:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1301B6895FB
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 21:09:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hMjp0kim;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E53C10E5E0;
	Mon, 15 Jun 2026 19:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74FF410E5DC;
 Mon, 15 Jun 2026 19:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781550563; x=1813086563;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VIflT9As0VEKi6gi7gX7lmg35U8/qQU2KCJksZGhEVo=;
 b=hMjp0kimqByQR3ccpoAcJOTloAEOs+gpEjYyLkf8qtVMiWWNaq1avK6H
 /JubtRUwfEBueXVenLRkwLzo4lBfw6T2ClVV67LW0tsUV15Ul3y0FWXVJ
 imylzbzSkdwOjzsqYG8GHTFYiY1jkrB2fLcbvCqepBOMAsGeh5KDNbevj
 dfqymktD/fpaxitAINAf/eCR61aV8hE4WyM9hws79Ocn7kyS1mpfeIL+J
 FOOlxVYz8qarMYfhB4gBgQ3yhYWYMgmjrwUNSA2BdpSR+YArhsGOFjiUv
 ReMINY0Mgd4/FABZH75a6ySYOVch2vy/SVa771Sojj8liJ47vHwyvp59d g==;
X-CSE-ConnectionGUID: LipMgc1wSKKrtX/IXj6rXA==
X-CSE-MsgGUID: AQgLvKFDTCSRau/r3XKHbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82314195"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82314195"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 12:09:23 -0700
X-CSE-ConnectionGUID: l+rnKYRzRt6y74DWB6BrDA==
X-CSE-MsgGUID: HXhtet0pTTGoVwuq5rW8ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271265073"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP; 15 Jun 2026 12:09:21 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2 0/3] drm/i915/scaler: allocation cleanup
Date: Mon, 15 Jun 2026 21:08:36 +0200
Message-ID: <20260615190839.1219417-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1301B6895FB

Next version of [1]. Haven't came up with simpler CASF check than we
currently have, thus to follow Ville's and Nemesa's remarks dropped the
part of changing scaler allocation.
Also changed return value in case of failure of intel_allocate_scaler()
& skl_pipe_scaler_get_hw_state(), as pointed out by Jani.

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/20260609231217.208357-1-michal.grzelak@intel.com

---
Changelog:
v1->v2
- drop obfuscation of CASF check (Ville, Nemesa)
- return proper error code (Jani)


Michał Grzelak (3):
  drm/i915/scaler: remove unused plane_state argument
  drm/i915/scaler: s/i/scaler_id/ again
  drm/i915/scaler: return -EINVAL instead of -1

 drivers/gpu/drm/i915/display/skl_scaler.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

-- 
2.45.2

