Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6F83BEA69
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 17:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5DF6E17F;
	Wed,  7 Jul 2021 15:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F7D6E17D;
 Wed,  7 Jul 2021 15:09:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="270437502"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="270437502"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 08:09:30 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="647914555"
Received: from abdoesch-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.213.166.207])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 08:09:28 -0700
Date: Wed, 7 Jul 2021 11:09:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YOXDp/+CFDgJ2/7f@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

Here goes drm-intel-next-fixes-2021-07-07:

One fix targeting stable for display DP VSC, plus DG1 display fix and
a bug fix of IRQs usages and cleanup references to the DRM IRQ midlayer.

Thanks,
Rodrigo.

The following changes since commit 8a02ea42bc1d4c448caf1bab0e05899dad503f74:

  Merge tag 'drm-intel-next-fixes-2021-06-29' of git://anongit.freedesktop.=
org/drm/drm-intel into drm-next (2021-06-30 15:42:05 +1000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-202=
1-07-07

for you to fetch changes up to 3dd6c11b60d2f1e4082221a8831f91093c4494aa:

  drm/i915: Drop all references to DRM IRQ midlayer (2021-07-06 15:10:58 -0=
400)

----------------------------------------------------------------
One fix targeting stable for display DP VSC, plus DG1 display fix and
a bug fix of IRQs usages and cleanup references to the DRM IRQ midlayer.

----------------------------------------------------------------
Jos=E9 Roberto de Souza (1):
      drm/i915/display/dg1: Correctly map DPLLs during state readout

Kees Cook (1):
      drm/i915/display: Do not zero past infoframes.vsc

Thomas Zimmermann (2):
      drm/i915: Use the correct IRQ during resume
      drm/i915: Drop all references to DRM IRQ midlayer

 drivers/gpu/drm/i915/display/intel_ddi.c        | 19 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  7 +++++--
 drivers/gpu/drm/i915/i915_drv.c                 |  1 -
 drivers/gpu/drm/i915/i915_irq.c                 | 10 +++++-----
 drivers/gpu/drm/i915/i915_irq.h                 |  1 +
 drivers/gpu/drm/i915/i915_reg.h                 |  3 ---
 8 files changed, 29 insertions(+), 16 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
