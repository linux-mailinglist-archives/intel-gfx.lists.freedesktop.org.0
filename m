Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D82C72DBF5F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 12:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411D36E0DF;
	Wed, 16 Dec 2020 11:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E5246E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 11:29:28 +0000 (UTC)
IronPort-SDR: igGyEQGfOICkUHhlwT5vWAPp9e/Ybs76vlNmV9IZPrvStXAXB1PHihK0s+1eWsyqahxxU/GkEY
 2lWAI2HKghAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="236629426"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="236629426"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:29:28 -0800
IronPort-SDR: Dr9YaHd845vG64/Ua/CsBVf7Zao/outFmZ1hcKtmYtSO6PzAvzemXvrLlR5IldS7TUeysWW1Gs
 ysr/sruHQTOA==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="368971166"
Received: from slevy-mobl.ger.corp.intel.com (HELO localhost)
 ([10.214.192.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:29:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 13:29:07 +0200
Message-Id: <cover.1608117676.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/11] drm/i915: refactor intel display
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is Dave's intel_display.c refactoring series [1] with some minor
issues addressed, to get CI results among other things.

I've reviewed and fixed any remaining minor issues I spotted in patches
1-8. I'm aware there may be things to improve, but I think this is
overall forward progress and cleanup that's long overdue. I'm prepared
to merge patches 1-8 unless there are strong objections.

I ran out of steam a little with patches 9-11, and haven't reviewed
them. They're included here just for completeness.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/84812/


Dave Airlie (11):
  drm/i915/display: move needs_modeset to an inline in header
  drm/i915/display: move to_intel_frontbuffer to header
  drm/i915/display: fix misused comma
  drm/i915: refactor cursor code out of i915_display.c
  drm/i915: refactor some crtc code out of intel display.
  drm/i915: refactor pll code out into intel_dpll.c
  drm/i915: split fdi code out from intel_display.c
  drm/i915: migrate hsw fdi code to new file.
  drm/i915: migrate skl planes code new file
  drm/i915: move pipe update code into crtc.
  drm/i915: split fb scalable checks into g4x and skl versions

 drivers/gpu/drm/i915/Makefile                 |     5 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |    76 -
 drivers/gpu/drm/i915/display/intel_crt.c      |     1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  1187 +
 drivers/gpu/drm/i915/display/intel_crtc.h     |    22 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |   806 +
 drivers/gpu/drm/i915/display/intel_cursor.h   |    17 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   197 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |    14 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 20019 ++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |    46 +-
 .../drm/i915/display/intel_display_types.h    |    55 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  1363 ++
 drivers/gpu/drm/i915/display/intel_dpll.h     |    23 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |   857 +
 drivers/gpu/drm/i915/display/intel_fdi.h      |    29 +
 .../gpu/drm/i915/display/intel_gen9_plane.c   |  2832 +++
 drivers/gpu/drm/i915/display/intel_sprite.c   |  1712 +-
 18 files changed, 14739 insertions(+), 14522 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cursor.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cursor.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpll.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpll.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_fdi.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fdi.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_gen9_plane.c

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
