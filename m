Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0107B98C65B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 21:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC57C10E088;
	Tue,  1 Oct 2024 19:58:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5k5z7Sd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733FC10E088
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 19:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727812686; x=1759348686;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H4Vq4yHFaLTUaALCguE3+h2U+WkASTVCTEWJ+4K1oo4=;
 b=g5k5z7SdGshgCwGE9aFkjXtBTDqeXe0OD5kqCnjnogAG3BXZCPUy6UEC
 7gfcXGXaXuQzIGB9e5vg0ITet6kRh3b4AMHp+gD/5NgPMN94P55MxYfVt
 0USfetLxIEnNdnGes0xb0wxFfHxJ1mCdV1fCFmvqZQ5LGuj6tdclZ0Wir
 iUr8q99nKMpBn/ltb0nQwB/JTRAp0zEKW7GoeyvQh3xSkVdYDk6GMUGJq
 KG+yVHKGjFpUwDUZS/zBQTTdaxB03uoeVRco2/1I2kxFkxSVAL7tDW2RH
 yAMvfNM1SuaYNQrV9M6oPmt2sVmvtPW0i7iueQJI4wqWwo5iAMWL3HbiZ Q==;
X-CSE-ConnectionGUID: Q+8oeQMkTz+rW6prnFbMiQ==
X-CSE-MsgGUID: 9VRaOZEVRP+pxekMByTT/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26852026"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="26852026"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 12:58:06 -0700
X-CSE-ConnectionGUID: h2OKYryDRra6ivS73sWYFw==
X-CSE-MsgGUID: uAjB/I46T/eHTOEDST7k3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="73899348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 12:58:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 22:58:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: Vblank/CRC irq stuf
Date: Tue,  1 Oct 2024 22:57:59 +0300
Message-ID: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I recently ran some igts on my i915gm and i945gm and noticed
that the CRC interrupt suffers from the same C-state issue
that vblank interrupts had. I guess that shuld come as a
no surprise to me. So we need to extend the clock gating
disable trick to CRC interrupts as well.

I also got fed up with the state of the vblank enable/disable
functions, and proceeded to do some cleanup.

Ville Syrjälä (4):
  drm/i915/irq: Nuke stale comments
  drm/i915/irq: Pair up the vblank enable/disable functions
  drm/i915: Extract i915gm_irq_cstate_wa_{disable,enable}()
  drm/i915: Apply the i915gm/i945gm irq C-state w/a to CRC interrupts

 .../gpu/drm/i915/display/intel_display_irq.c  | 140 ++++++++++--------
 .../gpu/drm/i915/display/intel_display_irq.h  |   2 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   4 +
 3 files changed, 86 insertions(+), 60 deletions(-)

-- 
2.45.2

