Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPxsLIl612mXOggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:08:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C17F3C8F07
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6417610E75A;
	Thu,  9 Apr 2026 10:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fNwlHWty";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7971A10E74A;
 Thu,  9 Apr 2026 10:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729284; x=1807265284;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6TQ/+wp6jTX2LRIyj4QlcAhpOFSZ0be9Eo7czbWaFrc=;
 b=fNwlHWtyvkv/byGITUawYq5EE48iSqGA8HRchB7cwGHHCzq6u4l7QS6Z
 dKPraBOgn7M61VESTiNXIbGKlJU1AYkeAcq5KSd68f/R2yiREJyoojxfv
 2peuia5u80FCYqxDOpnmNZ8/sc66gycxuaA++jF4hj635ui4ZwTnzlU2h
 jEi1geRAXIB+qACD7MHfDKjD+T5j39pAKXwe0zpWjYkNHwUoRaSi26UKf
 ggERtXkVm6bx7fFoS3qoqlnz22hUIlsfnYkrQ+Vbjuzw5ojZWFwC60znS
 Bkltse0QRJJxlGMtQ97qVAK7QlXeCia0f61SBIhfLapZJGhTTe55FSRYp w==;
X-CSE-ConnectionGUID: xS4FldjPTXyo/PI22NoX9A==
X-CSE-MsgGUID: 28lgG9NsSYa5b2tPwgCtPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76448682"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76448682"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:08:04 -0700
X-CSE-ConnectionGUID: 5uzWtcB6S2e+T+HZWsBxOg==
X-CSE-MsgGUID: yn2Q2Xr2QpipaJczct3lXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228657848"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.151])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:08:00 -0700
Date: Thu, 9 Apr 2026 13:07:56 +0300
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
Subject: [PULL] drm-intel-fixes
Message-ID: <add6fPHRC7Bc8Uri@jlahtine-mobl>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0C17F3C8F07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave & Sima,

Here's still a drm-intel-fixes PR towards 7.0. Took a few more hours
as Linus seems to prefer the EXECBUF fix via -fixes rather than -next.

One display fix for SU area WARN in PSR code, for GT refcount underflow
fix in hangcheck and removal condition on execbuf BO processing which
gives a false alert of a bug in mainline.

Regards, Joonas

***

drm-intel-fixes-2026-04-09:

- Drop check for changed VM in EXECBUF
- Fix refcount underflow race in intel_engine_park_heartbeat
- Do not use pipe_src as borders for SU area in PSR

The following changes since commit 591cd656a1bf5ea94a222af5ef2ee76df029c1d2:

  Linux 7.0-rc7 (2026-04-05 15:26:23 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2026-04-09

for you to fetch changes up to a13edf9b92fc4700b3020d7ea547a3d64dd33b63:

  drm/i915/gem: Drop check for changed VM in EXECBUF (2026-04-09 12:57:15 +0300)

----------------------------------------------------------------
- Drop check for changed VM in EXECBUF
- Fix refcount underflow race in intel_engine_park_heartbeat
- Do not use pipe_src as borders for SU area in PSR

----------------------------------------------------------------
Joonas Lahtinen (1):
      drm/i915/gem: Drop check for changed VM in EXECBUF

Jouni Högander (1):
      drm/i915/psr: Do not use pipe_src as borders for SU area

Sebastian Brzezinka (1):
      drm/i915/gt: fix refcount underflow in intel_engine_park_heartbeat

 drivers/gpu/drm/i915/display/intel_psr.c         | 30 +++++++++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 26 +++++++++++++-------
 3 files changed, 38 insertions(+), 20 deletions(-)
