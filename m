Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA141CBE6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 20:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961316EAD1;
	Wed, 29 Sep 2021 18:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB976EACC;
 Wed, 29 Sep 2021 18:34:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="286027686"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="286027686"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 11:34:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="520927746"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 11:34:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>, dri-devel@lists.freedesktop.org,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Date: Wed, 29 Sep 2021 11:33:54 -0700
Message-Id: <20210929183357.1490204-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Rename IS_ACTIVE() and move to kconfig.h
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

As we try to reduce our i915-only helpers, let's try to improve
IS_ACTIVE() logic and move to kconfig.h.

I'm not 100% happy with the name, but it's the best I could come up
with, hopefully a little better than trying to add IS_ACTIVE() to be
used broadly.

v2: now with Cc/To list fixed up - no changes to the patches.

Lucas De Marchi (3):
  drm/i915: rename IS_ACTIVE
  drm/i915/utils: do not depend on config being defined
  Move IS_CONFIG_NONZERO() to kconfig.h

 drivers/gpu/drm/i915/gem/i915_gem_context.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine.h           |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h     |  2 +-
 .../gpu/drm/i915/gt/intel_execlists_submission.c |  2 +-
 .../gpu/drm/i915/gt/selftest_engine_heartbeat.c  |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_execlists.c     | 14 +++++++-------
 drivers/gpu/drm/i915/i915_config.c               |  2 +-
 drivers/gpu/drm/i915/i915_request.c              |  2 +-
 drivers/gpu/drm/i915/i915_utils.h                | 13 -------------
 include/linux/kconfig.h                          | 16 ++++++++++++++--
 12 files changed, 32 insertions(+), 33 deletions(-)

-- 
2.33.0

