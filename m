Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGpxBuNcGWoLvwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 11:31:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03325FFF78
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 11:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D4910FBCC;
	Fri, 29 May 2026 09:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3z7KpzX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E175D10FBC8;
 Fri, 29 May 2026 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780047069; x=1811583069;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=mgyjjDEoW/ZU5sj+cKtdLIWdngYg1NQ75SEYhXhXf2A=;
 b=m3z7KpzXXDTuc1gJhE0QKOO7VQcDCdCJQnqppuiyNfKBpVHdnUPoM8G0
 8GgrbRwjniFVfBIcc5D4MSCAMf/Tn8R1ojT5LQYhbvZaEvepON2H4eGb/
 s2rtuYUXFeuSNJA6c8SHq0v6d55sWtkQCPbSmiJIywU7/wM7hVMgtG+Vy
 08AepypP+0kLzPqEY2P2eNF6WZhf5ZafEEQiezG9CRkAMLnL8Yjm8lwjt
 g7+D3AuZJRQiruxTLyelEBG4gNj5yRM1lnX/ziOOe6XcxvMI13mvadz70
 Jpe8THgSYltnPPEM96kTB2mI5OzI5I9FjCzuYcPoqOqeHbmcnyqWXoXTO w==;
X-CSE-ConnectionGUID: 0+MpdwK+Tra2oA4ZHXe97w==
X-CSE-MsgGUID: Nmll1Cy4SBySYBIGQPzKWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80622995"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80622995"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 02:31:09 -0700
X-CSE-ConnectionGUID: HkIImqOZTSWMkhhFNsrEzw==
X-CSE-MsgGUID: D+p/MAqASqagKg9gwW4A4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242655111"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.114])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 02:31:03 -0700
Date: Fri, 29 May 2026 12:31:01 +0300
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-gt-next
Message-ID: <ahlc1R5bzJvmBLlZ@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: C03325FFF78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave & Sima,

Here goes the singular drm-intel-gt-next PR towards 7.2.

Fix for more robust fence handling after reset on SNB. A couple
UAF/underflow fixes. Selftest improvements and then cleaning up
EXECBUF logic to avoid false positives from AI scanners.

Note that there is a drm-next backmerge to pull in a patch from
mainline tree to revert.

Best Regards, Joonas

***

drm-intel-gt-next-2026-05-29:

Cross-subsystem Changes:

- Backmerge of drm-next to pull in a commit to revert

Driver Changes:

- Avoid skipping already signaled fence after reset (Sebastian)
- Fix potential UAF in TTM object purge (Janusz)
- Fix refcount underflow in intel_engine_park_heartbeat (Sebastian)

- Drop check for changed VM in EXECBUF (Joonas)
- Revert the "else vma = NULL" patch for being superseded (Joonas)
- Selfest improvements (Janusz, Krzysztof)

The following changes since commit f96538285cfdbb3acf5e3356e0bb88c38815790b:

  Merge tag 'drm-misc-next-2026-05-07' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2026-05-08 14:16:04 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-gt-next-2026-05-29

for you to fetch changes up to 6c064db893f548d57036fce17c6493808396e620:

  Revert "i915: don't use a vma that didn't match the context VM" (2026-05-20 10:46:41 +0300)

----------------------------------------------------------------
Cross-subsystem Changes:

- Backmerge of drm-next to pull in a commit to revert

Driver Changes:

- Avoid skipping already signaled fence after reset (Sebastian)
- Fix potential UAF in TTM object purge (Janusz)
- Fix refcount underflow in intel_engine_park_heartbeat (Sebastian)

- Drop check for changed VM in EXECBUF (Joonas)
- Revert the "else vma = NULL" patch for being superseded (Joonas)
- Selfest improvements (Janusz, Krzysztof)

----------------------------------------------------------------
Janusz Krzysztofik (2):
      drm/i915: Skip deprecated selftest
      drm/i915: Fix potential UAF in TTM object purge

Joonas Lahtinen (3):
      drm/i915/gem: Drop check for changed VM in EXECBUF
      Merge drm/drm-next into drm-intel-gt-next
      Revert "i915: don't use a vma that didn't match the context VM"

Krzysztof Karas (2):
      drm/i915/selftests: Prevent userspace mapping invalidation
      drm/i915/selftests: Run vma tests only if current->mm is present

Sebastian Brzezinka (2):
      drm/i915/gt: fix refcount underflow in intel_engine_park_heartbeat
      drm/i915: skip __i915_request_skip() for already signaled requests

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c            | 28 ++++----
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 16 ++---
 drivers/gpu/drm/i915/gt/intel_reset.c              |  3 +-
 drivers/gpu/drm/i915/gt/selftest_workarounds.c     |  3 +
 drivers/gpu/drm/i915/i915_selftest.h               |  1 +
 drivers/gpu/drm/i915/selftests/i915_selftest.c     | 74 +++++++++++++++++++++-
 7 files changed, 103 insertions(+), 24 deletions(-)
