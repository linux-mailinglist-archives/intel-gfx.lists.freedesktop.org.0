Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A826466A87
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 20:35:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66846FABB;
	Thu,  2 Dec 2021 19:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228F66FAAB;
 Thu,  2 Dec 2021 19:35:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236728951"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="236728951"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 11:35:25 -0800
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="513324758"
Received: from yashward-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.24])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 11:35:21 -0800
Date: Thu, 2 Dec 2021 14:35:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Yakf9hdnR5or+zNP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

Here goes drm-intel-fixes-2021-12-02:

- Fixing a regression where the backlight brightness control stopped working.

- Fix the Intel HDR backlight support detection.

- Reverting a w/a to fix a gpu Hang in TGL. The w/a itself was also
for a hang, but in a much rarer scenario. The proper solution need
to be done with help from user space and it will be addressed later.

Thanks,
Rodrigo.

The following changes since commit d58071a8a76d779eedab38033ae4c821c30295a5:

  Linux 5.16-rc3 (2021-11-28 14:09:19 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-12-02

for you to fetch changes up to 72641d8d60401a5f1e1a0431ceaf928680d34418:

  Revert "drm/i915: Implement Wa_1508744258" (2021-12-02 09:56:34 -0500)

----------------------------------------------------------------
- Fixing a regression where the backlight brightness control stopped working.

- Fix the Intel HDR backlight support detection.

- Reverting a w/a to fix a gpu Hang in TGL. The w/a itself was also
for a hang, but in a much rarer scenario. The proper solution need
to be done with help from user space and it will be addressed later.

----------------------------------------------------------------
Jos� Roberto de Souza (1):
      Revert "drm/i915: Implement Wa_1508744258"

Lyude Paul (2):
      drm/i915: Add support for panels with VESA backlights with PWM enable/disable
      drm/i915/dp: Perform 30ms delay after source OUI write

 drivers/gpu/drm/i915/display/intel_display_types.h |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.h            |  2 ++
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  | 32 ++++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  7 -----
 5 files changed, 42 insertions(+), 13 deletions(-)
