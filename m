Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BA3495E68
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:30:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DF810EA7B;
	Fri, 21 Jan 2022 11:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3D010EA80
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764640; x=1674300640;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oK2C8ifXtc4XeOc/QjMXqUTU5GWRx/r7QJ2Bryqbvj8=;
 b=Y0iBVwVTIo7o3XvL1YtPwqrhxupIA9O36egXMjsGO9FMR4fO5v3x8t4j
 UCw0EvUERMGnCaSjb8IPw+CZFytaqYkzruFvHX6QiBpoyMX71MONjwEVM
 TQeuGdx1lJY5h9BgYlHKQbf10dWrZPZ/g7YH2pDePEcfdcBJuyhh3FxOZ
 1AWfSzmA79S0ncHIYd/7O3RcbtAnc6DCbjfk4fWMWotEZq5lL45UJCVBW
 38WdjmAZI2eUATrQaNSmQaT2LgUAXOTALKiMrdFFswgiImiZFEGLnaljN
 J1hSH6Y7Lu5TPeHXxxhvC4Mubxxh/3iJeM7PhTq6VJMI2Et/4D9ibhNsX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="232993031"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="232993031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:30:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533238792"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 21 Jan 2022 03:30:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:30:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 13:30:30 +0200
Message-Id: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Futher optimize plane updates
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

Optimize icl+ plane updates by moving most register writes
into the .update_noarm() hook. Also stop taking uncore.lock
for plane register writes as well

Ville Syrjälä (6):
  drm/i915: Clean up pre-skl primary plane registers
  drm/i915: Optimize icl+ universal plane programming
  drm/i915: Make skl+ universal plane registers unlocked
  drm/i915: Make cursor plane registers unlocked
  drm/i915: Make most pre-skl primary plane registers unlocked
  drm/i915: Make pre-skl sprite plane registers unlocked

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 123 ++++++-----
 drivers/gpu/drm/i915/display/intel_cursor.c   |  10 -
 drivers/gpu/drm/i915/display/intel_display.c  |  13 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  45 ----
 .../drm/i915/display/skl_universal_plane.c    | 196 ++++++++++++------
 drivers/gpu/drm/i915/gvt/display.c            |   4 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  18 +-
 drivers/gpu/drm/i915/i915_reg.h               | 108 ++++++----
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 9 files changed, 275 insertions(+), 244 deletions(-)

-- 
2.32.0

