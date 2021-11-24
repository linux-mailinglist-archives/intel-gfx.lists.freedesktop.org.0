Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1D545CFEA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 23:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044CA6E364;
	Wed, 24 Nov 2021 22:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B4E6E201;
 Wed, 24 Nov 2021 22:15:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="321624646"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="321624646"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 14:15:15 -0800
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="510046582"
Received: from kkarvas-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.34.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 14:15:12 -0800
Date: Wed, 24 Nov 2021 17:15:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YZ65bsPOK+6JLv0d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

Only one fix for this round. Sending earlier today due to Holiday in US
tomorrow.

Here goes drm-intel-fixes-2021-11-24:

Fix wakeref handling of PXP suspend.

Thanks,
Rodrigo.

The following changes since commit 136057256686de39cc3a07c2e39ef6bc43003ff6:

  Linux 5.16-rc2 (2021-11-21 13:47:39 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-11-24

for you to fetch changes up to b8d8436840caa2e9b6d156e69336d2135f49f10f:

  drm/i915/gt: Hold RPM wakelock during PXP suspend (2021-11-24 09:07:18 -0500)

----------------------------------------------------------------
Fix wakeref handling of PXP suspend.

----------------------------------------------------------------
Tejas Upadhyay (1):
      drm/i915/gt: Hold RPM wakelock during PXP suspend

 drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 ++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 37 +++++++++++++++++++++++----------
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 19 ++++++++++++++---
 3 files changed, 46 insertions(+), 17 deletions(-)
