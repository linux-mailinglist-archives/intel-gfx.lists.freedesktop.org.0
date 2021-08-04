Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1462D3E07A4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 20:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B78E6E430;
	Wed,  4 Aug 2021 18:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4246E430;
 Wed,  4 Aug 2021 18:31:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="235941964"
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="235941964"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 11:31:43 -0700
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="512185508"
Received: from gengbinz-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.37.232])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 11:31:42 -0700
Date: Wed, 4 Aug 2021 14:31:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Message-ID: <YQrdDGLsInSI+N7T@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

Here goes drm-intel-fixes-2021-08-04:

- Call i915_globals_exit if pci_register_device fails (Jason)
- Correct SFC_DONE register offset (Matt)

Thanks,
Rodrigo.

The following changes since commit c500bee1c5b2f1d59b1081ac879d73268ab0ff17:

  Linux 5.14-rc4 (2021-08-01 17:04:17 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-08-04

for you to fetch changes up to 1354d830cb8f9be966cc07fc61368af27ffb7c4a:

  drm/i915: Call i915_globals_exit() if pci_register_device() fails (2021-08-03 07:13:53 -0400)

----------------------------------------------------------------
- Call i915_globals_exit if pci_register_device fails (Jason)
- Correct SFC_DONE register offset (Matt)

----------------------------------------------------------------
Jason Ekstrand (1):
      drm/i915: Call i915_globals_exit() if pci_register_device() fails

Matt Roper (1):
      drm/i915: Correct SFC_DONE register offset

 drivers/gpu/drm/i915/i915_globals.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c     | 1 +
 drivers/gpu/drm/i915/i915_reg.h     | 2 +-
 3 files changed, 3 insertions(+), 2 deletions(-)
