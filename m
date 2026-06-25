Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id peNvF5HIPGoksAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 08:20:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5A26C2FCD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 08:20:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iQz4Y8zZ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D20D10F113;
	Thu, 25 Jun 2026 06:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A47A10F108;
 Thu, 25 Jun 2026 06:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782368396; x=1813904396;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=AyM+aw5nNVjxOuNEXVRIO3mu4AwClj92WraJZX4Q9rA=;
 b=iQz4Y8zZTiy1IOPLcp72wRcXaNiiqlu8Fh4KGCocBPjK3qYcz7CAZNrm
 S8mVBXIknjbApqptPZcUyENMF+xXbUtetWB89loMtfhHXjeqUNKHaSA/T
 YX1dHtQNHB0QZVIc87QFKCk/SF3raCKIt139mzn/1rc/hJ7QsHchDwpdB
 ytsGkL4pUuHTVOewpSou1h5CeBtNEc0JX0Yb52yjR/ZvLTGRbk4kmFa8n
 yE/AWK2T+cUMTiOyDUFRiKtmBZJRsp5kIz0ZlssLUnMHhqoVFTdoOWCyZ
 We4Uwr2H5yJn/fJQf5u/0eeF6S9FNNBhaIh/O7ySt9ILDRTlUutuNHfqa w==;
X-CSE-ConnectionGUID: UcxrcFvMSeaCp6R2oXGCOQ==
X-CSE-MsgGUID: VQd3QReISHG+15zDHAzGJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="93496693"
X-IronPort-AV: E=Sophos;i="6.24,223,1774335600"; d="scan'208";a="93496693"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 23:19:56 -0700
X-CSE-ConnectionGUID: xEnSM9nuSCWF15fHn1U8Dw==
X-CSE-MsgGUID: dt0NpfcqQ86NEx4+nD/jlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,223,1774335600"; d="scan'208";a="246008921"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.75])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 23:19:51 -0700
Date: Thu, 25 Jun 2026 09:19:48 +0300
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
Subject: [PULL] drm-intel-next-fixes
Message-ID: <ajzIhInnHnGCwMlu@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,intel.com:dkim,jlahtine-mobl:mid,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F5A26C2FCD

Hi Dave & Sima,

Here goes drm-intel-next-fixes PR towards 7.2-rc1.

Just one display corruption fix for GLK and one Spectre
mitigation for parallel submit IOCTL.

Regards, Joonas

***

drm-intel-next-fixes-2026-06-25-1:

- Fix corrupted display output on GLK, #16209 (Ville)
- Add missing Spectre mitigation for parallel submit IOCTL (Joonas)

The following changes since commit 062499cc4813b5a3cbed5dd4fbe0177265858450:

  drm/i915/mtl+: Enable PPS before PLL (2026-06-16 13:06:09 -0400)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-fixes-2026-06-25-1

for you to fetch changes up to 2ee8dbd880b14fb0b5115bf2353c7900aa33b95b:

  drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full PLL re-enable (2026-06-24 13:53:32 +0300)

----------------------------------------------------------------
- Fix corrupted display output on GLK, #16209 (Ville)
- Add missing Spectre mitigation for parallel submit IOCTL (Joonas)

----------------------------------------------------------------
Joonas Lahtinen (1):
      drm/i915/gem: Add missing nospec on parallel submit slot

Ville Syrjälä (1):
      drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full PLL re-enable

 drivers/gpu/drm/i915/display/intel_cdclk.c  | 41 ++++++++++++++++++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  1 +
 2 files changed, 35 insertions(+), 7 deletions(-)
