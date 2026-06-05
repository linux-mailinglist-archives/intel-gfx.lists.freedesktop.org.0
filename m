Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3IuXHoaBImr3ZAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:57:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E327E646338
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:57:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BCshmgIC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E43D11A55D;
	Fri,  5 Jun 2026 07:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCAD911A55A;
 Fri,  5 Jun 2026 07:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780646276; x=1812182276;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=1aRfajY/mlCdD9J+IkNfAwMP9z+4dWk+xwz1iwDVNh8=;
 b=BCshmgIC1n+QAy29jyOmtQVcZ8bWI1kzlDGScLJSAcBVoPJDfURjRXHJ
 7YTPBM5LXCIfmOCCJXF2UBeW1whALvRhawKBSPMDtZ0dw0OyE9iI3+ncv
 Pnos1+iavLAmWJmblc0LZkisP2AGwq+LHujAmxzJLdB/5rnBNrFc7Ze5s
 muk4FaB5VJUaagQajDIIBNkQ4F7v7t/aThQqmS+613iwUh8Wf24cdw+Uv
 rLzUdsqhbWyhjw0qZBXix3MBE38MWDPmVjMaxV7XcEdDWtOUgVWHz9olr
 eTLR9Vgk7ZxmOak/qBXeNWxmQY4lryyYW+zecoF/rNMCt7XYvep9rGkFa Q==;
X-CSE-ConnectionGUID: 3HuXiKkwRD6FlNEtaixwMw==
X-CSE-MsgGUID: qhlBC/GaRcafH4f9ydeUxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="98897434"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="98897434"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 00:57:54 -0700
X-CSE-ConnectionGUID: RH9pUXxoTcan0NI+fLf/CQ==
X-CSE-MsgGUID: 8cvysP7MQPavaeYoNwReHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="240328795"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO [10.245.245.227])
 ([10.245.245.227])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 00:57:50 -0700
Message-ID: <a4a5bf50-3fc8-4faf-884b-08121687124a@linux.intel.com>
Date: Fri, 5 Jun 2026 09:57:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Cc: dim-tools@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PULL] drm-misc-next-fixes
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,linux.intel.com:mid,lists.freedesktop.org:from_smtp,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E327E646338

Hi Dave, Sima,

drm-misc-next-fixes for v7.2-rc1!

Kind regards,
~Maarten Lankhorst

drm-misc-next-fixes-2026-06-05:
drm-misc-next-fixes for v7.2-rc1:
- Revert last minute IS_ERR_OR_NULL changes in nouveau/gsp.
- Fix build warning in drm scheduler.
- Flush caches and TLB before v3d runtime suspend.
- Fix a trace and debug command in amdxdna.
- Fix heap buffer address validation when PASID is disabled in amdxdna.
The following changes since commit 61de054a772a1feda6364931ab1baf9038abf1c8:

  drm/nouveau/gsp: formally support GA100 (2026-05-28 19:30:15 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2026-06-05

for you to fetch changes up to 62c1671f6454ceaa80e9ceff63f821aa36f35154:

  accel/amdxdna: Return errors for failed debug BO commands (2026-06-03 11:47:12 -0700)

----------------------------------------------------------------
drm-misc-next-fixes for v7.2-rc1:
- Revert last minute IS_ERR_OR_NULL changes in nouveau/gsp.
- Fix build warning in drm scheduler.
- Flush caches and TLB before v3d runtime suspend.
- Fix a trace and debug command in amdxdna.
- Fix heap buffer address validation when PASID is disabled in amdxdna.

----------------------------------------------------------------
Lizhi Hou (3):
      accel/amdxdna: Preserve user address when PASID is disabled
      accel/amdxdna: Remove drv_cmd tracing from job free callback
      accel/amdxdna: Return errors for failed debug BO commands

Lyude Paul (5):
      Revert "nouveau/gsp/rm: cleanup remaining IS_ERR_OR_NULL usage"
      Revert "nouveau/gsp/rm: cleanup IS_ERR_OR_NULL in core implementation"
      Revert "nouveau/gsp/rm: cleanup WARN_ON(IS_ERR_OR_NULL)"
      Revert "nouveau/gsp: cleanup IS_ERR_OR_NULL in rpc_rd"
      Revert "nouveau/gsp: cleanup IS_ERR_OR_NULL in rm_alloc functions"

Maíra Canal (2):
      drm/v3d: Flush MMU TLB and cache during runtime resume
      drm/v3d: Clean caches before runtime suspend

Tvrtko Ursulin (1):
      drm/sched: Fix clang build warning in kunit tests

 drivers/accel/amdxdna/aie2_ctx.c                   | 16 +++++------
 drivers/accel/amdxdna/amdxdna_gem.c                |  5 +++-
 drivers/gpu/drm/nouveau/include/nvkm/subdev/gsp.h  |  8 +++---
 .../drm/nouveau/nvkm/subdev/gsp/rm/r535/alloc.c    |  4 +--
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/bar.c  |  2 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/ctrl.c |  2 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/rpc.c  | 10 +++----
 drivers/gpu/drm/scheduler/tests/tests_scheduler.c  | 12 ++-------
 drivers/gpu/drm/v3d/v3d_mmu.c                      | 31 +++++++++++++++-------
 drivers/gpu/drm/v3d/v3d_power.c                    |  2 ++
 10 files changed, 50 insertions(+), 42 deletions(-)
