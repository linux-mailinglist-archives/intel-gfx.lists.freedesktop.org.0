Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E4442DB3F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 16:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091236E174;
	Thu, 14 Oct 2021 14:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4C36E174;
 Thu, 14 Oct 2021 14:14:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="208486945"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="208486945"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 07:14:15 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="492014724"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 07:14:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dim-tools@lists.freedesktop.org, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 14 Oct 2021 17:14:07 +0300
Message-ID: <87zgrbvgls.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Hi Dave & Daniel -

drm-intel-fixes-2021-10-14:
drm/i915 fixes for v5.15-rc6:
- Fix ACPI object leak
- Fix context leak in user proto-context creation
- Fix missing i915_sw_fence_fini call

BR,
Jani.

The following changes since commit 64570fbc14f8d7cb3fe3995f20e26bc25ce4b2cc:

  Linux 5.15-rc5 (2021-10-10 17:01:59 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-10-14

for you to fetch changes up to 82a59c7f456db9f2874e9f1e9cb4cc19e71e95c5:

  drm/i915: Free the returned object of acpi_evaluate_dsm() (2021-10-13 13:41:16 +0300)

----------------------------------------------------------------
drm/i915 fixes for v5.15-rc6:
- Fix ACPI object leak
- Fix context leak in user proto-context creation
- Fix missing i915_sw_fence_fini call

----------------------------------------------------------------
Matthew Auld (1):
      drm/i915: remember to call i915_sw_fence_fini

Matthew Brost (1):
      drm/i915: Fix bug in user proto-context creation that leaked contexts

Zenghui Yu (1):
      drm/i915: Free the returned object of acpi_evaluate_dsm()

 drivers/gpu/drm/i915/display/intel_acpi.c   | 7 +++++--
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 5 ++++-
 drivers/gpu/drm/i915/gt/intel_context.c     | 1 +
 3 files changed, 10 insertions(+), 3 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
