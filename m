Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBoTJRaaDmpcAgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 07:37:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458A059F12F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 07:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA73910F1D6;
	Thu, 21 May 2026 05:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QcTgk9ji";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E0E10E45E;
 Thu, 21 May 2026 05:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779341842; x=1810877842;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JChYDdRSXqGFrgAO7ovqrQ+uQ7MKFrtY7Yta0StmD34=;
 b=QcTgk9jiLvqw0UIi6D0aUURAcTzapWodGykRHjRq+6vaiEoBD3M9MH8b
 hSnHEmcMVGiUSb7ndsmWEgItLfeo6JgeyN/qiAUtMKxIPLj56xO94zrRm
 BrmzCAE5JUhYonzy/jDmE1BnT4l++3fdOXbkNvvw4/prlu8c3b3k9spO4
 cGiq8qPJOz85u+JVlzSXGsA3ofKrT29g15xEZ3h+vV31KhBUOZeMKKkeJ
 Mdz7rLcOHayLshkXWHDmDQJSUnoYifiZFMST3c/k32CBJRceTmUfKfKdI
 6DPkXIRnWztSp6woTHL4A4uz8dE+ztF1Fy8JHzpzvZi3m3fmMC9A0OPr2 g==;
X-CSE-ConnectionGUID: prkzySsbRDq7X87cNX2CHQ==
X-CSE-MsgGUID: b4B0VC/VRBSmiH2pWl/KpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80286387"
X-IronPort-AV: E=Sophos;i="6.23,245,1770624000"; d="scan'208";a="80286387"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 22:37:21 -0700
X-CSE-ConnectionGUID: KvOn4zpgSUCuN6jzyqY5YQ==
X-CSE-MsgGUID: DAydlcPQSfKYThbamgE8FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,245,1770624000"; d="scan'208";a="245420569"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa005.jf.intel.com with ESMTP; 20 May 2026 22:37:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: abhinav.kumar@linux.dev, tzimmermann@suse.de, sean@poorly.ru,
 marijn.suijten@somainline.org, laurent.pinchart+renesas@ideasonboard.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com,
 Louis Chauvet <louis.chauvet@bootlin.com>, kernel-dev@igalia.com,
 John.Harrison@Igalia.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 0/7] Refactor drm_writeback_connector structure
Date: Thu, 21 May 2026 11:07:01 +0530
Message-Id: <20260521053708.1475129-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 458A059F12F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some drivers cannot work with the current design where the connector
is embedded within the drm_writeback_connector such as intel and
some drivers that can get it working end up adding a lot of checks
all around the code to check if it's a writeback conenctor or not.
This is due to the inheritance limitation in C.
This series intends to solve it by moving the drm_writeback_connector
within the drm_connector and remove the drm_connector base which was in
drm_writeback_connector. This is done in union with hdmi connector
within drm_connector to save memory and since drm_connector cannot be
both hdmi and writeback it serves is well.
A RFC version was floated and discussion had taken place at [1] which
kicked of this more cleaner series. 
We do all other required modifications that come with these changes
along with addition of new function which returns the drm_connector when
drm_writeback_connector is present.
This series also contains some writeback API cleanups as a consequence
of writeback connector moving into drm_connector
All drivers will be expected to allocate the drm_connector.
This discussion was tiggered from [2] and sits on top of Dmitry's series
see [3].

[1] https://patchwork.freedesktop.org/series/152758/
[2] https://patchwork.freedesktop.org/series/152106/
[3] https://patchwork.freedesktop.org/series/152420/

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (7):
  drm: writeback: Refactor drm_writeback_connector structure
  drm: writeback: Modify writeback init helpers
  drm: writeback: Modify drm_writeback_queue_job helper
  drm: writeback: Modify drm_writeback_signal_completion helper
  drm: writeback: Modify drm_writeback_get_out_fence helper
  drm: writeback: Modify prepare_writeback_job helper
  drm: writeback: Modify cleanup_writeback_job helper

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 10 +--
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |  2 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c  | 12 +--
 .../gpu/drm/arm/display/komeda/komeda_crtc.c  |  2 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.h   |  6 +-
 .../arm/display/komeda/komeda_wb_connector.c  | 11 +--
 drivers/gpu/drm/arm/malidp_crtc.c             |  2 +-
 drivers/gpu/drm/arm/malidp_drv.h              |  2 +-
 drivers/gpu/drm/arm/malidp_mw.c               |  7 +-
 drivers/gpu/drm/drm_atomic_uapi.c             |  4 +-
 drivers/gpu/drm/drm_writeback.c               | 50 +++++++-----
 .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |  9 ++-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c | 10 +--
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h |  4 +-
 .../gpu/drm/renesas/rcar-du/rcar_du_crtc.h    |  6 +-
 .../drm/renesas/rcar-du/rcar_du_writeback.c   | 16 ++--
 drivers/gpu/drm/vc4/vc4_txp.c                 |  8 +-
 drivers/gpu/drm/vkms/vkms_drv.h               |  2 +-
 drivers/gpu/drm/vkms/vkms_writeback.c         | 15 ++--
 include/drm/drm_connector.h                   | 69 ++++++++++++++++-
 include/drm/drm_modeset_helper_vtables.h      |  4 +-
 include/drm/drm_writeback.h                   | 76 ++-----------------
 22 files changed, 164 insertions(+), 163 deletions(-)

-- 
2.34.1

