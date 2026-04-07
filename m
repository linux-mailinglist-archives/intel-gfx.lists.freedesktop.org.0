Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CA8CBb/W1GnuxwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:04:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B033AC7EB
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D4A10E3AB;
	Tue,  7 Apr 2026 10:04:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTMIxI4q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFBA10E3A1;
 Tue,  7 Apr 2026 10:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775556284; x=1807092284;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=08LsQ0QB2YNVcMVETmHaDmF+sCQipjgLUuMdhPxKN10=;
 b=hTMIxI4qNJZv8hK3Dsc49EluIFKHqiOWWQNr1gb3khsvLv3fTDS/2U0J
 SZ9lkP3Jq5uBB/3JdGGWCsZWRk0RSyd+KwkBDK5jKxqmIHtG+yttXLx64
 gf7S0pqkxz8zaWtbfXas80cnyVkv/ZkGhab8fxGUdXHfrc542ozh/MI7o
 J3B9N9cxkVu/64TKYNQ95Cx51F/QsyDXp4yHT7Scow2vz4Tzm0fxn1NLc
 eXxI5eKoc9TBZgbIb5nv95DVA9fD+CT2ixROWdZ0OnRp1SpWYkgCTwKoL
 UMtObu/61n9f0B+SXSkvrvKRsO5/H0Rw1hsn9Pmb2uzsS+NgWVV6iehLu w==;
X-CSE-ConnectionGUID: xpYJ8KAdQkSSvHy7Q9a1gA==
X-CSE-MsgGUID: sWI42+KxRdWXB5rn/r6JIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76705445"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76705445"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:43 -0700
X-CSE-ConnectionGUID: rFvQ+OCHRQ+BcSX43/1blg==
X-CSE-MsgGUID: kJHqoaiCReGKucWYb67sAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="224936657"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/3] drm/i915/pin: refactor to i915 core
Date: Tue,  7 Apr 2026 13:04:34 +0300
Message-ID: <cover.1775556190.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 97B033AC7EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Something I started last week before Ville said he'd look into the whole
pin stuff. If this is helpful, let's merge, but if it's in the way, it
was pretty quick and can be thrown away.

BR,
Jani.

Jani Nikula (3):
  drm/i915: move intel_fb_pin.c to i915_fb_pin.c
  drm/i915/pin: s/dev_priv/i915/ and drop struct drm_device usage
  drm/i915/pin: switch to i915 core runtime pm

 drivers/gpu/drm/i915/Makefile                 |  2 +-
 .../{display/intel_fb_pin.c => i915_fb_pin.c} | 44 +++++++++----------
 2 files changed, 22 insertions(+), 24 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_fb_pin.c => i915_fb_pin.c} (90%)

-- 
2.47.3

