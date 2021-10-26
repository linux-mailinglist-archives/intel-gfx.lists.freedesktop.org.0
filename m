Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D0443B6B9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 18:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5858F6E83E;
	Tue, 26 Oct 2021 16:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FC289FCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 16:16:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="290789934"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="290789934"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:15:21 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="486254874"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:15:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Tue, 26 Oct 2021 19:15:14 +0300
Message-Id: <20211026161517.2694067-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/fb: Simplify modifier handling more
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

To simplify the handling of modifiers on DG2 and future platforms it
makes sense to fold the modifier tiling and CCS type attributes to the
plane capabilities mask. This patchset does that, also including fixing
two minor issues.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Imre Deak (3):
  drm/i915/fb: Don't report MC CCS plane capability on GEN<12
  drm/i915/fb: Don't store bitmasks in the intel_plane_caps enum
  drm/i915/fb: Fold modifier CCS type/tiling attribute to plane caps

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 84 +++++++++----------
 drivers/gpu/drm/i915/display/intel_fb.h       | 13 +--
 drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
 .../drm/i915/display/skl_universal_plane.c    | 12 ++-
 5 files changed, 60 insertions(+), 53 deletions(-)

-- 
2.27.0

