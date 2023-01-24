Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC78679C4E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F7F10E692;
	Tue, 24 Jan 2023 14:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116DB10E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571592; x=1706107592;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Kzdy9aPmt5xaal8cGspDdvF/C9rkbjZ7/Jo8sHGLjY=;
 b=QQ9bTd1/2SGQeN8B/rw3sLaWcVRsMf4k7E02waonezOoFJUx4qS1aYVT
 eI0YMWWIwZ+AxytJXvUi85ykPZQRERHWbJw9PggnRMc0SaX9m+OGX3MFH
 EcUlH09kg81cMxoP8ILgSiXOm29E5vvjJYPD8V9jZ1o9y+tAPWw9AabSD
 1NtWj3rwhVYYcwagttOLfnZokDoqDb3kVf/qG4I9kZX9f9D0HSXIc3RYq
 AZKcK+PsISgxZBniHdU2Jh8vsN8moiHBI4JNnH+HmxuRHeksL4oYRad8k
 Wx+lXuvqPzvwUFIwkLm4p8E8a5vulWKvYSl1/x95vAIXtcv/baEaptfZz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538812"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538812"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:46:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602172"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:15 +0200
Message-Id: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/13] drm/i915: ELD precompute and readout
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rebase of the ELD precompute/readout series,
for CI mainly. No other changes since v2.

Ville Syrjälä (13):
  drm/i915/audio: Don't program the hardware ELD buffer on ilk+
  drm/i915/audio: Don't program the hardware ELD buffer on hsw+
  drm/i915/audio: Introduce a struct for the acomp audio state
  drm/i915/audio: Precompute the ELD
  drm/i915/audio: Don't enable audio with bogus ELD
  drm/i915/audio: Hardware ELD readout
  drm/i915/sdvo: Precompute the ELD
  drm/i915/sdvo: Only use "presence detect" for has_audio readout
  drm/i915/sdvo: Do ELD hardware readout
  drm/i915/audio: Hook up ELD into the state checker
  drm/i915/audio: Include ELD in the state dump
  drm/i915/audio: s/ilk/ibx/
  drm/i915/audio: Clean up the PCH type checks

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +
 drivers/gpu/drm/i915/display/intel_audio.c    | 317 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_audio.h    |   7 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  17 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  43 +++
 .../gpu/drm/i915/display/intel_display_core.h |   9 +-
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  43 ++-
 12 files changed, 288 insertions(+), 166 deletions(-)

-- 
2.39.1

