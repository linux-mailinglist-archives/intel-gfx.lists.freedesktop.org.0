Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f3iMCLWZKWrJaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F9666BD5D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i7N3nXkW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2783A10E511;
	Wed, 10 Jun 2026 17:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD58F10E50A;
 Wed, 10 Jun 2026 17:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111217; x=1812647217;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6yD6w63qbg8RKnbzyJqPL0v7NMj/K+wtyq1MWmhVzcM=;
 b=i7N3nXkWztnlKnXDNvm1Md/c0BmTUDCajdmrIguHX6fMKHs7PlKlkR7j
 SE2P7kp+yhPllPMzEZm7fkGOz9WzvutHmxF0pGXA3xLDhSbn14sAtJKJ5
 GSjSQN++vDghSo5vWLDj+sNotAWhSKtm68hK8dBVgiS3XTsvbblFcge1t
 vwW96iOm8HU5IzflbAQHGA1fm0YgGns+ThMqYGCGP05jI7V8Tk4TGidi+
 8nMbrMu0x8iyK4dcCCgDSMS0s9DHReS0ebH8ZboHqIhGVC/Sa7heaMAlF
 pbhYJgEUF+rmygY/Zcp3dThW8ypp6Ckj/tc5E4Kx7KPUMnydbw14kHQNA w==;
X-CSE-ConnectionGUID: tuFh4ymeRGC5nPaVR/Safg==
X-CSE-MsgGUID: /93AVLkkT/iuv4881xz8+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99490257"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="99490257"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:06:57 -0700
X-CSE-ConnectionGUID: 6yCSQVUzQq+0+X/o8IE93g==
X-CSE-MsgGUID: ZA/MRzwVRWSU4qrfN2e13Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250507217"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:06:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/14] drm/i915/cdclk: cdclk pcode related fixes and
 refactoring
Date: Wed, 10 Jun 2026 20:06:37 +0300
Message-ID: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6F9666BD5D

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix up some bugs around the cdclk pcode notificatiosn on DG2,
follow up with some unification/cleanups, and finally convert
the pcode stuff (except on dg2, due to it doing weird things)
into vfuncs (goal being to make the code less messy).

Ville Syrjälä (14):
  drm/i915/cdclk: Don't bail if pcode post nofify fails
  drm/i915/cdclk: Pass CDCLK in MHz to pcode on DG2
  drm/i915/cdclk: Do the DG2 CDCLK/pipe power well notify properly
  drm/i915/cdclk: Notify DG2 pcode about pipe power wells regardless of
    CDCLK
  drm/i915/cdclk: Stop forcing voltage level to 3 all the time on DG2
  drm/i915/cdclk: Drop pointless platform check from bxt_set_cdclk()
  drm/i915/dg2: s/intel_/dg2_/ for DG2 specific stuff
  drm/i915/cdclk: Unify the pcode pre/post notify in bxt_set_cdclk()
  drm/i915/cdclk: Unify pcode related debugs
  drm/i915/cdclk: Extract bdw_cdclk_pcode_{pre,post}_notify()
  drm/i915/cdclk: Extract skl_cdclk_pcode_{pre,post}_notify()
  drm/i915/cdclk: Extract bxt_cdclk_pcode_{pre,post}_notify()
  drm/i915/cdclk: Introduce CDCLK .{pre,post}_notify() vfuncs
  drm/i915/cdclk: Hoist intel_cdclk_{pre,post}_notify() calls upwards

 drivers/gpu/drm/i915/display/intel_cdclk.c | 301 ++++++++++++---------
 1 file changed, 171 insertions(+), 130 deletions(-)

-- 
2.53.0

