Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KPhdFWnnPGqcuAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 10:31:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DDB6C3D2A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 10:31:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hDb+a9F3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4599F10F1AE;
	Thu, 25 Jun 2026 08:31:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB5010F1A8;
 Thu, 25 Jun 2026 08:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782376292; x=1813912292;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=4oKU/4FqLtrV5VGuw696pPPkQZaHiKm24g+4H9U1CMQ=;
 b=hDb+a9F3LN5V+5O+e4xcV4Lbf+lEazXnyaKC/p9JYWjPqBtFyQOr/nyU
 N5xQC4QhQANjedCNMkcawamflMzEqmVItLZG4Jjoif+Yt//y24fVaIBgZ
 RIOzEN46MF1E/Ub/AwP3DT6+ROqQ2ieJOBbEtLSHHcJVTOLuIlDAlabh7
 489KtH9c0kbHjfxtMqVlX+ZdMHRIJbwznyAvWei2U4ASyhAiovvmVRP5U
 D34EBc/EQTHB0an+QZF5liYSJzRr1qTUkj0wmz17+Y80Dy/cstbg/BWpM
 BYplD0RIPnH3dpV874RgLncCj8NNjV3h+V5z0/FIM663OpOHtIogU5h11 w==;
X-CSE-ConnectionGUID: fYQBU1SxSX6k6J7XFN5Iqg==
X-CSE-MsgGUID: ydwnqe/ETCWu+2Ft/tNdIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="93801072"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="93801072"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 01:31:31 -0700
X-CSE-ConnectionGUID: E/PmwROmTByQPXTVclp+qg==
X-CSE-MsgGUID: PvAdd3xpRU2D+58wXr+uUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="249072550"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO [10.245.245.136])
 ([10.245.245.136])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 01:31:27 -0700
Message-ID: <2d17f718-43f5-4772-9c04-a975c9ad4bc3@linux.intel.com>
Date: Thu, 25 Jun 2026 10:31:52 +0200
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
Subject: [PULL] drm-misc-fixes
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6DDB6C3D2A

Hi Dave, Simona,

drm-misc-next-fixes is still empty, but here's all the drm-misc-fixes for next release!

Kind regards,
~Maarten Lankhorst

drm-misc-fixes-2026-06-25:
drm-misc-fixes for v7.2:
- drm/sysfb truncation and alignment fixes.
- fix edid OOB read.
- fix error handling paths in nouveau
- amdxdna get_bo_info fix.
- increase displayid topology id to correct size.
- fix leak when error handling in ivpu.
The following changes since commit 2f41af638c92bac6f1f9275ea2d1901baef578f3:

  accel/amdxdna: Fix mm_struct reference leak in aie2_populate_range() (2026-06-11 09:50:07 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-06-25

for you to fetch changes up to 9206b22fb959f4a9cf1921f34aed0df1dcb1ab04:

  drm/sysfb: Avoid truncating maximum stride (2026-06-22 11:03:23 +0200)

----------------------------------------------------------------
drm-misc-fixes for v7.2:
- drm/sysfb truncation and alignment fixes.
- fix edid OOB read.
- fix error handling paths in nouveau
- amdxdna get_bo_info fix.
- increase displayid topology id to correct size.
- fix leak when error handling in ivpu.

----------------------------------------------------------------
Jani Nikula (1):
      drm/displayid: fix Tiled Display Topology ID size

Junrui Luo (1):
      drm/nouveau: fix reversed error cleanup order in ucopy functions

Karol Wachowski (1):
      accel/ivpu: fix HWS command queue leak on registration failure

Shuvam Pandey (1):
      accel/amdxdna: Use caller client for debug BO sync

Thomas Zimmermann (4):
      drm/sysfb: Do not page-align visible size of the framebuffer
      drm/sysfb: Avoid possible truncation with calculating visible size
      drm/sysfb: Return errno code from drm_sysfb_get_visible_size()
      drm/sysfb: Avoid truncating maximum stride

Wentao Liang (1):
      drm/nouveau/acr: fix missing nvkm_done() in error path of nvkm_acr_oneinit()

Xiang Mei (1):
      drm/edid: fix OOB read in drm_parse_tiled_block()

 drivers/accel/amdxdna/amdxdna_gem.c            |  3 ++-
 drivers/accel/ivpu/ivpu_job.c                  | 10 +++++-----
 drivers/gpu/drm/drm_connector.c                | 12 ++++++------
 drivers/gpu/drm/drm_displayid_internal.h       |  2 +-
 drivers/gpu/drm/drm_edid.c                     |  8 ++++++++
 drivers/gpu/drm/nouveau/nouveau_exec.c         |  4 ++--
 drivers/gpu/drm/nouveau/nouveau_uvmm.c         |  4 ++--
 drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c |  1 +
 drivers/gpu/drm/sysfb/drm_sysfb_helper.h       |  2 +-
 drivers/gpu/drm/sysfb/drm_sysfb_screen_info.c  | 13 ++++++++++---
 drivers/gpu/drm/sysfb/efidrm.c                 |  7 ++++---
 drivers/gpu/drm/sysfb/vesadrm.c                |  6 +++---
 include/drm/drm_connector.h                    |  6 +++---
 13 files changed, 48 insertions(+), 30 deletions(-)
