Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF8aLazws2nYdgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4336D281F5F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C028410E0F5;
	Fri, 13 Mar 2026 11:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoSnQoi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E22D10E0F5;
 Fri, 13 Mar 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773400233; x=1804936233;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lkc2I3myb53kYMc2w6fB7IgI8sDy0D/J2UKYLkwprQY=;
 b=XoSnQoi2d951r1EMETkIGqgH5THnQxHbGcmn23DuSAwPQNJstspAPnXV
 A/DsOWWevQjADABVyK3RMR1tNvu5JL613Rkrths7zENrKmOGHxG8nlZK7
 6LiILY1sEZ4s1fSLwm8oRpx7NK9NI4rL56B4YbAhqGp6fzGquCckaUXL7
 ZTL42iThoTq2psiCyi3hgC6eKifPmOb0RASlREaWmWeK2oDxzAg6C3TQx
 i0AYvZ8CpOoErVbxHXFiOVHnMaPobjpz43feZ8pSpwdWANLcJMUn30lR3
 Pvv82mvXOOQwCaplfzo2fZWz1wBRkQWbLaZP9gQuEyUFLq0zZuOgONrjE A==;
X-CSE-ConnectionGUID: EjEPA2pmS8e2ObXkx8NDOA==
X-CSE-MsgGUID: IKf5XnUWQaWU8jBFaQwr/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78396141"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78396141"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:33 -0700
X-CSE-ConnectionGUID: /Fqbtt16RJeneXuiJ2TBlg==
X-CSE-MsgGUID: CAR/bQx6SmeiBu8kCjCpVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="221345468"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915/de: Move register polling into display code
Date: Fri, 13 Mar 2026 13:10:25 +0200
Message-ID: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 4336D281F5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Implement register polling directly in the display code
In an effort to decouple the display code from i915/xe.

This is just the first step in a larger display mmio rework.
My final aim is to move the entire mmio stuff into the display
code. That will give us:
- better control over how things are done
- decouple display register locking from forcewake/etc
- less overhead. We access a lot of registers, and
  during vblank evasion critical section performance is
  especially important.
- unified RMbus unclaimed error checking for both i915 and xe

Ville Syrjälä (3):
  drm/i915/de: Introduce intel_de.c and move intel_de_{read,write}8()
    there
  drm/i915/de: Move intel_de_wait*() into intel_de.c
  drm/i915/de: Implement register polling in the display code

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_de.c       | 178 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_de.h       | 121 +++---------
 drivers/gpu/drm/xe/Makefile                   |   1 +
 .../drm/xe/compat-i915-headers/intel_uncore.h |  31 ---
 5 files changed, 203 insertions(+), 129 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_de.c

-- 
2.52.0

