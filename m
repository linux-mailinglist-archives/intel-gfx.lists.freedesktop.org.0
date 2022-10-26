Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFC760E60B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF49810E62F;
	Wed, 26 Oct 2022 17:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9004610E5F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803720; x=1698339720;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4cRMHRGMSk0Oady6SIXGAcXMT+4z+QICFLzo7ZFYgZE=;
 b=gkpl0tVAkftC4upwgt39C02qqLmBACVrLsvUoG1zl0SJdqMcSlxg3zbO
 ZfWnwsJAFGq43iBVPokpCpuGX5YIj9MTjRUILTbBUj4Rjdq+jiEQ9S3rt
 KD7IeYhj/ED4krm3gXzfHTGlw8iy9jFVKYaSG0MYw97JcBqgV4cMgnIhM
 G0FL+OOk3y92lpvhT7L3X+eAiitT2bsB9xqLKrRTOUXaxxTlCS9eUW9/v
 C7fs3y8WdpbXN7f9Iv6XY/JRLUXbR3UMUQ5ja8kjrmbEeeVJSzgbKWykc
 L4uMpb7vS7nfBzXrYtqwjfwUO2gwpxNVKfHKZ+pFIbND4ISrjBK7RLTiA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334624782"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334624782"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090356"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090356"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:01:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:01:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:35 +0300
Message-Id: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: Audio stuff
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

All the less controversional cleanups/fixes/etc. from the
earlier ELD precompute+state check series. So no actual
ELD precompute+state check here yet.

Ville Syrjälä (15):
  drm/i915/audio: s/dev_priv/i915/
  drm/i915/audio: Nuke leftover ROUNDING_FACTOR
  drm/i915/audio: Remove CL/BLC audio stuff
  drm/i915/audio: Extract struct ilk_audio_regs
  drm/i915/audio: Use REG_BIT() & co.
  drm/i915/audio: Unify register bit naming
  drm/i915/audio: Protect singleton register with a lock
  drm/i915/audio: Nuke intel_eld_uptodate()
  drm/i915/audio: Read ELD buffer size from hardware
  drm/i915/audio: Make sure we write the whole ELD buffer
  drm/i915/audio: Use u32* for ELD
  drm/i915/audio: Use intel_de_rmw() for most audio registers
  drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
  drm/i915/audio: Do the vblank waits
  drm/i915/sdvo: Extract intel_sdvo_has_audio()

 drivers/gpu/drm/i915/display/intel_audio.c    | 660 +++++++++---------
 .../gpu/drm/i915/display/intel_audio_regs.h   |  87 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  27 +-
 3 files changed, 384 insertions(+), 390 deletions(-)

-- 
2.37.4

