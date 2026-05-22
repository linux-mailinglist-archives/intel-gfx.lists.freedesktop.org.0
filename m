Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELpxMqy2EGpDcwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:03:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371875B9DB5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A447D10E34E;
	Fri, 22 May 2026 20:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OBFDx3Ha";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE4910E2A6;
 Fri, 22 May 2026 20:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779480232; x=1811016232;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QSKrhMWJtKQbaAcZR9NMxQqMdyFalUWu//GKIJEOAO0=;
 b=OBFDx3HaHj4LfbErBfOqAWvS4RpfAbcq8cvgkb1Fu37llI/YX4gp6dVR
 ZhxViQ2Tiosp8tez10WxXX3WG+mnHXAJux6d1X2gQNFMjfz4I/pioc71B
 31VHP8h57nvwejWCoas9pom+O6aoL6c7UjyFZD8RyOJy0kmKgbIGWWISb
 N/GIHj2mysPzcBHOdz7yN6NuvRDNZBJ3p2IwO2QXY7jl/6scGzqEvKgkH
 2x+zg5xpi+LRL1j/0HWmoz4PAEpt2UnGpeFPZAGouOIz4E+53ZUYqrDG8
 4reor6wsIZaQnMVi3tYeWy4w5Kxk7GUkXn9x7S0n37RxU/88RTwPBxttc A==;
X-CSE-ConnectionGUID: MgZHH2KSTVCPm8p0SfJ0Kw==
X-CSE-MsgGUID: 6m5NghujR7qB5uy9KBccpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84299642"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="84299642"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:03:52 -0700
X-CSE-ConnectionGUID: oLRuHZrgTjOY3kmk59okoQ==
X-CSE-MsgGUID: fSGLera/QRKEbMrNbdSqJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="245042144"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:03:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/10] drm/i915/bw: Bunch of fixes
Date: Fri, 22 May 2026 23:03:36 +0300
Message-ID: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 371875B9DB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The QGV code has accumulated tons of rounding
errors and other similar things. Fix them up.

Ville Syrjälä (10):
  drm/i915/bw: Fix num_planes handling on TGL+
  drm/i915/bw: Fix DCLK rounding mess
  drm/i915/bw: Fix bw rounding direction
  drm/i915/bw: Fix 'deinterleave' rounding direction
  drm/i915/bw: Fix rounding direction in clperchgroup calculation
  drm/i915/bw: Fix DEPROGBWPCLIMIT handling on BMG
  drm/i915/bw: Fix/unify peakbw calculations
  drm/i915/bw: Round the PM demand bandwidth down
  drm/i915/bw: Remove deinterleave fallback for TGL+
  drm/i915/bw: Do not consider tile4 as tileY

 drivers/gpu/drm/i915/display/intel_bw.c | 97 ++++++++++++-------------
 1 file changed, 47 insertions(+), 50 deletions(-)

-- 
2.52.0

