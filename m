Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA9B576F00
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BDB10FC2A;
	Sat, 16 Jul 2022 14:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF1110E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916449; x=1689452449;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4j28RukCXiEpY8CSrFBgWOqeel2ACwlGyczU3qO4QzI=;
 b=EcC5dUFzYRjsFI3+NDzGpK11iZ5h+FHD0n+2cDmco/BvA1Y9qWR7nSo2
 K3bCHW2lkXObfxYMXocuXJNhTTXRvDvayuPPf1w+Vl8WjURgw3Z72MAwa
 I5jxcwAIxIcT6B9lxsKu4nX3mt3KQ1+JpqI0NyI5k9vF19TpBzyVFgYur
 PqGdatA4t/d8cyqhZWIbgFhXN6hvI/Rbj8Zaaf1LdMxyJf5BDgfA2YsZo
 1z5Mvpe18YhI8xfOFZ440ae8WAf4OFBjKcLVr3yQsyG5/3dGbWVGbwewA
 okk86SLhKrj+HFJ7gTd8Dsu7o4uOzXXYFPSuX9Te2qEAIcXzE8pgl/Ld/ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="347580205"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="347580205"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="686090450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by FMSMGA003.fm.intel.com with SMTP; 15 Jul 2022 13:20:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:20:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:32 +0300
Message-Id: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: More VBT stuff
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

Bunch of VBT work:
- cleanup of version number comments
- document more bits
- rename a few misnamed things
- warn if any port wants to use the VBT vswing tables
- parse the new DP lane count limit

Ville Syrjälä (12):
  drm/i915: Unify VBT version number comments
  drm/i915: Add some more VBT version number comments
  drm/i915: Properly define the DP redriver VBT bits
  drm/i915: Define VBT eDP/DP max lane count bits
  drm/i915: Add the VBT LTTPR transparent vs. non-transparent bits
  drm/i915: Define VBT max HDMI FRL rate bits
  drm/i915: Document the sets of bits in the driver features block
  drm/i915: Define more VBT driver features block bits
  drm/i915: Define all possible VBT device handles
  drm/i915: Rename some VBT bits
  drm/i915: WARN if a port should use VBT provided vswing tables
  drm/i915: Parse DP/eDP max lane count from VBT

 drivers/gpu/drm/i915/display/intel_bios.c     |  20 ++
 drivers/gpu/drm/i915/display/intel_bios.h     |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  13 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 333 ++++++++++--------
 4 files changed, 222 insertions(+), 145 deletions(-)

-- 
2.35.1

