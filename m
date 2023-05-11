Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8DE6FF16A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 14:20:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD97710E09C;
	Thu, 11 May 2023 12:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1DA10E0A6;
 Thu, 11 May 2023 12:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683807592; x=1715343592;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MVBfUG5Nd5F4wsnYKWiL8xeYFRYNi+O6CbgGRR5vJV0=;
 b=RnQM1uSva5bW352RUHBTRd94WUmNNEU1aEFJV2PQvpmKDYmdPYowUp3e
 yFC7zWOFJ3QhFMbQ6xT6EITzKHTjIUuvWZClz4q6Oo5WHb1QpsW8Xho57
 /1ncEF6IkvSfnVORJKeEGpYYtDMO1+O/UvkrMYGPhpEx6z9RRx71CXfAD
 OOxoPoQhKgIU39MFNAWTmEXY3irKx+BZNYNeqc1uAa7QQf7CCrlzSqwsL
 nMny44RXekHYoKCyZGZtVSC92D3f8AbWHrZ5tfQKy/su6sksASlgH6MI+
 YhMboMzAD6KHny8NMCwJoTKl+/aN6/hE92FhWyQoVeWarT2Rdv6GASZ3B Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="339758198"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="339758198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:19:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="730313072"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="730313072"
Received: from nwhinnet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.14.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:19:48 -0700
Date: Thu, 11 May 2023 15:19:45 +0300
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <ZFzdYV3O8lvVJ1DQ@jlahtine-mobl.ger.corp.intel.com>
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave & Daniel,

Here goes drm-intel-fixes for v6.4-rc2.

Important fix to taint kernel when force_probe is used, two display
fixes (null deref/div-by-zero) and a GuC error capture register list
correction.

Regards, Joonas

PS. Again had to remove one commit with incorrect Fixes: tag so check CI
for results before you merge.

***

drm-intel-fixes-2023-05-11-1:

- Fix to taint kernel when force_probe is used
- Null deref and div-by-zero fixes for display
- GuC error capture fix for Xe devices

The following changes since commit ac9a78681b921877518763ba0e89202254349d1b:

  Linux 6.4-rc1 (2023-05-07 13:34:35 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-05-11-1

for you to fetch changes up to 79c901c93562bdf1c84ce6c1b744fbbe4389a6eb:

  drm/i915: taint kernel when force probing unsupported devices (2023-05-11 14:11:59 +0300)

----------------------------------------------------------------
- Fix to taint kernel when force_probe is used
- Null deref and div-by-zero fixes for display
- GuC error capture fix for Xe devices

----------------------------------------------------------------
Jani Nikula (1):
      drm/i915: taint kernel when force probing unsupported devices

John Harrison (1):
      drm/i915/guc: Don't capture Gen8 regs on Xe devices

Nikita Zhandarovich (1):
      drm/i915/dp: prevent potential div-by-zero

Stanislav Lisovskiy (1):
      drm/i915: Fix NULL ptr deref by checking new_crtc_state

 drivers/gpu/drm/i915/Kconfig                      | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_atomic_plane.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.c           |  5 +++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c    |  7 +++++--
 drivers/gpu/drm/i915/i915_pci.c                   |  6 ++++++
 5 files changed, 25 insertions(+), 9 deletions(-)
