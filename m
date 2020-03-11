Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96626181DA4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CC46E9B5;
	Wed, 11 Mar 2020 16:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16C86E9B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 16:23:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 09:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="389312670"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2020 09:23:06 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 09:22:54 -0700
Message-Id: <20200311162300.1838847-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] Gen11 workarounds
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Relatively minor changes from v1:
 - Wa_1406306137:icl,ehl moves to the context workarounds rather than
   the engine workarounds.  On gen11 the register we're updating is part
   of the render engine context (even though it isn't on gen12).
 - Dropped Wa_1409178092:icl,ehl again.  Even with the WA implemented in
   the proper place and with all of the latest MCR programming updates
   this workaround still doesn't "stick."  We'll have to seek guidance
   from the hardware team.
 - Swapped the order of the FBC address writes in Wa_1604278689:icl,ehl
   to ensure the "address valid" bit is turned off during the first
   write rather than the second.

Mika noted that there's some internal evidence that we might only need
to apply Wa_1207131216:icl,ehl when dealing with y-tiled surfaces, but
we haven't received confirmation on that from the hardware team yet so I
haven't changed the patch for that one at this time.


Matt Roper (6):
  drm/i915: Handle all MCR ranges
  drm/i915: Add Wa_1207131216:icl,ehl
  drm/i915: Add Wa_1604278689:icl,ehl
  drm/i915: Add Wa_1406306137:icl,ehl
  drm/i915: Apply Wa_1406680159:icl,ehl as an engine workaround
  drm/i915: Add Wa_1605460711 / Wa_1408767742 to ICL and EHL

 .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 14 ++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  2 +
 3 files changed, 59 insertions(+), 9 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
