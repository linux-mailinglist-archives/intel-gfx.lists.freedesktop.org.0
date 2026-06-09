Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hj0lOPCdKGppGwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D18B664BDC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 01:12:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="a/t3teIW";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88FD10E640;
	Tue,  9 Jun 2026 23:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3277010E3CA;
 Tue,  9 Jun 2026 23:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781046763; x=1812582763;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kj/M6s77bsHCr2vvNpu/TpQEhGBDFqaBATLZsVp7c18=;
 b=a/t3teIWwFC+FTSmPVngEt5jAl0aWJpsfjugp+e/dy/IT2pEnDY/RvV5
 zYjVXdaXP5gPOhZpGngWwG1FP+uvSx0aO7pXJNrX0UKRDt8RfCyZ2tUJX
 wuZAwAvVbUR0T+iNYDzoHRbCxrYeRTJ5E0PxGFQW+xxuqWw26KQnH/oID
 r6jDo8ht9Jygwf+9Dk0Rjmz/gXQvi8q6Zb2+nAaMXFJhXZGWhiiH4dG3B
 /FKvRk1DGI2x2DPefLUdbFwY5Qrx3PsqbRJKbKqvyjZSWxpLCABBkMKAb
 4/gMuyKb+EewsnB5AF02QkOpMBiQaYM6FMdVmiRoPcfvhiEyo2ANi5G22 g==;
X-CSE-ConnectionGUID: dFoLM5F5Qoe+62EwiX4R1g==
X-CSE-MsgGUID: AjqBo6vrTbaYxcIeQukyhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104492294"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="104492294"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 16:12:42 -0700
X-CSE-ConnectionGUID: VJhbUGJ4SP2QMKe4b3LCgw==
X-CSE-MsgGUID: 0GhWusudStGT0eXyurRlJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="276187963"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 09 Jun 2026 16:12:42 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v1 0/9] drm/i915/scaler: allocation cleanup
Date: Wed, 10 Jun 2026 01:12:08 +0200
Message-ID: <20260609231217.208357-1-michal.grzelak@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D18B664BDC

Apparently during review of commit 17d70a0760f2 ("drm/i915/casf: Extract
scaler_has_casf()") I missed that argument plane_state isn't used
anymore. While at it couple other fixes included.

This series will almost surely need a better splitting than currently
is, but I hope now it is slightly easier to review.

BR,
Michał


Michał Grzelak (9):
  drm/i915/scaler: remove unused plane_state argument
  drm/i915/scaler: s/i/scaler_id/
  drm/i915/scaler: de-Morgan-ize !scaler_has_casf()
  drm/i915/scaler: move independent CASF check
  drm/i915/scaler: check CASF before allocation's loop
  drm/i915/scaler: inline CASF scaler allocation
  drm/i915/scaler: linearize scaler allocation
  drm/i915/scaler: move CASF alloc check into
    intel_atomic_setup_scaler()
  drm/i915/scaler: move CASF alloc check into setup_crtc_scaler()

 drivers/gpu/drm/i915/display/skl_scaler.c | 43 ++++++++++++-----------
 1 file changed, 22 insertions(+), 21 deletions(-)

-- 
2.45.2

